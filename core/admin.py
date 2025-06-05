from django.contrib import admin
from .models import Category, Uniform, MeasurementScale, School

admin.site.register(Category)
admin.site.register(Uniform)
admin.site.register(MeasurementScale)
admin.site.register(School)
