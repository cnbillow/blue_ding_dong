from django.db import models


# Create your models here.

class Advertising(models.Model):  # 广告位
    path = models.CharField(max_length=255)  # 广告图片存放位置
    url = models.CharField(max_length=255, null=True)  # 广告超链接
    id_show = models.ImageField()  # 广告是否显示
    order = models.ImageField()  # 广告顺序
    time = models.DateTimeField()  # 广告创建时间


class News(models.Model):  # 新闻
    news_type = models.CharField(max_length=8)  # 新闻类型
    news_title = models.CharField(max_length=50)  # 新闻标题
    news_intro = models.TextField()  # 新闻简介
    news_content = models.CharField(max_length=255)  # 新闻内容
    news_cover = models.CharField(max_length=255, null=True)  # 新登封面
    news_show = models.ImageField()  # 新闻是否显示
    news_time = models.DateTimeField()  # 创建时间
