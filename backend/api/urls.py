from django.conf.urls import url

from rest_framework.authtoken.views import obtain_auth_token

from .views import CreatUserAPIView, LogoutUserAPIView

urlpatterns = [
    url(r'^auth/login/$', obtain_auth_token, name='auth_user_login'),
    url(r'^auth/register/$', CreatUserAPIView.as_view(), name='auth_user_create'),
    url(r'^auth/logout/$', LogoutUserAPIView.as_view(), name='auth_user_logout')
]