from django.conf.urls import url

from landingdong_apps.second1 import views

app_name = 'index'
urlpatterns = [
    url('second1/', views.second1, name='second1')
]
