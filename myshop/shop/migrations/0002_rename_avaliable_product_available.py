# Generated by Django 4.2.1 on 2023-05-31 06:37

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='avaliable',
            new_name='available',
        ),
    ]