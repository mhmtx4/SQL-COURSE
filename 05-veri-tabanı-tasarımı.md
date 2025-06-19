# 🏗️ 05 - Veritabanı Tasarımı

Veritabanı tasarımı, bir veritabanının nasıl yapılandırılacağını planlama sürecidir. Bu süreçte verilerin nasıl gruplanacağı, hangi tabloların oluşturulacağı ve tabloların birbiriyle nasıl ilişkilendirileceği belirlenir.

İyi bir veritabanı tasarımı, veri bütünlüğünü korur, veri tekrarını önler ve sistemin performansını artırır.

---

## 🧱 Veritabanı Tasarım Aşamaları

### 1. Gereksinim Analizi
Veritabanının hangi amaçla kullanılacağı belirlenir. Kullanıcılardan bilgi toplanarak sistemin ihtiyaçları anlaşılır.

> Örn: Okul sistemi için öğrenci, öğretmen, ders, not gibi kavramlar belirlenir.

### 2. Kavramsal Tasarım (Entity-Relationship - ER Diyagramı)
Varlıklar (entity) ve bunlar arasındaki ilişkiler (relationship) belirlenir. Bu aşamada genellikle ER diyagramları kullanılır.

📌 Örnek Varlıklar:
- Öğrenci
- Ders
- Öğretmen

### 3. Mantıksal Tasarım
Kavramsal model, ilişkisel modele çevrilir. Her varlık tabloya, her özellik sütuna dönüştürülür. Birincil ve yabancı anahtarlar tanımlanır.

### 4. Fiziksel Tasarım
Veritabanı sistemine uygun olarak tablolar oluşturulur, indeksler ve veri türleri seçilir.

---

## 🔗 ER Diyagram Örneği
```text
ÖĞRENCİ (ogr_no, ad, soyad)
|
|
KAYIT (ogr_no, ders_kodu)
|
|
DERS (ders_kodu, ders_adı)
```
Bu yapı; birçok öğrencinin birçok derse kayıt olabildiği "çoktan çoğa" ilişkiyi temsil eder.

---

## 📌 Temel Kavramlar

| Kavram            | Açıklama                                           |
|-------------------|----------------------------------------------------|
| Entity (Varlık)   | Gerçek dünyadaki nesne (Öğrenci, Ürün)             |
| Attribute         | Varlığın özellikleri (ad, soyad, fiyat)            |
| Primary Key       | Her kaydı benzersiz tanımlayan alan                |
| Foreign Key       | Başka bir tablodaki anahtar alanla ilişki kurar   |
| Relationship      | Varlıklar arasındaki ilişki (1-1, 1-Ç, Ç-Ç)        |

---

## 🚫 Kötü Tasarımın Sonuçları
- Gereksiz veri tekrarları (redundancy)
- Zayıf performans
- Tutarsız veri (inconsistent data)
- Zor bakım ve güncelleme

> "Kötü bir tasarım, iyi bir sistemin başarısını baltalayabilir."

---

## 📚 Bu Derste Ne Öğrendik?
- Veritabanı tasarımının neden önemli olduğunu
- Tasarım sürecinin aşamalarını (analiz → ER → mantıksal → fiziksel)
- ER diyagramı ve temel tasarım kavramlarını

⏭️ Devam etmek için 6. derse geçin: `06-normalizasyon.md`
