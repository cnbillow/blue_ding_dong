from django.shortcuts import render


# Create your views here.

def news(request):
    '''

    :param request:
    :return:
    '''
    return render(request, 'landingdong_html/news.html')
