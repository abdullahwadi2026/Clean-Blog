# Laravel Blog Project

##  وصف المشروع

مشروع **Laravel Blog** هو تطبيق مدونة مبني باستخدام إطار العمل **Laravel**، يدمج بين قالب **Clean Blog** للواجهة الأمامية ولوحة التحكم **SB Admin 2** للإدارة، مع محرر النصوص الغني **TinyMCE** لإدارة المحتوى.

يهدف المشروع إلى توفير منصة بسيطة وقابلة للتوسعة لإدارة المقالات مع فصل واضح بين واجهة المستخدم ولوحة التحكم.

---

##  التقنيات المستخدمة

* **Backend:** Laravel 12 (PHP)
* **Frontend:** HTML, CSS, Bootstrap
* **Admin Dashboard:** SB Admin 2
* **Text Editor:** TinyMCE
* **Database:** MySQL (أو أي قاعدة بيانات مدعومة من Laravel)
* **Containerization:** Docker & Docker Compose

---

## كيفية البناء والتشغيل باستخدام Docker

### 1️⃣ المتطلبات

* Docker
* Docker Compose

### 2️⃣ استنساخ المشروع

```bash
git clone https://github.com/username/repo-name.git
cd repo-name
```

###  إعداد ملف البيئة

```bash
cp .env.example .env
```

>  تأكد من ضبط إعدادات قاعدة البيانات في ملف `.env` لتتوافق مع إعدادات Docker.

###  بناء وتشغيل الحاويات

```bash
docker compose build
docker compose up -d
```

###  إعداد Laravel داخل الحاوية

```bash
docker compose exec app php artisan key:generate
docker compose exec app php artisan migrate
```

---

##  إيقاف الحاويات وتنظيفها

### إيقاف الحاويات

```bash
docker compose down
```

### إيقاف الحاويات مع حذف الأحجام (Volumes)

```bash
docker compose down -v
```

---

##  ملاحظات حول الإعدادات

* **المنفذ الافتراضي:**

  * التطبيق يعمل عادة على: `http://localhost:8000`
* **متغيرات البيئة المهمة:**

  * `APP_PORT`
  * `DB_HOST`
  * `DB_PORT`
  * `DB_DATABASE`
  * `DB_USERNAME`
  * `DB_PASSWORD`

> يمكن تعديل هذه القيم من ملف `.env` حسب بيئة التشغيل.

---

## كيفية اختبار المشروع

### الواجهة الأمامية

* افتح المتصفح وانتقل إلى:

  ```
  http://localhost:8000
  ```

### لوحة التحكم (Admin Dashboard)

* انتقل إلى:

  ```
  http://localhost:8000/admin
  ```

* سجّل الدخول باستخدام بيانات المستخدم أو أنشئ مستخدمًا جديدًا عبر Seeder أو Tinker.

---

## الإسناد (Attribution)

* **Clean Blog Theme** – Start Bootstrap
* **SB Admin 2** – Start Bootstrap
* **TinyMCE** – Rich Text Editor
* **Laravel Framework** – Taylor Otwell

---



