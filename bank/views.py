from django.shortcuts import render
from .models import All_Customer, Saving_Customer, Credit_Customer, Chit_Batches

# Create your views here.
def homepage(request):
    data = All_Customer.objects.all()
    count = 0
    for i in data:
        count += 1
    context = {"count" : count}
    return render(request,'index.html',context)

def createcustomer(request):
    return render(request,'Create_Customer.html')