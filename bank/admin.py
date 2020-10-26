from django.contrib import admin
from .models import All_Customer,Chit_Batches
# Register your models here.

class All_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Sl_No','Date','Name','Account_No','Photo','Aadhar_No','Phone_No',)
admin.site.register(All_Customer,All_CustomerAdmin)

class Chit_BatchesAdmin(admin.ModelAdmin):
    list_display = ('Sl_No','Batch_No','Total_Fund','Start_Date','End_Date','Number_of_Customers','Status')
admin.site.register(Chit_Batches,Chit_BatchesAdmin)