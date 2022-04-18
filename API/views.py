from rest_framework.views import APIView
from rest_framework.response import Response
from .serializers import *
from rest_framework.permissions import IsAuthenticated
from rest_framework_simplejwt.views import TokenObtainPairView
from .models import Menu
from datetime import date
from django.db import transaction
from rest_framework_simplejwt.tokens import RefreshToken
from rest_framework import status
import datetime
from .custom_logger import setup_logger
logger = setup_logger("api_logger", "all_logs/api.log")

class UserAPI(APIView):
    def post(self, request):
        res = ""
        logger.warning("User API")
        logger.warning(request.data)
        serializer = UsersSerializers(data=request.data)
        if serializer.is_valid():
            obj = serializer.save()

            res = {
                "status_code": 200,
                "message": "",
                "data": obj.pk
            }
        else:
            error = serializer.errors
            res = {
                "status_code": 422,
                "message": 'error',
                "data": error
            }
        return Response(res)


class MyTokenObtainPairView(TokenObtainPairView):
    serializer_class = MyTokenObtainPairSerializer


class EmployeeCreateAPI(APIView):
    permission_classes = (IsAuthenticated,)

    def post(self, request):
        res = {
            "status_code": 401,
            "message": '',
            "data": ''
        }
        if request.user.user_role_id != 1:
            res['message'] = "Permission Deny. Only Admin is Allowed!"
            res['data'] = ''
            return Response(res)
        request.data['user_role'] = 3
        serializer = UsersSerializers(data=request.data)
        if serializer.is_valid():
            obj = serializer.save()
            res['status_code'] = 200
            res['message'] = "success"
            res['data'] = obj.pk

        else:
            res['status_code'] = 400
            res['message'] = "error"
            res['data'] = serializer.errors

        return Response(res)


class CreateRestaurantAPI(APIView):
    permission_classes = (IsAuthenticated,)

    def post(self, request):
        res = {
            "status_code": 401,
            "message": '',
            "data": ''
        }
        if request.user.user_role_id != 1:
            res['message'] = "Permission Deny, Only Admin User can Create restaurant!"
            res['data'] = ''
            return Response(res)
        request.data['created_by'] = request.user.id
        serializer = RestaurantSerializer(data=request.data)
        if serializer.is_valid():
            obj = serializer.save()
            res['status_code'] = 200
            res['message'] = "success"
            res['data'] = obj.pk
        else:
            res['status_code'] = 400
            res['message'] = "error"
            res['data'] = serializer.errors
        return Response(res)


class CreateMenusAPI(APIView):
    permission_classes = (IsAuthenticated,)

    def post(self, request):
        res = {
            "status_code": 401,
            "message": '',
            "data": ''
        }
        if request.user.user_role_id != 2:
            res['message'] = "Permission Deny, Only Restaurant's User can Access!"
            res['data'] = ''
            return Response(res)
        request.data['created_by'] = request.user.id
        request.data['user'] = request.user.id
        serializer = MenusSerializer(data=request.data)
        if serializer.is_valid():
            obj = serializer.save()
            res['status_code'] = 200
            res['message'] = "success"
            res['data'] = {
                "restaurant_id": obj.pk
            }
        else:
            res['status_code'] = 400
            res['message'] = "error"
            res['data'] = serializer.errors
        return Response(res)


class TodayMenuAPI(APIView):
    permission_classes = (IsAuthenticated,)

    def get(self, request):
        objs = Menu.objects.filter(date=date.today())
        serializer = MenusSerializer(objs, many=True)
        res = {
            "status_code": 200,
            "message": 'success',
            "data": serializer.data
        }
        return Response(res)


class VoteAPI(APIView):
    permission_classes = (IsAuthenticated,)

    def post(self,request):
        request_data = request.data
        if request.user.user_role_id !=3:
            req = {
                "status_code": 401,
                "message": "Permission Deny",
                "data": ''
            }
            return Response(req)

        if 'menu_id' not in request_data or request_data['menu_id'] is '':
            res = { 'status_code':400,"message":"","data":{"menu_id": "This field is blank/required!"}}
            return Response(res)
        menu_id = request_data['menu_id']
        user_id = request.user.id

        try:
            VoteByUser.objects.get(created_by=user_id,date=date.today())
            res = {'status_code': 422, "message": "You already have voted! Only One Vote will be count.", "data": ""}
            return Response(res)
        except:
            pass
        with transaction.atomic():
            try:
                obj = Menu.objects.get(id=menu_id)
                obj.vote_count = obj.vote_count+1
                obj.save()
                data_for_vote = {
                    "selected_menu":menu_id,
                    "created_by": user_id,
                    "date": date.today()
                }
                serialized = VoteByUserSerializer(data=data_for_vote)
                print(serialized.initial)
                if serialized.is_valid():
                    obj = serialized.save()
                    res = {
                        "status_code": 200,
                        "message": 'success',
                        "data": {
                            "vote_id": obj.pk
                        }
                    }
                else:
                    error = serialized.errors
                    res = {
                        "status_code": 400,
                        "message": '',
                        "data": error
                    }
                return Response(res)
            except:
                res = {
                    "status_code": 422,
                    "message": 'Something went Wrong please Vote Again.',
                    "data": ""
                }
            return Response(res)

class VoteResultAPI(APIView):
    permission_classes = (IsAuthenticated,)
    def get(self,request):
        winner_obj = WinnerRestaurant.objects.filter(date=datetime.date.today())
        res=''
        if len(winner_obj) ==0:
            dict = Menu.objects.filter(date=date.today()).values('id','menus','restaurant','restaurant__name','vote_count').order_by('-vote_count')

            today = datetime.date.today()
            previous_day = today - datetime.timedelta(days=1)
            fromDate_object = previous_day - datetime.timedelta(days=1)
            last_days_winners = WinnerRestaurant.objects.filter(date__in=[fromDate_object, previous_day]).values("restaurant_id")
            element_no = 0
            if len(last_days_winners) >0:
                for i in dict:
                    if i['restaurant'] == last_days_winners[0]['restaurant_id'] and i['restaurant'] == last_days_winners[1]['restaurant_id']:
                        element_no=1
                        break
                    break
            WinnerRestaurant.objects.create(selected_menu=dict[element_no]['id'],restaurant_id=dict[element_no]['restaurant'],menus=dict[element_no]['menus'],date=today,restaurant_name=dict[element_no]['restaurant__name'])
            res = {
                "status_code": 200,
                "message": 'success',
                "data": {
                    "restaurant_id":dict[element_no]['restaurant'],
                    "restaurant_name":dict[element_no]['restaurant__name'],
                    "menus":dict[element_no]['menus']
                }
            }
        else:
            res = {
                "status_code": 200,
                "message": 'success',
                "data": {
                    "restaurant_id": winner_obj[0].restaurant_id,
                    "restaurant_name": winner_obj[0].restaurant_name,
                    "menus": winner_obj[0].menus
                }
            }
        return Response(res)


class LogoutViewAPI(APIView):
    permission_classes = (IsAuthenticated,)

    def post(self, request):
        try:
            refresh_token = request.data["refresh_token"]
            token = RefreshToken(refresh_token)
            token.blacklist()

            return Response(status=status.HTTP_205_RESET_CONTENT)
        except Exception as e:
            print(e)
            res = {
                "status_code": 400,
                "message": '',
                "data": "Bad request"
            }
            return Response(res)

