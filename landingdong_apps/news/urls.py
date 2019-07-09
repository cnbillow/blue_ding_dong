from django.conf.urls import url

from landingdong_apps.news import views

app_name = 'index'
urlpatterns = [
    url('news/', views.news, name='news')
]
