from django.conf.urls import url

from landingdong_apps.funeng import views

app_name = 'index'
urlpatterns = [
    url('funeng/', views.funeng, name='funeng')
]
