-- 1. Çalışanlar adında bir tablo oluşturuyoruz
CREATE TABLE Calisanlar (
    CalisanID INT PRIMARY KEY,       -- Çalışanların benzersiz kimlik numarası
    Isim VARCHAR(50),                -- Çalışan adı
    Soyisim VARCHAR(50),             -- Çalışan soyadı
    Maas DECIMAL(10, 2),            -- Maaş bilgisi (ondalıklı sayı)
    Departman VARCHAR(50)            -- Çalışanın çalıştığı departman
);

-- 2. Tabloya birkaç çalışan ekliyoruz
INSERT INTO Calisanlar VALUES (1, 'Ahmet', 'Yılmaz', 5500.00, 'Muhasebe');
INSERT INTO Calisanlar VALUES (2, 'Ayşe', 'Demir', 6200.50, 'İnsan Kaynakları');
INSERT INTO Calisanlar VALUES (3, 'Mehmet', 'Kaya', 4800.75, 'Muhasebe');

-- 3. Maaşı 5000'den fazla olan çalışanları getiriyoruz
SELECT Isim, Soyisim, Maas
FROM Calisanlar
WHERE Maas > 5000;
