# INET Framework Mimarisi ve Genel Yapısı - Kapsamlı Kılavuz

## 📚 İçindekiler

1. [INET Nedir?](#1-inet-nedir)
2. [Temel Ağ Kavramları ve Terimler](#2-temel-ağ-kavramları-ve-terimler)
3. [Katmanlı Mimari](#3-katmanlı-mimari)
4. [Dizin Yapısı](#4-dizin-yapısı)
5. [Time-Sensitive Networking (TSN)](#5-time-sensitive-networking-tsn)
6. [TSN Mekanizmaları - Detaylı Açıklamalar](#6-tsn-mekanizmaları---detaylı-açıklamalar)
7. [Paket Akış Senaryoları](#7-paket-akış-senaryoları)
8. [Modül Tipleri](#8-modül-tipleri)
9. [Paket İşleme Mekanizması](#9-paket-işleme-mekanizması)
10. [Konfigürasyon Sistemi ve Kod Örnekleri](#10-konfigürasyon-sistemi-ve-kod-örnekleri)
11. [Signal ve İstatistik Mekanizması](#11-signal-ve-istatistik-mekanizması)

---

## 1. INET Nedir?

INET Framework, OMNeT++ simülasyon ortamı için geliştirilmiş açık kaynaklı bir ağ simülasyon kütüphanesidir. İnternet protokollerini (TCP, UDP, IP, Ethernet, WiFi, vb.) ve çeşitli ağ teknolojilerini simüle etmek için kullanılır.

### 1.1 Temel Özellikler

| Özellik | Açıklama |
|---------|----------|
| **Modüler Yapı** | Her protokol ve işlev ayrı modüller halinde |
| **Katmanlı Mimari** | OSI modeline benzer katman yapısı |
| **Genişletilebilirlik** | Yeni protokoller kolayca eklenebilir |
| **Gerçekçi Modeller** | Gerçek protokol davranışlarını taklit eder |
| **TSN Desteği** | Time-Sensitive Networking standartları |
| **Emülasyon** | Gerçek ağ arayüzleriyle entegrasyon |

### 1.2 Desteklenen Protokoller

- **Ulaşım**: TCP, UDP, SCTP, RTP
- **Ağ**: IPv4, IPv6, ARP, ICMP, OSPF, BGP, RIP
- **Bağlantı**: Ethernet, IEEE 802.11, IEEE 802.1Q/R
- **TSN**: IEEE 802.1AS, 802.1Qbv, 802.1Qav, 802.1CB, 802.1Qbu, 802.1Qci

---

## 2. Temel Ağ Kavramları ve Terimler

### 2.1 Protokol Terimleri

Bu bölümde INET Framework ve ağ simülasyonlarında sıkça karşılaşılacak temel kavramları detaylı olarak açıklayacağız.

#### 2.1.1 Taşıma Katmanı Protokolleri

**TCP (Transmission Control Protocol)**
- Bağlantı tabanlı, güvenilir veri iletimi sağlar
- Akış kontrolü ve hata düzeltme mekanizmaları içerir
- Paketlerin sıralı teslimatını garanti eder
- Three-way handshake ile bağlantı kurar

**UDP (User Datagram Protocol)**
- Bağlantısız, hızlı veri iletimi sağlar
- Güvenilirlik garantisi vermez
- Düşük overhead nedeniyle gerçek zamanlı uygulamalarda tercih edilir
- Video streaming, VoIP gibi uygulamalarda kullanılır

**SCTP (Stream Control Transmission Protocol)**
- TCP ve UDP'nin avantajlarını birleştirir
- Çoklu akış (multi-streaming) desteği sağlar
- Her akış bağımsız olarak işlenir, bir akıştaki kayıp diğerlerini etkilemez
- Çoklu yol (multi-homing) desteği ile yüksek kullanılabilirlik
- Telekomünikasyon ve signaling protokollerinde yaygın kullanım
- Mesaj odaklı iletim (message-oriented delivery)

**RTP (Real-time Transport Protocol)**
- Ses ve video gibi gerçek zamanlı veri iletimi için tasarlanmıştır
- Zaman damgası ve sıra numarası bilgisi taşır
- Jitter düzeltme ve senkronizasyon için kullanılır

#### 2.1.2 Ağ Katmanı Kavramları

**IPv4 (Internet Protocol version 4)**
- 32-bit adres alanı (örn: 192.168.1.1)
- Yaklaşık 4.3 milyar benzersiz adres
- Fragmentation ve routing desteği
- TTL (Time To Live) mekanizması

**IPv6 (Internet Protocol version 6)**
- 128-bit adres alanı
- Genişletilmiş başlık yapısı
- Built-in güvenlik (IPSec)
- Auto-configuration desteği

**ARP (Address Resolution Protocol)**
- IP adreslerini MAC adreslerine çevirir
- Layer 2 ve Layer 3 arasında köprü görevi görür
- Broadcast tabanlı çözümleme
- ARP cache ile performans optimizasyonu

**ICMP (Internet Control Message Protocol)**
- Ağ hata ve kontrol mesajları için kullanılır
- Ping ve traceroute araçlarının temelini oluşturur
- Echo request/reply, destination unreachable, time exceeded mesajları

**OSPF (Open Shortest Path First)**
- Link-state routing protokolü
- Dijkstra algoritması ile en kısa yol hesaplaması
- Hiyerarşik yapı (Area konsepti)
- Hızlı konverjans

**BGP (Border Gateway Protocol)**
- Internet'in omurgasını oluşturan routing protokolü
- Autonomous System'ler arası routing
- Path-vector protokolü
- Policy-based routing desteği

**RIP (Routing Information Protocol)**
- Distance-vector routing protokolü
- Hop count metriği kullanır
- Maksimum 15 hop sınırı
- Basit konfigürasyon

#### 2.1.3 Veri Bağlantı Katmanı Kavramları

**MAC Adresi (Media Access Control Address)**
- 48-bit fiziksel adres (örn: 00:1A:2B:3C:4D:5E)
- İlk 24 bit: OUI (Organizationally Unique Identifier) - Üretici kodu
- Son 24 bit: Cihaza özgü tanımlayıcı
- Globally unique (dünya genelinde benzersiz)
- Unicast, Multicast ve Broadcast adresleri

**FCS (Frame Check Sequence)**
- Ethernet çerçevesinin sonunda yer alan 32-bit CRC (Cyclic Redundancy Check) değeri
- Veri bütünlüğünü doğrulamak için kullanılır
- İletim sırasında oluşabilecek bit hatalarını tespit eder
- CRC-32 polinomu: `x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x + 1`
- Hatalı çerçeveler drop edilir ve üst katmanlara iletilmez
- 4 byte boyutunda

**Interframe Gap (IFG)**
- Ethernet çerçeveleri arasındaki minimum boşluk
- 96 bit time (12 byte) süresince beklenilir
- 100 Mbps'te: 0.96 µs
- 1 Gbps'te: 96 ns
- 10 Gbps'te: 9.6 ns
- Ağ cihazlarının çerçeveleri işlemesi için gerekli zaman

**Preamble ve SFD (Start Frame Delimiter)**
- Preamble: 7 byte, `10101010` paterni - saat senkronizasyonu için
- SFD: 1 byte, `10101011` - çerçevenin başladığını belirtir
- Toplam 8 byte
- Fiziksel katman senkronizasyonu sağlar

#### 2.1.4 VLAN ve Ethernet Tipleri

**VLAN (Virtual Local Area Network)**
- Layer 2 seviyesinde ağ segmentasyonu
- Broadcast domain'lerini ayırır
- 12-bit VLAN ID (0-4095 arası)
- VLAN 0: Priority tagging
- VLAN 1: Default VLAN
- VLAN 4095: Reserved

**C-TAG (Customer TAG - IEEE 802.1Q)**
- 4 byte ek başlık
- TPID (Tag Protocol Identifier): 0x8100
- PCP (Priority Code Point): 3 bit (0-7 öncelik)
- DEI (Drop Eligible Indicator): 1 bit
- VID (VLAN Identifier): 12 bit
- Single tagging için kullanılır

**S-TAG (Service TAG - IEEE 802.1ad / QinQ)**
- Provider bridges için kullanılır
- TPID: 0x88A8
- C-TAG'in üzerine eklenir (double tagging)
- Service provider ağlarında müşteri trafiğini ayırmak için
- Nested VLAN desteği

**R-TAG (Redundancy TAG - IEEE 802.1CB)**
- FRER (Frame Replication and Elimination for Reliability) için kullanılır
- 6 byte ek başlık
- TPID: 0xF1C1
- Sequence Number: Duplicate frame elimination için
- Stream identification bilgisi taşır
- Güvenilirlik ve yedeklilik mekanizmaları için kritik

#### 2.1.5 Priority Code Point (PCP)

**PCP Değerleri ve Trafik Sınıfları**

| PCP | Öncelik | Trafik Türü | Kullanım |
|-----|---------|-------------|----------|
| 0 | En Düşük (Best Effort) | Background | Web browsing, file transfer |
| 1 | Background | BK (Background) | Bulk data |
| 2 | Spare | - | Henüz kullanılmıyor |
| 3 | Excellent Effort | EE | Business-critical |
| 4 | Controlled Load | CL | Streaming video |
| 5 | Video | VI | Interactive video |
| 6 | Voice | VO | IP telephony |
| 7 | En Yüksek (Network Control) | NC | Network management |

**TSN'de PCP Kullanımı**
- Time-Aware Shaper (TAS) ile trafik ayrımı
- Credit-Based Shaper (CBS) ile bant genişliği rezervasyonu
- Express traffic (PCP 6-7) genellikle preemptable trafikten ayrılır
- Stream identification için kullanılır

#### 2.1.6 Kuyruk (Queue) Kavramları

**Traffic Class (Trafik Sınıfı)**
- Aynı QoS gereksinimlerine sahip paketlerin gruplanması
- Genellikle PCP değerine göre belirlenir
- 8 Traffic Class (TC0-TC7) yaygındır
- Her TC'nin kendi kuyruğu olabilir

**Priority Queue (Öncelik Kuyruğu)**
- Yüksek öncelikli kuyruklar önce servis edilir
- Strict Priority veya Weighted Priority
- Starvation riski (düşük öncelikli trafik hiç gönderilmeyebilir)

**FIFO (First In First Out)**
- İlk giren paket ilk çıkar
- En basit kuyruk politikası
- Tek kuyruk, adil servis

**Token Bucket**
- Rate limiting mekanizması
- Token üretim hızı (rate) ve bucket boyutu (burst)
- Tokens >= packet_size ise paket geçer
- Burst traffic'e izin verir

#### 2.1.7 Zaman Kavramları

**Latency (Gecikme)**
- Bir paketin kaynaktan hedefe ulaşma süresi
- İşleme gecikmesi + kuyruk gecikmesi + iletim gecikmesi + yayılma gecikmesi
- TSN'de deterministik gecikme kritiktir

**Jitter (Gecikme Sapması)**
- Paketler arası gecikme değişimi
- Gerçek zamanlı uygulamalarda kritik
- Jitter buffer ile düzeltilebilir

**Throughput (İş Hacmi)**
- Birim zamanda iletilen veri miktarı
- Genellikle bps (bits per second) cinsinden

**Bandwidth (Bant Genişliği)**
- İletim ortamının teorik kapasitesi
- Fiziksel limitler tarafından belirlenir

**Utilization (Kullanım Oranı)**
- Throughput / Bandwidth
- %100'e yaklaşınca kuyruk oluşumu artar

---

## 5. Dizin Yapısı

```
inet-4.5.4/
├── src/inet/                    # Ana kaynak kodları
│   ├── applications/            # Uygulama katmanı (UDP, TCP apps)
│   ├── clock/                   # Saat modülleri (gPTP için)
│   ├── common/                  # Ortak yardımcı sınıflar, paket API
│   ├── linklayer/               # Veri bağlantı katmanı
│   │   ├── ethernet/            # Ethernet protokolü
│   │   ├── ieee80211/           # WiFi (802.11)
│   │   ├── ieee8021q/           # VLAN, TAS, CBS
│   │   ├── ieee8021r/           # FRER (Frame Replication)
│   │   ├── ieee8021as/          # gPTP zaman senkronizasyonu
│   │   └── configurator/        # Otomatik konfigüratörler
│   ├── networklayer/            # Ağ katmanı (IPv4, IPv6)
│   ├── transportlayer/          # Taşıma katmanı (TCP, UDP)
│   ├── physicallayer/           # Fiziksel katman
│   ├── node/                    # Hazır node tipleri
│   │   ├── inet/                # StandardHost, Router
│   │   ├── ethernet/            # EthernetSwitch
│   │   └── tsn/                 # TsnDevice, TsnSwitch, TsnClock
│   ├── protocolelement/         # Protokol elemanları
│   │   ├── redundancy/          # Stream splitter, merger
│   │   └── shaper/              # Traffic shaping
│   ├── queueing/                # Kuyruk yönetimi
│   │   ├── queue/               # Kuyruk modülleri
│   │   ├── gate/                # PeriodicGate, CreditBasedGate
│   │   ├── scheduler/           # Zamanlayıcılar
│   │   ├── meter/               # Token bucket meters
│   │   └── shaper/              # Traffic shapers
│   └── visualizer/              # Görselleştirme
│
├── examples/                    # Örnek simülasyonlar
├── showcases/                   # Gelişmiş örnekler (TSN dahil)
│   └── tsn/                     # TSN showcase'leri
│       ├── trafficshaping/      # TAS, CBS, ATS örnekleri
│       ├── framereplication/    # FRER örnekleri
│       ├── framepreemption/     # Preemption örnekleri
│       ├── timesynchronization/ # gPTP örnekleri
│       └── streamfiltering/     # PSFP örnekleri
├── tutorials/                   # Eğitim materyalleri
├── tests/                       # Test dosyaları
└── doc/                         # Dokümantasyon
```

---

## 4. Katmanlı Mimari

Bu bölümde INET Framework'ün OSI referans modeline dayalı katmanlı mimarisini detaylı olarak inceleyeceğiz.

### 4.1 OSI Referans Modeli ve INET

OSI (Open Systems Interconnection) modeli, ağ iletişimini 7 katmana ayıran kavramsal bir çerçevedir. INET Framework bu modeli baz alarak modüler bir yapı sunar.

```
OSI Model                 INET Framework                          Sorumluluklar
═══════════               ═══════════════                         ═════════════

┌──────────────┐         ┌────────────────────────┐
│ 7.APPLICATION│────────▶│   APPLICATION LAYER    │──────▶ Uygulama mantığı
└──────────────┘         │  UdpApp, TcpApp, Ping  │        Veri formatı
                         └────────────────────────┘        Kullanıcı arayüzü

┌──────────────┐         
│6.PRESENTATION│         (INET'te explicit katman yok,     Veri kodlama
└──────────────┘          uygulama katmanına dahil)        Şifreleme
┌──────────────┐                                           Sıkıştırma
│  5. SESSION  │         
└──────────────┘         

┌──────────────┐         ┌────────────────────────┐
│ 4. TRANSPORT │────────▶│   TRANSPORT LAYER      │──────▶ Uçtan uca iletişim
└──────────────┘         │  TCP, UDP, SCTP, RTP   │        Port yönetimi
                         └────────────────────────┘        Akış kontrolü
                                                            Hata düzeltme

┌──────────────┐         ┌────────────────────────┐
│  3. NETWORK  │────────▶│    NETWORK LAYER       │──────▶ Mantıksal adresleme
└──────────────┘         │ IPv4, IPv6, ARP, ICMP  │        Routing
                         │   OSPF, BGP, RIP       │        Paket yönlendirme
                         └────────────────────────┘        Fragmentation

┌──────────────┐         ┌────────────────────────┐
│  2. DATA     │────────▶│   BRIDGING LAYER       │──────▶ Stream tanımlama
│     LINK     │         │ (TSN için özel katman) │        Filtreleme
└──────────────┘         └────────────────────────┘        Çoğaltma/Birleştirme
                         ┌────────────────────────┐
                         │   PROTOCOL LAYERS      │──────▶ VLAN tagging
                         │  802.1Q, 802.1R, etc   │        Sequence numbering
                         └────────────────────────┘
                         ┌────────────────────────┐
                         │      MAC LAYER         │──────▶ Fiziksel adresleme
                         │ EthernetMac, 802.11Mac │        Media access control
                         │  Traffic Shaping (TSN) │        Kuyruk yönetimi
                         └────────────────────────┘        Collision detection

┌──────────────┐         ┌────────────────────────┐
│ 1. PHYSICAL  │────────▶│    PHYSICAL LAYER      │──────▶ Bit iletimi
└──────────────┘         │  EthernetPhy, Radio    │        Sinyal dönüşümü
                         └────────────────────────┘        Fiziksel ortam
```

### 4.2 Katman Detayları ve INET Implementasyonları

#### 4.2.1 Application Layer (Uygulama Katmanı)

**Rol:** Kullanıcıya en yakın katman, ağ servisleri sağlar

**INET Modülleri:**
- `UdpBasicApp`: Basit UDP veri gönderimi/alımı
- `UdpSink`: UDP paketlerini tüketen sink
- `TcpBasicClientApp`: TCP client uygulaması
- `TcpGenericServerApp`: TCP server uygulaması
- `PingApp`: ICMP echo request/reply
- `VoipStreamSender/Receiver`: VoIP simülasyonu
- `HttpBrowser/Server`: HTTP protokolü simülasyonu

**Sorumluluklar:**
- Veri üretimi ve tüketimi
- Uygulama düzeyinde protokoller (HTTP, FTP, vb.)
- Kullanıcı trafiği pattern'leri (sabit, periyodik, burst)

**Tipik Paket Akışı:**
```
Uygulama → Veri oluştur → Socket API → Transport Layer
```

#### 4.2.2 Transport Layer (Taşıma Katmanı)

**Rol:** Uçtan uca güvenilir/güvenilmez veri iletimi

**INET Modülleri:**
- `Tcp`: Transmission Control Protocol implementasyonu
  - Varyantlar: TcpNewReno, TcpReno, TcpTahoe, TcpVegas, TcpWestwood
  - Congestion control algoritmaları
  - Flow control (sliding window)
  - Connection management (3-way handshake, 4-way termination)
  
- `Udp`: User Datagram Protocol
  - Bağlantısız iletim
  - Minimal overhead
  - Checksum kontrolü (isteğe bağlı)
  
- `Sctp`: Stream Control Transmission Protocol
  - Multi-streaming
  - Multi-homing
  - Message-oriented
  - SACK (Selective Acknowledgment)

**Sorumluluklar:**
- Port numarası ile multiplexing/demultiplexing
- Segmentasyon ve reassembly
- Hata kontrolü (checksum)
- Akış kontrolü (flow control)
- Tıkanıklık kontrolü (congestion control) - TCP

**Segment Yapısı:**
```
TCP Header (20-60 bytes):
  Source Port (16 bit) | Dest Port (16 bit)
  Sequence Number (32 bit)
  Acknowledgment Number (32 bit)
  Flags (SYN, ACK, FIN, RST, PSH, URG)
  Window Size (16 bit)
  Checksum (16 bit)
  Options (variable)

UDP Header (8 bytes):
  Source Port (16 bit) | Dest Port (16 bit)
  Length (16 bit) | Checksum (16 bit)
```

#### 4.2.3 Network Layer (Ağ Katmanı)

**Rol:** Mantıksal adresleme, yönlendirme, paket iletimi

**INET Modülleri:**
- `Ipv4`: IPv4 protokolü
  - Routing table lookup
  - TTL management
  - Fragmentation ve reassembly
  - ICMP hata mesajları
  
- `Ipv6`: IPv6 protokolü
  - 128-bit adresleme
  - Extension headers
  - Neighbor Discovery
  - Auto-configuration
  
- `Arp`: Address Resolution Protocol
  - IP → MAC adres çözümleme
  - ARP cache yönetimi
  - GARP (Gratuitous ARP)
  
- `Icmp`: Internet Control Message Protocol
  - Echo request/reply (ping)
  - Destination unreachable
  - Time exceeded (traceroute)

**Routing Protokolleri:**
- `Ospf`: Link-state, Dijkstra algoritması
- `Bgp`: Path-vector, inter-AS routing
- `Rip`: Distance-vector, hop count metric

**Sorumluluklar:**
- Logical addressing (IP adresleri)
- Routing (yol bulma)
- Forwarding (paket yönlendirme)
- Fragmentation (büyük paketleri bölme, reassembly birleştirme)
- TTL yönetimi (paket ömrü)

**IP Packet Yapısı:**
```
IPv4 Header (20-60 bytes):
  Version(4) | IHL(4) | DSCP(6) | ECN(2) | Total Length(16)
  Identification(16) | Flags(3) | Fragment Offset(13)
  TTL(8) | Protocol(8) | Header Checksum(16)
  Source IP Address(32)
  Destination IP Address(32)
  Options(variable)
```

#### 4.2.4 Bridging Layer (Köprüleme Katmanı - TSN için Özel)

**Rol:** TSN akışlarının tanımlanması, çoğaltılması, filtrelenmesi ve kodlanması

Bu katman, standart OSI modelinde yoktur ancak TSN implementasyonu için INET'te kritik bir katmandır. Layer 2 ve Layer 3 arasında yer alır.

**INET Modülleri:**

**StreamIdentifier (Akış Tanımlayıcı):**
- Paketlere stream adı atar
- PacketFilter expression'larına göre sınıflandırma
- Sequence number ekleme (FRER için)
- Stream naming ve tanımlama

**StreamRelay (Akış Aktarıcı):**
- *StreamSplitter:* Frame replication - bir paketi N kopyaya çoğaltır
- *StreamMerger:* Duplicate elimination - aynı sequence number'lı paketlerden birini alır, diğerlerini atar
- FRER (IEEE 802.1CB) implementasyonu

**StreamFilter (Akış Filtresi):**
- IEEE 802.1Qci Per-Stream Filtering and Policing (PSFP)
- *StreamGate:* Zamana göre geçiş izni (açık/kapalı)
- *FlowMeter:* Token bucket ile rate limiting
- *Filter:* Renk bazlı (green/yellow/red) filtreleme

**StreamCoder (Akış Kodlayıcı/Çözücü):**
- *StreamEncoder:* Stream adından VLAN ID ve PCP ataması
- *StreamDecoder:* VLAN tag'inden stream adı çıkarma
- Layer 2.5 → Layer 2 dönüşümü

**Sorumluluklar:**
- Stream identification ve naming
- Frame replication for reliability
- Duplicate elimination
- Per-stream filtering ve policing
- Stream-to-VLAN/PCP mapping

#### 4.2.5 Protocol Layers (Protokol Katmanları)

**Rol:** Ethernet frame'lerine ek başlıklar ekleyerek özel işlevsellik sağlar

**IEEE 802.1Q (C-TAG / VLAN):**
```
VLAN Header (4 bytes):
  TPID: 0x8100 (16 bit) - Tag Protocol Identifier
  PCP: 3 bit (0-7 öncelik)
  DEI: 1 bit (Drop Eligible Indicator)
  VID: 12 bit (VLAN ID, 0-4095)
```
- Sanal LAN segmentasyonu
- Priority tagging
- Broadcast domain ayrımı

**IEEE 802.1ad (S-TAG / QinQ):**
```
S-TAG Header (4 bytes):
  TPID: 0x88A8 (16 bit)
  PCP/DEI/VID: Yapı C-TAG ile aynı
  
Double Tagging: [Ethernet] [S-TAG] [C-TAG] [Payload]
```
- Service provider ağları için
- Müşteri trafiğini izole etme
- Nested VLAN

**IEEE 802.1R (R-TAG / FRER):**
```
R-TAG Header (6 bytes):
  TPID: 0xF1C1 (16 bit)
  Sequence Number: 16 bit
  StreamID bilgisi
```
- Frame replication için sequence numbering
- Duplicate elimination için gerekli
- FRER mekanizmasının temeli

#### 4.2.6 MAC Layer (Medium Access Control Katmanı)

**Rol:** Fiziksel ortama erişimi kontrol eder, çerçeve iletimini yönetir

**INET Modülleri:**

**EthernetMacLayer:**
- Standart Ethernet MAC
- CSMA/CD (kablolu)
- Full-duplex/Half-duplex
- Backoff algoritmaları

**EthernetPreemptingMacLayer:**
- IEEE 802.1Qbu Frame Preemption
- Express ve Preemptable kuyruklar
- mCRC (preemption CRC)

**Ieee8021qTimeAwareShaper (TAS):**
- IEEE 802.1Qbv Time-Aware Shaping
- Gatecontrol listesi ile zamanlama
- Deterministic latency
- Traffic class bazlı kuyruklar

**Ieee8021qCreditBasedShaper (CBS):**
- IEEE 802.1Qav Credit-Based Shaping
- AVB (Audio Video Bridging)
- Credit mekanizması ile rate limiting
- idleSlope ve sendSlope parametreleri

**Sorumluluklar:**
- Frame başlatma ve sonlandırma
- MAC adresleme (unicast, multicast, broadcast)
- Kuyruk yönetimi (multiple queues)
- Traffic shaping ve scheduling
- Collision detection ve handling (half-duplex)
- Flow control (PAUSE frames)

**Ethernet Frame Yapısı:**
```
Standart Ethernet Frame:
┌──────────┬──────────┬──────┬──────┬─────────┬─────┬─────┐
│ Preamble │   SFD    │ Dst  │ Src  │Type/Len │Data │ FCS │
│  7 bytes │  1 byte  │6 byte│6 byte│ 2 bytes │46-  │4 bye│
│          │          │ MAC  │ MAC  │         │1500 │     │
└──────────┴──────────┴──────┴──────┴─────────┴─────┴─────┘

VLAN Tagged Frame:
┌──────┬──────┬──────┬──────┬───────┬─────────┬──────┬─────┐
│Pream │ SFD  │ Dst  │ Src  │ VLAN  │Type/Len │ Data │ FCS │
│      │      │ MAC  │ MAC  │ TAG   │         │      │     │
│      │      │      │      │4 bytes│         │      │     │
└──────┴──────┴──────┴──────┴───────┴─────────┴──────┴─────┘

Minimum frame size: 64 bytes (excluding preamble+SFD)
Maximum frame size: 1518 bytes (1522 with VLAN)
```

**Kuyruk Yönetimi (Traffic Shaping):**
```
Ingress (Giriş):                  Egress (Çıkış):
┌────────────┐                    ┌─────────────────────┐
│  Packet    │                    │  Classifier (PCP)   │
│  Arrives   │                    └──────────┬──────────┘
└─────┬──────┘                              ┌▼┐  ┌▼┐  ┌▼┐
      │                                     │Q0││Q1││Q7│
      │                                     └─┬┘└─┬┘└─┬┘
      ▼                                       │   │   │
┌────────────┐                              ┌▼───▼───▼┐
│ Bridging   │                              │Gate[0-7]│ (TAS)
│ Layer      │                              └────┬────┘
└────────────┘                                   │
                                               ┌─▼─────┐
                                               │Schedule│
                                               └────┬───┘
                                                    ▼
                                              [PHY Layer]
```

#### 4.2.7 Physical Layer (Fiziksel Katman)

**Rol:** Bit'leri elektrik sinyallerine (veya radyo dalgalarına) dönüştürür

**INET Modülleri:**

**EthernetPhyLayer:**
- Standart Ethernet PHY
- Encoding/Decoding (Manchester, 4B/5B, 8B/10B, 64B/66B)
- FCS hesaplama ve doğrulama
- Signal detection

**EthernetPreemptingPhyLayer:**
- Frame preemption desteği
- Fragment iletimi
- mCRC (mid-frame CRC) ekleme

**Ieee80211Radio:**
- Kablosuz PHY
- RF signal işleme
- Modulation/Demodulation
- Frekans kanalları

**Sorumluluklar:**
- Bit synchronization
- Line coding (encoding/decoding)
- Signal transmission/reception
- Carrier sense (ortam meşgul mü?)
- FCS generation/verification
- Preamble ve SFD ekleme/algılama

**Kablo Türleri ve Hızları:**

| Standard | Speed | Cable | Encoding | Distance |
|----------|-------|-------|----------|----------|
| 10BASE-T | 10 Mbps | Cat3 UTP | Manchester | 100m |
| 100BASE-TX | 100 Mbps | Cat5 UTP | 4B/5B + MLT-3 | 100m |
| 1000BASE-T | 1 Gbps | Cat5e UTP | 4D-PAM5 | 100m |
| 10GBASE-T | 10 Gbps | Cat6a/7 | 128B/130B | 100m |
| 100GBASE-CR4 | 100 Gbps | Twinax | 64B/66B | 7m |

**Timing Parametreleri:**

```
100 Mbps Ethernet:
  Bit time: 10 ns
  IFG: 96 bit times = 960 ns = 0.96 µs
  Preamble+SFD: 8 bytes = 640 ns
  Minimum frame: 64 bytes = 5.12 µs

1 Gbps Ethernet:
  Bit time: 1 ns
  IFG: 96 bit times = 96 ns
  Preamble+SFD: 8 bytes = 64 ns (carrier extension ile 512 bytes)
  Minimum frame: 64 bytes = 512 ns

10 Gbps Ethernet:
  Bit time: 0.1 ns
  IFG: 96 bit times = 9.6 ns
  Minimum frame: 64 bytes = 51.2 ns
```

### 4.3 Bridging Layer Detayı (TSN için kritik)

```
Bridging Layer İç Yapısı (yukarıdan aşağı):

┌─────────────────────────────────────┐
│    processingDelayLayer             │  → İşleme gecikmesi
├─────────────────────────────────────┤
│    directionReverser                │  → Yön belirleme
├─────────────────────────────────────┤
│    streamIdentifier                 │  → Akış tanımlama (stream naming)
├─────────────────────────────────────┤
│    streamRelay                      │  → Splitter + Merger
│    ├── StreamSplitter               │     Akışı çoğaltma
│    └── StreamMerger                 │     Duplicate elimination
├─────────────────────────────────────┤
│    streamFilter                     │  → PSFP (802.1Qci)
│    ├── StreamGate                   │     Zaman tabanlı geçiş
│    ├── FlowMeter                    │     Rate limiting
│    └── Filter                       │     Renk bazlı filtreleme
├─────────────────────────────────────┤
│    streamCoder                      │  → Encoder + Decoder
│    ├── StreamEncoder                │     VLAN/PCP atama
│    └── StreamDecoder                │     VLAN'dan stream çözme
├─────────────────────────────────────┤
│    interfaceRelay                   │  → MAC learning + forwarding
├─────────────────────────────────────┤
│    vlanPolicy                       │  → VLAN politikaları
└─────────────────────────────────────┘
```

---

## 4. Modül Tipleri

### 4.1 Dosya Türleri

| Dosya Tipi | Uzantı | Amaç |
|------------|--------|------|
| NED | `.ned` | Modül yapısı ve parametreleri |
| Header | `.h` | C++ sınıf tanımları |
| Implementation | `.cc` | C++ implementasyonu |
| Message | `.msg` | Mesaj/paket tanımları |

### 4.2 NED Dosyası Örneği

```ned
simple PassivePacketSink extends PacketSinkBase like IPassivePacketSink
{
    parameters:
        clockModule = default("");
        consumptionInterval = default(0s);
        
        @signal[packetReceived](type=inet::Packet);
        @statistic[receivedPackets](source=packetReceived; record=count,vector);
    gates:
        input in @labels(push);
}
```

**Önemli NED Kavramları:**
- `simple`: C++ ile implement edilen basit modül
- `module`: Alt modüllerden oluşan bileşik modül
- `network`: Simüle edilecek ağ topolojisi
- `@signal`: İstatistik sinyalleri
- `@statistic`: İstatistik tanımları

### 4.3 Ağ Düğümleri

#### Standart Düğümler

| Modül | Açıklama |
|-------|----------|
| `StandardHost` | Tam protokol yığını olan host |
| `Router` | IPv4/IPv6 yönlendirici |
| `EthernetSwitch` | L2 Ethernet anahtarı |
| `WirelessHost` | Kablosuz arayüze sahip host |

#### TSN Düğümleri

| Modül | Açıklama |
|-------|----------|
| `TsnDevice` | TSN özellikli son cihaz |
| `TsnSwitch` | TSN özellikli anahtar |
| `TsnClock` | gPTP master saat düğümü |

#### TsnDevice/TsnSwitch Parametreleri

```ini
# TSN özelliklerini etkinleştirme
*.device.hasTimeSynchronization = true      # IEEE 802.1AS gPTP
*.device.hasIngressTrafficFiltering = true  # IEEE 802.1Qci PSFP
*.device.hasEgressTrafficShaping = true     # TAS, CBS, ATS
*.device.hasStreamRedundancy = true         # IEEE 802.1CB FRER
*.device.hasIncomingStreams = true          # Stream decoding
*.device.hasOutgoingStreams = true          # Stream encoding
*.device.hasFramePreemption = true          # IEEE 802.1Qbu
*.device.hasCutthroughSwitching = true      # Cut-through
```

---

## 5. Paket İşleme Mekanizması

### 5.1 Paket Yapısı

```
┌─────────────────────────────────────────────────────────────────────┐
│                           PACKET                                    │
├─────────────────────────────────────────────────────────────────────┤
│   ┌───────────────────────────────────────────────────────────┐     │
│   │                        CHUNKS                             │     │
│   │   ┌──────────┐ ┌──────────┐ ┌──────────┐ ┌──────────┐     │     │
│   │   │ EthHeader│ │ IpHeader │ │ UdpHeader│ │   Data   │     │     │
│   │   └──────────┘ └──────────┘ └──────────┘ └──────────┘     │     │
│   └───────────────────────────────────────────────────────────┘     │
│   ┌───────────────────────────────────────────────────────────┐     │
│   │                         TAGS                              │     │
│   │   ┌────────────┐ ┌────────────┐ ┌────────────┐            │     │
│   │   │ StreamReq  │ │ VlanReq    │ │ PcpReq     │  ...       │     │
│   │   └────────────┘ └────────────┘ └────────────┘            │     │
│   └───────────────────────────────────────────────────────────┘     │
└─────────────────────────────────────────────────────────────────────┘
```

### 5.2 Chunk Türleri

| Chunk Türü | Açıklama | Kullanım |
|------------|----------|----------|
| `ByteCountChunk` | Byte sayısı ile temsil | Basit veri |
| `BytesChunk` | Ham byte dizisi | Emülasyon |
| `FieldsChunk` | Alan tabanlı header | Protokol header'ları |
| `SequenceChunk` | Chunk dizisi | Encapsulation |
| `SliceChunk` | Başka chunk'ın dilimi | Fragmentation |

### 5.3 Tag Sistemi

Tag'ler paketlere meta-data eklemek için kullanılır:

```cpp
// Tag ekleme (Request - gönderim sırasında)
packet->addTag<StreamReq>()->setStreamName("S1");
packet->addTag<VlanReq>()->setVlanId(10);
packet->addTag<PcpReq>()->setPcp(4);

// Tag okuma (Indication - alım sırasında)
auto streamInd = packet->findTag<StreamInd>();
if (streamInd != nullptr) {
    const char* name = streamInd->getStreamName();
}
```

**Yaygın Tag Türleri:**

| Tag | Amaç |
|-----|------|
| `StreamReq/Ind` | TSN akış adı |
| `VlanReq/Ind` | VLAN ID |
| `PcpReq/Ind` | Priority Code Point |
| `InterfaceReq/Ind` | Ağ arayüzü |
| `MacAddressReq/Ind` | MAC adresi |
| `SequenceNumberReq/Ind` | FRER sequence number |

### 5.4 Paket İşleme Modları

#### Push Mode (Aktif gönderim)
```
Producer ──push()──▶ Consumer
```

#### Pull Mode (Pasif çekme)
```
Consumer ◀──pull()── Producer
```

---

## 6. Konfigürasyon Sistemi

### 6.1 omnetpp.ini Yapısı

```ini
[General]
network = TsnNetwork
sim-time-limit = 10s

# Wildcard patterns
*.*.eth[*].bitrate = 100Mbps

# Modül parametreleri
*.source.numApps = 1
*.source.app[0].typename = "UdpSourceApp"
*.source.app[0].source.packetLength = 1200B

[Config Scenario1]
description = "First scenario"
*.switch.hasEgressTrafficShaping = true

[Config Scenario2]
extends = Scenario1
*.switch.hasFramePreemption = true
```

### 6.2 TSN Konfigüratörleri

| Configurator | Amaç |
|--------------|------|
| `StreamRedundancyConfigurator` | FRER akış yollarını yapılandırır |
| `FailureProtectionConfigurator` | Hata koruma için yedeklilik |
| `EagerGateScheduleConfigurator` | TAS gate schedule (greedy) |
| `Z3GateScheduleConfigurator` | TAS gate schedule (SAT solver) |
| `MacForwardingTableConfigurator` | MAC tablosu |

---

## 7. Signal ve İstatistik Mekanizması

### 7.1 Signal Tanımlama

```cpp
// .h dosyasında
static simsignal_t packetReceivedSignal;

// .cc dosyasında
simsignal_t MyModule::packetReceivedSignal = registerSignal("packetReceived");

void MyModule::handlePacket(Packet *packet)
{
    emit(packetReceivedSignal, packet);
}
```

### 7.2 NED'de İstatistik Tanımlama

```ned
simple MyModule {
    @signal[packetReceived](type=inet::Packet);
    @statistic[endToEndDelay](
        source=messageAge(packetReceived);
        record=mean,max,histogram,vector;
        unit=s
    );
}
```

### 7.3 Yaygın INET Sinyalleri

| Sinyal | Açıklama |
|--------|----------|
| `packetSentSignal` | Paket gönderildi |
| `packetReceivedSignal` | Paket alındı |
| `packetDroppedSignal` | Paket düşürüldü |
| `packetPushedSignal` | Kuyruğa eklendi |
| `packetPulledSignal` | Kuyruktan çekildi |
| `transmissionStartedSignal` | İletim başladı |
| `transmissionEndedSignal` | İletim bitti |
| `tokensChangedSignal` | Token sayısı değişti |

---

## 6. Time-Sensitive Networking (TSN)

### 6.1 TSN Nedir ve Neden Gereklidir?

**Time-Sensitive Networking (TSN)**, geleneksel Ethernet teknolojisini, deterministik, düşük gecikmeli ve yüksek güvenilirlikli iletişim gerektiren uygulamalar için genişleten bir IEEE 802.1 standartlar kümesidir.

#### 6.1.1 Geleneksel Ethernet'in Sınırlamaları

Standart Ethernet, **best-effort** ilke ile çalışır:
- Paketler FIFO (First-In-First-Out) kuyruklarda bekler
- Garanti edilmiş gecikme yoktur
- Jitter (gecikme sapması) yüksek olabilir
- Paket kaybı olasılığı vardır
- Ağ yükü arttıkça performans öngörülemez hale gelir

Bu özellikler, ofis uygulamaları ve web browsing için yeterlidir, ancak **kritik uygulamalar** için sorun teşkil eder.

#### 6.1.2 TSN Gerektiren Uygulama Alanları

**Endüstriyel Otomasyon:**
- Robotic kontrol döngüleri (< 1 ms gecikme gereksinimi)
- PLC (Programmable Logic Controller) senkronizasyonu
- Motion control sistemleri
- Sensör-aktuatör ağları
- Örnek: Otomotiv üretim hattında robot kolların senkron hareketi

**Otomotiv (In-Vehicle Networks):**
- ADAS (Advanced Driver Assistance Systems)
- Kamera, LIDAR, radar veri füzyonu
- Drive-by-wire sistemleri (steering, braking)
- Infotainment ve diagnostics aynı ağda
- Örnek: Otopilot sisteminin 10 ms içinde karar vermesi

**Havacılık ve Uzay:**
- Avionics ağları
- Flight control sistemleri
- Engine management
- ARINC 664 Part 7 (Avionics Full-Duplex Switched Ethernet)

**Ses ve Video Üretimi:**
- Pro-audio canlı performanslar
- Video production stüdyoları
- Broadcast sistemleri
- AVB/AVTP (Audio Video Bridging/Transport Protocol)
- Örnek: Konser sahnesinde onlarca mikrofon ve hoparlörün senkronizasyonu

**Enerji Sektörü (Smart Grid):**
- Substation automation (IEC 61850)
- SCADA sistemleri
- Güç dağıtım ağı izleme
- Phasor Measurement Units (PMU) senkronizasyonu

**Telekom ve 5G:**
- Fronthaul, midhaul, backhaul ağları
- Radio Unit (RU) - Distributed Unit (DU) iletişimi
- eCPRI (enhanced Common Public Radio Interface)
- Microsecond seviyesinde senkronizasyon

#### 6.1.3 TSN'nin Sağladığı Garantiler

**1. Bounded Latency (Sınırlı Gecikme)**
- Maksimum uçtan uca gecikme garanti edilir
- Worst-case analizi yapılabilir
- Örnek: Paket 500 µs içinde ulaşacak (kesinlikle)

**2. Low Jitter (Düşük Gecikme Sapması)**
- Paketler arası gecikme farkı minimumdur
- Deterministik zamanlama
- Gerçek zamanlı kontrol döngüleri için kritik

**3. Zero Congestion Loss (Sıfır Tıkanıklık Kaybı)**
- Traffic shaping ile kuyruk taşmaları önlenir
- Rezervasyon mekanizmaları
- Kritik trafik korunur

**4. High Reliability (Yüksek Güvenilirlik)**
- Frame replication ile yedeklilik
- Hata toleransı
- Duplicate elimination
- Link ve node failure protection

**5. Time Synchronization (Zaman Senkronizasyonu)**
- Ağ genelinde ortak zaman referansı
- Nanosecond hassasiyet
- Distributed system koordinasyonu

#### 6.1.4 TSN Mimarisi - Genel Bakış

TSN, modüler ve katmanlı bir yaklaşım benimser. Her özellik bağımsız olarak kullanılabilir veya kombine edilebilir:

```
                    TSN Çözüm Yığını
                    ═══════════════

┌────────────────────────────────────────────────────┐
│          APPLICATION LAYER                         │
│   (Industrial Control, AVB, 5G Fronthaul)         │
└────────────────┬───────────────────────────────────┘
                 │
┌────────────────▼───────────────────────────────────┐
│         TSN USER LAYER                             │
│  • Stream reservation (SRP - IEEE 802.1Qat)       │
│  • Stream identification                           │
│  • Application priorities                          │
└────────────────┬───────────────────────────────────┘
                 │
┌────────────────▼───────────────────────────────────┐
│         TSN MECHANISMS                             │
│  ┌──────────────────────────────────────────────┐  │
│  │ Time Sync: gPTP (802.1AS)                   │  │
│  └──────────────────────────────────────────────┘  │
│  ┌──────────────────────────────────────────────┐  │
│  │ Traffic Shaping: TAS, CBS, ATS              │  │
│  │   (802.1Qbv, 802.1Qav, 802.1Qcr)            │  │
│  └──────────────────────────────────────────────┘  │
│  ┌──────────────────────────────────────────────┐  │
│  │ Ingress Filtering: PSFP (802.1Qci)         │  │
│  └──────────────────────────────────────────────┘  │
│  ┌──────────────────────────────────────────────┐  │
│  │ Redundancy: FRER (802.1CB)                  │  │
│  └──────────────────────────────────────────────┘  │
│  ┌──────────────────────────────────────────────┐  │
│  │ Preemption: 802.1Qbu + 802.3br              │  │
│  └──────────────────────────────────────────────┘  │
└────────────────┬───────────────────────────────────┘
                 │
┌────────────────▼───────────────────────────────────┐
│         ETHERNET MAC/PHY                           │
│  (IEEE 802.3 - Standard Ethernet with TSN)        │
└────────────────────────────────────────────────────┘
```

### 6.2 TSN Standartları - Detaylı İnceleme

#### 6.2.1 IEEE 802.1AS - Zaman Senkronizasyonu (gPTP)

**Amaç:** Ağdaki tüm cihazların ortak bir zaman referansına sahip olmasını sağlamak

**gPTP (generalized Precision Time Protocol)** IEEE 1588v2'nin (PTP - Precision Time Protocol) Ethernet için optimize edilmiş versiyonudur.

**Çalışma Prensibi:**

gPTP, master-slave hiyerarşisi ile çalışır:

```
Zaman Hiyerarşisi:
═════════════════

             ┌─────────────┐
             │ Grand Master│  ← GPS veya atomic clock
             │   (Clock)   │     (en yüksek doğruluk)
             └──────┬──────┘
                    │ Sync
         ┌──────────┼──────────┐
         │          │          │
    ┌────▼───┐  ┌──▼────┐  ┌──▼────┐
    │Bridge 1│  │Bridge2│  │Bridge3│  ← Time-aware bridges
    │(Switch)│  │       │  │       │     (saati ileten)
    └────┬───┘  └───┬───┘  └───┬───┘
         │          │          │
    ┌────▼───┐  ┌──▼────┐  ┌──▼────┐
    │ Slave 1│  │Slave 2│  │Slave 3│  ← End stations
    │        │  │       │  │       │     (saati alan)
    └────────┘  └───────┘  └───────┘
```

**gPTP Mesaj Türleri:**

1. **Sync Mesajı:**
   - Master → Slave yönünde
   - Master'ın zaman bilgisini taşır
   - Periyodik gönderim (default: 125 ms)
   
2. **Follow_Up Mesajı:**
   - Sync mesajının tam gönderim zamanını bildirir
   - Two-step clock için gerekli
   
3. **Pdelay_Req (Peer Delay Request):**
   - Link delay ölçümü için
   - Her port komşu port'a gönderir
   
4. **Pdelay_Resp (Peer Delay Response):**
   - Pdelay_Req'e yanıt
   - Alınma zamanı bilgisi içerir
   
5. **Pdelay_Resp_Follow_Up:**
   - Pdelay_Resp'nin tam gönderim zamanı

**Zaman Senkronizasyonu Süreci:**

```
Master                Bridge                 Slave
  │                      │                      │
  │────Sync────────────▶│────Sync────────────▶│
  │  (t1: send time)    │  (t1')              │ (t2: receive time)
  │                      │                      │
  │──Follow_Up─────────▶│──Follow_Up─────────▶│
  │  (contains t1)       │  (contains t1')     │ (now knows t1')
  │                      │                      │
  │                     Link Delay Measurement  │
  │                      │◄───Pdelay_Req───────│ (t3)
  │                      │                      │
  │                      │────Pdelay_Resp─────▶│ (t4: receive, t6: get)
  │                      │  (sent at t5)        │
  │                      │                      │
  │                      │──Pdelay_Resp_FUP───▶│
  │                      │  (contains t5)       │
  │                      │                      │
  │                    Link Delay = (t4-t3 + t6-t5) / 2
  │                    Offset = t2 - t1' - LinkDelay
  │                    Slave Clock Adjustment
```

**Hassasiyet ve Doğruluk:**
- Sub-microsecond senkronizasyon mümkün
- Hardware timestamping ile nanosecond hassasiyet
- Software timestamping ile microsecond hassasiyet
- Clock drift compensation (saat sapması düzeltmesi)

**INET'te gPTP Parametreleri:**
```ini
*.device.hasTimeSynchronization = true
*.device.gptp.gptpNodeType = "SLAVE_NODE"  # veya MASTER_NODE, BRIDGE_NODE
*.device.gptp.slavePort = "eth0"
*.device.gptp.masterPorts = ["eth1", "eth2"]
*.device.gptp.syncInterval = 0.125s
*.device.gptp.pdelayInterval = 1s
*.device.clock.oscillator.driftRate = uniform(-100ppm, 100ppm)
```

#### 6.2.2 IEEE 802.1Qbv - Time-Aware Shaper (TAS)

**Amaç:** Zamana bağlı trafik şekillendirmesi ile deterministik gecikme garantisi

TAS, **TDMA (Time Division Multiple Access)** prensibine benzer şekilde çalışır. Zaman, periyodik pencereler (time slots) halinde bölünür ve her trafik sınıfı belirli pencerelerde iletim yapabilir.

**Çalışma Prensibi:**

Her çıkış port'unda birden fazla kuyruk bulunur (genellikle 8 adet, her PCP değeri için bir tane). Her kuyruğun önünde bir **gate** (kapı) vardır. Gate açıksa paketler iletilebilir, kapalıysa beklerler.

```
TAS Mimarisi:
════════════

Incoming Packets
     │
     ▼
┌─────────────┐
│ Classifier  │ ── PCP bazlı sınıflandırma
└──────┬──────┘
       │
   ┌───┴───┬───────┬───────┬───────┐
   │       │       │       │       │
   ▼       ▼       ▼       ▼       ▼
┌────┐  ┌────┐  ┌────┐  ┌────┐  ┌────┐
│ Q7 │  │ Q6 │  │ Q4 │  │ Q1 │  │ Q0 │  ← Traffic Class Queues
└──┬─┘  └──┬─┘  └──┬─┘  └──┬─┘  └──┬─┘
   │       │       │       │       │
┌──▼──┐ ┌─▼───┐ ┌─▼───┐ ┌─▼───┐ ┌─▼───┐
│Gate7│ │Gate6│ │Gate4│ │Gate1│ │Gate0│  ← Periodic Gates (Open/Close)
└──┬──┘ └──┬──┘ └──┬──┘ └──┬──┘ └──┬──┘
   │       │       │       │       │
   └───┬───┴───┬───┴───┬───┴───┬───┘
       │       │       │       │
       ▼       ▼       ▼       ▼
   ┌────────────────────────────┐
   │  Priority Scheduler        │  ← Strict priority
   └──────────────┬─────────────┘
                  ▼
             [PHY Layer]
```

**Gate Control List (GCL):**

GCL, her gate için açık/kapalı durumlarını ve sürelerini belirten bir zamanlama tablosudur.

Örnek Senaryo:
```
Hedef: Video trafiği (PCP=4) 0-4 ms arası gönderilebilir
       Best effort (PCP=0) 4-10 ms arası gönderilebilir
       
Cycle time: 10 ms (periyot)

Time Slot Plan:
═══════════════

0ms    4ms    10ms   14ms   20ms
 │──────│──────│──────│──────│
 │ Slot0│ Slot1│ Slot0│ Slot1│  ...
 │──────│──────│──────│──────│

Gate State Table:
╔═══════╦════════╦════════╦══════════╗
║ Time  ║ Gate 4 ║ Gate 0 ║ Duration ║
╠═══════╬════════╬════════╬══════════╣
║  0 ms ║  OPEN  ║ CLOSED ║  4 ms    ║  ← Video slot
║  4 ms ║ CLOSED ║  OPEN  ║  6 ms    ║  ← Best effort slot
╚═══════╩════════╩════════╩══════════╝
(Cycle repeats every 10 ms)
```

**Guard Band:**

Bir slot bitiminden önce, uzun paketlerin bir sonraki slot'a taşmasını önlemek için **guard band** uygulanır.

```
Guard Band Örneği:
═════════════════

Slot duration: 4 ms = 4000 µs
Frame size: Max 1518 bytes
Transmission time @ 100 Mbps: 1518*8/100E6 = 121.44 µs

Guard band: 121.44 µs

Actual gate open time: 4000 - 121.44 = 3878.56 µs

Timeline:
0                    3878.56      4000
│──────OPEN───────────│─GUARD─│─CLOSED─
                      │       │
                      └───┬───┘
                          │
                   Gate closes early
                   to prevent overflow
```

**TAS Avantajları:**
- Garantili bant genişliği
- Sınırlı maksimum gecikme
- Sıfır kuyruklama gecikmesi (kritik trafik için)
- Jitter minimizasyonu

**Dezavantajları:**
- Kompleks zamanlama hesaplama
- Network-wide coordination gerekir
- Guard band nedeniyle bant genişliği kaybı
- Statik yapılandırma (dinamik trafik değişimlerine uyum zor)

**INET'te TAS Konfigürasyonu:**
```ini
*.switch.hasEgressTrafficShaping = true
*.switch.eth[*].macLayer.queue.numTrafficClasses = 2
*.switch.eth[*].macLayer.queue.transmissionGate[0].initiallyOpen = true
*.switch.eth[*].macLayer.queue.transmissionGate[0].durations = [4ms, 6ms]
*.switch.eth[*].macLayer.queue.transmissionGate[1].initiallyOpen = false
*.switch.eth[*].macLayer.queue.transmissionGate[1].durations = [4ms, 6ms]
```

#### 6.2.3 IEEE 802.1Qav - Credit-Based Shaper (CBS)

**Amaç:** AVB (Audio Video Bridging) için bant genişliği rezervasyonu ve rate limiting

CBS, **leaky bucket** algoritmasına benzer şekilde çalışır, ancak pozitif ve negatif kredileri kullanır.

**Çalışma Prensibi:**

Her AVB kuyruğu bir **credit counter** (kredi sayacı) tutardır. Kredi > 0 ise paket gönderilebilir, kredi ≤ 0 ise beklenir.

```
CBS State Machine:
═════════════════

          Credit > 0?
              ║
         ┌────╬────┐
         │ YES│ NO │
         ▼    │    ▼
    ┌─────────┐  ┌─────────┐
    │ SENDING │  │  IDLE   │
    │ STATE   │  │  STATE  │
    └─────────┘  └─────────┘
         │            │
         │            │
   Credit changes based on:
   • idleSlope (when idle)
   • sendSlope (when sending)
```

**Kredi Hesaplama:**

```
Parameters:
  portTransmitRate: Fiziksel port hızı (örn: 100 Mbps)
  idleSlope: Rezerve edilen bant genişliği (örn: 20 Mbps)
  sendSlope: idleSlope - portTransmitRate (örn: -80 Mbps)

Credit Update:
  IDLE state:   credit += idleSlope × Δt
  SENDING state: credit += sendSlope × Δt

Limits:
  maxCredit: Genellikle max frame size / sendSlope
  minCredit: 0 veya negatif değer
```

**Örnek Senaryo:**

```
Konfigürasyon:
  Port rate: 100 Mbps
  idleSlope: 25 Mbps (25% rezervasyon)
  sendSlope: 25 - 100 = -75 Mbps

Zaman Çizelgesi:
═════════════════

Time  Credit  State    Action
────  ──────  ───────  ────────────────────────
0 ms   0      IDLE     Queue boş, credit artıyor
1 ms   +25k   IDLE     25 Mbps × 1ms = 25 kbit credit
2 ms   +50k   IDLE     
3 ms   +75k   SENDING  Paket geldi (12 kbit), gönderim başladı
3.16  +63k   SENDING  Credit azalıyor: -75 Mbps × 0.16 ms
4 ms   -15k   BLOCKED  Credit negatif, gönderim durdu
5 ms   +10k   BLOCKED  Boştayken credit artıyor
6 ms   +35k   SENDING  Credit pozitif, gönderim devam
```

**CBS vs TAS Karşılaştırması:**

| Özellik | CBS (802.1Qav) | TAS (802.1Qbv) |
|---------|----------------|----------------|
| Mekanizma | Credit-based smoothing | Time-based gating |
| Garantiler | Average bandwidth | Bounded latency |
| Jitter | Moderate | Very low |
| Overhead | Low | High (guard bands) |
| Esneklik | Dynamic | Static schedule |
| Uygulama | AVB audio/video | Industrial control |
| Network-wide sync | Not required | Required (gPTP) |

**INET'te CBS Konfigürasyonu:**
```ini
*.switch.hasEgressTrafficShaping = true
*.switch.eth[*].macLayer.queue.transmissionSelectionAlgorithm[0].typename = "Ieee8021qCreditBasedGate"
*.switch.eth[*].macLayer.queue.transmissionSelectionAlgorithm[0].idleSlope = 40Mbps
```

#### 6.2.4 IEEE 802.1CB - Frame Replication and Elimination for Reliability (FRER)

**Amaç:** Kritik akışların güvenilirliğini artırmak için yedeklilik sağlamak

FRER, paketleri çoğaltarak birden fazla yoldan gönderir ve hedefe duplicate'leri elemek suretiyle güvenilir iletim sağlar.

**Çalışma Prensibi:**

```
FRER Topology Örneği:
════════════════════

Source Node:
┌──────────┐
│  Source  │
│  (Talker)│
└─────┬────┘
      │ Original Stream "S1"
      │ (sequence: 0, 1, 2, ...)
      ▼
┌──────────────┐
│ REPLICATION  │  ← StreamSplitter
│   (Split)    │     S1 → S1a, S1b
└───┬──────┬───┘
    │      │
    │S1a   │S1b (copies with sequence numbers)
    │      │
┌───▼──┐ ┌─▼────┐
│Switch│ │Switch│  ← Redundant paths
│  A   │ │  B   │
└───┬──┘ └──┬───┘
    │       │
    │S1a    │S1b
    └───┬───┘
        │
    ┌───▼────────┐
    │ ELIMINATION│  ← StreamMerger
    │  (Merge)   │     First copy passes, duplicates dropped
    └────┬───────┘
         │ S1 (restored, sequence: 0, 1, 2, ...)
         ▼
   ┌──────────┐
   │   Dest   │
   │(Listener)│
   └──────────┘
```

**Sequence Numbering:**

FRER, R-TAG başlığında **16-bit sequence number** kullanır:

```
R-TAG Header:
┌────────────────────────────────────────┐
│ TPID: 0xF1C1 (16 bit)                 │
├────────────────────────────────────────┤
│ Sequence Number: 0-65535 (16 bit)     │
│   Rollover: 65535 → 0                  │
├────────────────────────────────────────┤
│ Stream ID bilgisi                      │
└────────────────────────────────────────┘
```

**Elimination Algorithm (Duplicate Tespit):**

StreamMerger, her stream için bir **history buffer** tutar:

```
Algorithm:
──────────

For each incoming packet with seqNum:
  1. Check if seqNum is in history buffer
  2. If YES → DROP (duplicate)
  3. If NO  → PASS and add seqNum to buffer
  4. Remove old entries from buffer (window size)

Örnek:
  History buffer size: 32
  Received sequence: [100, 101, 100, 102, 103, 101, 104]
  Actions:          [PASS, PASS, DROP, PASS, PASS, DROP, PASS]
  Buffer:           [100] [100,101] [100,101] [100,101,102] ...
```

**Failure Scenarios:**

1. **Link Failure:**
```
Normal Operation:
  Source → [SwitchA] → Dest   (S1a arrives first)
  Source → [SwitchB] → Dest   (S1b duplicate, dropped)

Link A Fails:
  Source → [SwitchA] ✗ Dest   (S1a lost)
  Source → [SwitchB] → Dest   (S1b now first copy, passes)
```

2. **Node Failure:**
```
SwitchA Crashes:
  All S1a packets lost
  S1b packets continue
  No interruption to application
```

**Latency ve Jitter:**
- İki yolun gecikmesi farklı olabilir
- İlk gelen kopya kabul edilir
- Worst-case latency: En kısa yolun gecikmesi
- Best-case latency: Daha da düşük (ilk gelen)

**INET'te FRER Konfigürasyonu:**
```ini
*.*.hasStreamRedundancy = true
*.source.bridging.streamIdentifier.identifier.hasSequenceNumbering = true
*.source.bridging.streamRelay.splitter.mapping = [\
    {inputStream: "critical", outputStreams: ["stream_a", "stream_b"]}\
]
*.source.bridging.streamCoder.encoder.mapping = [\
    {stream: "stream_a", vlanId: 10},\
    {stream: "stream_b", vlanId: 20}\
]
*.dest.bridging.streamRelay.merger.mapping = [\
    {inputStreams: ["stream_a", "stream_b"], outputStream: "critical"}\
]
```

#### 6.2.5 IEEE 802.1Qci - Per-Stream Filtering and Policing (PSFP)

**Amaç:** Stream bazında ingress trafik filtreleme ve rate limiting

PSFP, üç ana bileşenden oluşur:

```
PSFP Components:
═══════════════

Incoming Packet (with StreamID)
         │
         ▼
┌─────────────────┐
│  1. STREAM GATE │  ← Time-based admission control
│   (Open/Closed) │     Zamanlamaya göre paketin geçişi
└────────┬────────┘
         │ PASS or DROP
         ▼
┌─────────────────┐
│ 2. FLOW METER   │  ← Token bucket rate limiter
│  (Token Bucket) │     Green / Yellow / Red labeling
└────────┬────────┘
         │ Colored packet
         ▼
┌─────────────────┐
│   3. FILTER     │  ← Color-based filtering
│  (Label Filter) │     Drop red, pass green/yellow
└────────┬────────┘
         │ Accepted packet
         ▼
   [Forwarding]
```

**1. Stream Gate:**

Zamana bağlı açık/kapalı döngüler:

```
Stream Gate Control List:
════════════════════════

Gate State Over Time:
0ms    5ms    15ms   20ms   25ms
 │─OPEN─│─CLOSED─│─OPEN─│─CLOSED─│
 │      │        │      │        │
 
GCL Entries:
╔═══════╦══════════╦══════════╗
║ Index ║  State   ║ Duration ║
╠═══════╬══════════╬══════════╣
║   0   ║   OPEN   ║   5 ms   ║
║   1   ║  CLOSED  ║  10 ms   ║
║   2   ║   OPEN   ║   5 ms   ║
║   3   ║  CLOSED  ║   5 ms   ║
╚═══════╩══════════╩══════════╝
Cycle time: 25 ms
```

**2. Flow Meter (Token Bucket):**

Dual-Rate Three-Color Marker (RFC 2698):

```
Parameters:
  CIR (Committed Information Rate): 10 Mbps
  CBS (Committed Burst Size): 10 KB
  EIR (Excess Information Rate): 5 Mbps
  EBS (Excess Burst Size): 5 KB

Two Token Buckets:
┌─────────────────┐  ┌─────────────────┐
│ Committed (C)   │  │   Excess (E)    │
│ Rate: CIR       │  │  Rate: EIR      │
│ Size: CBS       │  │  Size: EBS      │
└─────────────────┘  └─────────────────┘

Coloring Algorithm:
  Packet arrives (size B bytes):
  
  if (C_tokens >= B):
      C_tokens -= B
      Mark GREEN
  elif (E_tokens >= B):
      E_tokens -= B
      Mark YELLOW
  else:
      Mark RED
```

**Color Meaning:**
- **GREEN**: Conforming, guaranteed delivery
- **YELLOW**: Non-conforming but tolerated, may be dropped under congestion
- **RED**: Violating, typically dropped

**3. Filter:**

```
Label Filter Configuration:
  allowedLabels = ["green", "yellow"]
  
Action:
  GREEN packet  → PASS
  YELLOW packet → PASS (but lower priority)
  RED packet    → DROP
```

**Örnek Senaryo:**

```
Video Stream: 15 Mbps peak, 8 Mbps average
Configuration:
  CIR = 10 Mbps, CBS = 20 KB
  EIR = 3 Mbps, EBS = 10 KB

Result:
  Average 8 Mbps  → Mostly GREEN
  Bursts to 13 Mbps → Some YELLOW
  Beyond 13 Mbps  → RED (dropped)
  
This protects network from misbehaving streams!
```

**INET'te PSFP Konfigürasyonu:**
```ini
*.switch.hasIngressTrafficFiltering = true
*.switch.bridging.streamFilter.ingress.typename = "SimpleIeee8021qFilter"
*.switch.bridging.streamFilter.ingress.meter[0].typename = "DualRateThreeColorMeter"
*.switch.bridging.streamFilter.ingress.meter[0].committedInformationRate = 10Mbps
*.switch.bridging.streamFilter.ingress.meter[0].committedBurstSize = 10kB
*.switch.bridging.streamFilter.ingress.meter[0].excessInformationRate = 5Mbps
*.switch.bridging.streamFilter.ingress.meter[0].excessBurstSize = 5kB
*.switch.bridging.streamFilter.ingress.filter[0].typename = "LabelFilter"
*.switch.bridging.streamFilter.ingress.filter[0].allowedLabels = ["green", "yellow"]
```

#### 6.2.6 IEEE 802.1Qbu + 802.3br - Frame Preemption

**Amaç:** Yüksek öncelikli küçük paketlerin, düşük öncelikli büyük paketleri keserek hemen iletilmesini sağlamak

Frame preemption, **latency reduction** için kritik bir mekanizmadır.

**Problem:**

```
Without Preemption:
═══════════════════

Timeline:
  │◄────────── Large Frame (1518 bytes) ──────────▶│ Express Frame
  │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│ waits!
  0                                        121 µs  122 µs
  
Latency for express frame: 121 µs (UNACCEPTABLE for control!)
```

**Solution with Preemption:**

```
With Preemption:
═══════════════

Timeline:
  │◄─Fragment 0─▶│IFG│◄Express▶│IFG│◄─Fragment 1──────▶│
  │░░░░░░░░░░░░░│   │■■■■■■■■■│   │░░░░░░░░░░░░░░░░░░│
  0       10 µs      11 µs         91 µs
  
Latency for express frame: 11 µs (Much better!)
Large frame completes at: 91 µs (slightly delayed)
```

**Preemption Mekanizması:**

1. **Traffic Separation:**
   - **Express traffic**: Preemption yapabilen (PCP 5-7 genellikle)
   - **Preemptable traffic**: Kesintiye uğrayabilen (PCP 0-4)

2. **Frame Fragmentation:**
   ```
   Original Preemptable Frame:
   ┌─────────┬─────────────────────────────┬─────┐
   │ Headers │          Payload            │ FCS │
   └─────────┴─────────────────────────────┴─────┘
   
   After Preemption:
   ┌─────────┬─────────┬──────┐
   │ Headers │ Frag 0  │ mCRC │ ← mini-CRC for fragment
   └─────────┴─────────┴──────┘
   
        ... express frame transmitted ...
   
   ┌──────────┬─────────┬─────┐
   │ Cont. Hdr│ Frag 1  │ FCS │ ← continuation
   └──────────┴─────────┴─────┘
   ```

3. **mCRC (mid-frame CRC):**
   - 32-bit CRC her fragment sonuna eklenir
   - Fragment bütünlüğünü doğrular
   - Hatalı fragment varsa tüm frame drop edilir

**Preemption Parameters:**

```
minFragmentSize: Minimum fragment boyutu (default: 64 bytes)
  - Çok küçük fragmentlar overhead artırır
  - Çok büyük fragmentlar latency artışına neden olur
  
addFragmentCrc: Her fragmente mCRC ekle (default: true)

Express Priority: Hangi PCP değerleri express? (örn: 6, 7)
Preemptable Priority: Hangi PCP değerleri preemptable? (örn: 0-5)
```

**Örnek Hesaplama:**

```
Scenario:
  Link: 100 Mbps
  Large frame: 1518 bytes (preemptable, PCP=0)
  Small frame: 64 bytes (express, PCP=7)
  minFragmentSize: 128 bytes

Without Preemption:
  Large frame TX time: 1518 × 8 / 100E6 = 121.44 µs
  Small frame latency: 121.44 µs (waiting)
  
With Preemption:
  Fragment size: 128 bytes
  Fragment 0 TX: 128 × 8 / 100E6 = 10.24 µs
  mCRC: 4 bytes = 0.32 µs
  IFG: 0.96 µs
  Express TX: 64 × 8 / 100E6 = 5.12 µs
  Small frame latency: 10.24 + 0.32 + 0.96 = 11.52 µs
  
Improvement: 121.44 / 11.52 = 10.5x faster!
```

**Preemption State Machine:**

```
PHY Layer State:
┌─────────────┐
│    IDLE     │◄──┐
└──────┬──────┘   │
       │          │
   Preemptable    │
   frame ready    │
       │          │
       ▼          │
┌─────────────┐   │
│  SENDING    │   │
│ PREEMPTABLE │   │
└──────┬──────┘   │
       │          │
   Express frame  │
   arrives        │
       │          │
       ▼          │
┌─────────────┐   │
│  PREEMPT    │   │
│ (Fragment)  │   │
└──────┬──────┘   │
       │          │
       ▼          │
┌─────────────┐   │
│  SENDING    │───┘
│  EXPRESS    │ Frame complete
└─────────────┘
       │
       ▼
   Resume preemptable
```

**INET'te Frame Preemption Konfigürasyonu:**
```ini
*.device.hasFramePreemption = true
*.device.eth[*].macLayer.typename = "EthernetPreemptingMacLayer"
*.device.eth[*].phyLayer.typename = "EthernetPreemptingPhyLayer"
*.device.eth[*].macLayer.queue.numTrafficClasses = 8

# Express queues: 6, 7
*.device.eth[*].macLayer.queue.queue[6].typename = "PacketQueue"
*.device.eth[*].macLayer.queue.queue[7].typename = "PacketQueue"

# Preemptable queues: 0-5
*.device.eth[*].macLayer.queue.queue[0..5].typename = "PacketQueue"
```

### 6.3 TSN Cihaz Mimarisi (TsnDevice/TsnSwitch)

```
┌────────────────────────────────────────────────────────────────────────────┐
│                              TSN DEVICE                                    │
├────────────────────────────────────────────────────────────────────────────┤
│   APPLICATION LAYER                                                        │
│   ┌─────────────┐                                                          │
│   │  UdpApp[0]  │ ← Uygulama (source/sink)                                │
│   └──────┬──────┘                                                          │
├──────────┼─────────────────────────────────────────────────────────────────┤
│          ▼              BRIDGING LAYER                                     │
│   ┌─────────────────────────────────────────────────────────────┐          │
│   │ STREAM IDENTIFIER                                           │          │
│   │ • Paketlere stream adı atar                                 │          │
│   │ • Sequence number ekler (FRER için)                         │          │
│   └────────────────────────────┬────────────────────────────────┘          │
│                                ▼                                           │
│   ┌─────────────────────────────────────────────────────────────┐          │
│   │ STREAM RELAY                                                │          │
│   │ ┌───────────────┐         ┌───────────────┐                 │          │
│   │ │   SPLITTER    │         │    MERGER     │                 │          │
│   │ │ Paketi çoğalt │         │ Duplicate ele │                 │          │
│   │ └───────────────┘         └───────────────┘                 │          │
│   └────────────────────────────┬────────────────────────────────┘          │
│                                ▼                                           │
│   ┌─────────────────────────────────────────────────────────────┐          │
│   │ STREAM CODER                                                │          │
│   │ ┌───────────────┐         ┌───────────────┐                 │          │
│   │ │   ENCODER     │         │   DECODER     │                 │          │
│   │ │ VLAN/PCP ata  │         │ VLAN→stream   │                 │          │
│   │ └───────────────┘         └───────────────┘                 │          │
│   └────────────────────────────┬────────────────────────────────┘          │
├──────────────────────────────────────────────────────────────────────────┤
│                        PROTOCOL LAYERS                                     │
│   ┌─────────────────┐  ┌─────────────────┐                                │
│   │  IEEE 802.1R    │  │  IEEE 802.1Q    │                                │
│   │  (R-TAG)        │  │  (C-TAG/VLAN)   │                                │
│   └─────────────────┘  └─────────────────┘                                │
├──────────────────────────────────────────────────────────────────────────┤
│                      ETHERNET INTERFACE                                   │
│   ┌───────────────────────────────────────────────────────────┐          │
│   │ MAC Layer                                                  │          │
│   │ • Ieee8021qTimeAwareShaper (TAS)                          │          │
│   │ • CreditBasedShaper (CBS)                                 │          │
│   │ • AsynchronousShaper (ATS)                                │          │
│   ├───────────────────────────────────────────────────────────┤          │
│   │ PHY Layer                                                  │          │
│   │ • EthernetPhyLayer / EthernetPreemptingPhyLayer           │          │
│   └───────────────────────────────────────────────────────────┘          │
└────────────────────────────────────────────────────────────────────────────┘
```

---

## 7. Paket Akış Senaryoları - Detaylı Analiz

Bu bölümde, bir paketin kaynak uç sistemden hedef uç sisteme ulaşana kadar geçirdiği tüm aşamaları, her katmanda yapılan işlemleri ve TSN mekanizmalarının nasıl devreye girdiğini adım adım inceleyeceğiz.

### 7.1 Genel Bakış - End-to-End Paket Yolculuğu

```
Paket Akış Zinciri:
═══════════════════

┌──────────────┐                ┌──────────────┐                ┌──────────────┐
│   Source     │                │    Switch    │                │ Destination  │
│  (TsnDevice) │                │  (TsnSwitch) │                │  (TsnDevice) │
└──────────────┘                └──────────────┘                └──────────────┘
       │                               │                               │
       │ 1. App generates data         │                               │
       ▼                               │                               │
  [APP LAYER]                          │                               │
       │                               │                               │
       │ 2. Transport adds header      │                               │
       ▼                               │                               │
 [TRANSPORT LAYER]                     │                               │
       │                               │                               │
       │ 3. Network adds IP            │                               │
       ▼                               │                               │
  [NETWORK LAYER]                      │                               │
       │                               │                               │
       │ 4. Bridging: Stream ID        │                               │
       ▼                               │                               │
 [BRIDGING LAYER]                      │                               │
  • Stream Identifier                  │                               │
  • Stream Splitter (FRER)             │                               │
  • Stream Encoder                     │                               │
       │                               │                               │
       │ 5. Protocol headers           │                               │
       ▼                               │                               │
 [PROTOCOL LAYERS]                     │                               │
  • R-TAG (sequence #)                 │                               │
  • C-TAG (VLAN, PCP)                  │                               │
       │                               │                               │
       │ 6. MAC + Traffic Shaping      │                               │
       ▼                               │                               │
   [MAC LAYER]                         │                               │
  • Queue selection (PCP)              │                               │
  • TAS gating                         │                               │
  • Scheduling                         │                               │
       │                               │                               │
       │ 7. Physical transmission      │                               │
       ▼                               │                               │
   [PHY LAYER]                         │                               │
  • FCS, Preamble                      │                               │
  • Signal encoding                    │                               │
       │                               │                               │
       │───────────── Wire ────────────▶│                               │
       │                               │                               │
       │                          [PHY RX]                              │
       │                          [MAC RX]                              │
       │                          [BRIDGING]                            │
       │                           • Decoder                            │
       │                           • Filter (PSFP)                      │
       │                           • Merger (FRER)                      │
       │                           • Forwarding                         │
       │                          [MAC TX]                              │
       │                          [PHY TX]                              │
       │                               │                               │
       │                               │───────── Wire ───────────────▶│
       │                               │                               │
       │                               │                          [PHY RX]
       │                               │                          [MAC RX]
       │                               │                        [PROTOCOL]
       │                               │                        [BRIDGING]
       │                               │                        [NETWORK]
       │                               │                        [TRANSPORT]
       │                               │                        [APP LAYER]
       │                               │                               │
       │                               │                          Application
       │                               │                          receives data
```

### 7.2 TsnDevice'tan Gönderim - Katman Katman Detaylı Analiz

#### Senaryo Tanımı:
```
Source: TsnDevice (192.168.1.10)
Destination: TsnDevice (192.168.1.20)
Application: UdpBasicApp - periyodik sensor data
Traffic: Control loop packets, 100 bytes payload, 10 ms interval
Stream: "criticalControl"
VLAN: 10, PCP: 6 (Control traffic)
TSN Features: TAS, FRER enabled
```

#### 7.2.1 APPLICATION LAYER - Veri Üretimi

**Modül:** `UdpBasicApp` (source.app[0])

**İşlem Adımları:**

1. **Veri Oluşturma:**
   ```cpp
   // t = 0.000s: Periyodik timer tetiklenir
   simtime_t now = simTime();
   
   // 100 byte payload oluştur
   std::string data = "SENSOR_DATA_" + std::to_string(sequenceNumber);
   auto payload = makeShared<BytesChunk>(reinterpret_cast<const uint8_t*>(data.c_str()), 100);
   
   // Packet oluştur
   Packet *packet = new Packet("sensorData");
   packet->insertAtBack(payload);
   ```

2. **Socket Bilgisi Ekleme:**
   ```cpp
   // Hedef bilgileri tag olarak ekle
   auto sockReq = packet->addTag<SocketReq>();
   sockReq->setDestAddress(L3Address("192.168.1.20"));
   sockReq->setDestPort(5000);
   sockReq->setSrcPort(4000);
   ```

3. **İstatistik ve Zamanlama:**
   ```cpp
   emit(packetSentSignal, packet);
   // Packet size: 100 bytes (sadece payload)
   // Timestamp: 0.000000s
   // Sequence: 0
   ```

**Paket Durumu:**
```
┌────────────────────────────────────────┐
│ Packet: "sensorData"                   │
├────────────────────────────────────────┤
│ Chunks:                                │
│   └─ BytesChunk (100 bytes)           │
├────────────────────────────────────────┤
│ Tags:                                  │
│   └─ SocketReq:                        │
│       • destAddr: 192.168.1.20         │
│       • destPort: 5000                 │
│       • srcPort: 4000                  │
└────────────────────────────────────────┘
Total size: 100 bytes
```

**Zaman:** `t = 0.000000s`

---

#### 7.2.2 TRANSPORT LAYER - UDP Encapsulation

**Modül:** `Udp` (source.udp)

**İşlem Adımları:**

1. **UDP Header Oluşturma:**
   ```cpp
   // UDP header ekle
   auto udpHeader = makeShared<UdpHeader>();
   udpHeader->setSourcePort(4000);
   udpHeader->setDestinationPort(5000);
   udpHeader->setTotalLengthField(B(108)); // 8 byte header + 100 byte payload
   udpHeader->setCrc(0x0000); // CRC hesaplanacak
   udpHeader->setCrcMode(CRC_COMPUTED);
   
   // Packet'e başlık ekle
   packet->insertAtFront(udpHeader);
   ```

2. **Checksum Hesaplama:**
   ```cpp
   // Pseudo header ile CRC hesapla
   uint16_t crc = calculateUdpChecksum(packet, srcIP, destIP);
   udpHeader->setCrc(crc);
   ```

3. **Routing Bilgisi Ekleme:**
   ```cpp
   auto l3AddrReq = packet->addTag<L3AddressReq>();
   l3AddrReq->setDestAddress(L3Address("192.168.1.20"));
   l3AddrReq->setSrcAddress(L3Address("192.168.1.10"));
   ```

**Paket Durumu:**
```
┌────────────────────────────────────────┐
│ Packet: "sensorData"                   │
├────────────────────────────────────────┤
│ Chunks:                                │
│   ├─ UdpHeader (8 bytes)               │
│   │   • srcPort: 4000                  │
│   │   • dstPort: 5000                  │
│   │   • length: 108                    │
│   │   • checksum: 0xAB12               │
│   └─ BytesChunk (100 bytes)           │
├────────────────────────────────────────┤
│ Tags:                                  │
│   ├─ SocketReq (original)              │
│   └─ L3AddressReq:                     │
│       • srcAddr: 192.168.1.10          │
│       • destAddr: 192.168.1.20         │
└────────────────────────────────────────┘
Total size: 108 bytes
```

**Zaman:** `t = 0.000005s` (+5 µs processing delay)

---

#### 7.2.3 NETWORK LAYER - IP Encapsulation

**Modül:** `Ipv4` (source.ipv4.ip)

**İşlem Adımları:**

1. **Routing Table Lookup:**
   ```cpp
   // Hedef IP için route bul
   const InterfaceEntry *ie = rt->findBestMatchingRoute(destAddr);
   // Result: eth0 interface, gateway: 192.168.1.1
   ```

2. **IPv4 Header Oluşturma:**
   ```cpp
   auto ipv4Header = makeShared<Ipv4Header>();
   ipv4Header->setVersion(4);
   ipv4Header->setHeaderLength(B(20)); // No options
   ipv4Header->setDscp(0); // Default DSCP
   ipv4Header->setEcn(0);
   ipv4Header->setTotalLengthField(B(128)); // 20 + 8 + 100
   ipv4Header->setIdentification(packetId++);
   ipv4Header->setFlags(0x02); // Don't Fragment
   ipv4Header->setFragmentOffset(0);
   ipv4Header->setTimeToLive(64);
   ipv4Header->setProtocol(IP_PROT_UDP);
   ipv4Header->setSrcAddress(Ipv4Address("192.168.1.10"));
   ipv4Header->setDestAddress(Ipv4Address("192.168.1.20"));
   
   // Header checksum
   ipv4Header->setHeaderChecksum(calculateIpChecksum(ipv4Header));
   
   packet->insertAtFront(ipv4Header);
   ```

3. **Interface Selection:**
   ```cpp
   auto interfaceReq = packet->addTag<InterfaceReq>();
   interfaceReq->setInterfaceId(ie->getInterfaceId()); // eth0
   ```

**Paket Durumu:**
```
┌────────────────────────────────────────┐
│ Packet: "sensorData"                   │
├────────────────────────────────────────┤
│ Chunks:                                │
│   ├─ Ipv4Header (20 bytes)             │
│   │   • version: 4                     │
│   │   • ttl: 64                        │
│   │   • protocol: UDP (17)             │
│   │   • srcIP: 192.168.1.10            │
│   │   • dstIP: 192.168.1.20            │
│   │   • checksum: 0x7F3A               │
│   ├─ UdpHeader (8 bytes)               │
│   └─ BytesChunk (100 bytes)           │
├────────────────────────────────────────┤
│ Tags:                                  │
│   ├─ L3AddressReq                      │
│   └─ InterfaceReq:                     │
│       • interfaceId: eth0              │
└────────────────────────────────────────┘
Total size: 128 bytes
```

**Zaman:** `t = 0.000010s` (+5 µs)

---

#### 7.2.4 BRIDGING LAYER - Stream Identification

**Modül:** `StreamIdentifier` (source.bridging.streamIdentifier)

**İşlem Adımları:**

1. **Packet Filter Matching:**
```ini
   # Configuration:
   *.source.bridging.streamIdentifier.identifier.mapping = [\
       {stream: "criticalControl", packetFilter: expr(udp.destPort == 5000)}\
   ]
   ```

   ```cpp
   // Filter evaluation
   for (auto& mapping : streamMappings) {
       if (packetFilter->matches(packet)) {
           streamName = mapping.stream; // "criticalControl"
           break;
       }
   }
   ```

2. **Stream Tag Ekleme:**
   ```cpp
   auto streamReq = packet->addTag<StreamReq>();
   streamReq->setStreamName("criticalControl");
   ```

3. **Sequence Numbering (FRER için):**
   ```cpp
   // FRER enabled ise sequence number ekle
   if (hasSequenceNumbering) {
       auto seqNumReq = packet->addTag<SequenceNumberReq>();
       seqNumReq->setSequenceNumber(streamSeqNum["criticalControl"]++);
       // First packet: seqNum = 0
   }
   ```

**Paket Durumu:**
```
┌────────────────────────────────────────┐
│ Packet: "sensorData"                   │
├────────────────────────────────────────┤
│ Chunks: (unchanged)                    │
│   ├─ Ipv4Header (20 bytes)             │
│   ├─ UdpHeader (8 bytes)               │
│   └─ BytesChunk (100 bytes)           │
├────────────────────────────────────────┤
│ Tags:                                  │
│   ├─ InterfaceReq                      │
│   ├─ StreamReq:                        │
│   │   • streamName: "criticalControl"  │
│   └─ SequenceNumberReq:                │
│       • seqNum: 0                      │
└────────────────────────────────────────┘
Total size: 128 bytes (tags are metadata, not counted)
```

**Zaman:** `t = 0.000012s` (+2 µs)

---

#### 7.2.5 BRIDGING LAYER - Stream Replication (FRER)

**Modül:** `StreamSplitter` (source.bridging.streamRelay.splitter)

**İşlem Adımları:**

1. **Replication Mapping:**
   ```ini
   # Configuration:
   *.source.bridging.streamRelay.splitter.mapping = [\
       {inputStream: "criticalControl", \
        outputStreams: ["control_pathA", "control_pathB"]}\
   ]
   ```

2. **Packet Duplication:**
   ```cpp
   // Find mapping
   for (auto& mapping : splitterMappings) {
       if (mapping.inputStream == "criticalControl") {
           for (auto& outputStream : mapping.outputStreams) {
               // Duplicate packet
               Packet *copy = packet->dup();
               
               // Update stream tag
               auto streamReq = copy->getTagForUpdate<StreamReq>();
               streamReq->setStreamName(outputStream);
               
               // Send to encoder
               send(copy, outputStream);
           }
           delete packet; // Original consumed
           return;
       }
   }
   ```

**Paket Durumu:**

Artık 2 kopya var:

```
COPY A:                                 COPY B:
┌──────────────────────────────┐        ┌──────────────────────────────┐
│ Packet: "sensorData"         │        │ Packet: "sensorData"         │
├──────────────────────────────┤        ├──────────────────────────────┤
│ Chunks: (same as original)   │        │ Chunks: (same as original)   │
├──────────────────────────────┤        ├──────────────────────────────┤
│ Tags:                        │        │ Tags:                        │
│   ├─ InterfaceReq            │        │   ├─ InterfaceReq            │
│   ├─ StreamReq:              │        │   ├─ StreamReq:              │
│   │   • streamName:          │        │   │   • streamName:          │
│   │     "control_pathA"      │        │   │     "control_pathB"      │
│   └─ SequenceNumberReq:      │        │   └─ SequenceNumberReq:      │
│       • seqNum: 0            │        │       • seqNum: 0            │
└──────────────────────────────┘        └──────────────────────────────┘
```

**Zaman:** `t = 0.000015s` (+3 µs)

---

#### 7.2.6 BRIDGING LAYER - Stream Encoding

**Modül:** `StreamEncoder` (source.bridging.streamCoder.encoder)

**İşlem Adımları:**

1. **Stream-to-VLAN Mapping:**
   ```ini
   # Configuration:
   *.source.bridging.streamCoder.encoder.mapping = [\
       {stream: "control_pathA", vlanId: 10, pcp: 6},\
       {stream: "control_pathB", vlanId: 20, pcp: 6}\
   ]
   ```

2. **VLAN/PCP Tag Ekleme:**
   ```cpp
   // Path A encoding
   for (auto& mapping : encoderMappings) {
       if (mapping.stream == streamReq->getStreamName()) {
           auto vlanReq = packet->addTag<VlanReq>();
           vlanReq->setVlanId(mapping.vlanId);
           
           auto pcpReq = packet->addTag<PcpReq>();
           pcpReq->setPcp(mapping.pcp);
           
           break;
       }
   }
   ```

**Paket Durumu:**

```
PATH A:                                 PATH B:
┌──────────────────────────────┐        ┌──────────────────────────────┐
│ Packet: "sensorData"         │        │ Packet: "sensorData"         │
├──────────────────────────────┤        ├──────────────────────────────┤
│ Chunks: (unchanged)          │        │ Chunks: (unchanged)          │
├──────────────────────────────┤        ├──────────────────────────────┤
│ Tags:                        │        │ Tags:                        │
│   ├─ InterfaceReq            │        │   ├─ InterfaceReq            │
│   ├─ StreamReq               │        │   ├─ StreamReq               │
│   ├─ SequenceNumberReq       │        │   ├─ SequenceNumberReq       │
│   ├─ VlanReq:                │        │   ├─ VlanReq:                │
│   │   • vlanId: 10           │        │   │   • vlanId: 20           │
│   └─ PcpReq:                 │        │   └─ PcpReq:                 │
│       • pcp: 6               │        │       • pcp: 6               │
└──────────────────────────────┘        └──────────────────────────────┘
```

**Zaman:** `t = 0.000018s` (+3 µs)

---

#### 7.2.7 PROTOCOL LAYERS - R-TAG Insertion

**Modül:** `Ieee8021rTagEpdProtocol` (source.ethernet.ieee8021r)

**İşlem Adımları:**

1. **R-TAG Header Oluşturma:**
   ```cpp
   auto rTag = makeShared<Ieee8021rTagEpdHeader>();
   rTag->setTpid(0xF1C1); // R-TAG TPID
   rTag->setSequenceNumber(seqNumReq->getSequenceNumber()); // 0
   
   // Stream ID encoding (simplified)
   rTag->setStreamId(encodeStreamId(streamReq->getStreamName()));
   
   packet->insertAtFront(rTag);
   ```

**Paket Durumu:**

```
PATH A:
┌────────────────────────────────────────┐
│ Packet: "sensorData"                   │
├────────────────────────────────────────┤
│ Chunks:                                │
│   ├─ Ieee8021rTagEpdHeader (6 bytes)   │
│   │   • TPID: 0xF1C1                   │
│   │   • seqNum: 0                      │
│   ├─ Ipv4Header (20 bytes)             │
│   ├─ UdpHeader (8 bytes)               │
│   └─ BytesChunk (100 bytes)           │
└────────────────────────────────────────┘
Total size: 134 bytes

PATH B: (similar, same seqNum: 0)
```

**Zaman:** `t = 0.000020s` (+2 µs)

---

#### 7.2.8 PROTOCOL LAYERS - C-TAG (VLAN) Insertion

**Modül:** `Ieee8021qTagEpdProtocol` (source.ethernet.ieee8021q)

**İşlem Adımları:**

1. **C-TAG Header Oluşturma:**
   ```cpp
   auto vlanTag = makeShared<Ieee8021qTagEpdHeader>();
   vlanTag->setTpid(0x8100); // C-TAG TPID
   
   // PCP|DEI|VID encoding (16 bits total after TPID)
   uint8_t pcp = pcpReq->getPcp(); // 6
   uint8_t dei = 0; // Not drop eligible
   uint16_t vid = vlanReq->getVlanId(); // 10 or 20
   
   uint16_t tci = (pcp << 13) | (dei << 12) | vid;
   vlanTag->setTci(tci);
   
   packet->insertAtFront(vlanTag);
   ```

**Paket Durumu:**

```
PATH A:
┌────────────────────────────────────────┐
│ Packet: "sensorData"                   │
├────────────────────────────────────────┤
│ Chunks:                                │
│   ├─ Ieee8021qTagEpdHeader (4 bytes)   │
│   │   • TPID: 0x8100                   │
│   │   • PCP: 6 (110 binary)            │
│   │   • DEI: 0                         │
│   │   • VID: 10 (0x00A)                │
│   ├─ Ieee8021rTagEpdHeader (6 bytes)   │
│   ├─ Ipv4Header (20 bytes)             │
│   ├─ UdpHeader (8 bytes)               │
│   └─ BytesChunk (100 bytes)           │
└────────────────────────────────────────┘
Total size: 138 bytes

PATH B: (similar, VID: 20)
```

**Zaman:** `t = 0.000022s` (+2 µs)

---

#### 7.2.9 MAC LAYER - Queueing and Traffic Shaping

**Modül:** `EthernetMacLayer` with `Ieee8021qTimeAwareShaper`

**İşlem Adımları:**

1. **Ethernet Header Ekleme:**
   ```cpp
   auto ethHeader = makeShared<EthernetMacHeader>();
   ethHeader->setDest(MacAddress("AA:BB:CC:DD:EE:01")); // Switch MAC
   ethHeader->setSrc(MacAddress("00:11:22:33:44:55")); // Source MAC
   ethHeader->setTypeOrLength(0x8100); // VLAN tagged
   
   packet->insertAtFront(ethHeader);
   ```

**Paket Durumu:**

```
PATH A:
┌────────────────────────────────────────┐
│ Packet: "sensorData"                   │
├────────────────────────────────────────┤
│ Chunks:                                │
│   ├─ EthernetMacHeader (14 bytes)      │
│   │   • dst: AA:BB:CC:DD:EE:01         │
│   │   • src: 00:11:22:33:44:55         │
│   │   • type: 0x8100                   │
│   ├─ Ieee8021qTagEpdHeader (4 bytes)   │
│   ├─ Ieee8021rTagEpdHeader (6 bytes)   │
│   ├─ Ipv4Header (20 bytes)             │
│   ├─ UdpHeader (8 bytes)               │
│   └─ BytesChunk (100 bytes)           │
└────────────────────────────────────────┘
Total size: 152 bytes (without FCS)
```

2. **Classification (PCP-based):**
   ```cpp
   // PcpTrafficClassClassifier
   int trafficClass = pcpReq->getPcp(); // 6
   // Queue[6] selected for this packet
   ```

3. **Enqueue:**
   ```cpp
   // Push packet to Queue[6]
   queue[6]->pushPacket(packet);
   
   emit(packetPushedToQueueSignal, packet);
   // Queue[6] depth: 1 packet
   ```

4. **TAS Gate Check:**
   ```ini
   # Gate configuration:
   *.source.eth[0].macLayer.queue.transmissionGate[6].durations = [8ms, 2ms]
   #                                                               OPEN  CLOSED
   ```

   ```cpp
   // Current time: t = 0.000025s
   // Cycle time: 10 ms
   // Cycle offset: 0.000025 mod 0.010 = 0.000025s
   // Gate[6] state at 0.000025s: OPEN (first 8ms of cycle)
   
   bool gateOpen = transmissionGate[6]->isOpen();
   // Result: true
   ```

5. **Scheduler Selection:**
   ```cpp
   // PriorityScheduler with reverseOrder=true (higher TC first)
   // Available queues with packets: [6]
   // Selected: Queue[6] (highest priority with packets)
   
   Packet *selectedPacket = queue[6]->popPacket();
   ```

**Zaman:** `t = 0.000025s` (+3 µs for queueing logic)

---

#### 7.2.10 PHY LAYER - Physical Transmission

**Modül:** `EthernetPhyLayer` (source.eth[0].phyLayer)

**İşlem Adımları:**

1. **FCS Calculation:**
   ```cpp
   // Calculate CRC-32 over entire frame
   uint32_t fcs = calculateEthernetFcs(packet);
   
   auto fcsTrailer = makeShared<EthernetFcs>();
   fcsTrailer->setFcs(fcs);
   fcsTrailer->setFcsMode(FCS_COMPUTED);
   
   packet->insertAtBack(fcsTrailer);
   ```

2. **Preamble and SFD:**
   ```cpp
   // Note: Preamble+SFD not explicitly modeled in INET,
   // but transmission time includes it
   
   // Preamble: 7 bytes of 0xAA (10101010)
   // SFD: 1 byte of 0xAB (10101011)
   ```

**Final Paket Durumu:**

```
PATH A (wire format):
┌────────────────────────────────────────────────────┐
│ Preamble (7 bytes): 0xAA AA AA AA AA AA AA         │  ← PHY
│ SFD (1 byte): 0xAB                                 │  ← PHY
├────────────────────────────────────────────────────┤
│ Dst MAC (6 bytes): AA:BB:CC:DD:EE:01               │  ┐
│ Src MAC (6 bytes): 00:11:22:33:44:55               │  │
│ EtherType (2 bytes): 0x8100                        │  ├─ Ethernet
├────────────────────────────────────────────────────┤  │  Header
│ C-TAG (4 bytes): TPID=0x8100, PCP=6, VID=10       │  │  (14 bytes)
├────────────────────────────────────────────────────┤  ┘
│ R-TAG (6 bytes): TPID=0xF1C1, seqNum=0            │  ← FRER
├────────────────────────────────────────────────────┤
│ IPv4 Header (20 bytes)                             │  ┐
│   • src: 192.168.1.10                              │  │
│   • dst: 192.168.1.20                              │  ├─ IP
├────────────────────────────────────────────────────┤  ┘
│ UDP Header (8 bytes)                               │  ← UDP
│   • srcPort: 4000, dstPort: 5000                   │
├────────────────────────────────────────────────────┤
│ Payload (100 bytes): "SENSOR_DATA_0..."           │  ← Application
├────────────────────────────────────────────────────┤     Data
│ FCS (4 bytes): 0x1A2B3C4D                          │  ← CRC-32
└────────────────────────────────────────────────────┘

Frame size breakdown:
  Preamble+SFD:  8 bytes  (not counted in frame size)
  Ethernet Hdr: 14 bytes
  C-TAG:         4 bytes
  R-TAG:         6 bytes
  IP:           20 bytes
  UDP:           8 bytes
  Payload:     100 bytes
  FCS:           4 bytes
  ──────────────────────
  Total:       156 bytes (on wire: 164 bytes with preamble)
```

3. **Transmission Time Calculation:**
   ```
   Link speed: 100 Mbps
   
   Frame size: 156 bytes (without preamble) = 1248 bits
   Preamble+SFD: 8 bytes = 64 bits
   Total: 1312 bits
   
   Transmission time: 1312 bits / 100E6 bps = 13.12 µs
   
   IFG (Interframe Gap): 96 bit times = 0.96 µs
   
   Total wire time: 13.12 + 0.96 = 14.08 µs
   ```

4. **Signal Encoding and Transmission:**
   ```cpp
   // 4B/5B encoding for 100BASE-TX (not explicitly simulated)
   // Signal is sent to physical medium
   
   EthernetSignalStart *signalStart = new EthernetSignalStart();
   signalStart->setBitrate(100E6);
   signalStart->setDuration(13.12e-6);
   
   send(signalStart, "phyOut");
   
   // Signal propagation delay depends on cable length
   // Typical: 5 ns/meter
   // Assume 10 meter cable: 50 ns propagation delay
   ```

**Zaman:**
```
Start transmission: t = 0.000025s
End transmission:   t = 0.000038s (+13.12 µs)
IFG ends:           t = 0.000039s (+0.96 µs)
Arrives at switch:  t = 0.000038s (+0.00005 µs propagation)
```

**PATH B:** Aynı işlemler, farklı VLAN (20) ile gerçekleşir ve farklı fiziksel port'tan gönderilir.

---

### 7.3 TsnSwitch'te İşleme - Bridging ve Forwarding

### 9.2 TsnSwitch'te İşleme (Detaylı)

```
1. PHY LAYER (Giriş)
   └── FCS kontrolü

2. MAC LAYER (Giriş)
   └── MAC adresi öğrenme

3. BRIDGING LAYER - StreamDecoder
   ├── VLAN tag'den stream adı çıkarılır
   └── StreamInd tag'i eklenir

4. BRIDGING LAYER - StreamFilter (PSFP - 802.1Qci)
   ├── Stream Gate: Zamanlamaya göre geçiş izni
   ├── Flow Meter: Token bucket ile rate limiting
   │   ├── GREEN → Geç
   │   ├── YELLOW → Düşürülebilir
   │   └── RED → Düşür
   └── Filter: Renk bazlı filtreleme

5. BRIDGING LAYER - StreamMerger (FRER)
   ├── Sequence number kontrolü
   └── Duplicate elimination

6. BRIDGING LAYER - InterfaceRelay
   ├── MAC tablosu araması
   └── Çıkış arayüzü seçimi

7. MAC LAYER (Çıkış) - Traffic Shaping
   
   Time-Aware Shaper (TAS - 802.1Qbv):
   ┌─────────────────────────────────────────┐
   │  Classifier → Queue[0] → Gate[0] ─┐    │
   │            → Queue[1] → Gate[1] ─┼─→ Scheduler → Out
   │            → Queue[N] → Gate[N] ─┘    │
   └─────────────────────────────────────────┘
   
   Credit-Based Shaper (CBS - 802.1Qav):
   ┌─────────────────────────────────────────┐
   │  Queue → CreditGate → Out              │
   │         (credit > 0 ?)                  │
   └─────────────────────────────────────────┘

8. PHY LAYER (Çıkış)
   └── İletim
```

### 9.3 Frame Preemption Senaryosu

```
ZAMAN   OLAY
  │
  ├──t1── Düşük öncelikli çerçeve iletimi başlar (preemptable)
  │       └── background-3 → PHY → Wire
  │
  ├──t2── Yüksek öncelikli çerçeve MAC'a gelir (express)
  │       └── ts-1 → Express MAC kuyruğu
  │
  ├──t3── Preemption kararı
  │       ├── background-3 iletimi kesilir
  │       ├── background-3-frag0 + mCRC gönderilir
  │       └── Fragment tamamlanır
  │
  ├──t4── Interframe Gap (IFG)
  │
  ├──t5── Express çerçeve iletilir
  │       └── ts-1 tam olarak gönderilir
  │
  ├──t6── IFG
  │
  └──t7── Kalan fragment iletilir
          └── background-3-frag1 + FCS
```

---

## 8. Modül Tipleri

Bu bölümde INET Framework'te kullanılan modül türlerini ve dosya tiplerini inceleyeceğiz.

| Stage | Açıklama |
|-------|----------|
| `INITSTAGE_LOCAL` | Yerel parametreler (ilk stage) |
| `INITSTAGE_PHYSICAL_LAYER` | Fiziksel katman |
| `INITSTAGE_LINK_LAYER` | Veri bağlantı katmanı |
| `INITSTAGE_QUEUEING` | Kuyruk yapılandırması |
| `INITSTAGE_NETWORK_CONFIGURATION` | Ağ konfigürasyonu |
| `INITSTAGE_NETWORK_LAYER` | Ağ katmanı |
| `INITSTAGE_TRANSPORT_LAYER` | Taşıma katmanı |
| `INITSTAGE_APPLICATION_LAYER` | Uygulama katmanı |

---

## 12. Yararlı Kaynaklar

1. **INET User's Guide**: https://inet.omnetpp.org/docs/users-guide/
2. **INET Developer's Guide**: https://inet.omnetpp.org/docs/developers-guide/
3. **TSN Showcases**: `showcases/tsn/` dizini
4. **Tutorials**: `tutorials/` dizini
5. **API Reference**: `doc/` dizini

---

## Özet Tablo: TSN Özellikleri

| Özellik | Standart | Amaç | Parametre |
|---------|----------|------|-----------|
| Time Sync | 802.1AS | Saat senkronizasyonu | `hasTimeSynchronization` |
| TAS | 802.1Qbv | Garantili gecikme | `hasEgressTrafficShaping` |
| CBS | 802.1Qav | AVB streaming | `hasEgressTrafficShaping` |
| PSFP | 802.1Qci | Rate limiting | `hasIngressTrafficFiltering` |
| FRER | 802.1CB | Güvenilirlik | `hasStreamRedundancy` |
| Preemption | 802.1Qbu | Ultra-düşük gecikme | `hasFramePreemption` |
| Cut-through | - | Düşük gecikme | `hasCutthroughSwitching` |

---

*Bu döküman, INET Framework 4.5.4 sürümü için hazırlanmıştır.*
*Son Güncelleme: Ocak 2026*
