# 🧮 10 - SQL Fonksiyonları ve Gruplama (GROUP BY)

SQL'de fonksiyonlar, veriler üzerinde işlem yapmak için kullanılır. Özellikle toplama, ortalama alma, maksimum/minimum değer bulma gibi işlemlerde **yerleşik (built-in)** fonksiyonlar devreye girer. Bu derste aynı zamanda **GROUP BY** ile verileri gruplamayı öğreneceğiz.

---

## 🔢 Toplam, Ortalama, Sayma vb. Fonksiyonlar

| Fonksiyon | Açıklama                       | Örnek Kullanım                   |
|-----------|--------------------------------|----------------------------------|
| `COUNT()` | Belirli satır sayısını verir   | `COUNT(*)`, `COUNT(ad)`         |
| `SUM()`   | Toplam hesaplar                | `SUM(maas)`                      |
| `AVG()`   | Ortalama hesaplar              | `AVG(not_ortalamasi)`           |
| `MAX()`   | En büyük değeri bulur          | `MAX(maas)`                      |
| `MIN()`   | En küçük değeri bulur          | `MIN(yas)`                       |

### Örnek:
```sql
SELECT COUNT(*) FROM ogrenciler;
SELECT AVG(yas) FROM ogrenciler WHERE bolum = 'Bilgisayar';
```

---

## 🧩 GROUP BY
Aynı değere sahip kayıtları gruplar. Genellikle toplama veya sayma gibi fonksiyonlarla birlikte kullanılır.

### Söz Dizimi:
```sql
SELECT kolon, AGG_FUNC(kolon) FROM tablo
GROUP BY kolon;
```

### Örnek:
```sql
SELECT bolum, COUNT(*) FROM ogrenciler
GROUP BY bolum;
```
> Her bölümde kaç öğrenci olduğunu gösterir.

---

## 🧪 GROUP BY + HAVING
Gruplama işlemi sonrası filtreleme yapmak için `HAVING` kullanılır. `WHERE`, gruplama öncesi; `HAVING`, gruplama sonrası filtreleme yapar.

### Örnek:
```sql
SELECT bolum, AVG(yas) FROM ogrenciler
GROUP BY bolum
HAVING AVG(yas) > 21;
```
> Sadece yaş ortalaması 21'den büyük olan bölümler listelenir.

---

## ⚠️ Dikkat Edilmesi Gerekenler
- `GROUP BY` kullanıldığında seçilen sütunlar ya **gruplama sütunu** olmalı ya da **bir fonksiyonla** kullanılmalıdır.
- `HAVING`, yalnızca gruplama sonucu elde edilen değerlere uygulanır.

---

## 📚 Bu Derste Ne Öğrendik?
- SQL fonksiyonlarıyla temel hesaplamalar yapmayı
- Verileri `GROUP BY` ile gruplamayı
- `HAVING` ile gruplar üzerinde filtre uygulamayı

⏭️ Devam etmek için 11. derse geçin: `11-join-islemleri.md`
