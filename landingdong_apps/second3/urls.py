from django.conf.urls import url

from landingdong_apps.second3 import views

app_name = 'index'
urlpatterns = [
    url('second3/', views.second3, name='second3')
]
