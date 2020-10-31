from django.contrib import admin
from .models import All_Customer,Saving_Customer,Credit_Customer,Chit_Batches,Savings_Customer_Savings,Credit_Customer_Credit,Chit_Fund_Customer
# Register your models here.

class All_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Date','Name','Account_No','Photo','Aadhar_No','Phone_No',)
admin.site.register(All_Customer,All_CustomerAdmin)

class Chit_BatchesAdmin(admin.ModelAdmin):
    list_display = ('Batch_No','Total_Fund','Start_Date','End_Date','Number_of_Customers','Status')
admin.site.register(Chit_Batches,Chit_BatchesAdmin)

class Saving_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Date_Credited','Name','Account_No','Total_Savings')
admin.site.register(Saving_Customer,Saving_CustomerAdmin)

class Credit_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Date_Credited','Name','Account_No','Interest_Rate','Total_Credit')
admin.site.register(Credit_Customer,Credit_CustomerAdmin)

class Chit_Fund_CustomerAdmin(admin.ModelAdmin):
    list_display = ('Date_Credited','Name','Account_No','Batch_No')
admin.site.register(Chit_Fund_Customer,Chit_Fund_CustomerAdmin)

class Savings_Customer_SavingsAdmin(admin.ModelAdmin):
    list_display = ('Date','Account_No','Amount_Deposited')
admin.site.register(Savings_Customer_Savings,Savings_Customer_SavingsAdmin)

class Credit_Customer_CreditAdmin(admin.ModelAdmin):
    list_display = ('Date','Account_No','Amount_Credited')
admin.site.register(Credit_Customer_Credit,Credit_Customer_CreditAdmin)