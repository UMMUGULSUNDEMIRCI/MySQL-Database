CREATE TABLE tedarikci_performans (
    tedarikci_performans_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tedarikci_id INT NOT NULL,
    tedarikci_iade_id INT NOT NULL,
    sevkiyat_id INT NOT NULL,
    tarih DATETIME,
    toplam_siparis_sayisi INT,
    toplam_satis_sayisi INT,
    ortalama_siparis_degeri INT
);

CREATE TABLE isletme_satis_performans (
    is_performans_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    siparis_id INT NOT NULL,
    iade_id INT NOT NULL,
    tarih DATETIME,
    toplam_siparis_sayisi INT,
    toplam_satis_sayisi INT,
    ortalama_siparis_degeri INT
);

CREATE TABLE kargo (
    kargo_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    siparis_id INT NOT NULL,
    teslimat_tarihi DATE,
    kargo_ucreti INT
);
CREATE TABLE iade (
    iade_id INT AUTO_INCREMENT PRIMARY KEY,
    siparis_id INT NOT NULL,
    teslimat_tarihi DATE,
    kargo_ucreti INT,
    FOREIGN KEY (siparis_id) REFERENCES siparis(siparis_id)
);
