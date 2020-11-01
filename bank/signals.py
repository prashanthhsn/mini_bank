from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Saving_Customer,Savings_Customer_Savings,Credit_Customer,Credit_Customer_Credit
from django.shortcuts import get_object_or_404

@receiver(post_save, sender = Savings_Customer_Savings)
def amt_inc1(sender, instance, created, **kwargs):
    Account_data = get_object_or_404(Saving_Customer, Account_No = instance.Account_No)
    Account_data.Total_Savings += instance.Amount_Deposited
    Account_data.save()

@receiver(post_save, sender = Credit_Customer_Credit)
def amt_inc(sender, instance, created, **kwargs):
    Account_data = get_object_or_404(Credit_Customer , Account_No = instance.Account_No)
    instance.Amount_Credited *= -1
    Account_data.Total_Credit -= instance.Amount_Credited
    Account_data.Total_Credit *= -1
    Account_data.save()