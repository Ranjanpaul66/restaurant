from django.contrib import admin
from django.urls import re_path
from .views import *
from rest_framework_simplejwt import views as jwt_views

urlpatterns = [
    re_path('get-token', MyTokenObtainPairView.as_view(), name='token_obtain_pair'),
    re_path('refresh-token', jwt_views.TokenRefreshView.as_view(), name='token_refresh'),
    re_path('user-create', UserAPI.as_view(), name='user_create'),
    re_path('employee-create', EmployeeCreateAPI.as_view(), name='employee_create'),
    re_path('restaurant-create', CreateRestaurantAPI.as_view(), name='restaurant_create'),
    re_path('menus-create', CreateMenusAPI.as_view(), name='menus_create'),
    re_path('today-menu', TodayMenuAPI.as_view(), name='today_menu'),
    re_path('result', VoteResultAPI.as_view(), name='vote_result'),
    re_path('vote', VoteAPI.as_view(), name='vote'),
]
