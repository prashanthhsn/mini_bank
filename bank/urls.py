from django.urls import path
from . import views

urlpatterns = [
    path('', views.homepage),
    path('createcustomer/', views.createcustomer),
]