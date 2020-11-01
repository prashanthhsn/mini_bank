from django.shortcuts import render
from .models import All_Customer, Saving_Customer, Credit_Customer, Chit_Batches
from .forms import All_CustomerForm

# Create your views here.
def homepage(request):
    number_of_customers = All_Customer.objects.all()
    total_savings_data = Saving_Customer.objects.all()
    total_credit_data = Credit_Customer.objects.all()
    total_batches_data = Chit_Batches.objects.all()
    
    count = 0
    total_savings = 0
    total_credit = 0
    total_batches = 0
    
    for i in number_of_customers:
        count += 1
    for i in total_savings_data:                                  
        total_savings += i.Total_Savings
    for i in total_credit_data:                                  
        total_credit += i.Total_Credit
    for i in total_batches_data:                                  
        total_batches+= 1

    context = {"count" : count, "total_savings" : total_savings, "total_credit" : total_credit, "total_batches" : total_batches}
    return render(request,'index.html',context)

def createcustomer(request):
    form = All_CustomerForm(request.POST or None)
    if form.is_valid():
        form.save()
    context= {'form': form }
    return render(request,'Create_Customer.html',context)