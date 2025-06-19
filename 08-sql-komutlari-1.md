# 🛠️ 08 - SQL Komutları - I (CREATE, INSERT, UPDATE, DELETE)

Bu derste, veritabanı yönetiminde en çok kullanılan temel SQL komutlarını inceleyeceğiz. Bunlar; tablo oluşturmak, veri eklemek, güncellemek ve silmek için kullanılır.

---

## 📦 CREATE TABLE
Yeni bir tablo oluşturmak için kullanılır.

### Söz Dizimi:
```sql
CREATE TABLE tablo_adi (
    kolon1 veri_tipi [özellikler],
    kolon2 veri_tipi [özellikler],
    ...
);
```

### Örnek:
```sql
CREATE TABLE ogrenciler (
    ogrenci_no INT PRIMARY KEY,
    ad VARCHAR(50),
    soyad VARCHAR(50),
    bolum VARCHAR(100)
);
```

---

## ➕ INSERT INTO
Tabloya yeni bir kayıt (satır) eklemek için kullanılır.

### Söz Dizimi:
```sql
INSERT INTO tablo_adi (kolon1, kolon2) VALUES (deger1, deger2);
```

### Örnek:
```sql
INSERT INTO ogrenciler (ogrenci_no, ad, soyad, bolum)
VALUES (1001, 'Ayşe', 'Yılmaz', 'Bilgisayar');
```

---

## 🔁 UPDATE
Var olan bir kaydı güncellemek için kullanılır.

### Söz Dizimi:
```sql
UPDATE tablo_adi SET kolon1 = deger1 WHERE kosul;
```

### Örnek:
```sql
UPDATE ogrenciler SET bolum = 'Yazılım' WHERE ogrenci_no = 1001;
```

> Not: `WHERE` kullanılmazsa tüm kayıtlar güncellenir!

---

## ❌ DELETE
Belirli kayıtları silmek için kullanılır.

### Söz Dizimi:
```sql
DELETE FROM tablo_adi WHERE kosul;
```

### Örnek:
```sql
DELETE FROM ogrenciler WHERE ogrenci_no = 1001;
```

> ⚠️ `WHERE` olmadan kullanılırsa tablodaki tüm veriler silinir.

---

## ⚠️ Güvenlik İpuçları
- Silme ve güncelleme işlemlerinde **önce SELECT** ile doğrulama yapılmalıdır.
- `WHERE` koşulu mutlaka dikkatlice yazılmalıdır.

---

## 📚 Bu Derste Ne Öğrendik?
- CREATE ile tablo oluşturmayı
- INSERT ile tabloya veri eklemeyi
- UPDATE ile kayıt güncellemeyi
- DELETE ile kayıt silmeyi
- WHERE kullanımı ile hedefli işlem yapmayı

⏭️ Devam etmek için 9. derse geçin: `09-sql-komutlari-2.md`
