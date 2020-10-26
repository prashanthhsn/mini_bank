from django.contrib import admin
from .models import All_Customer
# Register your models here.

class All_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Sl_No','Date','Name','Account_No','Photo','Aadhar_No','Phone_No',)
admin.site.register(All_Customer,All_CustomerAdmin)