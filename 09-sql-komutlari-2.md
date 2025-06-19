# 🔍 09 - SQL Komutları - II (SELECT, WHERE, ORDER BY)

Veritabanındaki verileri görüntülemek için kullanılan en temel SQL komutu **SELECT** komutudur. Bu derste veriyi nasıl sorgulayacağımızı, filtreleyeceğimizi ve sıralayacağımızı öğreneceğiz.

---

## 📄 SELECT
Belirli sütunları veya tüm tabloyu görüntülemek için kullanılır.

### Söz Dizimi:
```sql
SELECT kolon1, kolon2 FROM tablo_adi;
```

### Tümünü Görüntüleme:
```sql
SELECT * FROM ogrenciler;
```
Bu sorgu, "ogrenciler" tablosundaki tüm verileri listeler.

---

## 🎯 WHERE
Verileri belirli koşullara göre filtrelemek için kullanılır.

### Söz Dizimi:
```sql
SELECT * FROM tablo_adi WHERE kosul;
```

### Örnek:
```sql
SELECT * FROM ogrenciler WHERE bolum = 'Bilgisayar';
```
> Bu sorgu, sadece bilgisayar mühendisliği bölümündeki öğrencileri listeler.

### Karşılaştırma Operatörleri:
| Operatör | Anlamı           |
|----------|------------------|
| =        | Eşittir          |
| <> veya != | Eşit değildir |
| >        | Büyüktür         |
| <        | Küçüktür         |
| >=       | Büyük eşit       |
| <=       | Küçük eşit       |

### Mantıksal Operatörler:
| Operatör | Açıklama     |
|----------|--------------|
| AND      | Ve           |
| OR       | Veya         |
| NOT      | Değil        |

### Örnek:
```sql
SELECT * FROM ogrenciler
WHERE bolum = 'Bilgisayar' AND ad LIKE 'A%';
```
> Hem bölümü Bilgisayar olan hem de adı 'A' harfiyle başlayan öğrencileri listeler.

---

## 📊 ORDER BY
Verileri bir veya birden fazla kolona göre sıralamak için kullanılır.

### Söz Dizimi:
```sql
SELECT * FROM tablo_adi ORDER BY kolon1 [ASC|DESC];
```

### Örnek:
```sql
SELECT * FROM ogrenciler ORDER BY ad ASC;
```
> Öğrencileri ada göre alfabetik sıralar.

```sql
SELECT * FROM ogrenciler ORDER BY soyad DESC;
```
> Soyada göre ters alfabetik (Z-A) sıralar.

---

## 📚 Bu Derste Ne Öğrendik?
- SELECT ile veri sorgulamayı
- WHERE ile filtreleme yapmayı
- Karşılaştırma ve mantıksal operatörleri
- ORDER BY ile sıralama işlemlerini

⏭️ Devam etmek için 10. derse geçin: `10-fonksiyonlar.md`
