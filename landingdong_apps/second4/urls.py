from django.conf.urls import url

from landingdong_apps.second4 import views

app_name = 'index'
urlpatterns = [
    url('second4/', views.second4, name='second4')
]
