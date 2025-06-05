from django.shortcuts import render, get_object_or_404
from .models import School, Category
from collections import defaultdict

def home(request):
    return render(request, 'core/home.html')

def about(request):
    return render(request, 'core/about.html')

def services(request):
    return render(request, 'core/services.html')

def contact(request):
    return render(request, 'core/contact.html')

def school_detail(request, pk):
    school = get_object_or_404(School, pk=pk)
    return render(request, 'core/school_detail.html', {'school': school})

def school_list(request):
    query = request.GET.get('q')
    schools = School.objects.all()

    if query:
        schools = schools.filter(name__icontains=query)

    # Prepare safe data for template
    categories = Category.objects.all()
    categorized_schools = []
    for category in categories:
        category_schools = schools.filter(category=category)
        if category_schools.exists():
            categorized_schools.append({
                'name': category.name,
                'schools': category_schools
            })

    return render(request, 'core/school_list.html', {
        'categorized_schools': categorized_schools,
        'query': query
    })