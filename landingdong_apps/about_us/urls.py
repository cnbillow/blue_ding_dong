from django.conf.urls import url

from landingdong_apps.about_us import views

app_name = 'index'
urlpatterns = [
    url('about_us', views.about_us, name='about_us'),

]
