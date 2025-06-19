# 🛡️ 12 - SQL Yönetim Komutları ve Yetkilendirme

SQL sadece veri eklemek ve sorgulamak için değil; kullanıcıları yönetmek, yetkileri sınırlamak ve sistem güvenliğini sağlamak için de kullanılır. Bu derste DCL (Data Control Language) ve bazı yönetimsel komutlara değineceğiz.

---

## 👤 Kullanıcı Oluşturma
Veritabanına yeni kullanıcı eklemek için kullanılır.

### Örnek:
```sql
CREATE USER 'mehmet'@'localhost' IDENTIFIED BY '12345';
```
> `localhost` yerine `%` yazılırsa tüm IP’lerden erişime izin verilir.

---

## 🔐 YETKİ VERME (GRANT)
Kullanıcılara belirli yetkiler vermek için kullanılır.

### Örnek:
```sql
GRANT SELECT, INSERT, UPDATE ON okul.* TO 'mehmet'@'localhost';
```
> Bu komut `mehmet` adlı kullanıcıya “okul” veritabanındaki tüm tablolarda veri okuma, ekleme ve güncelleme yetkisi verir.

---

## ❌ YETKİ ALMA (REVOKE)
Daha önce verilmiş yetkileri geri almak için kullanılır.

### Örnek:
```sql
REVOKE UPDATE ON okul.* FROM 'mehmet'@'localhost';
```
> Güncelleme yetkisi alınır.

---

## 🧹 KULLANICI SİLME
Bir kullanıcı sistemden kaldırılabilir.

```sql
DROP USER 'mehmet'@'localhost';
```

---

## 🔄 Yetki Görüntüleme

```sql
SHOW GRANTS FOR 'mehmet'@'localhost';
```
> Kullanıcının sahip olduğu tüm izinleri listeler.

---

## 🛠️ Ek Yönetimsel Komutlar

| Komut           | Açıklama                                  |
|------------------|-------------------------------------------|
| `SHOW DATABASES` | Tüm veritabanlarını listeler              |
| `SHOW TABLES`    | Aktif veritabanındaki tabloları gösterir  |
| `DESCRIBE`       | Bir tablonun sütun yapılarını gösterir     |
| `USE`            | Belirli bir veritabanına geçiş yapar      |

---

## 📚 Bu Derste Ne Öğrendik?
- SQL’de kullanıcı oluşturma ve silmeyi
- Yetki verme (`GRANT`) ve geri alma (`REVOKE`) işlemlerini
- Yönetimsel SQL komutlarını ve sistem bilgilerini sorgulamayı

🎉 Tebrikler! 12 dersten oluşan SQL ve Veritabanı Yönetim Sistemleri serisini tamamladınız.

💡 Daha fazlası için hazırladığım ileri düzey SQL konularına (indexleme, view'lar, trigger'lar, prosedürler) geçebilirsiniz.
