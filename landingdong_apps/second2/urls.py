from django.conf.urls import url

from landingdong_apps.second2 import views

app_name = 'index'
urlpatterns = [
    url('second2/', views.second2, name='second2')
]
