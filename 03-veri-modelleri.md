# 🧩 03 - Veri Modelleri

Veri modelleri, veritabanı tasarımında verilerin nasıl organize edileceğini ve birbirleriyle nasıl ilişkilendirileceğini belirleyen yapıdır. Bu modeller sayesinde veriler mantıklı, erişilebilir ve tutarlı bir şekilde yapılandırılır.

---

## 📚 Veri Modeli Nedir?
Veri modeli, veritabanındaki varlıkların (örneğin kişi, ürün, sipariş) nasıl temsil edileceğini ve aralarındaki ilişkilerin nasıl kurulacağını tanımlar.

Bir veri modeli şu sorulara cevap verir:
- Veriler hangi tablolarda tutulacak?
- Tablolar arasında nasıl bağlantılar olacak?
- Hangi alanlar birincil anahtar (primary key) olacak?

---

## 🏛️ 1. Hiyerarşik Veri Modeli
Veriler ağaç yapısında tutulur. Üst düzey kayıtlar alt düzeyleri kapsar.

📌 Örnek: Bir şirketin organizasyon yapısı.

```text
Şirket
 └── Departman
      └── Çalışan
```

### Özellikleri:
- Veri tekrarını azaltır
- Erişim hızı yüksektir
- Esneklik düşüktür

---

## 🪢 2. Ağ (Network) Veri Modeli
Veriler düğümler (nodes) ve ilişkiler (edges) şeklinde tutulur. Bir kayıt birden çok kayıtla ilişkilendirilebilir.

📌 Örnek: Bir öğrenci birden fazla derse kayıtlı olabilir, bir ders de birden fazla öğrenciye ait olabilir.

### Avantajları:
- Karmaşık ilişkiler temsil edilebilir
- Esneklik yüksektir

---

## 🔗 3. İlişkisel Veri Modeli
Veriler, satır ve sütunlardan oluşan tablolar hâlinde saklanır. Günümüzde en yaygın kullanılan modeldir.

📌 Örnek: Öğrenci tablosu ve ders tablosu, ortak bir "ders_kayit" tablosu ile ilişkilendirilir.

| Öğrenci No | Ad   | Soyad  |
|------------|------|--------|
| 1001       | Ali  | Demir  |

| Ders Kodu | Ders Adı   |
|-----------|------------|
| MAT101    | Matematik |

| Öğrenci No | Ders Kodu |
|------------|-----------|
| 1001       | MAT101    |

---

## 🧠 Neden İlişkisel Model Daha Popülerdir?
- Esnek ve ölçeklenebilirdir
- Sorgulama kolaylığı sağlar (SQL kullanımı)
- Veriler arası ilişki güçlü şekilde tanımlanabilir

> Modern veritabanlarının büyük çoğunluğu ilişkisel model üzerine kurulmuştur.

---

## 📌 Diğer Modeller (Kısaca)
- **Nesne Yönelimli Model**: Programlama nesnelerine benzer şekilde veri tutulur
- **Doküman Tabanlı Model**: MongoDB gibi NoSQL sistemlerinde kullanılır
- **Anahtar-Değer Modeli**: Redis gibi sistemlerde veri, key-value şeklindedir

---

## 📚 Bu Derste Ne Öğrendik?
- Veri modelinin ne olduğunu
- Hiyerarşik, ağ ve ilişkisel modellerin farklarını
- İlişkisel modelin neden yaygın olduğunu

⏭️ Devam etmek için 4. derse geçin: `04-veri-tipleri.md`
