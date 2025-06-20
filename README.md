
# 🎓 UniformmartInc

**UniformmartInc** is a Django-based web platform for listing and searching official school uniforms in a fun, organized, and school-themed interface.

---

![GitHub Last Commit](https://img.shields.io/github/last-commit/sairamchidurala/uniformmartinc?style=flat&logo=git&logoColor=white&color=0080ff) 
![Top Language](https://img.shields.io/github/languages/top/sairamchidurala/uniformmartinc?style=flat&color=0080ff) 
![Language Count](https://img.shields.io/github/languages/count/sairamchidurala/uniformmartinc?style=flat&color=0080ff) 


Built with:

![Markdown](https://img.shields.io/badge/Markdown-000000.svg?style=flat&logo=Markdown&logoColor=white)
![GNU Bash](https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=flat&logo=GNU-Bash&logoColor=white)
![Gunicorn](https://img.shields.io/badge/Gunicorn-499848.svg?style=flat&logo=Gunicorn&logoColor=white)
![Django](https://img.shields.io/badge/Django-092E20.svg?style=flat&logo=Django&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED.svg?style=flat&logo=Docker&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB.svg?style=flat&logo=Python&logoColor=white)

---
## 🌟 Features

- 🔍 **Smart School Search**: Instantly locate your school's uniform details.
- 🏫 **School Categorization**: Browse schools by U.S.-based categories.
- 👕 **Uniform Listings**: Display official uniform info with images.
- 📏 **Optional Measurement Scales**: Added when provided by schools.
- 🎨 **Light/Dark Mode Support**: (Coming soon!)

---

## 📂 Project Structure

```bash
uniformmart/
├── core/                  # Django app (views, models, etc.)
│   ├── templates/
│   │   ├── partials/      # Reusable UI parts: header.html, footer.html
│   │   └── core/          # Page templates: home.html, about.html, etc.
├── static/                # Static files (CSS, images)
│   └── css/
│       └── style.css
├── uniformmart/           # Project settings, urls, wsgi, asgi
├── manage.py
└── README.md
````

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/uniformmartinc.git
cd uniformmartinc
```

### 2. Set Up a Virtual Environment

```bash
python3 -m venv uniformenv
source uniformenv/bin/activate  # For Windows: uniformenv\\Scripts\\activate
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Apply Migrations

```bash
python manage.py migrate
```

### 5. Create Superuser (Optional)

```bash
python manage.py createsuperuser
```

### 6. Run the Development Server

```bash
python manage.py runserver
```

Now open [http://127.0.0.1:8000/](http://127.0.0.1:8000/) to view the app in your browser.

---

## 🛠 Tech Stack

* **Backend**: Django (Python 3.9+)
* **Frontend**: HTML5, CSS3, Google Fonts
* **Database**: SQLite (default, configurable)
* **Deployment**: Docker-ready, Koyeb-compatible

---

## 📄 Templates & Includes

* `base.html`: Common layout with header/footer includes
* `partials/header.html`: Navbar with dynamic links
* `partials/footer.html`: Site footer
* `core/home.html`, `core/about.html`, etc.: Page-specific content blocks

---

## 🧪 Testing Tips

* Use the admin panel at `/admin/` to add schools and uniforms.
* Try search functionality from the home page.
* Verify layout consistency across pages via `base.html`.

---

## 📦 Deployment Notes

To build and run the project in Docker:

```bash
docker build -t uniformmartinc .
docker run -p 8000:8000 uniformmartinc
```

---

## 🙌 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you'd like to change.

---

## 📧 Contact

Created by [Sai Ram Chidurala](mailto:sairamchidurala93@gmail.com) · [GitHub](https://github.com/sairamchidurala)

---

## © License

MIT License – free to use and modify 🎓✨
