# استخدام نسخة بايثون خفيفة
FROM python:3.9-slim

# تحديد مسار العمل داخل الحاوية
WORKDIR /app

# نسخ جميع ملفات المشروع إلى مسار العمل
COPY . /app

# تثبيت المكتبات (في حال كان لديك ملف requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# أمر تشغيل التطبيق (قم بتغيير app.py إلى اسم ملف التشغيل الخاص بك)
CMD ["python", "app.py"]
