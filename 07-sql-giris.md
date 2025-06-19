# 🧮 07 - SQL’e Giriş

SQL (Structured Query Language), ilişkisel veritabanı yönetim sistemleriyle (RDBMS) iletişim kurmak için kullanılan standart dildir. Veritabanı içindeki verileri sorgulamak, eklemek, güncellemek ve silmek için kullanılır.

> "SQL, veritabanının dili gibidir."

---

## 📌 SQL Ne İşe Yarar?
SQL sayesinde şunları yapabiliriz:
- Veritabanı oluşturma ve yapılandırma
- Tablo oluşturma, değiştirme ve silme
- Veri ekleme, güncelleme, silme
- Veri sorgulama (SELECT)
- Yetkilendirme ve kullanıcı işlemleri

---

## 🧠 SQL Komutları Genel Kategoriler

| Kategori     | Açıklama                             | Örnek Komutlar              |
|--------------|--------------------------------------|-----------------------------|
| DDL          | Veri Tanımlama Dili                  | CREATE, DROP, ALTER         |
| DML          | Veri Manipülasyon Dili               | SELECT, INSERT, UPDATE      |
| DCL          | Veri Kontrol Dili                    | GRANT, REVOKE               |
| TCL          | İşlem Kontrol Dili                   | COMMIT, ROLLBACK            |

---

## 🏗️ Basit SQL Yapısı
```sql
SELECT kolon_adı FROM tablo_adı;
```

### Örnek:
```sql
SELECT ad, soyad FROM ogrenciler;
```
Bu sorgu, "ogrenciler" tablosundaki ad ve soyad sütunlarını listeler.

---

## 🧪 SQL Kullanım Ortamları

- **phpMyAdmin**: MySQL veritabanları için web arayüzü.
- **MySQL Workbench**: MySQL/MariaDB için GUI uygulaması.
- **pgAdmin**: PostgreSQL için güçlü bir yönetim aracı.
- **Oracle SQL Developer**: Oracle DB için.

Ayrıca terminal/komut satırı da kullanılabilir:
```bash
mysql -u root -p
```

---

## ⚙️ SQL Deyimleri Nasıl Çalışır?
- Komutlar **noktalı virgül (;)** ile biter.
- Büyük-küçük harf duyarlı değildir, ama genellikle **büyük harfle** yazılır.
- Tırnak kullanımı veri tipine göre değişebilir: `'metin'`, `"alias"`

---

## 📚 Bu Derste Ne Öğrendik?
- SQL dilinin ne olduğunu ve ne işe yaradığını
- SQL komut kategorilerini
- Temel SQL söz dizimini (syntax)
- SQL çalıştırma ortamlarını

⏭️ Devam etmek için 8. derse geçin: `08-sql-komutlari-1.md`
