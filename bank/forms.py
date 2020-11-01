from django import forms
from .models import All_Customer

class All_CustomerForm(forms.ModelForm):
    class Meta:
        model = All_Customer
        fields = ["Name","Photo","Aadhar_No","Phone_No"]