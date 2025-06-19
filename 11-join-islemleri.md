# 🔗 11 - SQL JOIN İşlemleri (Tabloları Birleştirme)

Veriler genellikle birden fazla tabloya dağıtılmış şekilde tutulur. Bu veriler arasındaki ilişkileri kullanarak tablo birleşimleri yapılır. Bu derste farklı JOIN türlerini öğreneceğiz.

---

## 🔍 JOIN Nedir?
JOIN işlemi, iki veya daha fazla tabloyu ortak bir sütuna göre birleştirerek tek bir sonuç kümesi oluşturur.

### Temel Yapı:
```sql
SELECT * FROM tablo1
JOIN tablo2 ON tablo1.alan = tablo2.alan;
```

---

## 🔹 INNER JOIN
Sadece her iki tabloda eşleşen kayıtları döndürür.

### Örnek:
```sql
SELECT o.ad, d.ders_ad FROM ogrenciler o
INNER JOIN ders_kayitlari dk ON o.ogrenci_no = dk.ogrenci_no
INNER JOIN dersler d ON dk.ders_kodu = d.ders_kodu;
```
> Sadece dersi olan öğrenciler görünür.

---

## 🔹 LEFT JOIN (LEFT OUTER JOIN)
Sol tablodaki tüm kayıtları ve sağ tabloyla eşleşenleri döndürür. Eşleşme yoksa NULL döner.

### Örnek:
```sql
SELECT o.ad, d.ders_ad FROM ogrenciler o
LEFT JOIN ders_kayitlari dk ON o.ogrenci_no = dk.ogrenci_no
LEFT JOIN dersler d ON dk.ders_kodu = d.ders_kodu;
```
> Tüm öğrenciler listelenir. Dersi olmayanların ders_ad'ı NULL olur.

---

## 🔹 RIGHT JOIN (RIGHT OUTER JOIN)
Sağ tablodaki tüm kayıtları döndürür, eşleşme yoksa sol taraftan NULL verir.

> Not: MySQL gibi bazı sistemlerde RIGHT JOIN nadiren kullanılır.

---

## 🔹 FULL JOIN (FULL OUTER JOIN)
Her iki tabloda eşleşen ve eşleşmeyen tüm kayıtları getirir.

> MySQL bu türü doğrudan desteklemez, ama UNION ile benzetilebilir.

```sql
SELECT * FROM tablo1
LEFT JOIN tablo2 ON ...
UNION
SELECT * FROM tablo1
RIGHT JOIN tablo2 ON ...;
```

---

## 🔍 CROSS JOIN
Her satırı diğer tablodaki her satırla eşleştirir. Kartesyen çarpım üretir. Çok dikkatli kullanılmalıdır.

---

## 📌 JOIN Kullanımında Dikkat Edilmesi Gerekenler
- Tablolar arası ilişki iyi tanımlanmalıdır.
- Yalnızca ihtiyaç duyulan sütunlar çağrılmalı.
- Büyük veri kümelerinde JOIN performansı düşebilir, INDEX kullanılabilir.

---

## 📚 Bu Derste Ne Öğrendik?
- JOIN kavramını ve ne işe yaradığını
- INNER, LEFT, RIGHT, FULL ve CROSS JOIN türlerini
- JOIN'lerin nasıl yazıldığını ve performans ipuçlarını

⏭️ Son derse geçin: `12-yonetim-komutlari.md`
