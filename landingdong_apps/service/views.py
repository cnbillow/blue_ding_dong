from django.shortcuts import render

# Create your views here.

def service(request):
    '''

    :param request:
    :return:
    '''
    return render(request,'landingdong_html/service.html')