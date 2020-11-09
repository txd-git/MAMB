from django.db import models


class User(models.Model):
    id = models.IntegerField(primary_key=True)
    username = models.CharField('登录名', max_length=30)
    password = models.CharField('密码', max_length=30)
    nickname = models.CharField('显示用户名', max_length=30)  # Field name made lowercase.
    phone = models.CharField('电话', max_length=20, blank=True, null=True)
    birthday = models.DateField('生日', db_column='Birthday', blank=True, null=True)  # Field name made lowercase.
    mail = models.EmailField('邮箱', max_length=50)
    head_img = models.ImageField('头像', blank=True, null=True)  # This field type is a guess.

    class Meta:
        db_table = 'user'
        unique_together = (('id', 'username'),)
        verbose_name_plural = '用户'

class Address(models.Model):
    id = models.IntegerField(primary_key=True)
    address = models.CharField('地址(为了减小数据库冗余相同的地址不允许存入数据库)', max_length=255)

    class Meta:
        db_table = 'address'
        unique_together = (('id', 'address'),)
        verbose_name_plural = '地址'


class UserAddress(models.Model):
    id = models.IntegerField(primary_key=True)
    address_id = models.ForeignKey(Address,verbose_name='地址id',on_delete=models.CASCADE, )
    use_id = models.ForeignKey(User, verbose_name='用户id',on_delete=models.CASCADE, )

    class Meta:
        db_table = 'user_address'
        verbose_name_plural = '用户地址'

class Classification(models.Model):
    id = models.IntegerField(primary_key=True)
    classification = models.CharField('类别', max_length=255)

    class Meta:
        db_table = 'classification'
        unique_together = (('id', 'classification'),)
        verbose_name_plural = '新闻类别'

class State(models.Model):
    id = models.IntegerField(primary_key=True)
    state = models.CharField('状态', max_length=255)

    class Meta:
        db_table = 'state'
        verbose_name_plural = '状态'

class News(models.Model):
    id = models.IntegerField(primary_key=True)
    theme = models.CharField(verbose_name='文章主题', max_length=255)
    body = models.TextField(verbose_name='内容')
    user_id = models.ForeignKey(User,verbose_name='用户id',on_delete=models.CASCADE,)
    time = models.DateTimeField('创建时间', blank=True, null=True)
    classification_id= models.ForeignKey(Classification,verbose_name='类别id',on_delete=models.CASCADE, blank=True, null=True)
    article_like = models.IntegerField('文章点赞', db_column='article_Like')  # Field name made lowercase.
    heat = models.IntegerField('热点', blank=True, null=True)
    state_id = models.ForeignKey(State,verbose_name='状态ｉｄ',on_delete=models.CASCADE, db_column='state')

    class Meta:
        db_table = 'news'
        verbose_name_plural = '新闻'

class Comment(models.Model):
    id = models.IntegerField(primary_key=True)
    content = models.TextField('评论内容')
    news = models.ForeignKey(News,verbose_name='新闻id',on_delete=models.CASCADE,blank=True, null=True)

    comment = models.IntegerField(verbose_name='跟评论',blank=True, null=True)
    follow = models.IntegerField('被关注次数关注',blank=True, null=True,)

    class Meta:
        db_table = 'comment'
        verbose_name_plural = '评论'





#