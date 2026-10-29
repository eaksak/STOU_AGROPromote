# คู่มือการติดตั้งและ Deploy บน Google Apps Script (GAS)

ระบบติวสอบและประมวลสาระ **หลักการส่งเสริมและพัฒนาการเกษตร (มสธ. STOU)** รองรับการรันเป็น Web Application บน Google Apps Script ได้ฟรี 100%

---

## ขั้นตอนการติดตั้ง (Deployment Steps)

1. **สร้าง Google Apps Script Project ใหม่**:
   - ไปที่ [script.google.com](https://script.google.com)
   - คลิกปุ่ม **"New project"** (โปรเจกต์ใหม่)
   - ตั้งชื่อโปรเจกต์เป็น `STOU_AGRO_Promote_Exam_Prep`

2. **คัดลอกไฟล์ Code.gs**:
   - เปิดไฟล์ `Code.gs` ในโปรเจกต์
   - คัดลอกโค้ดจากไฟล์ [Code.gs](Code.gs) ในโฟลเดอร์นี้ไปวางแทนที่

3. **สร้างไฟล์ Data.gs**:
   - ในแถบเมนูด้านซ้าย คลิกปุ่ม **`+` (Add a file)** -> เลือก **Script**
   - ตั้งชื่อไฟล์ว่า `Data` (ระบบจะใส่นามสกุล `.gs` ให้โดยอัตโนมัติ)
   - คัดลอกโค้ดทั้งหมดจากไฟล์ [Data.gs](Data.gs) ไปวาง

4. **สร้างไฟล์ index.html**:
   - คลิกปุ่ม **`+` (Add a file)** -> เลือก **HTML**
   - ตั้งชื่อไฟล์ว่า `index`
   - คัดลอกโค้ดทั้งหมดจากไฟล์ [index.html](index.html) ไปวาง

5. **ปรับแต่งการตั้งค่าแอป (appsscript.json)**:
   - ไปที่เมนู **Project Settings** (ไอคอนฟันเฟืองด้านซ้าย)
   - ติ๊กถูกที่ช่อง *"Show 'appsscript.json' manifest file in editor"*
   - กลับมาที่หน้า Editor เปิดไฟล์ `appsscript.json` แล้ววางการตั้งค่าจาก [appsscript.json](appsscript.json)

6. **สั่ง Deploy เป็น Web App**:
   - คลิกปุ่มสีน้ำเงิน **Deploy** (การทำให้ใช้งานได้) -> เลือก **New deployment**
   - คลิกไอคอนฟันเฟืองเลือกประเภท **Web app**
   - กรอกข้อมูล:
     - **Description**: `Version 1.0 - Full 15 Units & 750 Quizzes`
     - **Execute as**: `Me (อีเมลของคุณ)`
     - **Who has access**: `Anyone` (ทุกคน)
   - คลิก **Deploy**
   - คัดลอก **Web app URL** ไปเปิดใช้งานบนเว็บเบราว์เซอร์หรือแชร์ให้นักศึกษาใช้งานได้ทันที
