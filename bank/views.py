from django.shortcuts import render
from .models import All_Customer, Saving_Customer, Credit_Customer, Chit_Batches

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

def customercreation(request):
    if request.method == 'POST':
        name = request.POST['hname']
        aadhar_no = request.POST['haadhar']
        phone_no = request.POST['hphone']
        photo = request.POST['hphoto']
        if All_Customer.objects.filter(Name = name).exists():
            messages.error(request, 'Name is already present')
        elif All_Customer.objects.filter(Aadhar_No = aadhar_no).exists():
            messages.error(request, 'Aadhar_No is already present')
        elif All_Customer.objects.filter(Phone_No = phone_no).exists():
            messages.error(request, 'Phone_No is already present')
        else:
            customer = All_Customer.objects.create_user(Name=name, Aadhar_No=aadhar_no, Phone_No=phone_no, Photo=photo)
            customer.save()
            messages.success(request, 'Customer created!')
            return redirect('/')
    else:
        return render(request,'createcustomer.html')