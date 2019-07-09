from django.conf.urls import url

from landingdong_apps.index import views

app_name = 'index'
urlpatterns = [
    url('^$', views.index, name="index"),    #首页'^$'这种用法可以使用页面直接绑定‘/’，不需要加参数
    url('dusin_coop/', views.dusin_coop,name='dusin_coop')
]
