from django.shortcuts import render


# Create your views here.
def cooperation(request):
    '''

    :param request:
    :return:
    '''
    return render(request, 'landingdong_html/cooperation.html')
