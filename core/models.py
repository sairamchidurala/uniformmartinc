# core/models.py

from django.db import models

class Category(models.Model):
    name = models.CharField(max_length=100)  # Elementary, Middle, High School
    def __str__(self):
        return self.name

class Uniform(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    image_url = models.URLField()  # changed from ImageField to URLField
    def __str__(self):
        return self.title

class MeasurementScale(models.Model):
    scale_info = models.TextField()
    def __str__(self):
        return f"Measurement Scale #{self.id}"

class School(models.Model):
    name = models.CharField(max_length=200)
    logo_url = models.URLField()  # changed from ImageField to URLField
    image_url = models.URLField()  # changed from ImageField to URLField
    about = models.TextField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    uniforms = models.ManyToManyField(Uniform)
    measurement_scale = models.OneToOneField(MeasurementScale, on_delete=models.SET_NULL, null=True, blank=True)
    def __str__(self):
        return self.name
