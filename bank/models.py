from django.db import models

# Create your models here.
class All_Customer(models.Model):
    Sl_No = models.AutoField(primary_key=True)
    Date = models.DateField()
    Name = models.CharField(max_length= 25)
    Account_No = models.CharField(editable=False,blank=False,max_length=13,null=True)
    Photo = models.ImageField(upload_to ='media' )
    Aadhar_No = models.CharField(max_length=12)
    Phone_No = models.CharField(max_length=10)
    
    def save(self,*args,**kwargs):
        ph = str(self.Phone_No)
        ph = ph[-4:]
        self.Account_No = ph + str(self.Aadhar_No)
        print(self.Account_No)
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