from django.contrib.auth.base_user import BaseUserManager
from django.db import models
from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin

# Create your models here.

class UserRole(models.Model):
    role_name = models.CharField(max_length=45, unique=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

class CustomUserManager(BaseUserManager):
    def create_user(self, email, full_name, password, **rest_fields):
        user = self.model(email=email, full_name=full_name, password=password, **rest_fields)
        user.set_password(password)
        user.is_superuser = False
        user.save(using=self._db)
        return user

    def create_superuser(self, email,  full_name, password, **rest_fields):
        rest_fields.setdefault('is_superuser', True)
        rest_fields.setdefault('status', 1)
        user = self.create_user(email=email, full_name=full_name, password=password,
                                 **rest_fields)
        user.is_superuser = False
        user.save(using=self._db)
        return user

    def get_by_natural_key(self, email_):
        return self.get(email=email_)


class ApiUser(AbstractBaseUser, PermissionsMixin):
    full_name = models.CharField(max_length=100)
    user_role = models.ForeignKey('UserRole', on_delete=models.CASCADE)
    mobile = models.CharField(max_length=13,unique=True)
    password = models.CharField(max_length=500)
    address = models.CharField(max_length=255, blank=True, null=True)
    email = models.CharField(max_length=254,unique=True)
    gender = models.CharField(max_length=10,blank=True,null=True)
    dob = models.DateField(max_length=20,blank=True,null=True)
    is_superuser = models.BooleanField(default=False)
    department = models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.IntegerField(blank=True,null=True)
    REQUIRED_FIELDS = ['full_name']
    USERNAME_FIELD = 'email'
    objects = CustomUserManager()

    def get_short_name(self):
        return self.email

    def natural_key(self):
        return self.email

    def __str__(self):
        return str(self.email)



class Restaurant(models.Model):
    name = models.CharField(max_length=100)
    user = models.ForeignKey("API.ApiUser", models.DO_NOTHING,unique=True)
    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.IntegerField()
    updated_by = models.IntegerField(blank=True, null=True)
    # class Meta:
    #     unique_together = ('id', 'user',)


class Menu(models.Model):
    restaurant = models.ForeignKey('Restaurant', models.DO_NOTHING)
    menus = models.TextField()
    date = models.DateField(auto_now_add=True)
    user = models.ForeignKey("API.ApiUser", models.DO_NOTHING)
    vote_count = models.IntegerField(default=0)
    created_at = models.DateTimeField(auto_now_add=True)
    created_by = models.IntegerField()
    updated_at = models.DateTimeField(auto_now=True, blank=True, null=True)
    updated_by = models.IntegerField(blank=True, null=True)

    class Meta:
        unique_together = ('restaurant', 'date',)

class VoteByUser(models.Model):
    selected_menu= models.ForeignKey('Menu', models.DO_NOTHING)
    date = models.DateField(auto_now_add=True)
    created_by = models.IntegerField()
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        unique_together = ('selected_menu', 'date','created_by',)
