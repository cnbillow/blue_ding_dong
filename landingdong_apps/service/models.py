from django.db import models


# Create your models here.

class Advertising(models.Model):  # 广告位
    path = models.CharField(max_length=255)  # 广告图片存放位置
    url = models.CharField(max_length=255)  # 广告超链接
    id_show = models.ImageField()  # 广告是否显示
    order = models.ImageField()  # 广告顺序
    time = models.DateTimeField()  # 广告创建时间


class ProjectCase(models.Model):  # 项目案例
   photo = models.CharField(max_length=255) #项目的照片
   order = models.ImageField()  # 项目案例的排序
   time = models.DateTimeField()    #项目案例创建的时间
