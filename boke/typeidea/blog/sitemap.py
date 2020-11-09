from django.contrib.sitemaps import Sitemap
from django.urls import reverse

from .models import Post

# http://127.0.0.1:8000/sitemap.xml

class PostSitemap(Sitemap):
    changefreq = "always"
    priority = 1.0
    protocol = 'https'

    def items(self):
        #数据地图：提供数据标记为正常的而文章
        return Post.objects.filter(status=Post.STATUS_NORMAL)

        #提供商数据的时间
    def lastmod(self, obj):
        return obj.created_time

    def location(self, obj):
        return reverse('post-detail', args=[obj.pk])
