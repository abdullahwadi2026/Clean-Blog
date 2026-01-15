# ملاحظات فنية - Laravel Docker Project

## 1️⃣ أكبر مشكلة واجهتها في Docker وكيف حللتها

**المشكلة:** فشل بناء الحاوية بسبب خطأ Composer:

```
failed to solve: process "/bin/sh -c composer install --no-dev --optimize-autoloader" did not complete successfully
```

**السبب:** محاولة تشغيل `composer install` أثناء الـ build بدون وجود ملف `.env` أو صلاحيات مجلدات `storage` و `bootstrap/cache` مناسبة، مما أدى لفشل تحميل الحزم.

**الحل:**

1. تعديل Dockerfile بحيث لا يتم تشغيل `composer install` أثناء مرحلة build.
2. تشغيل Composer بعد تشغيل الحاوية:

```bash
docker compose exec app composer install
```

3. التأكد من وجود `.env` داخل المجلد `src` ومن صلاحيات `storage` و `bootstrap/cache`.


---

## 2️⃣ أهم درس تعلمته من Git/GitHub

* **استخدام commit صغير وواضح:** كل تعديل صغير يجب أن يكون في commit مستقل مع رسالة واضحة تصف التغيير بدقة.
* **رفع المشروع إلى GitHub مبكرًا:** يمنع فقدان الملفات ويتيح تتبع التغييرات خطوة بخطوة.
* **فروع Branches:** استخدام فروع لتطوير ميزات جديدة دون التأثير على الفرع الرئيسي.

---

## 3️⃣ دليل كتابة رسائل الالتزام الاحترافية

```

### الأنواع الشائعة:

* `feat`   : إضافة ميزة جديدة
* `fix`    : إصلاح خلل
* `docs`   : تعديل الوثائق
* `chore`  : أعمال صيانة غير مرتبطة بالكود (Build, CI)

### أمثلة على الرسائل الاحترافية:

```
feat: إضافة Dockerfile و docker-compose للمشروع
fix: حل مشكلة Composer install داخل Docker
docs: تحديث README.md لتوضيح إعداد Docker
```
