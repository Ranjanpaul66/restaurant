from rest_framework import serializers
from .models import *
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer,api_settings,update_last_login
from .custom_logger import setup_logger
logger = setup_logger("api_logger", "all_logs/api.log")


class UsersSerializers(serializers.ModelSerializer):
    class Meta:
        model = ApiUser
        fields='__all__'

    def create(self, validated_data):
        password = validated_data.pop('password')
        user = super().create(validated_data)
        user.set_password(password)
        user.save()
        return user

class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    def validate(self, attrs):
        data = super().validate(attrs)
        refresh = self.get_token(self.user)
        data['refresh'] = str(refresh)
        data['access'] = str(refresh.access_token)
        # Add extra responses here
        data['user_id'] = self.user.id
        data['expires_in'] = 60
        main_data = {
            "status_code":200,
            "message": "success",
            "data":data
        }
        update_last_login(None, self.user)
        logger.warning("Log in response")
        logger.warning(main_data)
        return main_data


class RestaurantSerializer(serializers.ModelSerializer):
    class Meta:
        model = Restaurant
        fields='__all__'

    def validate_user(self, value):

        if value.user_role_id !=2:
            raise serializers.ValidationError("User's Roll id Should be Restaurant User")
        return value

class MenusSerializer(serializers.ModelSerializer):
    class Meta:
        model = Menu
        fields ='__all__'

    def validate(self, attrs):
        if attrs['restaurant'].user.id != attrs['created_by']:
            raise serializers.ValidationError("Restaurant User Should do create his own Menu!")
        return attrs


class VoteByUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = VoteByUser
        fields ='__all__'
