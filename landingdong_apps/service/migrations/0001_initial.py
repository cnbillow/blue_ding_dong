# Generated by Django 2.2.1 on 2019-06-19 15:14

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Advertising',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('path', models.CharField(max_length=255)),
                ('url', models.CharField(max_length=255)),
                ('id_show', models.ImageField(upload_to='')),
                ('order', models.ImageField(upload_to='')),
                ('time', models.DateTimeField()),
            ],
        ),
        migrations.CreateModel(
            name='ProjectCase',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('photo', models.CharField(max_length=255)),
                ('order', models.ImageField(upload_to='')),
                ('time', models.DateTimeField()),
            ],
        ),
    ]
