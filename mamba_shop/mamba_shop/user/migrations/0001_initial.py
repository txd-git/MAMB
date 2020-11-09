# Generated by Django 2.2.12 on 2020-09-15 13:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Address',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('address', models.CharField(max_length=255, verbose_name='地址(为了减小数据库冗余相同的地址不允许存入数据库)')),
            ],
            options={
                'verbose_name_plural': '地址',
                'db_table': 'address',
                'unique_together': {('id', 'address')},
            },
        ),
        migrations.CreateModel(
            name='Classification',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('classification', models.CharField(max_length=255, verbose_name='类别')),
            ],
            options={
                'verbose_name_plural': '新闻类别',
                'db_table': 'classification',
                'unique_together': {('id', 'classification')},
            },
        ),
        migrations.CreateModel(
            name='State',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('state', models.CharField(max_length=255, verbose_name='状态')),
            ],
            options={
                'verbose_name_plural': '状态',
                'db_table': 'state',
            },
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=30, verbose_name='登录名')),
                ('password', models.CharField(max_length=30, verbose_name='密码')),
                ('nickname', models.CharField(max_length=30, verbose_name='显示用户名')),
                ('phone', models.CharField(blank=True, max_length=20, null=True, verbose_name='电话')),
                ('birthday', models.DateField(blank=True, db_column='Birthday', null=True, verbose_name='生日')),
                ('mail', models.EmailField(max_length=50, verbose_name='邮箱')),
                ('head_img', models.ImageField(blank=True, null=True, upload_to='', verbose_name='头像')),
            ],
            options={
                'verbose_name_plural': '用户',
                'db_table': 'user',
                'unique_together': {('id', 'username')},
            },
        ),
        migrations.CreateModel(
            name='UserAddress',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('address_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='user.Address', verbose_name='地址id')),
                ('use_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='user.User', verbose_name='用户id')),
            ],
            options={
                'verbose_name_plural': '用户地址',
                'db_table': 'user_address',
            },
        ),
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('theme', models.CharField(max_length=255, verbose_name='文章主题')),
                ('body', models.TextField(verbose_name='内容')),
                ('time', models.DateTimeField(blank=True, null=True, verbose_name='创建时间')),
                ('article_like', models.IntegerField(db_column='article_Like', verbose_name='文章点赞')),
                ('heat', models.IntegerField(blank=True, null=True, verbose_name='热点')),
                ('classification_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='user.Classification', verbose_name='类别id')),
                ('state_id', models.ForeignKey(db_column='state', on_delete=django.db.models.deletion.CASCADE, to='user.State', verbose_name='状态ｉｄ')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='user.User', verbose_name='用户id')),
            ],
            options={
                'verbose_name_plural': '新闻',
                'db_table': 'news',
            },
        ),
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('content', models.TextField(verbose_name='评论内容')),
                ('comment', models.IntegerField(blank=True, null=True, verbose_name='跟评论')),
                ('follow', models.IntegerField(blank=True, null=True, verbose_name='被关注次数关注')),
                ('news', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='user.News', verbose_name='新闻id')),
            ],
            options={
                'verbose_name_plural': '评论',
                'db_table': 'comment',
            },
        ),
    ]
