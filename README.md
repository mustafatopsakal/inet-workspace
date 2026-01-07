# INET Workspace - OMNeT++ Simülasyon Projesi

Bu proje, OMNeT++ simülasyon ortamı ve INET Framework kullanılarak geliştirilmiş Time-Sensitive Networking (TSN) ağ simülasyonlarını içermektedir.

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

Bu workspace, INET Framework 4.5.4 kullanılarak geliştirilmiş TSN (Time-Sensitive Networking) ağ simülasyonlarını içerir. Proje, otomotiv ve endüstriyel ağ senaryolarını simüle etmek için tasarlanmıştır.

### Özellikler

- **TSN Desteği**: IEEE 802.1 standartlarına uygun Time-Sensitive Networking simülasyonları
- **Otomotiv Senaryosu**: Araç içi ağ (in-vehicle network) simülasyonu
- **Endüstriyel Senaryo**: Endüstriyel otomasyon ağ simülasyonu
- **Stream Coding**: TSN akış tanımlama ve kodlama
- **Traffic Shaping**: Credit-Based Shaper (CBS) ve Time-Aware Shaper (TAS) desteği
- **Zaman Senkronizasyonu**: gPTP (IEEE 802.1AS) desteği

## 📦 Gereksinimler

### Yazılım Gereksinimleri

- **OMNeT++ 6.3.0** veya üzeri
- **INET Framework 4.5.4**
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
│   └── industrial/
│       ├── industrial.ned     # Endüstriyel ağ topolojisi
│       └── omnetpp.ini        # Endüstriyel simülasyon konfigürasyonu
├── src/                        # Kaynak kod dosyaları (şu an boş)
├── out/                        # Derleme çıktıları
├── Makefile                    # Build konfigürasyonu
└── README.md                   # Bu dosya
```

## 🚀 Kurulum

### 1. OMNeT++ Kurulumu

OMNeT++'ı [resmi web sitesinden](https://omnetpp.org/download) indirip kurun.

### 2. INET Framework Kurulumu

INET Framework 4.5.4'ü indirip proje dizininin bir üst seviyesine (`../inet-4.5.4/`) yerleştirin:

```bash
# Örnek dizin yapısı:
omnetpp-6.3.0/
├── samples/
│   └── inet-workspace/        # Bu proje
└── inet-4.5.4/                # INET Framework
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
```

Windows'ta:
```cmd
inet-workspace.exe -f simulations/car/omnetpp.ini
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
- Priority Code Point (PCP) = 5 (Class A) kullanımı
- PCAP kayıt desteği

**Simülasyon Süresi**: 15 saniye

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
*.Device.bridging.streamIdentifier.identifier.mapping = [
    {stream: "S1 Talker", packetFilter: expr(udp.destPort == 1000)}
]
*.Device.bridging.streamCoder.encoder.mapping = [
    {stream: "S1 Talker", pcp: 5}
]
```

### Traffic Shaping

```ini
# Credit-Based Shaper
*.SW*.eth[*].macLayer.queue.transmissionSelectionAlgorithm[0].typename = "Ieee8021qCreditBasedShaper"
*.SW*.eth[*].macLayer.queue.transmissionSelectionAlgorithm[0].idleSlope = 600Mbps
```

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
Çözüm: Makefile'daki İNET_4_5_4_PROJ yolunu kontrol edin. 
INET Framework'ün ../inet-4.5.4/ konumunda olduğundan emin olun.
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

**Son Güncelleme**: 2025
**OMNeT++ Sürümü**: 6.3.0
**INET Framework Sürümü**: 4.5.4

