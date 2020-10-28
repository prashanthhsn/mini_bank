from django.contrib import admin
from .models import All_Customer,Chit_Batches,Savings_Customer,Credit_Customer,Chit_Fund_Customer,Savings_Customer_Savings
# Register your models here.

class All_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Sl_No','Date','Name','Account_No','Photo','Aadhar_No','Phone_No',)
admin.site.register(All_Customer,All_CustomerAdmin)

class Chit_BatchesAdmin(admin.ModelAdmin):
    list_display = ('Sl_No','Batch_No','Total_Fund','Start_Date','End_Date','Number_of_Customers','Status')
admin.site.register(Chit_Batches,Chit_BatchesAdmin)

class Savings_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Sl_No','Date_Added','Name','Account_No','Total_Savings')
admin.site.register(Savings_Customer,Savings_CustomerAdmin)

class Credit_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Sl_No','Date_Credited','Name','Account_No','Interest_Rate','Total_Credit')
admin.site.register(Credit_Customer,Credit_CustomerAdmin)

class Chit_Fund_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Sl_No','Date_Credited','Name','Account_No','Batch_No')
admin.site.register(Chit_Fund_Customer,Chit_Fund_CustomerAdmin)

class Savings_Customer_SavingsAdmin(admin.ModelAdmin):
    list_display = ('Sl_No','Date','Name','Account_No','Amount')
admin.site.register(Savings_Customer_Savings,Savings_Customer_SavingsAdmin)