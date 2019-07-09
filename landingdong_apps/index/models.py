from django.db import models


# Create your models here.

class Advertising(models.Model):  # 广告位
    path = models.CharField(max_length=255)  # 广告图片存放位置
    url = models.CharField(max_length=255, null=True)  # 广告超链接
    id_show = models.ImageField()  # 广告是否显示
    order = models.ImageField()  # 广告顺序
    time = models.DateTimeField()  # 广告创建时间


class CorporateCulture(models.Model):  # 企业文化展示
    title = models.CharField(max_length=8)  # 企业文化标题
    title_logo = models.CharField(max_length=255)  # 企业文化标题下的图片
    title_logo_show = models.ImageField()  # 企业文化标题图片是否显示
    content = models.CharField(max_length=255)  # 企业文化内容


class AboutUs(models.Model):  # 关于我们
    title = models.CharField(max_length=8)  # 标题
    video = models.CharField(max_length=255)  # 视频
    video_show = models.ImageField()  # 视频是否显示
    content = models.CharField(max_length=255)  # 内容
    # def __unicode__(self):
    #     return self.title


class DevelopmentHistory(models.Model):  # 发展历程
    year = models.CharField(max_length=8)  # 年
    content = models.CharField(max_length=255)  # 内容


class Text(models.Model):  # 标题和内容对
    title = models.CharField(max_length=8)  # 标题
    content = models.CharField(max_length=255, null=True)  # 内容
    use_place = models.CharField(max_length=8, null=True)  # 应用的位置


class PartnerBrand(models.Model):  # 合作品牌
    name = models.CharField(max_length=11)  # 合作品牌名称
    logo = models.CharField(max_length=255)  # 合作品牌的logo
    url = models.CharField(max_length=255, null=True)  # 合作品牌的网站
    Brand_show = models.ImageField()  # 合作品牌是否显示
    order = models.ImageField()  # 合作品牌在网站中的排列顺序


class ScopeOfService(models.Model):  # 服务范围
    service_name = models.CharField(max_length=8)  # 服务名称
    service_url = models.CharField(max_length=255, null=True)  # 服务详解连接


class BusinessCooperation(models.Model):  # 商务合作
    u_name = models.CharField(max_length=20)  # 姓名
    phone = models.ImageField()  # 电话
    site = models.CharField(max_length=255)  # 地址
    time = models.DateTimeField()  # 提交时间


class Firm(models.Model):  # 公司
    firm_name = models.CharField(max_length=255)  # 公司名称
    firm_site = models.CharField(max_length=255)  # 公司地址
    firm_map = models.CharField(max_length=255, null=True)  # 公司地图


class ContactUs(models.Model):  # 联系
    winxi = models.CharField(max_length=255, null=True)  # 微信公众号的二维码图片
    phone = models.ImageField()  # 客户电话
    e_mail = models.CharField(max_length=50, null=True)  # 邮箱地址
    weibo = models.CharField(max_length=50, null=True)  # 微博号
