from django.shortcuts import render

# Create your views here.
from landingdong_apps.about_us.models import Advertising
from landingdong_apps.index.models import DevelopmentHistory, AboutUs, CorporateCulture


def about_us(request):
    '''

    :param request:
    :return:
    '''
    i_a = Advertising.objects.all()  # 广告
    d_h = DevelopmentHistory.objects.all().values()  # 发展历程
    a_u = AboutUs.objects.get(video_show=1)  # 关于我们
    c_c = CorporateCulture.objects.all()  # 企业文化
    # print(a_u.title)
    context = {'i_a':i_a,   # 广告
               'd_h':d_h,   # 发展历程
               'a_u':a_u,   # 关于我们
               'c_c':c_c,   # 企业文化
    }
    return render(request, 'landingdong_html/about_us.html', context )
