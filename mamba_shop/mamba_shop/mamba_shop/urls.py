"""mamba_shop URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include
from . import views
from django.conf import settings

urlpatterns = [
    # path('admin/', admin.site.urls),
    # # 127.0.0.1:8000/test_cors
    # path('test_cors', views.test_cors),
    # # 127.0.0.1:8000/test_cors_server
    # path('test_cors_server', views.test_cors_server),
    url(r'^admin/', admin.site.urls),
    # url(r'^v1/users', include('user.urls')),
    # url(r'^v1/tokens', include('dtoken.urls')),
    url(r'^v1/carts', include('carts.urls')),
    # url(r'^v1/orders', include('order.urls')),
    url(r'^v1/goods', include('goods.urls')),
]

urlpatterns += static(settings.MEDIA_URL,document_root = settings.MEDIA_ROOT)
