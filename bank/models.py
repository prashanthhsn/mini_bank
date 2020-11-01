from django.db import models
from django.shortcuts import get_object_or_404

class All_Customer(models.Model):
    Date = models.DateField()
    Name = models.CharField(max_length= 25)
    Account_No = models.CharField(primary_key=True,editable=False,blank=False,max_length=13)
    Photo = models.ImageField(upload_to ='media' )
    Aadhar_No = models.CharField(max_length=14)
    Phone_No = models.CharField(max_length=10)
    
    def save(self,*args,**kwargs):
        ph = str(self.Phone_No)
        ph = ph[-2:]
        d = str(self.Date)
        d = d.replace("-","")   #to eliminate hyphen and concatenate
        self.Account_No = d + str(ph)   
        super(All_Customer, self).save(*args, **kwargs)
    
    def __str__(self):
        return (self.Account_No+" "+self.Name)
    
class Chit_Batches(models.Model):
    Batch_No = models.IntegerField(primary_key= True)
    Total_Fund = models.IntegerField()
    Start_Date = models.DateField()
    End_Date = models.DateField()
    Number_of_Customers = models.IntegerField()
    Status = models.BooleanField()

    def __str__(self):
        return str(self.Batch_No)

class Saving_Customer(models.Model):
    Date_Credited = models.DateField(auto_now=True,editable=False)
    Name = models.CharField(editable=False,blank=True,max_length= 25)
    Select_Account_No = models.ForeignKey(All_Customer , on_delete = models.CASCADE)
    Account_No =  models.IntegerField(editable=False)
    Total_Savings= models.IntegerField(default= 0, blank= True)

    def save(self, *args, **kwargs):
        account_no = str(self.Select_Account_No)
        account_no = account_no.split(" ")
        obj=get_object_or_404(All_Customer,Account_No = account_no[0])
        self.Name = obj.Name
        self.Account_No = account_no[0]
        super(Saving_Customer, self).save(*args, **kwargs)

    def __str__(self):
        return str(self.Account_No)
        
class Credit_Customer(models.Model):
    Date_Credited = models.DateField(auto_now=True,editable=False)
    Name = models.CharField(editable=False,blank=True,max_length= 25)
    Select_Account_No = models.ForeignKey(All_Customer , on_delete = models.CASCADE)
    Account_No =  models.IntegerField(editable=False)
    Total_Credit= models.IntegerField(default= 0, blank= True)
    Interest_Rate = models.IntegerField(default=0)

    def save(self, *args, **kwargs):
        account_no = str(self.Select_Account_No)
        account_no = account_no.split(" ")
        obj=get_object_or_404(All_Customer,Account_No = account_no[0])
        self.Name = obj.Name
        self.Account_No = account_no[0]
        super(Credit_Customer, self).save(*args, **kwargs)

    def __str__(self):
        return str(self.Account_No)
    
class Chit_Fund_Customer(models.Model):
    Date_Credited = models.DateField()
    Name = models.CharField(max_length= 25)
    Account_No = models.ForeignKey(All_Customer , on_delete = models.CASCADE)
    Batch_No = models.ForeignKey(Chit_Batches, on_delete = models.CASCADE)

    def __str__(self):
        return self.Name

class Savings_Customer_Savings(models.Model):
    Date = models.DateField()
    Account_No = models.IntegerField()
    Amount_Deposited = models.IntegerField()

class Credit_Customer_Credit(models.Model):
    Date = models.DateField()
    Account_No = models.IntegerField()
    Amount_Credited = models.IntegerField()