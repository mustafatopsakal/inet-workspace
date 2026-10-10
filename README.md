# INET Workspace - OMNeT++ Simülasyon Projesi

Bu proje, OMNeT++ simülasyon ortamı ve INET Framework kullanılarak geliştirilmiş Time-Sensitive Networking (TSN) ağ simülasyonlarını içermektedir.

## 📘 INET Kapsamlı Rehber (Başlangıç Noktası)

👉 Buradan başlayın: **[INET_GUIDE.md](INET_GUIDE.md)**

Bu rehber aşağıdaki konuları yapılandırılmış bir biçimde açıklamaktadır:
- Ağ temelleri
- INET framework mimarisi
- Protokol yığını (protocol stack) eşlemesi
- Zaman Duyarlı Ağlar (Time-Sensitive Networking – TSN) mekanizmaları

## 📋 İçindekiler

- [Genel Bakış](#genel-bakış)
- [Gereksinimler](#gereksinimler)
- [Proje Yapısı](#proje-yapısı)
- [Kurulum](#kurulum)
- [Simülasyonları Çalıştırma](#simülasyonları-çalıştırma)
- [Mevcut Simülasyonlar](#mevcut-simülasyonlar)
- [Konfigürasyon](#konfigürasyon)
- [Dokümantasyon](#dokümantasyon)
- [Lisans](#lisans)

## 🎯 Genel Bakış

Bu workspace, INET Framework ile geliştirilmiş TSN (Time-Sensitive Networking) ağ simülasyonlarını içerir. Proje, otomotiv ve endüstriyel ağ senaryolarını simüle etmek için tasarlanmıştır.

> **Sürümler ve dallar:** `master` dalı güncel sürümdür (OMNeT++ 6.4.0 + INET 4.7.0). Yayımlanan makalede kullanılan sürüm (OMNeT++ 6.3.0 + INET 4.5.4) `inet-4.5.4` dalındadır; makaledeki sonuçları birebir yeniden üretmek için o dalı kullanın.

### Özellikler

- **TSN Desteği**: IEEE 802.1 standartlarına uygun Time-Sensitive Networking simülasyonları
- **Otomotiv Senaryosu**: Araç içi ağ (in-vehicle network) simülasyonu (car, large_car)
- **Endüstriyel Senaryo**: Endüstriyel otomasyon ağ simülasyonu
- **Stream Coding**: TSN akış tanımlama ve kodlama
- **Traffic Shaping**: Credit-Based Shaper (CBS) - AVB Class A ve Class B desteği
- **Zaman Senkronizasyonu**: gPTP (IEEE 802.1AS) desteği

## 📦 Gereksinimler

### Yazılım Gereksinimleri

- **OMNeT++ 6.4.0** veya üzeri
- **INET Framework 4.7.0** (makaledeki sürüm için `inet-4.5.4` dalı: OMNeT++ 6.3.0 + INET 4.5.4)
- **C++ Derleyici** (GCC, Clang veya MSVC)
- **Make** (Unix/Linux/Mac) veya **NMake** (Windows)

### Sistem Gereksinimleri

- Minimum 4 GB RAM
- 2 GB boş disk alanı
- İşletim Sistemi: Windows, Linux veya macOS

## 📁 Proje Yapısı

```
inet-workspace/
├── docs/
│   └── INET_INTRO.md          # INET Framework kapsamlı kılavuzu
├── simulations/
│   ├── car/
│   │   ├── car.ned            # Otomotiv ağ topolojisi
│   │   └── omnetpp.ini        # Otomotiv simülasyon konfigürasyonu
│   ├── industrial/
│   │   ├── industrial.ned     # Endüstriyel ağ topolojisi
│   │   └── omnetpp.ini        # Endüstriyel simülasyon konfigürasyonu
│   └── large_car/
│       ├── large_car.ned      # Büyük otomotiv ağ topolojisi
│       └── omnetpp.ini        # Büyük otomotiv simülasyon konfigürasyonu
├── src/                        # Kaynak kod dosyaları (şu an boş)
├── out/                        # Derleme çıktıları
├── Makefile                    # Build konfigürasyonu
└── README.md                   # Bu dosya
```

## 🚀 Kurulum

### 1. OMNeT++ Kurulumu

OMNeT++'ı [resmi web sitesinden](https://omnetpp.org/download) indirip kurun.

### 2. INET Framework Kurulumu

INET Framework 4.7.0'ı indirip proje dizininin bir üst seviyesine (`../inet-4.7.0/`) yerleştirin:

```bash
# Örnek dizin yapısı:
omnetpp-6.4.0/
└── samples/
    ├── inet-workspace/        # Bu proje
    └── inet-4.7.0/            # INET Framework
```

### 3. Proje Derleme

Proje dizininde aşağıdaki komutu çalıştırın:

```bash
# Unix/Linux/Mac
make

# Windows (PowerShell veya CMD)
nmake
```

Derleme başarılı olduğunda, `out/clang-release/` dizininde `inet-workspace.exe` (veya platforma göre uygun uzantı) dosyası oluşturulur.

## ▶️ Simülasyonları Çalıştırma

### OMNeT++ IDE ile

1. OMNeT++ IDE'yi açın
2. `File > Import > Existing Projects into Workspace` seçeneğini kullanarak projeyi içe aktarın
3. `simulations/car/omnetpp.ini` veya `simulations/industrial/omnetpp.ini` dosyasını açın
4. `Run > Run As > OMNeT++ Simulation` ile simülasyonu başlatın

### Komut Satırından

```bash
# Otomotiv simülasyonu
./inet-workspace -f simulations/car/omnetpp.ini

# Endüstriyel simülasyonu
./inet-workspace -f simulations/industrial/omnetpp.ini

# Büyük otomotiv simülasyonu
./inet-workspace -f simulations/large_car/omnetpp.ini
```

Windows'ta:
```cmd
inet-workspace.exe -f simulations/car/omnetpp.ini
inet-workspace.exe -f simulations/large_car/omnetpp.ini
```

## 🎮 Mevcut Simülasyonlar

### 1. Otomotiv Ağ Simülasyonu (`simulations/car/`)

Bu simülasyon, bir otomobil içindeki TSN ağını modellemektedir.

**Ağ Topolojisi:**
- **Cihazlar**: Cam1, Cam2, Cam3, Cam4 (kamera), DaCam, HU (Head Unit), CU (Control Unit), RSE (Rear Seat Entertainment), Telematics, CdAudioDVD
- **Anahtarlar**: SW1, SW2
- **Bağlantı Hızı**: 1 Gbps Ethernet

**Özellikler:**
- 31 farklı stream (S1-S31)
- Stream tanımlama ve kodlama
- Credit-Based Shaper (CBS) ile trafik şekillendirme
- AVB Class A (PCP=5, idleSlope=600Mbps) ve Class B (PCP=4, idleSlope=150Mbps) desteği
- S29, S30, S31: Class B trafiği
- PCAP kayıt desteği

**Simülasyon Süresi**: 15 saniye

**Referanslar:** Bu topoloji ve akış detayları aşağıdaki yayınlarda tanımlanmıştır:
- [1] G. Patti, L. Lo Bello, "Performance assessment of the IEEE 802.1Q in automotive applications", AEIT Automotive, 2019.
- [2] L. Leonardi, L. Lo Bello, G. Patti, "Performance assessment of the IEEE 802.1Qch in an automotive scenario", AEIT Automotive, 2020.
- [3] L. Lo Bello, M. Ashjaei, G. Patti, M. Behnam, "Schedulability analysis of Time-Sensitive Networks with scheduled traffic and preemption support", IEEE Access, 2021.
- [4] M. Topsakal, S. Cevher, D. Ergenç, "A Machine Learning-Based Intrusion Detection Framework with Labeled Dataset Generation for IEEE 802.1 Time-Sensitive Networking", Journal of Systems Architecture, Vol. 164, 2025.
- [5] S. Cevher, M. Topsakal, Ö. K. Demir, "Delay Analysis of IEEE 802.1BA Audio Video Bridging Networks: Recent Advances and Evaluation of Realistic Industrial Communication Use Cases", IJERAD, Vol. 17, Issue 2, pp. 383-402, 2025.
- [6] M. Topsakal, S. Cevher, "Cyber Security for IEEE 802.1 Time Sensitive In-Vehicle Networking: Recent Advances and Impact Analysis of DoS Attacks", Dokuz Eylül Üniversitesi Mühendislik Fakültesi Fen ve Mühendislik Dergisi, 2024.

### 2. Endüstriyel Ağ Simülasyonu (`simulations/industrial/`)

Bu simülasyon, endüstriyel otomasyon sistemlerindeki TSN ağını modellemektedir.

**Ağ Topolojisi:**
- **Cihazlar**: N1-N8 (endüstriyel cihazlar)
- **Anahtarlar**: SW1-SW6 (TSN switch'ler)
- **Zaman Senkronizasyonu**: TSNClock (gPTP master)
- **Bağlantı Hızı**: 1 Gbps Ethernet

**Özellikler:**
- 8 farklı stream (S1-S8)
- gPTP (IEEE 802.1AS) zaman senkronizasyonu
- Credit-Based Shaper (CBS) ile trafik şekillendirme
- Stream tanımlama ve kodlama
- Clock drift simülasyonu

**Simülasyon Süresi**: 15 saniye

**Referanslar:** Bu topoloji ve akış detayları aşağıdaki yayınlarda tanımlanmıştır:
- [1] M. Ashjaei, G. Patti, M. Behnam, T. Nolte, G. Alderisi, L. Lo Bello, "Schedulability analysis of Ethernet Audio Video Bridging networks with scheduled traffic support", Real-Time Systems, 2017.
- [2] S. Cevher, M. Topsakal, Ö. K. Demir, "Delay Analysis of IEEE 802.1BA Audio Video Bridging Networks: Recent Advances and Evaluation of Realistic Industrial Communication Use Cases", IJERAD, Vol. 17, Issue 2, pp. 383-402, 2025.

### 3. Büyük Otomotiv Ağ Simülasyonu (`simulations/large_car/`)

Bu simülasyon, daha karmaşık bir araç içi TSN ağını modellemektedir. CoRE4INET'ten INET'e dönüştürülmüştür.

**Ağ Topolojisi:**
- **Kontrol Üniteleri**: VCC1, VCC2, VCC3 (Vehicle Control Computer)
- **Aktüatörler**: BrakeAct1-3 (Fren), WinAct1-3 (Cam)
- **Sensörler**: Cam1-4 (Kamera), Radar1-2, Lidar
- **Multimedya**: Video, Audio1-3
- **Kontrol**: FLC (Front Left Controller), FRC (Front Right Controller), RC (Rear Controller)
- **Anahtarlar**: Switch1-3, FrontLeftSwitch, FrontRightSwitch, RearSwitch, EndSwitch1-2
- **Bağlantı Hızı**: 1 Gbps Ethernet

**Özellikler:**
- 17 farklı AVB stream (S1-S17)
- Dağıtık switch topolojisi (8 switch)
- Credit-Based Shaper (CBS) ile trafik şekillendirme
- Priority Code Point (PCP) = 5 (Class A) kullanımı
- Her stream için benzersiz port numarası (1001-1017)
- Stream tanımlama: `has(udp) && udp.destPort == XXXX` formatı

**Simülasyon Süresi**: 1 saniye

**Referanslar:** Bu topoloji ve akış detayları aşağıdaki yayınlarda tanımlanmıştır:
- [1] F. Luo, B. Wang, Z. Yang, P. Zhang, Y. Ma, Z. Fang, M. Wu, Z. Sun, "Design Methodology of Automotive Time-Sensitive Network System Based on OMNeT++ Simulation System", IEEE Access, 2019.
- [2] M. Topsakal, S. Cevher, "Cyber Security for IEEE 802.1 Time Sensitive In-Vehicle Networking: Recent Advances and Impact Analysis of DoS Attacks", Dokuz Eylül Üniversitesi Mühendislik Fakültesi Fen ve Mühendislik Dergisi, 2024.

## ⚙️ Konfigürasyon

### Temel Parametreler

Her simülasyon `omnetpp.ini` dosyasında konfigüre edilir:

```ini
[General]
network = CarNetwork  # veya IndustrialNetwork
sim-time-limit = 15s
```

### TSN Özelliklerini Etkinleştirme

```ini
# Stream coding
*.*.hasOutgoingStreams = true
*.*.hasIncomingStreams = true

# Traffic shaping
*.SW*.hasEgressTrafficShaping = true

# Time synchronization
*.*.hasTimeSynchronization = true
```

### Stream Tanımlama

```ini
# has(udp) kontrolü ile ARP gibi UDP olmayan paketlerin filtrelenmesi
*.Device.bridging.streamIdentifier.identifier.mapping = [
    {stream: "S1 Talker", packetFilter: expr(has(udp) && udp.destPort == 1000)}
]
*.Device.bridging.streamCoder.encoder.mapping = [
    {stream: "S1 Talker", pcp: 5}  # Class A
]
```

### Traffic Shaping

```ini
# Credit-Based Shaper (tek sınıf - Class A)
*.SW*.eth[*].macLayer.queue.transmissionSelectionAlgorithm[0].typename = "Ieee8021qCreditBasedShaper"
*.SW*.eth[*].macLayer.queue.numTrafficClasses = 1
*.SW*.eth[*].macLayer.queue.transmissionSelectionAlgorithm[0].idleSlope = 600Mbps

# Credit-Based Shaper (iki sınıf - Class A + Class B)
*.SW*.eth[*].macLayer.queue.transmissionSelectionAlgorithm[0].typename = "Ieee8021qCreditBasedShaper"
*.SW*.eth[*].macLayer.queue.transmissionSelectionAlgorithm[1].typename = "Ieee8021qCreditBasedShaper"
*.SW*.eth[*].macLayer.queue.numTrafficClasses = 2
*.SW*.eth[*].macLayer.queue.*[0].display-name = "Class B"
*.SW*.eth[*].macLayer.queue.*[1].display-name = "Class A"
*.SW*.eth[*].macLayer.queue.transmissionSelectionAlgorithm[0].idleSlope = 150Mbps  # Class B
*.SW*.eth[*].macLayer.queue.transmissionSelectionAlgorithm[1].idleSlope = 600Mbps  # Class A
```

### PCP (Priority Code Point) Değerleri

| Sınıf       | PCP | Açıklama                    |
|-------------|-----|-----------------------------|
| CDT         | 6   | Control Data Traffic        |
| Class A     | 5   | AVB Class A (125µs period)  |
| Class B     | 4   | AVB Class B (250µs period)  |
| Best Effort | 0   | Önceliksiz trafik           |

Daha detaylı konfigürasyon örnekleri için `simulations/car/omnetpp.ini` ve `simulations/industrial/omnetpp.ini` dosyalarına bakın.

## 📚 Dokümantasyon

### INET Framework Kılavuzu

Proje içinde detaylı bir INET Framework kılavuzu bulunmaktadır:
- **Dosya**: `docs/INET_INTRO.md`
- **İçerik**: 
  - INET Framework mimarisi
  - TSN mekanizmaları
  - Paket işleme
  - Konfigürasyon örnekleri
  - TSN standartları (IEEE 802.1AS, 802.1Qbv, 802.1Qav, vb.)

### Ek Kaynaklar

- [INET Framework User's Guide](https://inet.omnetpp.org/docs/users-guide/)
- [INET Framework Developer's Guide](https://inet.omnetpp.org/docs/developers-guide/)
- [OMNeT++ Documentation](https://doc.omnetpp.org/)

## 🔧 Sorun Giderme

### Derleme Hataları

**Problem**: INET Framework bulunamıyor
```
Çözüm: Makefile'daki INET_4_7_0_PROJ yolunu kontrol edin.
INET Framework'ün ../inet-4.7.0/ konumunda olduğundan emin olun.
```

**Problem**: OMNeT++ bulunamıyor
```
Çözüm: OMNeT++ bin dizinini PATH'e ekleyin veya OMNETPP_CONFIGFILE değişkenini ayarlayın.
```

### Simülasyon Hataları

**Problem**: Network tanımlanamıyor
```
Çözüm: omnetpp.ini dosyasındaki network parametresinin NED dosyasındaki network adıyla eşleştiğinden emin olun.
```

## 📝 Notlar

- Simülasyonlar varsayılan olarak 15 saniye çalışır
- İstatistik toplama varsayılan olarak kapalıdır (`collectStatistics = false`)
- PCAP kayıtları `results/` dizinine yazılır (etkinleştirildiğinde)
- TSN özellikleri (time sync, traffic shaping) konfigürasyon dosyalarında etkinleştirilebilir/devre dışı bırakılabilir
- INET 4.7.0'a geçişte `industrial` ve `large_car` yapılandırmalarında küçük uyarlamalar yapıldı (`crcMode` → `checksumMode`, gPTP için fiziksel katman ve zaman çözünürlüğü, osilatör `nominalTickLength`); gerekçeleri ilgili `omnetpp.ini` dosyalarındaki yorumlarda

## 📄 Lisans

Bu proje, INET Framework ve OMNeT++ ile uyumlu olarak geliştirilmiştir. INET Framework LGPL lisansı altında lisanslanmıştır.

## 👥 Katkıda Bulunma

Projeye katkıda bulunmak için:
1. Yeni simülasyon senaryoları ekleyebilirsiniz
2. Mevcut simülasyonları geliştirebilirsiniz
3. Dokümantasyonu güncelleyebilirsiniz

## 📧 İletişim

Sorularınız veya önerileriniz için lütfen proje yöneticisi ile iletişime geçin.

---

**Son Güncelleme**: Ekim 2026
**OMNeT++ Sürümü**: 6.4.0
**INET Framework Sürümü**: 4.7.0