from django.shortcuts import render

# Create your views here.
def homepage(request):
    return render(request,'index.html')

def createcustomer(request):
    return render(request,'Create_Customer.html')