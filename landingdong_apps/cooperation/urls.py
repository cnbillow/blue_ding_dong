from django.conf.urls import url

from landingdong_apps.cooperation import views

app_name = 'index'
urlpatterns = [
    url('cooperation/', views.cooperation,name='cooperation')
]
