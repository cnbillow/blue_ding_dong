from django.conf.urls import url

from landingdong_apps.service import views

app_name = 'index'
urlpatterns = [
    url('service/', views.service,name='service')
]
