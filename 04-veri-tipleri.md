# 🧮 04 - Veri Tipleri ve Tablo Elemanları

Veritabanlarında tutulan her veri, belirli bir veri tipine sahiptir. Bu veri tipleri; sayılar, metinler, tarih bilgileri, mantıksal ifadeler gibi kategorilere ayrılır. Veri tiplerinin doğru seçilmesi, veritabanı performansı ve bütünlüğü açısından kritik öneme sahiptir.

---

## 🔢 Sayısal Veri Tipleri
Sayısal işlemler gerektiren alanlarda kullanılır.

| Veri Tipi  | Açıklama                  | Örnek       |
|------------|---------------------------|-------------|
| INT        | Tam sayılar               | 42          |
| FLOAT      | Ondalıklı sayılar         | 3.14        |
| DECIMAL(n,m) | Finansal işlemler için hassas ondalık | 1234.56 |

> Finansal işlemler için `DECIMAL` tipi, veri hassasiyetini korumak adına önerilir.

---

## 📝 Metinsel Veri Tipleri
Karakter dizileri için kullanılır.

| Veri Tipi | Açıklama                    | Örnek         |
|-----------|-----------------------------|---------------|
| CHAR(n)   | Sabit uzunlukta metin       | 'TR'          |
| VARCHAR(n)| Değişken uzunlukta metin    | 'Merhaba'     |
| TEXT      | Uzun metin içerikleri       | Makale içerikleri |

> `VARCHAR` tipi, alanın gereksiz yer kaplamaması açısından `CHAR`'a göre daha ekonomiktir.

---

## 📅 Tarih ve Zaman Veri Tipleri
Zamanla ilgili kayıtları tutmak için kullanılır.

| Veri Tipi | Açıklama           | Örnek              |
|-----------|--------------------|---------------------|
| DATE      | Yalnızca tarih     | '2025-06-17'        |
| TIME      | Yalnızca saat      | '14:30:00'          |
| DATETIME  | Tarih + saat       | '2025-06-17 14:30:00'|
| TIMESTAMP | Unix zaman damgası | 1718646600          |

---

## ✅ Mantıksal Veri Tipleri (Boolean)
Doğru/yanlış değerleri için kullanılır.

| Veri Tipi | Açıklama             | Örnek   |
|-----------|----------------------|---------|
| BOOLEAN   | true / false         | true    |
| BIT       | 0 / 1 (ikilik sistem) | 1       |

> Mantıksal alanlar genellikle kullanıcı durumu, silinmiş kayıtlar gibi alanlar için kullanılır.

---

## 📐 Tablo Elemanları ve Alan Özellikleri
Her tablonun içinde birden çok **alan (sütun)** bulunur ve her alanın veri tipi belirlenmelidir. Ayrıca bazı ek özellikler de tanımlanabilir:

- **PRIMARY KEY**: Her satırı benzersiz şekilde tanımlayan anahtar
- **FOREIGN KEY**: Başka bir tabloya bağlanan alan
- **NOT NULL**: Alanın boş bırakılamayacağını belirtir
- **DEFAULT**: Varsayılan değer ataması
- **AUTO_INCREMENT**: Sayısal alanların otomatik artması

---

## 🎯 Örnek Tablo Oluşumu
```sql
CREATE TABLE ogrenciler (
    ogrenci_no INT PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50),
    dogum_tarihi DATE,
    aktif BOOLEAN DEFAULT true
);
```

---

## 📚 Bu Derste Ne Öğrendik?
- Veritabanında kullanılan başlıca veri tiplerini
- Sayısal, metinsel, tarihsel ve mantıksal veri türlerinin farklarını
- Tablo elemanlarının yapılarını ve alan özelliklerini

⏭️ Devam etmek için 5. derse geçin: `05-veri-tabanı-tasarımı.md`
