from django.urls import path
from . import views

urlpatterns = [
    path('', views.homepage),
    path('credit/', views.credit),
    path('savings/', views.savings),
    path('chitfund/', views.chitfund),
    path('about/', views.about),
]