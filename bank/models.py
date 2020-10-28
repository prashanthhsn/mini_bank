from django.db import models


# Create your models here.
class All_Customer(models.Model):
    Sl_No = models.AutoField(primary_key=True)
    Date = models.DateField()
    Name = models.CharField(max_length= 25)
    Account_No = models.CharField(editable=False,blank=False,max_length=13,null=True)
    Photo = models.ImageField(upload_to ='media' )
    Aadhar_No = models.CharField(max_length=14)
    Phone_No = models.CharField(max_length=10)
    
    def save(self,*args,**kwargs):
        ph = str(self.Phone_No)
        ph = ph[-2:]
        d = str(self.Date)
        d = d.replace("-","")
        self.Account_No = d + str(ph)   #to eliminate hyphen and concatenate
        super(All_Customer, self).save(*args, **kwargs)
    
    class Meta:
        unique_together = (("Sl_No","Account_No"),)
    
    def __str__(self):
        return self.Name
    
class Chit_Batches(models.Model):
    Sl_No = models.AutoField(primary_key=True)
    Batch_No = models.IntegerField()
    Total_Fund = models.IntegerField()
    Start_Date = models.DateField()
    End_Date = models.DateField()
    Number_of_Customers = models.IntegerField()
    Status = models.BooleanField()

    class Meta:
        unique_together = (("Sl_No","Batch_No"),)
    
    def __str__(self):
        return str(self.Batch_No)

class Savings_Customer(models.Model):
    Sl_No = models.AutoField(primary_key=True)
    Date_Added = models.DateField()
    Name = models.CharField(max_length= 25)
    Account_No = models.ForeignKey(All_Customer , on_delete = models.CASCADE)
    Total_Savings = models.IntegerField()

    def __str__(self):
        return self.Name

class Credit_Customer(models.Model):
    Sl_No = models.AutoField(primary_key=True)
    Date_Credited = models.DateField()
    Name = models.CharField(max_length= 25)
    Account_No = models.ForeignKey(All_Customer , on_delete = models.CASCADE)
    Interest_Rate = models.CharField(max_length=5)
    Total_Credit = models.IntegerField()

    def __str__(self):
        return self.Name

class Chit_Fund_Customer(models.Model):
    Sl_No = models.AutoField(primary_key=True)
    Date_Credited = models.DateField()
    Name = models.CharField(max_length= 25)
    Account_No = models.ForeignKey(All_Customer , on_delete = models.CASCADE)
    Batch_No = models.ForeignKey(Chit_Batches, on_delete = models.CASCADE)

    def __str__(self):
        return self.Name