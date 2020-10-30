from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Savings_Customer,Savings_Customer_Savings

@receiver(post_save, sender = Savings_Customer_Savings)
def amt_inc(sender, instance, **kwargs):
    pass