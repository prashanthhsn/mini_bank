from django.urls import path
from . import views
from django.contrib.auth.views import LoginView,LogoutView
# from .views import render_pdf_view

urlpatterns = [
    path('', views.homepage),
    path('createcustomer/', views.customercreation, name='createcustomer'),
    path('login/',
        LoginView.as_view(
            template_name='admin/login.html',
            extra_context={
                'site_header': 'Log in',
                'site_title' : 'Login page',
            })),
    path('logout/', views.logout),
    path('import_file/', views.import_file, name='import_file'),
    path('details/<str:option>/', views.details),
    # path('aspdf/',render_pdf_view, name='pdf'),
]