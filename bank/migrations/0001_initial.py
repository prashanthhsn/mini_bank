# Generated by Django 3.2.3 on 2021-05-15 15:17

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='All_Customer',
            fields=[
                ('Date', models.DateField(auto_now=True)),
                ('Name', models.CharField(max_length=25)),
                ('Account_No', models.CharField(editable=False, max_length=13, primary_key=True, serialize=False)),
                ('Photo', models.ImageField(upload_to='media')),
                ('Aadhar_No', models.CharField(max_length=14)),
                ('Phone_No', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Chit_Batches',
            fields=[
                ('Batch_No', models.IntegerField(primary_key=True, serialize=False)),
                ('Total_Fund', models.IntegerField()),
                ('Start_Date', models.DateField()),
                ('End_Date', models.DateField()),
                ('Number_of_Customers', models.IntegerField()),
                ('Status', models.BooleanField()),
            ],
        ),
        migrations.CreateModel(
            name='Credit_Customer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Date_Credited', models.DateField(auto_now=True)),
                ('Name', models.CharField(blank=True, editable=False, max_length=25)),
                ('Account_No', models.IntegerField(editable=False)),
                ('Total_Credit', models.IntegerField(blank=True, default=0)),
                ('Interest_Rate', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Credit_Customer_Credit',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Date', models.DateField()),
                ('Account_No', models.IntegerField()),
                ('Amount_Credited', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Saving_Customer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Date_Credited', models.DateField(auto_now=True)),
                ('Name', models.CharField(blank=True, editable=False, max_length=25)),
                ('Account_No', models.IntegerField(editable=False)),
                ('Total_Savings', models.IntegerField(blank=True, default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Savings_Customer_Savings',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Date', models.DateField()),
                ('Account_No', models.IntegerField()),
                ('Amount_Deposited', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Chit_Fund_Customer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Date_Credited', models.DateField()),
                ('Name', models.CharField(max_length=25)),
                ('Account_No', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='bank.all_customer')),
                ('Batch_No', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='bank.chit_batches')),
            ],
        ),
    ]
