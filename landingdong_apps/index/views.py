from django.shortcuts import render

# Create your views here.
from landingdong_apps.index.models import Advertising, CorporateCulture, AboutUs, DevelopmentHistory, Text, PartnerBrand, \
    ScopeOfService, BusinessCooperation, Firm, ContactUs
from landingdong_apps.news.models import News


def index(request):
    '''
    首页内容
    返回首页的页面，并且将数据渲染到页面中。
    数据有Advertising, CorporateCulture, AboutUs, DevelopmentHistory, Text, PartnerBrand, \
    ScopeOfService, Firm, ContactUs
    :param request:BusinessCooperation
    :return:Advertising, CorporateCulture, AboutUs, DevelopmentHistory, Text, PartnerBrand, \
    ScopeOfService, Firm, ContactUs
    '''
    i_a = Advertising.objects.all()  # 广告
    c_c = CorporateCulture.objects.all()  # 企业文化
    a_u = AboutUs.objects.get(video_show=1)  # 关于我们
    d_h = DevelopmentHistory.objects.all().values()  # 发展历程
    t_m_a = Text.objects.filter(id=1).values()[0]  # 市场分析
    t_x_1 = list()  # content有内容id小于10
    t_x_2 = list()  # content有内容id大于10
    for i in Text.objects.all():
        if not i.use_place:
            if i.id < 10:
                t_x_1.append(i)
            else:
                t_x_2.append(i)
    p_b = PartnerBrand.objects.filter(Brand_show=1)  # 合作品牌
    s_o_s = ScopeOfService.objects.all()  # 服务范围
    s_o_s_1 = list()  # 服务范围
    s_o_s_2 = list()  # 服务范围
    for i in ScopeOfService.objects.all():
        if i.id <= 3:
            s_o_s_1.append(i)
        else:
            s_o_s_2.append(i)
    # news = News.objects.all()  # 新闻
    # for i in News.objects.all().where():
    f = Firm.objects.all()  # 公司
    c_u = ContactUs.objects.all()[0]  # 联系方式
    context = {'i_a': i_a,  # 广告
               'c_c': c_c,  # 企业文化
               'a_u': a_u,  # 关于我们
               'd_h': d_h,  # 发展历程
               't_m_a': t_m_a,  # 市场分析
               't_x_1': t_x_1,  # content有内容id小于10
               't_x_2': t_x_2,  # content有内容id大于10
               'p_b': p_b,  # 合作品牌
               's_o_s': s_o_s,  # 服务范围
               's_o_s_1': s_o_s_1,  # 服务范围
               's_o_s_2': s_o_s_2,  # 服务范围
               # 'news': news,  # 新闻
               'f': f,  # 公司
               'c_u': c_u  # 联系方式
               }
    return render(request, 'landingdong_html/index.html', context)


def dusin_coop(request):
    '''

    :param request:
    :return:
    '''
    b_c = BusinessCooperation.objects.all()  # 商务合作
    return render(request, 'landingdong_html/index.html')
