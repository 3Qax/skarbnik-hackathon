# Generated by Django 2.0.2 on 2019-01-07 17:25

from django.conf import settings
import django.contrib.auth.models
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0009_alter_user_last_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('first_name', models.CharField(blank=True, max_length=30, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('id_field', models.AutoField(db_column='id_', primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=100)),
                ('username', models.CharField(max_length=64, unique=True)),
                ('email', models.CharField(max_length=120)),
                ('password', models.CharField(max_length=200)),
                ('role', models.IntegerField(null=True)),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.Group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.Permission', verbose_name='user permissions')),
            ],
            options={
                'db_table': 'user',
                'managed': True,
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.CreateModel(
            name='Class',
            fields=[
                ('id_field', models.AutoField(db_column='id_', primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=100)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, unique=True)),
            ],
            options={
                'db_table': 'class',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Payment',
            fields=[
                ('id_field', models.AutoField(db_column='id_', primary_key=True, serialize=False)),
                ('creation_date', models.DateTimeField(auto_now_add=True)),
                ('start_date', models.DateField()),
                ('end_date', models.DateField()),
                ('amount', models.DecimalField(decimal_places=2, max_digits=6)),
                ('name', models.CharField(max_length=255)),
                ('description', models.TextField()),
                ('image', models.ImageField(upload_to='images')),
                ('class_field', models.ForeignKey(db_column='class_id', on_delete=django.db.models.deletion.CASCADE, to='skarbnik.Class')),
            ],
            options={
                'db_table': 'payment',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='PaymentDetail',
            fields=[
                ('id_field', models.AutoField(db_column='id_', primary_key=True, serialize=False)),
                ('amount_paid', models.DecimalField(decimal_places=2, max_digits=6)),
                ('payment', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='skarbnik.Payment')),
            ],
            options={
                'db_table': 'payment_detail',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id_field', models.AutoField(db_column='id_', primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=255)),
                ('class_field', models.ForeignKey(blank=True, db_column='class_id', null=True, on_delete=django.db.models.deletion.CASCADE, to='skarbnik.Class')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'db_table': 'student',
                'managed': True,
            },
        ),
        migrations.CreateModel(
            name='UserLoginActivity',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('login_IP', models.GenericIPAddressField(blank=True, null=True)),
                ('login_datetime', models.DateTimeField(auto_now=True)),
                ('login_username', models.CharField(blank=True, max_length=40, null=True)),
                ('status', models.CharField(blank=True, choices=[('S', 'Success'), ('F', 'Failed')], default='S', max_length=1, null=True)),
                ('user_agent_info', models.CharField(max_length=255)),
            ],
            options={
                'verbose_name': 'user_login_activity',
                'verbose_name_plural': 'user_login_activities',
            },
        ),
        migrations.AddField(
            model_name='paymentdetail',
            name='student',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='skarbnik.Student'),
        ),
    ]
