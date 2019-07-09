from django.contrib import admin
from django.urls import path
from django.conf.urls import url, include
from django.views.static import serve  # 上传文件处理函数

from .settings import MEDIA_ROOT


urlpatterns = [
    path('admin/', admin.site.urls),

    url(r'^', include('landingdong_apps.index.urls', namespace='index1')),  # 跳转到index的urls中
    url(r'^', include('landingdong_apps.about_us.urls', namespace='about_us1')),  # 跳转到about_us中的urls
    url(r'^', include('landingdong_apps.funeng.urls', namespace='funeng1')),  # 跳转到funeng中urls
    url(r'^', include('landingdong_apps.service.urls', namespace='service1')),  # 跳转到service中的urls
    url(r'^', include('landingdong_apps.news.urls',namespace='news1')),  # 跳转到news中的urls
    url(r'^', include('landingdong_apps.cooperation.urls',namespace='cooperation1')),   # 跳转到cooperation中的urls
    url(r'^', include('landingdong_apps.second4.urls',namespace='second4_1')),  # 跳转到second4中的urls
    url(r'^', include('landingdong_apps.second1.urls',namespace='second1_1')),  # 跳转到second1中的urls
    url(r'^', include('landingdong_apps.second2.urls',namespace='second2_1')),  # 跳转到second2中的urls
    url(r'^', include('landingdong_apps.second3.urls', namespace='second3_1')),  # 跳转到second3中的urls

    url(r'^', include('df_goods.urls', namespace='df_goods')),
    url(r'^user/', include('df_user.urls', namespace='df_user')),
    url(r'^cart/', include('df_cart.urls', namespace='df_cart')),
    url(r'^order/', include('df_order.urls', namespace='df_order')),
    url(r'^tinymce/', include('tinymce.urls')),  # 使用富文本编辑框配置confurl
    url(r'^media/(?P<path>.*)$', serve, {"document_root":MEDIA_ROOT}),

]
