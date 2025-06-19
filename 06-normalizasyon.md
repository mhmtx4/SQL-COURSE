# 🧹 06 - Normalizasyon ve Anomaliler

Normalizasyon, veritabanında veri tekrarını azaltmak ve veri bütünlüğünü sağlamak için uygulanan sistematik bir işlemdir. Bu işlem, tabloların belirli kurallara göre bölünerek sadeleştirilmesini kapsar.

---

## ❗ Neden Normalizasyon?
Kötü tasarlanmış veritabanlarında aynı veriler tekrar tekrar saklanabilir. Bu durum şu sorunlara yol açar:

- 📉 Güncelleme Anomalisi
- 🔄 Ekleme Anomalisi
- ❌ Silme Anomalisi

### 📌 Örnek:
```text
ÖĞRENCİ (ogr_no, ad, ders_adı, ogretmen_adı)
```
- Bir öğrencinin aynı dersi birden fazla alması veri tekrarına sebep olur.
- Ders bilgileri değişirse tüm kayıtlarda ayrı ayrı güncellenmelidir.

---

## 🧩 1NF - Birinci Normal Form
Her hücre **atomik** olmalı, yani bölünemez değerler içermelidir.

🔴 Kötü:
```text
Telefon: 0533-1234567, 0542-7654321
```
🟢 İyi:
```text
Telefonlar tablosu oluşturulmalı:
ÖğrenciNo | Telefon
----------|-----------
1001      | 0533...
1001      | 0542...
```

---

## 🧩 2NF - İkinci Normal Form
1NF sağlandıktan sonra, **kısmi bağımlılıklar** ortadan kaldırılmalıdır. Bir tablo içinde yalnızca o anahtara bağlı bilgiler bulunmalıdır.

### 📌 Örnek:
```text
KAYIT (ogr_no, ders_kodu, ogr_ad)
```
- `ogr_ad`, yalnızca `ogr_no` ile ilgilidir, `ders_kodu` ile değil. Bu yüzden ayrılmalı.

---

## 🧩 3NF - Üçüncü Normal Form
2NF sağlandıktan sonra, **transitif bağımlılıklar** da ortadan kaldırılmalıdır. Yani bir alan, yalnızca anahtar değil, başka bir alan üzerinden de belirleniyorsa sorun vardır.

### 📌 Örnek:
```text
OGRENCI (ogr_no, bolum_kodu, bolum_ad)
```
- `bolum_ad`, `bolum_kodu`’na bağlıdır, `ogr_no`'ya değil.
- Bu nedenle `bolum` bilgileri ayrı bir tabloya alınmalıdır.

---

## 🎯 Amaç Nedir?
- Veritabanını sadeleştirmek
- Veri tekrarlarını ortadan kaldırmak
- Tutarlı, güncellenebilir ve genişletilebilir sistemler kurmak

---

## ⚠️ Aşırı Normalizasyon
Her zaman normalizasyon iyi değildir. Çok fazla bölünmüş tablolar, sorgu performansını düşürebilir. Bu durumda **denormalizasyon** tercih edilebilir.

> "İdeal sistem, hem bütünlük hem de performans arasında dengeli olandır."

---

## 📚 Bu Derste Ne Öğrendik?
- Normalizasyonun neden yapıldığını
- 1NF, 2NF ve 3NF’in ne anlama geldiğini
- Anomalilerin nasıl önlendiğini

⏭️ Devam etmek için 7. derse geçin: `07-sql-giris.md`
