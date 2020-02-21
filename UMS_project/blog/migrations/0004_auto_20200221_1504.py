# Generated by Django 3.0.3 on 2020-02-21 09:34

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_add_student'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='add_student',
            name='slugs',
        ),
        migrations.AddField(
            model_name='add_student',
            name='Enrollment_no',
            field=models.IntegerField(default=2, verbose_name='Enrollment No:'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='add_student',
            name='branch',
            field=models.CharField(choices=[('cba', 'CBA'), ('bda', 'BDA'), ('cs', 'CS')], default=django.utils.timezone.now, max_length=10, verbose_name='Branch'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='add_student',
            name='address',
            field=models.CharField(max_length=300, verbose_name='Address:'),
        ),
        migrations.AlterField(
            model_name='add_student',
            name='email_address',
            field=models.EmailField(max_length=254, verbose_name='Email Address'),
        ),
        migrations.AlterField(
            model_name='add_student',
            name='phone',
            field=models.CharField(blank=True, max_length=10, verbose_name='Contact Phone'),
        ),
        migrations.AlterField(
            model_name='add_student',
            name='student_name',
            field=models.CharField(max_length=40, verbose_name='Student Name'),
        ),
    ]
