# ระบบประมวลสาระและคลังข้อสอบ 750 ข้อ: หลักการส่งเสริมและพัฒนาการเกษตร
### มหาวิทยาลัยสุโขทัยธรรมาธิราช (มสธ. STOU) • สาขาวิชาเกษตรศาสตร์และสหกรณ์

เว็บแอปพลิเคชันเพื่อการศึกษาและเตรียมสอบแบบ Standalone สำหรับรายวิชา **หลักการส่งเสริมและพัฒนาการเกษตร** ครอบคลุมเนื้อหาครบถ้วนทั้ง 15 หน่วย พร้อมคลังข้อสอบปรนัย 750 ข้อ (5 ตัวเลือก ก-จ พร้อมเฉลยและคำอธิบายละเอียด) และเอกสาร PDF คุณภาพสูง

---

## 🌟 ฟังก์ชันหลักของระบบ (Core Features)

1. **🏠 ภาพรวมหลักสูตร (Dashboard Overview)**:
   - สรุปตัวชี้วัดสำคัญ: 15 หน่วยการเรียนรู้, ข้อสอบ 750 ข้อ, แฟลชการ์ด 150 ใบ
   - สารบัญแบบ Interactive Card พร้อมปุ่มลัดเข้าสู่เนื้อหาและทำข้อสอบทันที
2. **📑 สรุปเนื้อหารายหน่วย (Unit-by-Unit Pure Summary)**:
   - ประมวลสาระความรู้แท้ล้วน **ความยาว ≥ 3 หน้า A4 ทุกหน่วย (7,200 - 9,150 ตัวอักษร)**
   - **ไม่มีวัตถุประสงค์และไม่มีแบบฝึกหัดกวนใจ** มุ่งเน้นเนื้อหา ทฤษฎี ตารางเปรียบเทียบ และสาระสำคัญ
   - ปุ่มดาวน์โหลด PDF ประจำหน่วยแยกเล่ม
3. **📚 สรุป 15 หน่วยฉบับสมบูรณ์ (Master Summary Reader)**:
   - อ่านเนื้อหาต่อเนื่องทั้ง 15 หน่วยในหน้าเดียว พร้อมสารบัญกระโดดข้ามหน่วย
   - ปุ่มดาวน์โหลด **Master Booklet PDF รวม 15 หน่วย (ความหนา 73 หน้า)**
4. **📝 คลังข้อสอบประมวลสาระ 750 ข้อ (Quiz & Exam Simulator)**:
   - ข้อสอบ 50 ข้อต่อหน่วย ครบ 15 หน่วย รวม 750 ข้อ
   - รูปแบบ 5 ตัวเลือก (ก, ข, ค, ง, จ) พร้อมเฉลยและคำอธิบายเชิงวิชาการอย่างละเอียด
   - เลือกระหว่าง **โหมดฝึกฝน (เฉลยและอธิบายทันที)** หรือ **โหมดสอบจริง (สุ่มข้อสอบ 50 ข้อ)**
   - ปุ่มดาวน์โหลด **เล่มข้อสอบ 750 ข้อ PDF (ความหนา 193 หน้า)**
5. **🗂️ แฟลชการ์ดคำสำคัญ (Interactive Flashcards)**:
   - 150 คำศัพท์และมโนทัศน์สำคัญ (10 ใบต่อหน่วย) พร้อมระบบคลิกพลิกการ์ด (Flip Card)
6. **🔍 ถามติวเตอร์ / ค้นหาองค์ความรู้ (Smart Course Explorer)**:
   - สืบค้นประเด็น ทฤษฎี สูตร หรือคำศัพท์จากเนื้อหาและคลังข้อสอบได้อย่างรวดเร็ว

---

## 📂 โครงสร้างโฟลเดอร์ (Project Structure)

```text
STOU_AGROPromote/
├── index.html                           # ไฟล์หลักสำหรับ Deploy บน GitHub Pages
├── preview.html                         # ไฟล์สำหรับเปิดดูแบบ Local Standalone
├── agro_promote_curriculum.json         # ฐานข้อมูลหลักสูตร สรุปเนื้อหา ข้อสอบ และแฟลชการ์ด
├── AGRO_Promote_15_Units_Content_Summary.pdf  # Master Booklet สรุปเนื้อหา 15 หน่วย (73 หน้า)
├── AGRO_Promote_Exam_750_Questions.pdf  # เล่มคลังข้อสอบ 750 ข้อ พร้อมเฉลย (193 หน้า)
├── content_summaries/                   # เอกสารสรุปเนื้อหา
│   ├── Unit_01.md ... Unit_15.md        # มาร์กดาวน์สรุปเนื้อหาแท้ล้วน (≥ 7,200 chars)
│   ├── Printable_Content_Summaries.html # หน้า HTML สำหรับสั่งพิมพ์
│   └── pdf/
│       └── Unit_01_Content_Summary.pdf ... Unit_15_Content_Summary.pdf # PDF แยกหน่วย
├── quizzes/                             # คลังข้อสอบ 750 ข้อ
│   ├── all_750_questions.json           # ฐานข้อมูลข้อสอบรวม 750 ข้อ
│   ├── Printable_Exam_Booklet.html      # หน้า HTML เล่มข้อสอบพร้อมสั่งพิมพ์
│   ├── Unit_01_Quiz.json ... Unit_15_Quiz.json # JSON ข้อสอบแยกหน่วย (50 ข้อ/หน่วย)
│   └── Unit_01_Exam.md ... Unit_15_Exam.md     # มาร์กดาวน์ข้อสอบแยกหน่วย
├── Code.gs                              # โค้ด Google Apps Script Backend
├── Data.gs                              # ฐานข้อมูลสำหรับรันบน Google Apps Script
├── appsscript.json                      # การตั้งค่า Apps Script Manifest
├── DEPLOY_GAS.md                        # คู่มือการติดตั้งบน Google Apps Script
├── push_to_github.bat                   # สคริปต์อัตโนมัติสำหรับ Commit และ Push สู่ GitHub
└── .nojekyll                            # ป้องกัน Jekyll กรองไฟล์บน GitHub Pages
```

---

## 🚀 วิธีการใช้งานและการ Deploy

### 1. เปิดใช้งานแบบ Local ในเครื่อง
- ดับเบิลคลิกเปิดไฟล์ `index.html` หรือ `preview.html` ด้วย Google Chrome, Microsoft Edge หรือเบราว์เซอร์ใดก็ได้ โดยไม่ต้องติดตั้งเซิร์ฟเวอร์

### 2. Deploy บน GitHub Pages (ฟรี)
1. รันไฟล์ `push_to_github.bat` เพื่อ Commit และ Push โค้ดขึ้นสู่ GitHub Repository
2. ไปที่หน้า GitHub Repository -> **Settings** -> **Pages**
3. ที่หัวข้อ **Build and deployment** เลือก Source เป็น **Deploy from a branch**
4. เลือก Branch เป็น `main` และโฟลเดอร์เป็น `/ (root)` แล้วกด **Save**
5. เว็บไซต์จะออนไลน์พร้อมใช้งานผ่าน URL: `https://<username>.github.io/<repo-name>/`

### 3. Deploy บน Google Apps Script
- ปฏิบัติตามขั้นตอนในไฟล์ [DEPLOY_GAS.md](DEPLOY_GAS.md)
