from django.shortcuts import render

# Create your views here.
def homepage(request):
    return render(request,'index.html')

def credit(request):
    return render(request,'credit.html')

def savings(request):
    return render(request,'savings.html')

def chitfund(request):
    return render(request,'cf.html')

def about(request):
    return render(request,'about.html')
