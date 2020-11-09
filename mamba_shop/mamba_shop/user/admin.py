from django.contrib import admin

# Register your models here.


# Register your models here.
# from basketball.basec.models import Commodities
from .models import User, Address, State, Classification, UserAddress, News, Comment


#用户表
@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display =['username','password','nickname','phone','birthday','mail','head_img']
    fields = ('id','username','password','nickname','phone','birthday','mail','head_img')
    search_fields = ['username']
    save_on_top = True




#地址表
@admin.register(Address)
class AddressAdmin(admin.ModelAdmin):
    list_display =['address']
    fields =('id','address')
    save_on_top = True


#用户地址关系表
@admin.register(UserAddress)
class UserAddressAdmin(admin.ModelAdmin):
    list_display =['address_id','use_id']
    fields =('id','address_id','use_id')

    save_on_top = True

#类别
@admin.register(Classification)
class ClassificationAdmin(admin.ModelAdmin):
    list_display =['classification']
    fields =('id','classification')

    save_on_top = True


#状态
@admin.register(State)
class StateAdmin(admin.ModelAdmin):
    list_display =['state']
    fields =('id','state')
    save_on_top = True


#新闻
@admin.register(News)
class NewsAdmin(admin.ModelAdmin):
    list_display =['theme','body','user_id','time','classification_id','article_like','heat','state_id']
    fields =('id','theme','body','user_id','time','classification_id','article_like','heat','state_id')
    save_on_top = True
    search_fields = ['theme']



@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    list_display =['content','news','comment','follow']
    fields =('id','content','news','comment','follow')
    save_on_top = True