import xadmin
from rest_framework.routers import DefaultRouter
from rest_framework.documentation import include_docs_urls

from django.conf import settings
from django.conf.urls import url, include
from django.conf.urls.static import static
from django.contrib.sitemaps import views as sitemap_views
from django.views.decorators.cache import cache_page

from blog.apis import PostViewSet, CategoryViewSet
from blog.views import (
    IndexView, CategoryView, TagView,
    PostDetailView, SearchView, AuthorView,
    Handler404, Handler50x
)
from blog.rss import LatestPostFeed
from blog.sitemap import PostSitemap
from config.views import LinkListView
from comment.views import CommentView, VerifyCaptcha
from .autocomplete import CategoryAutocomplete, TagAutocomplete


# handler404 = Handler404.as_view()
# handler500 = Handler50x.as_view()

router = DefaultRouter()
router.register(r'post', PostViewSet, basename='api-post')
router.register(r'category', CategoryViewSet, basename='api-category')

urlpatterns = [

    url(r'^$', IndexView.as_view(), name='index'),
    #分类页面链接：http://127.0.0.1:8000/category/1/
    url(r'^category/(?P<category_id>\d+)/$', CategoryView.as_view(), name='category-list'),
    #根据标签分页:http://127.0.0.1:8000/tag/1/
    url(r'^tag/(?P<tag_id>\d+)/$', TagView.as_view(), name='tag-list'),
    #根据作者进行分页：http://127.0.0.1:8000/search/
    url(r'^search/$', SearchView.as_view(), name='search'),
    url(r'^comment/$', CommentView.as_view(), name='comment'),
    url(r'^author/(?P<owner_id>\d+)/$', AuthorView.as_view(), name='author'),
    #文章详情页
    url(r'^post/(?P<post_id>\d+).html$', PostDetailView.as_view(), name='post-detail'),
    #子应用链接页
    url(r'^links/$', LinkListView.as_view(), name='links'),
    #管理员页面
    url(r'^admin/', xadmin.site.urls, name='xadmin'),
    #数据订阅和地图
    #cache_page可以为数据提供缓存
    #用缓存发送到PostSitemap视图

    url(r'^rss|feed/', LatestPostFeed(), name='rss'),
    url(r'^sitemap\.xml$', cache_page(60 * 20, key_prefix='sitemap_cache_')(sitemap_views.sitemap), {'sitemaps': {'posts': PostSitemap}}),
    #自动补全工具　用于模糊查询之类
    url(r'^category-autocomplete/$', CategoryAutocomplete.as_view(), name='category-autocomplete'),
    url(r'^tag-autocomplete/$', TagAutocomplete.as_view(), name='tag-autocomplete'),

    url(r'^ckeditor/', include('ckeditor_uploader.urls')),

    url(r'^api/', include(router.urls)),
    url(r'^api/docs/', include_docs_urls(title='typeidea apis')),
    url(r'^captcha/', include('captcha.urls')),
    url(r'^verify_captcha/', VerifyCaptcha.as_view(), name='verify_captcha'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)





if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        url(r'^__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns
