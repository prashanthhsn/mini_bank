from django.shortcuts import render,redirect
from .models import All_Customer, Saving_Customer, Credit_Customer, Savings_Customer_Savings, Credit_Customer_Credit,Chit_Batches
from django.contrib import messages
from datetime import date
from django.contrib.auth.decorators import login_required
from django.contrib import auth
from pandas import read_excel
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.contrib.staticfiles import finders

# Create your views here.
@login_required(login_url='/login')
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

@login_required(login_url='/login')
def customercreation(request):
    if request.method == 'POST':
        name = request.POST['htmlname']
        aadhar_no = request.POST['htmlaadhar']
        phone_no = request.POST['htmlphone']
        photo = request.POST['htmlphoto']
        if All_Customer.objects.filter(Name = name).exists():
            messages.error(request, 'Name is already present')
            return redirect("/createcustomer")
        elif All_Customer.objects.filter(Aadhar_No = aadhar_no).exists():
            messages.error(request, 'Aadhar_No is already present')
            return redirect("/createcustomer")
        elif All_Customer.objects.filter(Phone_No = phone_no).exists():
            messages.error(request, 'Phone_No is already present')
            return redirect("/createcustomer")
        else:
            ph = str(phone_no)
            ph = ph[-2:]
            d = str(date.today())
            d = d.replace("-","")   #to eliminate hyphen and concatenate
            account_No = d + str(ph)   
            customer = All_Customer.objects.create(Name=name, Aadhar_No=aadhar_no, Phone_No=phone_no, Photo=photo, Account_No=account_No)
            messages.success(request, 'Customer created!')
            return redirect("/")
    else:
        return render(request,'createcustomer.html')

def logout(request):
    auth.logout(request)
    return redirect("/")

def import_file(request):
    if request.method == 'POST' and request.FILES['excel_file']:
        imp_file =  request.FILES["excel_file"]
        data = read_excel(imp_file)
        for i in range(len(data)):
            Acc_no = data["Account_No"][i]
            if data["Amount_Deposited"][i] != 0:
                Amt_Dep = data["Amount_Deposited"][i]
                Savings_Customer_Savings.objects.create(Account_No=Acc_no, Amount_Deposited=Amt_Dep)
            else:
                Amt_Cred = data["Amount_Credited"][i]
                Credit_Customer_Credit.objects.create(Account_No=Acc_no, Amount_Credited=Amt_Cred)
    return redirect("/")

def details(request,option):
    response ={}
    if option == 'savings':
        savings_obj = Saving_Customer.objects.all()
        response["details"]=savings_obj
    else:
        credits_obj = Credit_Customer.objects.all()
        response["details"]=credits_obj
    response['option'] = option.capitalize()    
    return render(request, 'details.html',response)

def render_pdf_view(request):
    template_path = 'user_printer.html'
    context = {'myvar': 'this is your template context'}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="report.pdf"'
    # find the template and render it.
    template = get_template(template_path)
    html = template.render(context)

    # create a pdf
    pisa_status = pisa.CreatePDF(
       html, dest=response,)
    # if error then show some funy view
    if pisa_status.err:
       return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response