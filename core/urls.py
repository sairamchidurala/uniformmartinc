from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('about/', views.about, name='about'),
    path('services/', views.services, name='services'),
    path('contact/', views.contact, name='contact'),
    path('schools/', views.school_list, name='schools'),
    path('schools/<int:pk>/', views.school_detail, name='school_detail'),
]
