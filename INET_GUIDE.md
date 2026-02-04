# INET Framework ve Ağ Temelleri - Kapsamlı Kılavuz

> *Bu döküman, Network Teorisi ile INET Framework'ü birleştiren sistematik bir kılavuzdur.*
> *INET Framework 4.5.4 sürümü için hazırlanmıştır.*

---

## 📚 İçindekiler

### BÖLÜM I: GİRİŞ VE TEMEL KAVRAMLAR
1. [INET Framework Nedir?](#1-inet-framework-nedir)
2. [İnternet Nedir?](#2-internet-nedir)
3. [Protokol Kavramı](#3-protokol-kavramı)

### BÖLÜM II: AĞ MİMARİSİ
4. [Ağ Kenarı (Network Edge)](#4-ağ-kenarı-network-edge)
5. [Ağ Çekirdeği (Network Core)](#5-ağ-çekirdeği-network-core)
6. [Delay, Loss ve Throughput](#6-delay-loss-ve-throughput)

### BÖLÜM III: KATMANLI MİMARİ
7. [Protokol Katmanları ve Servis Modelleri](#7-protokol-katmanları-ve-servis-modelleri)
8. [INET Dizin Yapısı](#8-inet-dizin-yapısı)

### BÖLÜM IV: FİZİKSEL KATMAN
9. [Transmission Media](#9-transmission-media)
10. [Wireless Transmission Fundamentals](#10-wireless-transmission-fundamentals)
11. [Digital Modulation ve Encoding](#11-digital-modulation-ve-encoding)
12. [Multiplexing Teknikleri](#12-multiplexing-teknikleri)
13. [Physical Layer - INET Implementasyonu](#13-physical-layer---inet-implementasyonu)

### BÖLÜM V: VERİ BAĞLANTI KATMANI
14. [Framing ve Error Control](#14-framing-ve-error-control)
15. [Multiple Access Protocols](#15-multiple-access-protocols)
16. [Ethernet ve IEEE 802.3](#16-ethernet-ve-ieee-8023)
17. [Switches, VLANs ve Spanning Tree](#17-switches-vlans-ve-spanning-tree)
18. [ARP ve Link Layer Addressing](#18-arp-ve-link-layer-addressing)
19. [PPP ve Point-to-Point Links](#19-ppp-ve-point-to-point-links)

### BÖLÜM VI: AĞ KATMANI
20. [IP Datagram Yapısı (IPv4 ve IPv6)](#20-ip-datagram-yapısı-ipv4-ve-ipv6)
21. [IP Adresleme ve Subnetting](#21-ip-adresleme-ve-subnetting)
22. [ICMP ve Network Diagnostics](#22-icmp-ve-network-diagnostics)
23. [Routing Algorithms](#23-routing-algorithms)
24. [Intra-AS Routing (OSPF, IS-IS)](#24-intra-as-routing-ospf-is-is)
25. [Inter-AS Routing (BGP)](#25-inter-as-routing-bgp)
26. [IP Multicasting ve IGMP](#26-ip-multicasting-ve-igmp)
27. [MPLS ve Label Switching](#27-mpls-ve-label-switching)
28. [NAT ve IPv4/IPv6 Transition](#28-nat-ve-ipv4ipv6-transition)
29. [SDN ve OpenFlow](#29-sdn-ve-openflow)

### BÖLÜM VII: TAŞIMA KATMANI
30. [Multiplexing ve Demultiplexing](#30-multiplexing-ve-demultiplexing)
31. [UDP Detaylı](#31-udp-detaylı)
32. [TCP Bağlantı Yönetimi (State Machine)](#32-tcp-bağlantı-yönetimi-state-machine)
33. [TCP Reliable Data Transfer](#33-tcp-reliable-data-transfer)
34. [TCP Flow Control](#34-tcp-flow-control)
35. [TCP Congestion Control](#35-tcp-congestion-control)
36. [TCP Timers ve Retransmission](#36-tcp-timers-ve-retransmission)
37. [SCTP](#37-sctp)
38. [RTP/RTCP ve Real-Time Transport](#38-rtprtcp-ve-real-time-transport)

### BÖLÜM VIII: UYGULAMA KATMANI
39. [Client-Server ve P2P Modeller](#39-client-server-ve-p2p-modeller)
40. [HTTP ve Web](#40-http-ve-web)
41. [DNS Detaylı](#41-dns-detaylı)
42. [DHCP](#42-dhcp)
43. [Socket Programlama](#43-socket-programlama)

### BÖLÜM IX: KABLOSUZ AĞLAR
44. [Wireless Link Karakteristikleri](#44-wireless-link-karakteristikleri)
45. [IEEE 802.11 (WiFi) Detaylı](#45-ieee-80211-wifi-detaylı)
46. [Bluetooth ve IEEE 802.15](#46-bluetooth-ve-ieee-80215)
47. [Cellular Networks (4G/5G) Konseptleri](#47-cellular-networks-4g5g-konseptleri)

### BÖLÜM X: KABLOSUZ SENSÖR AĞLARI (WSN)
48. [WSN Mimarisi ve Uygulamaları](#48-wsn-mimarisi-ve-uygulamaları)
49. [WSN MAC Protokolleri](#49-wsn-mac-protokolleri)
50. [WSN Routing](#50-wsn-routing)
51. [Enerji Verimliliği](#51-enerji-verimliliği)
52. [Lokalizasyon ve Time Synchronization](#52-lokalizasyon-ve-time-synchronization)

### BÖLÜM XI: GÜVENLİK
53. [Kriptografi Temelleri (AES, Block Cipher Modes)](#25-ağ-güvenliği)
54. [Protokol Güvenliği (Authentication, MitM, Kerberos)](#252-protokol-güvenliği)
55. [TLS/SSL](#253-tlsssl-transport-layer-security)
56. [IPsec ve VPN](#254-ipsec)
57. [IEEE 802.1X ve EAP](#255-ieee-8021x-port-based-network-access-control)
58. [SSH](#256-ssh-secure-shell)
59. [Firewall ve IDS/IPS](#257-firewall-ve-idsips)
60. [Wireless Security (WPA2/WPA3)](#258-wireless-security)
61. [TSN Saldırıları](#259-tsn-protokollerine-yönelik-saldırılar)

### BÖLÜM XII: AĞ TASARIMI VE OPTİMİZASYON
62. [Network Design Problems](#26-ağ-tasarımı-ve-optimizasyon)
63. [Traffic Demand ve Capacity Dimensioning](#261-network-design-problems)
64. [Fairness (Max-Min, Proportional)](#262-fairness-concepts)
65. [Protection ve Restoration Design](#263-restoration-and-protection-design)
66. [Multi-Layer Network Design](#264-multi-layer-network-design)

### BÖLÜM XIII: DETERMİNİSTİK AĞLAR (TSN)
67. [TSN Neden Gerekli?](#161-tsn-neden-gerekli)
68. [IEEE 802.1AS (gPTP)](#621-ieee-8021as---zaman-senkronizasyonu-gptp)
69. [IEEE 802.1Qbv (TAS)](#622-ieee-8021qbv---time-aware-shaper-tas)
70. [IEEE 802.1Qav (CBS)](#623-ieee-8021qav---credit-based-shaper-cbs)
71. [IEEE 802.1CB (FRER)](#624-ieee-8021cb---frame-replication-and-elimination-for-reliability-frer)
72. [IEEE 802.1Qci (PSFP)](#625-ieee-8021qci---per-stream-filtering-and-policing-psfp)
73. [IEEE 802.1Qbu (Frame Preemption)](#626-ieee-8021qbu--8023br---frame-preemption)

### BÖLÜM XIV: QoS VE MULTIMEDIA
74. [QoS Gereksinimleri](#65-qos-gereksinimleri)
75. [IntServ ve DiffServ](#67-intserv-ve-diffserv)
76. [Traffic Shaping ve Policing](#68-traffic-shaping-ve-policing)
77. [VoIP ve Video Streaming](#69-voip-ve-video-streaming)

### BÖLÜM XV: PAKET AKIŞ SENARYOLARI
78. [End-to-End Paket Yolculuğu](#70-end-to-end-paket-yolculuğu)

### BÖLÜM XVI: INET PRATİK
79. [Modül Tipleri ve Konfigürasyon](#20-modül-tipleri-ve-konfigürasyon)
80. [Signal ve İstatistik Mekanizması](#21-signal-ve-istatistik-mekanizması)
81. [Örnek Simülasyonlar](#27-yararlı-kaynaklar)

---


## 1. INET Framework Nedir?

INET Framework, **OMNeT++ simülasyon ortamı** için geliştirilmiş açık kaynaklı bir ağ simülasyon kütüphanesidir. İnternet protokollerini ve çeşitli ağ teknolojilerini simüle etmek için kullanılır.

### 1.1 INET'in Amacı

INET, ağ araştırmacıları ve mühendisleri için şu imkanları sunar:

| Kullanım Alanı | Açıklama | Örnek |
|----------------|----------|-------|
| **Protokol Geliştirme** | Yeni protokolleri test etme | Yeni congestion control algoritması |
| **Performans Analizi** | Ağ performansını ölçme | Delay, throughput, packet loss |
| **Ağ Tasarımı** | Topoloji ve konfigürasyon optimizasyonu | Kurumsal ağ planlaması |
| **Eğitim** | Ağ kavramlarını öğrenme | Protokol davranışlarını görselleştirme |

### 1.2 Temel Özellikler

| Özellik | Açıklama | INET'te Karşılığı |
|---------|----------|-------------------|
| **Modüler Yapı** | Her protokol ayrı modül | `src/inet/` altındaki klasörler |
| **Katmanlı Mimari** | OSI modeline benzer yapı | Application → Transport → Network → Link → Physical |
| **Genişletilebilirlik** | Yeni protokoller eklenebilir | C++ inheritance, NED modülleri |
| **Gerçekçi Modeller** | RFC uyumlu implementasyonlar | TCP Reno, OSPF, BGP |
| **TSN Desteği** | Deterministik Ethernet | IEEE 802.1 standartları |

### 1.3 Desteklenen Protokoller

```
INET Protokol Yığını:
═══════════════════

┌─────────────────────────────────────────────────────────────┐
│  APPLICATION LAYER                                          │
│  HTTP, FTP, Telnet, DNS, DHCP, VoIP, Video Streaming        │
├─────────────────────────────────────────────────────────────┤
│  TRANSPORT LAYER                                            │
│  TCP (Reno, NewReno, Vegas, Westwood), UDP, SCTP, RTP       │
├─────────────────────────────────────────────────────────────┤
│  NETWORK LAYER                                              │
│  IPv4, IPv6, ICMP, ARP, OSPF, BGP, RIP, MPLS                │
├─────────────────────────────────────────────────────────────┤
│  LINK LAYER                                                 │
│  Ethernet, IEEE 802.11 (WiFi), IEEE 802.1Q (VLAN)           │
│  TSN: 802.1AS, 802.1Qbv, 802.1Qav, 802.1CB, 802.1Qbu        │
├─────────────────────────────────────────────────────────────┤
│  PHYSICAL LAYER                                             │
│  Wired (Ethernet PHY), Wireless (Radio models)              │
└─────────────────────────────────────────────────────────────┘
```

### 1.4 INET ve Gerçek Dünya Karşılaştırması

| Gerçek Dünya | INET Karşılığı | Açıklama |
|--------------|----------------|----------|
| Bilgisayar | `StandardHost` | Tam protokol yığını |
| Router | `Router` | IP routing, forwarding |
| Ethernet Switch | `EthernetSwitch` | L2 switching, MAC learning |
| WiFi Access Point | `AccessPoint` | 802.11 BSS |
| Kablo | `DatarateChannel` | Delay, datarate, BER |
| TSN Switch | `TsnSwitch` | Deterministik Ethernet |

---

## 2. İnternet Nedir?

İnternet, dünya genelinde milyarlarca bilgisayar ve cihazı birbirine bağlayan devasa bir ağ altyapısıdır. Bu bölümde interneti iki farklı perspektiften inceleyeceğiz.

### 2.1 Nuts-and-Bolts (Donanım) Perspektifi

Bu bakış açısı, internetin fiziksel ve yazılımsal bileşenlerine odaklanır.

**Temel Bileşenler:**

```
İnternet Bileşenleri ve INET Karşılıkları:
══════════════════════════════════════════

┌──────────────────┬────────────────────┬──────────────────────────────┐
│   Gerçek Dünya   │    INET Modülü     │         Açıklama             │
├──────────────────┼────────────────────┼──────────────────────────────┤
│ End Systems      │ StandardHost       │ PC, sunucu, IoT cihazları    │
│ (Hosts)          │ TsnDevice          │ TSN özellikli uç cihaz       │
├──────────────────┼────────────────────┼──────────────────────────────┤
│ Routers          │ Router             │ Paketleri yönlendirir        │
├──────────────────┼────────────────────┼──────────────────────────────┤
│ Switches         │ EthernetSwitch     │ L2 anahtarlama               │
│                  │ TsnSwitch          │ Deterministik anahtarlama    │
├──────────────────┼────────────────────┼──────────────────────────────┤
│ Communication    │ DatarateChannel    │ Kablolu bağlantı             │
│ Links            │ IdealWirelessChannel │ Kablosuz bağlantı          │
├──────────────────┼────────────────────┼──────────────────────────────┤
│ Network of       │ Network (NED)      │ Topoloji tanımı              │
│ Networks         │                    │                              │
└──────────────────┴────────────────────┴──────────────────────────────┘
```

**INET'te Basit İnternet Topolojisi:**
```ned
network SimpleInternet
{
    submodules:
        client: StandardHost;    // End system (host)
        server: StandardHost;    // End system (host)
        router1: Router;         // Intermediate system
        router2: Router;         // Intermediate system
    connections:
        client.pppg++ <--> Eth100M <--> router1.pppg++;
        router1.pppg++ <--> Eth1G <--> router2.pppg++;
        router2.pppg++ <--> Eth100M <--> server.pppg++;
}
```

### 2.2 Servis Perspektifi

Bu bakış açısı, internetin uygulamalara sağladığı hizmetlere odaklanır.

**İnternet İki Ana Servis Sunar:**

| Servis Tipi | Protokol | INET Modülü | Özellikler |
|-------------|----------|-------------|------------|
| **Connection-Oriented** | TCP | `Tcp` | Güvenilir, sıralı, akış kontrolü |
| **Connectionless** | UDP | `Udp` | Hızlı, best-effort, multicast desteği |

**INET'te Uygulama-Transport Etkileşimi:**
```
                    INET Socket API
                    ════════════════
┌─────────────────────────────────────────────────────────────────┐
│                      UdpBasicApp / TcpApp                       │
│                        (Application)                            │
└─────────────────────────┬───────────────────────────────────────┘
                          │ Socket API (send, receive, connect)
                          ▼
┌─────────────────────────────────────────────────────────────────┐
│                     Udp / Tcp Module                            │
│                      (Transport Layer)                          │
│  Sağlanan Servisler:                                            │
│  • Multiplexing (port numaraları)                               │
│  • Segmentation (TCP)                                           │
│  • Reliable delivery (TCP)                                      │
│  • Flow control (TCP)                                           │
│  • Congestion control (TCP)                                     │
└─────────────────────────────────────────────────────────────────┘
```

---

## 3. Protokol Kavramı

### 3.1 Protokol Nedir?

Protokol, iki veya daha fazla iletişim kuran varlık arasındaki mesaj formatını ve mesaj alışveriş kurallarını tanımlayan bir standarttır.

**Protokolün Temel Unsurları:**
1. **Sözdizimi (Syntax)**: Mesaj formatı, alan boyutları
2. **Anlambilim (Semantics)**: Her alanın anlamı
3. **Zamanlama (Timing)**: Mesajların ne zaman gönderileceği

### 3.2 Protokol Örneği: TCP Three-Way Handshake

```
TCP Bağlantı Kurulumu (INET'te TcpConnection modülü):
═══════════════════════════════════════════════════

    Client (TcpApp)                              Server (TcpApp)
         │                                            │
         │──────────── SYN (seq=x) ──────────────────▶│
         │           "Bağlantı kurmak istiyorum"       │
         │                                            │
         │◀─────── SYN-ACK (seq=y, ack=x+1) ─────────│
         │           "Tamam, ben de hazırım"          │
         │                                            │
         │──────────── ACK (ack=y+1) ─────────────────▶│
         │           "Bağlantı kuruldu"               │
         │                                            │
         │◀════════ Veri transferi başlar ═══════════▶│
```

**INET'te TCP Bağlantısı:**
```cpp
// INET TcpConnection sınıfından
void TcpConnection::process_RCV_SEGMENT(TcpHeader *tcpHeader) {
    switch (fsm.getState()) {
        case TCP_S_LISTEN:
            // SYN alındı, SYN-ACK gönder
            if (tcpHeader->getSynBit()) {
                sendSynAck();
                fsm.setState(TCP_S_SYN_RCVD);
            }
            break;
        // ...diğer durumlar
    }
}
```

### 3.3 Protokol Standartları ve RFC'ler

| Protokol | RFC | INET Dosyası |
|----------|-----|--------------|
| TCP | RFC 793 | `src/inet/transportlayer/tcp/` |
| UDP | RFC 768 | `src/inet/transportlayer/udp/` |
| IPv4 | RFC 791 | `src/inet/networklayer/ipv4/` |
| ICMP | RFC 792 | `src/inet/networklayer/ipv4/Icmp.cc` |
| ARP | RFC 826 | `src/inet/networklayer/arp/` |
| OSPF | RFC 2328 | `src/inet/routing/ospfv2/` |
| BGP | RFC 4271 | `src/inet/routing/bgpv4/` |

---

## 4. Ağ Kenarı (Network Edge)

Ağ kenarı, son kullanıcı cihazlarını (host'ları) ve onların ağa erişim yöntemlerini kapsar.

### 4.1 End Systems (Host'lar)

Host'lar, ağ uygulamalarını çalıştıran cihazlardır.

**INET Host Modülleri:**

| Modül | Kullanım | Özellikler |
|-------|----------|------------|
| `StandardHost` | Genel amaçlı host | Tam protokol yığını |
| `WirelessHost` | Kablosuz cihaz | 802.11 desteği |
| `TsnDevice` | TSN end station | Deterministik iletişim |
| `AdhocHost` | Ad-hoc ağlar | Routing desteği |

**StandardHost İç Yapısı:**
```
┌─────────────────────────────────────────────────────────────────┐
│                        StandardHost                             │
├─────────────────────────────────────────────────────────────────┤
│   ┌─────────────┐                                               │
│   │  app[0..n]  │ ← UdpBasicApp, TcpApp, PingApp                │
│   └──────┬──────┘                                               │
│          │                                                      │
│   ┌──────▼──────┐                                               │
│   │   udp/tcp   │ ← Transport layer                             │
│   └──────┬──────┘                                               │
│          │                                                      │
│   ┌──────▼──────┐                                               │
│   │   ipv4/ipv6 │ ← Network layer (routing table dahil)         │
│   └──────┬──────┘                                               │
│          │                                                      │
│   ┌──────▼──────┐                                               │
│   │  eth[0..n]  │ ← Ethernet interfaces                         │
│   └─────────────┘                                               │
└─────────────────────────────────────────────────────────────────┘
```

### 4.2 Access Networks (Erişim Ağları)

Erişim ağı, end system'leri ilk router'a (edge router) bağlayan ağdır.

**INET'te Desteklenen Erişim Teknolojileri:**

| Teknoloji | INET Desteği | Modül/Klasör |
|-----------|--------------|--------------|
| Ethernet (LAN) | ✅ Tam | `linklayer/ethernet/` |
| WiFi (WLAN) | ✅ Tam | `linklayer/ieee80211/` |
| Point-to-Point | ✅ Tam | `linklayer/ppp/` |
| DSL | ⚠️ Kısmi | Channel parametreleri ile |
| Cellular (LTE) | ⚠️ Kısmi | Simu5G eklentisi |

### 4.3 Physical Media (Fiziksel Ortam)

**INET'te Fiziksel Ortam Modelleme:**

```ini
# Kablolu Bağlantı (Ethernet)
**.channel.datarate = 100Mbps    # Bant genişliği
**.channel.delay = 10us          # Propagation delay
**.channel.ber = 0               # Bit Error Rate

# Kablosuz Bağlantı (802.11)
**.radio.transmitter.power = 20mW
**.radio.receiver.sensitivity = -85dBm
**.radioMedium.pathLoss.typename = "FreeSpacePathLoss"
```

**Fiziksel Ortam Türleri ve INET Karşılıkları:**

| Ortam | INET Modeli | Parametreler |
|-------|-------------|--------------|
| Twisted Pair (Cat5/6) | `DatarateChannel` | 100Mbps - 10Gbps |
| Fiber Optik | `DatarateChannel` | Düşük delay, yüksek bw |
| Coaxial | `DatarateChannel` | Eski teknoloji |
| Radio (WiFi) | `Ieee80211Radio` | 2.4/5 GHz bands |
| Radio (Cellular) | `UnitDiskRadio` | Basitleştirilmiş model |

---

## 5. Ağ Çekirdeği (Network Core)

Ağ çekirdeği, paketleri kaynak host'tan hedef host'a ileten router'lar ve linklerden oluşan ağ mesh'idir.

### 5.1 Packet Switching (Paket Anahtarlama)

Modern internet, **packet switching** prensibiyle çalışır.

**Store-and-Forward Mekanizması:**

```
Store-and-Forward İletim:
═════════════════════════

Source                Router                 Destination
  │                     │                         │
  │   ┌──────────┐      │                         │
  │   │ Packet   │────▶│ 1. Paketi al (store)    │
  │   └──────────┘      │                         │
  │                     │ 2. Hata kontrolü        │
  │                     │ 3. Routing kararı       │
  │                     │ 4. İlet (forward)       │
  │                     │   ┌──────────┐          │
  │                     │───│ Packet   │────────▶│
  │                     │   └──────────┘          │
```

**INET'te Packet Switching:**

INET'te tüm router'lar store-and-forward prensibiyle çalışır:

```cpp
// Ipv4 modülünde routing kararı
void Ipv4::routePacket(Packet *packet) {
    const auto& ipv4Header = packet->peekAtFront<Ipv4Header>();
    Ipv4Address destAddr = ipv4Header->getDestAddress();
    
    // Routing table lookup
    const Ipv4Route *route = rt->findBestMatchingRoute(destAddr);
    
    if (route != nullptr) {
        // Forward to next hop
        sendToNetworkInterface(packet, route->getInterface(), route->getGateway());
    } else {
        // Drop packet, send ICMP unreachable
        sendIcmpError(packet, ICMP_DESTINATION_UNREACHABLE);
    }
}
```

**TSN'de Packet Switching İyileştirmeleri:**

TSN, geleneksel packet switching'e deterministik özellikler ekler:

| Özellik | Geleneksel | TSN |
|---------|------------|-----|
| Kuyruk Yönetimi | FIFO | Priority + TAS |
| Gecikme | Değişken | Sınırlı (bounded) |
| Jitter | Yüksek | Düşük |
| Güvenilirlik | Best-effort | FRER ile yedekli |

### 5.2 Circuit Switching vs Packet Switching

**Karşılaştırma:**

| Özellik | Circuit Switching | Packet Switching |
|---------|-------------------|------------------|
| Bağlantı | Dedicated path | Shared links |
| Kaynak Kullanımı | Sabit, ayrılmış | Dinamik, paylaşımlı |
| Gecikme | Sabit | Değişken |
| Örnek | Eski telefon ağları | İnternet |
| INET Analojisi | TAS (zaman dilimleri) | Standard routing |

**TSN TAS - Circuit Switching Benzerliği:**

TAS (Time-Aware Shaper), packet switching ağında circuit switching benzeri garantiler sağlar:

```
TAS Time Slots (Circuit Switching Analojisi):
═════════════════════════════════════════════

Zaman  ──────────────────────────────────────────────▶

       │ Slot 0  │ Slot 1  │ Slot 0  │ Slot 1  │
       ├─────────┼─────────┼─────────┼─────────┤
       │ TC7     │ TC0     │ TC7     │ TC0     │
       │(Control)│ (BE)    │(Control)│ (BE)    │
       └─────────┴─────────┴─────────┴─────────┘

TC7: Kontrol trafiği - Garantili zaman dilimi (circuit-like)
TC0: Best-effort   - Kalan zaman (packet switching)
```

### 5.3 A Network of Networks

İnternet, birbiriyle bağlantılı ağların (ISP'lerin) hiyerarşik yapısıdır.

**INET'te Multi-AS Topoloji:**

```ned
network InternetTopology
{
    submodules:
        // ISP 1 (AS 100)
        isp1Router1: Router { @display("i=abstract/router"); }
        isp1Router2: Router;
        
        // ISP 2 (AS 200)
        isp2Router1: Router;
        isp2Router2: Router;
        
        // IXP (Internet Exchange Point)
        ixpSwitch: EthernetSwitch;
        
    connections:
        // Intra-AS links (OSPF)
        isp1Router1.pppg++ <--> Eth1G <--> isp1Router2.pppg++;
        isp2Router1.pppg++ <--> Eth1G <--> isp2Router2.pppg++;
        
        // Inter-AS links (BGP) via IXP
        isp1Router2.ethg++ <--> Eth10G <--> ixpSwitch.ethg++;
        isp2Router1.ethg++ <--> Eth10G <--> ixpSwitch.ethg++;
}
```

---

## 6. Delay, Loss ve Throughput

Bu bölümde paket anahtarlamalı ağlardaki performans metriklerini ve INET'te nasıl ölçüldüklerini inceleyeceğiz.

### 6.1 Delay Türleri

Toplam uçtan uca gecikme dört bileşenden oluşur:

```
d_total = d_proc + d_queue + d_trans + d_prop
```

**Delay Bileşenleri:**

| Delay | Formül | INET'te | Açıklama |
|-------|--------|---------|----------|
| **Processing (d_proc)** | Sabit | `ProcessingDelayLayer` | Header inceleme, routing kararı |
| **Queueing (d_queue)** | Değişken | `PacketQueue` | Kuyrukta bekleme |
| **Transmission (d_trans)** | L/R | `channel.datarate` | Paketi kabloya koyma |
| **Propagation (d_prop)** | d/s | `channel.delay` | Sinyalin fiziksel ilerlemesi |

**INET'te Delay Hesaplama:**

```
Örnek Senaryo:
═════════════
Paket boyutu (L): 1500 bytes = 12000 bits
Link hızı (R): 100 Mbps
Link uzunluğu (d): 2000 km
Propagation speed (s): 2×10⁸ m/s
Processing delay: 1 µs

Hesaplamalar:
  d_trans = L/R = 12000 / 100×10⁶ = 120 µs
  d_prop  = d/s = 2×10⁶ / 2×10⁸ = 10 ms
  d_proc  = 1 µs
  d_queue = değişken (trafik yoğunluğuna bağlı)
```

**INET Konfigürasyonu:**
```ini
# Channel parametreleri
**.channel.datarate = 100Mbps     # Transmission delay hesabı için
**.channel.delay = 10ms          # Propagation delay

# Processing delay
*.router.processingDelayLayer.delay = 1us
```

### 6.2 Queueing Delay ve Packet Loss

Queueing delay, ağ trafiği yoğunluğuna (traffic intensity) bağlıdır:

```
Traffic Intensity = La/R

L: Ortalama paket boyutu (bits)
a: Paket varış hızı (packets/second)
R: Link kapasitesi (bps)
```

**Traffic Intensity ve Delay İlişkisi:**

```
Traffic Intensity vs Queueing Delay:
════════════════════════════════════

  Delay
    │
    │                      ╱
    │                     ╱
    │                    ╱
    │                   ╱
    │                  ╱
    │                ╱
    │            ╱──
    │        ╱──
    │    ╱──
    │╱──
    └──────────────────────── Traffic Intensity
    0                    1

    La/R < 1  →  Düşük delay
    La/R → 1  →  Delay sonsuza yaklaşır
    La/R > 1  →  Kuyruk taşması, PAKET KAYBI
```

**INET'te Kuyruk Yönetimi:**

```ini
# Kuyruk kapasitesi ayarı
*.router.ppp[*].queue.typename = "DropTailQueue"
*.router.ppp[*].queue.packetCapacity = 100  # Max 100 paket

# Kuyruk dolunca ne olur?
# - DropTail: Son gelen paket düşürülür
# - RED: Random Early Detection
```

**TSN'de Kuyruk Yönetimi:**

TSN, trafik sınıflarına göre ayrı kuyruklar kullanır:

```
TSN Queue Architecture:
═══════════════════════

Incoming    ┌────────────┐
Packets ───▶│ Classifier │ (PCP bazlı)
            └─────┬──────┘
       ┌──────────┼──────────┐
       ▼          ▼          ▼
    ┌─────┐   ┌─────┐    ┌─────┐
    │ Q7  │   │ Q4  │    │ Q0  │  Priority Queues
    │(BE) │   │(AV) │    │(Ctrl)│
    └──┬──┘   └──┬──┘    └──┬──┘
       │         │          │
    ┌──▼──┐   ┌──▼──┐    ┌──▼──┐
    │Gate7│   │Gate4│    │Gate0│  TAS Gates
    └──┬──┘   └──┬──┘    └──┬──┘
       └────┬────┴────┬─────┘
            │         │
         Scheduler → PHY
```

### 6.3 End-to-End Delay

Uçtan uca gecikme, tüm hop'ların gecikmelerinin toplamıdır:

```
d_end-to-end = Σ(d_proc + d_queue + d_trans + d_prop)
               i=1 to N
```

**INET'te End-to-End Delay Ölçümü:**

```ned
// NED dosyasında istatistik tanımı
simple MyApp {
    @statistic[endToEndDelay](
        source=messageAge(packetReceived);
        record=mean,max,histogram,vector;
        unit=s
    );
}
```

```ini
# omnetpp.ini'de kayıt
**.scalar-recording = true
**.vector-recording = true
```

### 6.4 Throughput

Throughput, birim zamanda başarıyla iletilen veri miktarıdır:

```
Instantaneous Throughput = (Received bits) / (Time interval)
Average Throughput = (Total bits received) / (Total time)
```

**Bottleneck Link:**

```
End-to-End Throughput:
═════════════════════

Source ───[10 Mbps]───R1───[1 Mbps]───R2───[10 Mbps]───Dest
                           ▲
                   Bottleneck Link
                   
End-to-end throughput = min(all link rates) = 1 Mbps
```

**INET'te Throughput İstatistikleri:**

```cpp
// Paket alımında throughput hesaplama
void UdpSink::processPacket(Packet *packet) {
    totalBitsReceived += packet->getBitLength();
    simtime_t now = simTime();
    
    double throughput = totalBitsReceived / (now - startTime);
    emit(throughputSignal, throughput);
}
```

---

## 7. Protokol Katmanları ve Servis Modelleri

### 7.1 Neden Katmanlı Mimari?

Ağ protokollerinin karmaşıklığını yönetmek için **katmanlı mimari** kullanılır. Her katman:
- Alt katmanın servislerini kullanır
- Üst katmana servis sunar
- İç detaylarını gizler (abstraction)

### 7.2 OSI vs TCP/IP Modeli

```
OSI 7-Katman Modeli    TCP/IP Modeli         INET Implementasyonu
═══════════════════    ═════════════         ════════════════════

┌──────────────────┐   ┌──────────────────┐  ┌───────────────────────┐
│  7. Application  │   │                  │  │ applications/         │
├──────────────────┤   │                  │  │ - httptools/          │
│  6. Presentation │   │   Application    │  │ - voip/               │
├──────────────────┤   │                  │  │ - udpapp/             │
│  5. Session      │   │                  │  │ - tcpapp/             │
├──────────────────┤   └────────┬─────────┘  └───────────┬───────────┘
│  4. Transport    │   ┌────────▼─────────┐  ┌───────────▼───────────┐
│                  │   │    Transport     │  │ transportlayer/       │
│                  │   │  (TCP, UDP)      │  │ - tcp/, udp/, sctp/   │
├──────────────────┤   └────────┬─────────┘  └───────────┬───────────┘
│  3. Network      │   ┌────────▼─────────┐  ┌───────────▼───────────┐
│                  │   │    Internet      │  │ networklayer/         │
│                  │   │  (IP, ICMP)      │  │ - ipv4/, ipv6/, arp/  │
├──────────────────┤   └────────┬─────────┘  └───────────┬───────────┘
│  2. Data Link    │   ┌────────▼─────────┐  ┌───────────▼───────────┐
├──────────────────┤   │  Network Access  │  │ linklayer/            │
│  1. Physical     │   │ (Ethernet, WiFi) │  │ - ethernet/, ieee80211│
└──────────────────┘   └──────────────────┘  │ physicallayer/        │
                                             └───────────────────────┘
```

### 7.3 Katman Detayları ve INET Modülleri

| Katman | Protokol Örnekleri | INET Modülü | Sorumluluğu |
|--------|-------------------|-------------|-------------|
| **Application** | HTTP, DNS, SMTP | `UdpBasicApp`, `TcpApp` | Kullanıcı uygulamaları |
| **Transport** | TCP, UDP, SCTP | `Tcp`, `Udp`, `Sctp` | Uçtan uca iletim |
| **Network** | IP, ICMP, OSPF, BGP | `Ipv4`, `Icmp`, `Ospf` | Routing, addressing |
| **Link** | Ethernet, WiFi | `EthernetMac`, `Ieee80211Mac` | Hop-by-hop iletim |
| **Physical** | Kablo, Radyo | `EthernetPhy`, `Radio` | Bit iletimi |

### 7.4 Encapsulation (Kapsülleme)

Her katman kendi header'ını ekler:

```
Encapsulation Süreci:
═════════════════════

APPLICATION LAYER:
    ┌────────────────────────────────────┐
    │              DATA                  │
    └────────────────────────────────────┘

TRANSPORT LAYER:
    ┌────────┬───────────────────────────┐
    │TCP/UDP │           DATA            │
    │ Header │                           │
    └────────┴───────────────────────────┘
         Segment (TCP) / Datagram (UDP)

NETWORK LAYER:
    ┌────────┬────────┬──────────────────┐
    │   IP   │TCP/UDP │      DATA        │
    │ Header │ Header │                  │
    └────────┴────────┴──────────────────┘
                  IP Datagram

LINK LAYER:
    ┌─────┬────────┬────────┬──────┬─────┐
    │ Eth │   IP   │TCP/UDP │ DATA │ FCS │
    │ Hdr │ Header │ Header │      │     │
    └─────┴────────┴────────┴──────┴─────┘
                Ethernet Frame
```

**INET'te Encapsulation:**

```cpp
// Uygulama katmanında paket oluşturma
auto payload = makeShared<BytesChunk>(data, dataLen);
Packet *packet = new Packet("appData");
packet->insertAtBack(payload);

// Transport katmanında header ekleme
auto udpHeader = makeShared<UdpHeader>();
udpHeader->setSourcePort(srcPort);
udpHeader->setDestinationPort(destPort);
packet->insertAtFront(udpHeader);

// Network katmanında header ekleme
auto ipHeader = makeShared<Ipv4Header>();
ipHeader->setSrcAddress(srcAddr);
ipHeader->setDestAddress(destAddr);
packet->insertAtFront(ipHeader);

// Link katmanında header ekleme
auto ethHeader = makeShared<EthernetMacHeader>();
ethHeader->setSrc(srcMac);
ethHeader->setDest(destMac);
packet->insertAtFront(ethHeader);
```

### 7.5 TSN'de Ek Katmanlar

TSN, standart Ethernet'e ek katmanlar ekler:

```
TSN Genişletilmiş Katman Yapısı:
════════════════════════════════

┌───────────────────────────────────────┐
│          Application Layer            │
├───────────────────────────────────────┤
│          Transport Layer              │
├───────────────────────────────────────┤
│          Network Layer (IP)           │
├───────────────────────────────────────┤
│     ╔═══════════════════════════╗     │
│     ║    BRIDGING LAYER (TSN)   ║     │  ← TSN Eklentisi
│     ║ • Stream Identifier       ║     │
│     ║ • Stream Relay (FRER)     ║     │
│     ║ • Stream Filter (PSFP)    ║     │
│     ║ • Stream Coder            ║     │
│     ╚═══════════════════════════╝     │
├───────────────────────────────────────┤
│     ╔═══════════════════════════╗     │
│     ║   PROTOCOL LAYERS (Tags)  ║     │  ← TSN Tags
│     ║ • R-TAG (802.1CB)         ║     │
│     ║ • C-TAG (802.1Q VLAN)     ║     │
│     ╚═══════════════════════════╝     │
├───────────────────────────────────────┤
│          MAC Layer                    │
│  • TAS (802.1Qbv) - Time-Aware Shaper │
│  • CBS (802.1Qav) - Credit-Based      │
│  • Preemption (802.1Qbu)              │
├───────────────────────────────────────┤
│          Physical Layer               │
└───────────────────────────────────────┘
```

---

## 8. INET Dizin Yapısı

```
inet-4.5.4/
├── src/inet/                    # Ana kaynak kodları
│   ├── applications/            # Uygulama katmanı
│   │   ├── httptools/           # HTTP client/server
│   │   ├── udpapp/              # UDP uygulamaları
│   │   ├── tcpapp/              # TCP uygulamaları
│   │   ├── voip/                # VoIP simülasyonu
│   │   └── pingapp/             # ICMP ping
│   │
│   ├── transportlayer/          # Taşıma katmanı
│   │   ├── tcp/                 # TCP implementasyonu
│   │   ├── udp/                 # UDP implementasyonu
│   │   ├── sctp/                # SCTP
│   │   └── rtp/                 # Real-time Transport
│   │
│   ├── networklayer/            # Ağ katmanı
│   │   ├── ipv4/                # IPv4
│   │   ├── ipv6/                # IPv6
│   │   ├── arp/                 # Address Resolution
│   │   ├── icmpv6/              # ICMPv6
│   │   ├── diffserv/            # QoS - DiffServ
│   │   └── mpls/                # MPLS label switching
│   │
│   ├── routing/                 # Routing protokolleri
│   │   ├── ospfv2/              # OSPF version 2
│   │   ├── bgpv4/               # BGP version 4
│   │   ├── rip/                 # RIP
│   │   └── aodv/                # Ad-hoc routing
│   │
│   ├── linklayer/               # Veri bağlantı katmanı
│   │   ├── ethernet/            # Ethernet MAC/PHY
│   │   ├── ieee80211/           # WiFi
│   │   ├── ieee8021q/           # VLAN, TAS, CBS
│   │   ├── ieee8021r/           # FRER
│   │   ├── ieee8021as/          # gPTP zaman senkronizasyonu
│   │   └── ppp/                 # Point-to-Point
│   │
│   ├── physicallayer/           # Fiziksel katman
│   │   ├── wired/               # Kablolu ortam
│   │   └── wireless/            # Kablosuz ortam
│   │
│   ├── node/                    # Hazır node tipleri
│   │   ├── inet/                # StandardHost, Router
│   │   ├── ethernet/            # EthernetSwitch
│   │   └── tsn/                 # TsnDevice, TsnSwitch
│   │
│   ├── queueing/                # Kuyruk yönetimi
│   │   ├── queue/               # Queue modülleri
│   │   ├── gate/                # PeriodicGate (TAS)
│   │   ├── scheduler/           # Priority Scheduler
│   │   └── meter/               # Token bucket
│   │
│   └── protocolelement/         # TSN protokol elemanları
│       ├── redundancy/          # FRER splitter/merger
│       └── shaper/              # Traffic shapers
│
├── examples/                    # Temel örnekler
├── showcases/                   # Gelişmiş demo'lar
│   └── tsn/                     # TSN showcase'leri
├── tutorials/                   # Eğitim materyalleri
└── doc/                         # Dokümantasyon
```

---

## 9. Transmission Media

Bu bölümde fiziksel katmanın temellerini ve INET'teki karşılıklarını inceleyeceğiz.

### 9.1 Guided Transmission Media (Kablolu Ortam)

Kablolu iletim ortamları, fiziksel bir yol boyunca elektrik veya ışık sinyalleri taşır.

**Temel Kablo Türleri:**

| Ortam Tipi | Bant Genişliği | Mesafe | INET Karşılığı |
|------------|----------------|--------|----------------|
| **Twisted Pair (Cat5e)** | 1 Gbps | 100m | `DatarateChannel {datarate=1Gbps}` |
| **Twisted Pair (Cat6a)** | 10 Gbps | 100m | `DatarateChannel {datarate=10Gbps}` |
| **Coaxial Cable** | 1 Gbps | 500m | Eski teknoloji, sınırlı kullanım |
| **Fiber Optic (SMF)** | 100+ Gbps | 40km+ | `DatarateChannel {delay=...}` |
| **Fiber Optic (MMF)** | 10 Gbps | 300m | Datacenter bağlantıları |

**Twisted Pair Kategorileri:**

```
Twisted Pair Kategorileri ve Ethernet Standartları:
═══════════════════════════════════════════════════

Cat 5e  ────────────────────  1000BASE-T (Gigabit Ethernet)
         100 MHz, 4 çift 

Cat 6   ────────────────────  1000BASE-T, 10GBASE-T (55m)
         250 MHz, daha sıkı büküm

Cat 6a  ────────────────────  10GBASE-T (100m)
         500 MHz, ekranlama iyileştirilmiş

Cat 7   ────────────────────  10GBASE-T, korumalı
         600 MHz, her çift ekranlı (S/FTP)

Cat 8   ────────────────────  25/40GBASE-T (30m)
         2000 MHz, datacenter kullanımı
```

**Fiber Optik Çeşitleri:**

```
Fiber Optik Karşılaştırması:
════════════════════════════

Single-Mode Fiber (SMF):                Multi-Mode Fiber (MMF):
┌───────────────────────────┐           ┌───────────────────────────┐
│  Core: 8-10 µm            │           │  Core: 50-62.5 µm         │
│  ═══━━━━━━━━━━━━━━━━━━━══ │           │  ≋≋≋≋≋≋≋≋≋≋≋≋≋≋≋≋≋≋≋≋≋≋≋ │
│  Tek ışık modu             │           │  Çoklu ışık modları       │
│  Uzun mesafe (40km+)       │           │  Kısa mesafe (300m)       │
│  Yüksek maliyet            │           │  Düşük maliyet            │
│  Datacenter arası          │           │  Datacenter içi           │
└───────────────────────────┘           └───────────────────────────┘
```

**INET'te Kablolu Ortam Modelleme:**

```ini
# Gigabit Ethernet bağlantısı
*.host1.eth[0].queue.typename = "DropTailQueue"
*.host1.eth[0].queue.packetCapacity = 1000

# Kanal parametreleri
**.channel.typename = "DatarateChannel"
**.channel.datarate = 1Gbps
**.channel.delay = 100us        # 20km fiber (~5µs/km)
**.channel.ber = 1e-12          # Bit Error Rate
```

### 9.2 Wireless Transmission (Kablosuz İletim)

Kablosuz iletim, elektromanyetik dalgalar aracılığıyla gerçekleşir.

**Elektromanyetik Spektrum:**

```
Kablosuz İletim Spektrumu:
═══════════════════════════════════════════════════════════════════

Frekans:   3kHz        300MHz        3GHz         30GHz        300GHz
            │           │             │             │             │
            ├───────────┼─────────────┼─────────────┼─────────────┤
            │    Radio  │     UHF     │  Microwave  │  Millimeter │
            │           │             │             │    Wave     │
            └───────────┴─────────────┴─────────────┴─────────────┘
                 │           │             │             │
                 │           │             │             │
           AM/FM Radio    WiFi 2.4    WiFi 5/6       5G mmWave
           (Broadcast)    802.11n     802.11ac/ax   (28/39 GHz)
                          Bluetooth   Cellular 4G
                          Zigbee      (2.5-3.7 GHz)

Dalga boyu:  100m         1m          10cm          1cm           1mm
```

**Kablosuz İletim Zorlukları:**

| Zorluk | Açıklama | INET Modeli |
|--------|----------|-------------|
| **Path Loss** | Mesafe ile sinyal zayıflaması | `FreeSpacePathLoss`, `TwoRayGroundReflection` |
| **Fading** | Çoklu yol etkisi | `RayleighFading`, `RicianFading` |
| **Interference** | Diğer kaynaklardan karışım | `radioMedium.backgroundNoise` |
| **Shadowing** | Engeller nedeniyle gölgeleme | `LogNormalShadowing` |
| **Multipath** | Yansıma nedeniyle çoklu yol | Fading modelleri ile |

**Path Loss Formülü (Free Space):**

```
Free Space Path Loss (Friis):
══════════════════════════════

         Pt × Gt × Gr × λ²
Pr = ──────────────────────
           (4π)² × d² × L

Pr: Alınan güç (W)
Pt: İletilen güç (W)
Gt, Gr: Anten kazançları
λ: Dalga boyu (m) = c/f
d: Mesafe (m)
L: Sistem kayıpları

dB cinsinden:
FSPL(dB) = 20×log₁₀(d) + 20×log₁₀(f) - 147.55
```

**INET'te Kablosuz Ortam:**

```ini
# Radio Medium konfigürasyonu
*.radioMedium.typename = "Ieee80211ScalarRadioMedium"
*.radioMedium.pathLoss.typename = "FreeSpacePathLoss"
*.radioMedium.backgroundNoise.power = -110dBm

# Verici (Transmitter) ayarları
*.host*.wlan[*].radio.transmitter.power = 20mW       # ~13 dBm
*.host*.wlan[*].radio.transmitter.centerFrequency = 2.4GHz
*.host*.wlan[*].radio.transmitter.bandwidth = 20MHz

# Alıcı (Receiver) ayarları
*.host*.wlan[*].radio.receiver.sensitivity = -85dBm
*.host*.wlan[*].radio.receiver.energyDetection = -90dBm
*.host*.wlan[*].radio.receiver.snirThreshold = 4dB
```

---

## 10. Wireless Transmission Fundamentals

### 10.1 Sinyal Propagasyon Modelleri

**INET'te Desteklenen Path Loss Modelleri:**

| Model | Kullanım Alanı | INET typename |
|-------|---------------|---------------|
| **Free Space** | İdeal açık alan | `FreeSpacePathLoss` |
| **Two-Ray Ground** | Zemin yansıması | `TwoRayGroundReflection` |
| **Log-Distance** | Genel amaçlı | `LogDistancePathLoss` |
| **Rician** | LOS + multipath | `RicianFading` |
| **Rayleigh** | NLOS ortamlar | `RayleighFading` |

**Log-Distance Path Loss:**

```
PL(d) = PL(d₀) + 10 × n × log₁₀(d/d₀) + Xσ

PL(d₀): Referans mesafede path loss (genellikle d₀=1m)
n: Path loss exponent
   - Free space: n = 2
   - Urban: n = 2.7-3.5
   - Indoor (obstructed): n = 4-6
Xσ: Shadowing (log-normal, σ = 4-12 dB)
```

### 10.2 Link Budget Hesaplama

```
Link Budget Örneği (WiFi 2.4 GHz, 100m):
═══════════════════════════════════════

Verici:
  Pt = 20 dBm (100mW)
  Gt = 2 dBi (anten kazancı)
  ───────────────────
  EIRP = 22 dBm

Path Loss (Free Space, 2.4 GHz, 100m):
  FSPL = 20×log₁₀(100) + 20×log₁₀(2.4×10⁹) - 147.55
       = 40 + 187.6 - 147.55
       = 80 dB

Alıcı:
  Gr = 2 dBi
  ───────────────────
  Pr = EIRP - FSPL + Gr
     = 22 - 80 + 2
     = -56 dBm

Margin (Sensitivity = -85 dBm):
  Fade Margin = -56 - (-85) = 29 dB ✅
```

---

## 11. Digital Modulation ve Encoding

### 11.1 Temel Modülasyon Teknikleri

Dijital verinin analog sinyale dönüştürülmesi:

```
Modülasyon Türleri:
═══════════════════

BPSK (Binary Phase Shift Keying):
  • 1 bit/sembol
  • En robust (gürültüye dayanıklı)
  • Düşük data rate

QPSK (Quadrature PSK):
  • 2 bit/sembol
  • Orta SNR gereksinimi
  
16-QAM:
  • 4 bit/sembol
  • Yüksek data rate
  
64-QAM:
  • 6 bit/sembol
  • En yüksek data rate
  • Yüksek SNR gereksinimi
```

**Constellation Diyagramları:**

```
BPSK:               QPSK:               16-QAM:
                                        
     •  ─  •             •     •        • • • •
    180°   0°           / \   /         • • • •
                       •   •            • • • •
                        /│\             • • • •   
                       • • •            
                       
1 bit/symbol        2 bit/symbol       4 bit/symbol
```

### 11.2 Adaptive Modulation

WiFi ve hücresel ağlarda, kanal durumuna göre modülasyon seçilir:

| MCS Index | Modulation | Coding Rate | Data Rate (20 MHz) |
|-----------|------------|-------------|-------------------|
| 0 | BPSK | 1/2 | 6.5 Mbps |
| 3 | 16-QAM | 1/2 | 26 Mbps |
| 5 | 64-QAM | 2/3 | 52 Mbps |
| 7 | 64-QAM | 5/6 | 65 Mbps |
| 9 | 256-QAM | 5/6 | 86.7 Mbps |

**INET'te Modülasyon:**

```ini
# WiFi modülasyon ayarları
*.host*.wlan[*].radio.transmitter.modulation = "OFDM"
*.host*.wlan[*].radio.transmitter.bitrate = 54Mbps

# Bit rate'e göre otomatik modülasyon
*.host*.wlan[*].mac.rateSelection.typename = "AarfRateSelection"
```

---

## 12. Multiplexing Teknikleri

### 12.1 Frequency Division Multiplexing (FDM)

Farklı kullanıcılara farklı frekans bantları atanır:

```
FDM Spektrumu:
═════════════════════════════════════════════════════

Frekans
  ^
  │  ┌────┐ ┌────┐ ┌────┐ ┌────┐ ┌────┐
  │  │ Ch │ │ Ch │ │ Ch │ │ Ch │ │ Ch │
  │  │ 1  │ │ 2  │ │ 3  │ │ 4  │ │ 5  │
  │  └────┘ └────┘ └────┘ └────┘ └────┘
  │  ─────────────────────────────────────►
  └────────────────────────────────────────► Frekans (Hz)
       f₁     f₂     f₃     f₄     f₅

Örnek: FM Radio, DOCSIS (Kablo TV/Internet)
```

### 12.2 Time Division Multiplexing (TDM)

Farklı kullanıcılara farklı zaman dilimleri atanır:

```
TDM Zaman Çizelgesi:
═════════════════════════════════════════════════════

        Frame 1                    Frame 2
  ┌───┬───┬───┬───┐          ┌───┬───┬───┬───┐
  │ 1 │ 2 │ 3 │ 4 │          │ 1 │ 2 │ 3 │ 4 │
  └───┴───┴───┴───┘          └───┴───┴───┴───┘
  ──────────────────────────────────────────────► Zaman

  Her slot = 1 kullanıcı
  Frame = Tüm slotların dönüşü

Örnek: GSM, T1/E1 hatları
```

**TSN TAS ile TDM Benzerliği:**

```
TAS (Time-Aware Shaper) - TSN'de TDM benzeri:
═══════════════════════════════════════════════

        Gate Control List Döngüsü
  ┌────────┬─────────┬────────┬─────────┐
  │ Gate 7 │ Gate 0  │ Gate 7 │ Gate 0  │
  │(Ctrl)  │ (BE)    │ (Ctrl) │ (BE)    │
  └────────┴─────────┴────────┴─────────┘
  │◄─125µs─▶│◄─375µs─▶│◄─125µs─▶│◄─375µs─▶│

  Kontrol trafiği: Garantili slot
  Best-effort: Kalan zaman
```

### 12.3 Wavelength Division Multiplexing (WDM)

Fiber optik için farklı dalga boyları:

```
WDM (Fiber Optik):
═══════════════════════════════════════════════

                          Fiber
    λ1 (1530 nm) ────┐      │      ┌──── λ1
    λ2 (1535 nm) ────┼──────┼──────┼──── λ2
    λ3 (1540 nm) ────┼──────┼──────┼──── λ3
    λ4 (1545 nm) ────┘      │      └──── λ4
                        Mux             Demux

DWDM: 40-80 kanal, 50 GHz aralık
CWDM: 8-16 kanal, 20 nm aralık
```

### 12.4 Code Division Multiple Access (CDMA)

Tüm kullanıcılar aynı frekansı paylaşır, farklı kodlarla ayrılır:

```
CDMA Prensibi:
═══════════════════════════════════════════════

User A data: [1]           User B data: [0]
            ×                          ×
Code A: [1 1 0 1]          Code B: [1 0 1 0]
            =                          =
Chip sequence:             Chip sequence:
[1 1 0 1]                  [0 1 0 1] (inverted)

Combined: [1 1 0 1] + [0 1 0 1] = [1 2 0 2]
                                  (summed signal)

Receiver A:   [1 2 0 2] × [1 1 0 1] = 4 → '1'
Receiver B:   [1 2 0 2] × [1 0 1 0] = 2 → '0'
```

---

## 13. Physical Layer - INET Implementasyonu

### 13.1 Shannon Kapasitesi

Kanal kapasitesinin teorik üst sınırı:

```
Shannon-Hartley Teoremi:
══════════════════════════

C = B × log₂(1 + S/N)

C: Kanal kapasitesi (bps)
B: Bant genişliği (Hz)
S/N: Sinyal-gürültü oranı (linear, not dB)

Örnek:
  B = 20 MHz (WiFi 2.4 GHz kanal)
  SNR = 20 dB = 100 (linear)
  
  C = 20×10⁶ × log₂(101)
    = 20×10⁶ × 6.66
    = 133 Mbps (teorik maksimum)
```

### 13.2 INET Physical Layer Modülleri

```
INET Physical Layer Hiyerarşisi:
════════════════════════════════

physicallayer/
├── base/                    # Temel sınıflar
│   ├── packetlevel/         # Paket seviyesi modeller
│   └── bitlevel/            # Bit seviyesi modeller
│
├── wired/                   # Kablolu PHY
│   └── ethernet/            # Ethernet PHY modeli
│       └── EthernetPhyLayer
│
├── wireless/                # Kablosuz PHY
│   ├── common/              # Ortak bileşenler
│   │   ├── Radio            # Temel radio sınıfı
│   │   └── RadioMedium      # Yayılım ortamı
│   │
│   ├── ieee80211/           # WiFi spesifik
│   │   ├── Ieee80211Radio
│   │   ├── Ieee80211RadioMedium
│   │   └── mode/            # 802.11a/b/g/n/ac/ax
│   │
│   └── unitdisk/            # Basitleştirilmiş model
│       └── UnitDiskRadio    # İdeal kapsama alanı
│
└── propagation/             # Propagasyon modelleri
    ├── FreeSpacePathLoss
    ├── TwoRayGroundReflection
    ├── LogNormalShadowing
    └── RayleighFading
```

### 13.3 INET'te Fiziksel Katman Konfigürasyonu

**Kablolu (Ethernet):**

```ini
# Ethernet PHY parametreleri
*.host.eth[*].phyLayer.typename = "EthernetPhyLayer"
*.host.eth[*].phyLayer.bitrate = 1Gbps

# Kanal özellikleri
*.host.eth[*].channel.typename = "DatarateChannel"
*.host.eth[*].channel.datarate = 1Gbps
*.host.eth[*].channel.delay = 5us        # ~1km kablo
*.host.eth[*].channel.ber = 1e-12        # Bit Error Rate
*.host.eth[*].channel.per = 0            # Packet Error Rate
```

**Kablosuz (WiFi 802.11):**

```ini
# Radio konfigürasyonu
*.host*.wlan[*].typename = "Ieee80211Interface"
*.host*.wlan[*].radio.typename = "Ieee80211ScalarRadio"

# Ortam (Medium) konfigürasyonu
*.radioMedium.typename = "Ieee80211ScalarRadioMedium"
*.radioMedium.backgroundNoise.power = -110dBm

# Propagasyon modeli
*.radioMedium.pathLoss.typename = "FreeSpacePathLoss"
# veya
*.radioMedium.pathLoss.typename = "TwoRayGroundReflection"
*.radioMedium.pathLoss.groundReflectionCoefficient = 0.2

# Verici güç ve hassasiyet
*.host*.wlan[*].radio.transmitter.power = 20mW
*.host*.wlan[*].radio.receiver.sensitivity = -85dBm
*.host*.wlan[*].radio.receiver.snirThreshold = 4dB
```

**Fiziksel Katman İstatistikleri:**

INET'te fiziksel katman performansı şu istatistiklerle izlenebilir:

```ini
# İstatistik toplama
**.scalar-recording = true
**.vector-recording = true

# Sinyal gücü
**.host*.wlan[*].radio.minSnir.result-recording-modes = all
**.host*.wlan[*].radio.packetErrorRate.result-recording-modes = all

# Bit hataları
**.channel.throughput.result-recording-modes = all
```

---

## 14. Uygulama Katmanı Protokolleri

Bu bölümde temel uygulama katmanı protokollerini ve INET implementasyonlarını inceleyeceğiz.

### 14.1 Client-Server ve P2P Mimarisi

**INET'te İki Model:**

| Model | Açıklama | INET Örneği |
|-------|----------|-------------|
| **Client-Server** | Merkezi sunucu, çok istemci | `TcpBasicClientApp` + `TcpGenericServerApp` |
| **Peer-to-Peer** | Eşler arası iletişim | Her node hem client hem server |

### 14.2 HTTP ve Web Protokolleri

**HTTP İsteği Akışı:**

```
HTTP Request/Response (INET HttpBrowser/HttpServer):
═══════════════════════════════════════════════════

    Browser (Client)                         Server
         │                                      │
         │───── GET /index.html HTTP/1.1 ──────▶│
         │      Host: www.example.com           │
         │                                      │
         │◀──── HTTP/1.1 200 OK ────────────────│
         │      Content-Type: text/html         │
         │      <html>...</html>                │
         │                                      │
```

**INET'te HTTP Konfigürasyonu:**

```ini
# HTTP Client
*.client.numApps = 1
*.client.app[0].typename = "HttpBrowser"
*.client.app[0].httpBrowserController.config = xmldoc("browse.xml")

# HTTP Server
*.server.numApps = 1
*.server.app[0].typename = "HttpServer"
*.server.app[0].hostName = "www.example.com"
*.server.app[0].port = 80
```

### 14.3 DNS (Domain Name System)

**DNS Çözümleme Süreci:**

```
DNS Resolution:
═══════════════

Client              Local DNS           Root DNS        TLD DNS         Auth DNS
  │                    │                   │               │               │
  │ www.google.com?   │                   │               │               │
  │───────────────────▶│                   │               │               │
  │                    │ .com DNS?         │               │               │
  │                    │──────────────────▶│               │               │
  │                    │◀──────────────────│               │               │
  │                    │                   │               │               │
  │                    │ google.com DNS?   │               │               │
  │                    │──────────────────────────────────▶│               │
  │                    │◀──────────────────────────────────│               │
  │                    │                   │               │               │
  │                    │ www.google.com IP?│               │               │
  │                    │────────────────────────────────────────────────▶ │
  │                    │◀────────────────────────────────────────────────│
  │                    │                   │               │               │
  │ IP: 142.250.x.x    │                   │               │               │
  │◀───────────────────│                   │               │               │
```

**DNS Record Türleri:**

| Record | Açıklama | Örnek |
|--------|----------|-------|
| **A** | IPv4 adres | `www.example.com → 93.184.216.34` |
| **AAAA** | IPv6 adres | `www.example.com → 2606:2800:220:1::` |
| **CNAME** | Alias | `www → example.com` |
| **MX** | Mail server | `example.com → mail.example.com (priority 10)` |
| **NS** | Name server | `example.com → ns1.example.com` |
| **PTR** | Reverse lookup | `34.216.184.93 → www.example.com` |
| **TXT** | Metin bilgisi | SPF, DKIM kayıtları |
| **SOA** | Zone authority | TTL, refresh, retry bilgileri |

**DNS Hiyerarşisi:**

```
DNS Hierarchy:
══════════════

              . (root)
              │
    ┌─────────┼─────────┐
    │         │         │
  .com      .org      .edu     ← TLD (Top Level Domain)
    │
    └──── google.com           ← Second Level Domain
              │
        ┌─────┼─────┐
        │     │     │
       www   mail  dns         ← Subdomains
```

**DNS Caching ve TTL:**

```
DNS Cache Hierarchy:
════════════════════

Browser Cache → OS Cache → Local DNS → ISP DNS → Authoritative
    (sec)        (min)       (hours)    (hours)     (source)
    
TTL (Time To Live): Cache süresi
Typical values:
  - Static records: 86400 (1 day)
  - Dynamic records: 300 (5 min)
  - CDN records: 60 (1 min)
```

### 14.4 DHCP (Dynamic Host Configuration Protocol)

DHCP, ağ cihazlarına otomatik IP konfigürasyonu sağlar:

**DORA Süreci (Discover, Offer, Request, Acknowledge):**

```
DHCP DORA Process:
══════════════════

Client                                    DHCP Server
  │                                            │
  │──── DISCOVER (broadcast) ─────────────────▶│  "IP istiyorum"
  │     src: 0.0.0.0:68                        │  dst: 255.255.255.255:67
  │                                            │
  │◀──── OFFER ────────────────────────────────│  "10.0.0.100 teklif ediyorum"
  │      Your IP: 10.0.0.100                   │  Lease Time: 86400
  │      Subnet: 255.255.255.0                 │
  │      Gateway: 10.0.0.1                     │
  │      DNS: 8.8.8.8                          │
  │                                            │
  │──── REQUEST (broadcast) ──────────────────▶│  "10.0.0.100 istiyorum"
  │     Server ID: 10.0.0.1                    │
  │                                            │
  │◀──── ACK ──────────────────────────────────│  "Onaylandı"
  │      Lease Time: 86400 sec                 │
  │                                            │
  │     IP konfigürasyonu tamamlandı           │
```

**DHCP Mesaj Türleri:**

| Mesaj | Yön | Amaç |
|-------|-----|------|
| **DISCOVER** | Client → Server | IP adresi arama |
| **OFFER** | Server → Client | IP teklifi |
| **REQUEST** | Client → Server | IP kabul/yenileme |
| **ACK** | Server → Client | Onay |
| **NAK** | Server → Client | Red |
| **RELEASE** | Client → Server | IP'yi bırakma |
| **INFORM** | Client → Server | Sadece ek bilgi isteme |

**DHCP Lease Yönetimi:**

```
DHCP Lease Timeline:
════════════════════

0%        50%       87.5%     100%
│         │         │         │
├─────────┼─────────┼─────────┤
│  BOUND  │  RENEW  │ REBIND  │ EXPIRE
│         │ (T1)    │ (T2)    │
│         │         │         │
│ Normal  │ Unicast │ Broadcast│ IP kaybı
│ kullanım│ renewal │ renewal  │

T1 = Lease Time / 2 (unicast renewal)
T2 = Lease Time × 0.875 (broadcast renewal)
```

**DHCP Option'ları:**

| Option | Code | Açıklama |
|--------|------|----------|
| Subnet Mask | 1 | 255.255.255.0 |
| Router | 3 | Default gateway |
| DNS Server | 6 | DNS adresleri |
| Domain Name | 15 | Arama domain'i |
| Lease Time | 51 | Saniye cinsinden |
| DHCP Server | 54 | Server identifier |

**INET'te DHCP:**

```ini
# DHCP Server
*.dhcpServer.numApps = 1
*.dhcpServer.app[0].typename = "DhcpServer"
*.dhcpServer.app[0].interface = "eth0"
*.dhcpServer.app[0].maxNumClients = 100
*.dhcpServer.app[0].leaseTime = 86400s
*.dhcpServer.app[0].subnetMask = "255.255.255.0"
*.dhcpServer.app[0].gateway = "10.0.0.1"
*.dhcpServer.app[0].dns = "8.8.8.8"

# DHCP Client
*.host.numApps = 1
*.host.app[0].typename = "DhcpClient"
*.host.app[0].interface = "eth0"
```

### 14.5 Socket Programlama

**INET Socket API:**

```cpp
// UDP Socket örneği
UdpSocket socket;
socket.bind(localPort);
socket.connect(L3Address(destIP), destPort);

Packet *packet = new Packet("data");
packet->insertAtBack(makeShared<BytesChunk>(data, len));
socket.send(packet);

// TCP Socket örneği
TcpSocket socket;
socket.connect(L3Address(serverIP), serverPort);

// Veri gönderimi
Packet *packet = new Packet("request");
socket.send(packet);
```

### 14.6 Video Streaming ve VoIP

Bu bölüm, gerçek zamanlı ve streaming multimedya uygulamalarının temellerini, protokollerini ve INET implementasyonlarını kapsar.

#### 14.6.1 Internet Video Özellikleri

```
Video Streaming Karakteristikleri:
══════════════════════════════════

Bandwidth Requirements:
┌───────────────────┬──────────────────┬───────────────────┐
│ Video Quality     │ Resolution       │ Bitrate           │
├───────────────────┼──────────────────┼───────────────────┤
│ SD (480p)         │ 854×480          │ 1-3 Mbps          │
│ HD (720p)         │ 1280×720         │ 3-5 Mbps          │
│ Full HD (1080p)   │ 1920×1080        │ 5-8 Mbps          │
│ 4K UHD            │ 3840×2160        │ 15-25 Mbps        │
│ 8K UHD            │ 7680×4320        │ 50-100 Mbps       │
└───────────────────┴──────────────────┴───────────────────┘

Video Frame Types (H.264/H.265):
  • I-frame (Intra): Complete image, largest
  • P-frame (Predicted): Changes from previous frame
  • B-frame (Bidirectional): Changes from both directions

GOP (Group of Pictures): IBBPBBPBBPBBI...
```

#### 14.6.2 HTTP Streaming ve DASH

**HTTP Progressive Download vs Streaming:**

```
Progressive Download:
═════════════════════

Client                                    Server
  │                                          │
  │─────── HTTP GET video.mp4 ──────────────▶│
  │                                          │
  │◀───────────────── Data ──────────────────│
  │◀───────────────── Data ──────────────────│
  │◀───────────────── Data ──────────────────│
  │                                          │
  └── Buffer fills → Playback starts ────────┘

Problem: Bandwidth değişirse kalite değişmez


DASH (Dynamic Adaptive Streaming over HTTP):
════════════════════════════════════════════

                   ┌──────────────────────────┐
                   │     Media Server         │
                   │ ┌────────────────────┐  │
                   │ │   720p - 3Mbps     │  │
                   │ │   480p - 1Mbps     │  │
                   │ │   360p - 0.5Mbps   │  │
                   │ │   MPD Manifest     │  │
                   │ └────────────────────┘  │
                   └───────────┬──────────────┘
                               │
                               ▼
Client                  CDN Edge Server
  │                           │
  │── GET manifest.mpd ──────▶│  1. Get available qualities
  │◀── MPD (XML) ─────────────│
  │                           │
  │── GET segment_720p_1.m4s─▶│  2. Start with high quality
  │◀── Segment data ──────────│
  │                           │
  │   Network congestion ▼    │  3. Bandwidth drops
  │── GET segment_480p_2.m4s─▶│  4. Switch to lower quality
  │◀── Segment data ──────────│
  │                           │
  │   Network improves ▲      │  5. Bandwidth recovers
  │── GET segment_720p_3.m4s─▶│  6. Switch back to higher
  │◀── Segment data ──────────│
```

**MPD (Media Presentation Description) Yapısı:**

```xml
<!-- DASH MPD örneği -->
<MPD xmlns="urn:mpeg:dash:schema:mpd:2011" 
     type="static" mediaPresentationDuration="PT2H">
  <Period>
    <AdaptationSet mimeType="video/mp4" codecs="avc1.4d401f">
      <Representation id="720p" bandwidth="3000000" 
                      width="1280" height="720">
        <SegmentTemplate media="720p_$Number$.m4s" 
                         duration="4" />
      </Representation>
      <Representation id="480p" bandwidth="1000000" 
                      width="854" height="480">
        <SegmentTemplate media="480p_$Number$.m4s" 
                         duration="4" />
      </Representation>
    </AdaptationSet>
  </Period>
</MPD>
```

**HLS (HTTP Live Streaming) vs DASH:**

| Özellik | DASH | HLS |
|---------|------|-----|
| **Geliştirici** | MPEG (standart) | Apple |
| **Segment formatı** | fMP4, WebM | TS, fMP4 |
| **Manifest** | MPD (XML) | M3U8 (playlist) |
| **DRM desteği** | CENC (multi-DRM) | FairPlay |
| **Tarayıcı desteği** | Chrome, Firefox | Safari, native iOS |
| **Segment süresi** | 2-10 saniye | 6-10 saniye |

#### 14.6.3 Content Delivery Networks (CDN)

```
CDN Architecture:
═════════════════

                        ┌────────────────┐
                        │  Origin Server │
                        │  (Ana İçerik)  │
                        └───────┬────────┘
                                │
            ┌───────────────────┼───────────────────┐
            │                   │                   │
     ┌──────┴─────┐      ┌──────┴─────┐      ┌──────┴─────┐
     │Edge Server │      │Edge Server │      │Edge Server │
     │  (Europe)  │      │  (Asia)    │      │ (Americas) │
     └──────┬─────┘      └──────┬─────┘      └──────┬─────┘
            │                   │                   │
       ┌────┴────┐         ┌────┴────┐         ┌────┴────┐
       │  ISP    │         │  ISP    │         │  ISP    │
       └────┬────┘         └────┬────┘         └────┬────┘
            │                   │                   │
       [Users]              [Users]             [Users]

CDN Benefits:
  1. Reduced latency (geographically closer)
  2. Load distribution
  3. Higher availability
  4. Bandwidth optimization
```

**DNS-based CDN Routing:**

```
DNS Redirection:
═══════════════

User → www.example.com → DNS
                          │
                          ▼ (CNAME to CDN)
                    cdn.example-cdn.net
                          │
                          ▼ (GeoDNS)
                    Closest Edge Server IP
                          │
                          ▼
                    Edge Server
```

#### 14.6.4 VoIP (Voice over IP) Gereksinimleri

```
VoIP QoS Requirements:
══════════════════════

┌────────────────────┬──────────────────┬──────────────────┐
│ Metric             │ Acceptable       │ Good             │
├────────────────────┼──────────────────┼──────────────────┤
│ One-way delay      │ < 150 ms         │ < 100 ms         │
│ Jitter             │ < 30 ms          │ < 20 ms          │
│ Packet loss        │ < 3%             │ < 1%             │
│ Bandwidth (G.711)  │ 64 kbps + header │ ~90 kbps total   │
│ Bandwidth (G.729)  │ 8 kbps + header  │ ~26 kbps total   │
└────────────────────┴──────────────────┴──────────────────┘

End-to-End Delay Components:
┌─────────┬──────────┬─────────┬──────────┬─────────┬─────────┐
│ Encode  │ Packet   │ Queuing │ Network  │ Jitter  │ Decode  │
│  ~10ms  │  ~10ms   │ variable│ variable │ buffer  │  ~10ms  │
└─────────┴──────────┴─────────┴──────────┴─────────┴─────────┘
              └────────── Total: < 150ms ideal ──────────────┘
```

**VoIP Codec'ler:**

| Codec | Bit Rate | Quality | License |
|-------|----------|---------|---------|
| **G.711 (µ-law/A-law)** | 64 kbps | Excellent | Free |
| **G.729** | 8 kbps | Good | Patent (expired) |
| **G.722** | 48-64 kbps | Wideband | Free |
| **Opus** | 6-510 kbps | Excellent | Free (modern) |
| **iLBC** | 13.3/15.2 kbps | Good | Free |
| **Speex** | 2.15-44 kbps | Good | Free |

#### 14.6.5 INET'te VoIP ve Video Streaming Modülleri

**VoIP Modülleri:**

| Modül | Konum | Açıklama |
|-------|-------|----------|
| `SimpleVoipSender` | `applications/voip/` | Basit VoIP paket gönderici |
| `SimpleVoipReceiver` | `applications/voip/` | Basit VoIP alıcı, MOS hesaplama |
| `VoipStreamSender` | `applications/voipstream/` | Kodlama ile gerçekçi VoIP |
| `VoipStreamReceiver` | `applications/voipstream/` | Jitter buffer ile alıcı |

**Video Streaming Modülleri:**

| Modül | Konum | Açıklama |
|-------|-------|----------|
| `UdpVideoStreamServer` | `applications/udpapp/` | Video stream sunucu |
| `UdpVideoStreamClient` | `applications/udpapp/` | Video stream istemci |

**INET'te VoIP Konfigürasyonu:**

```ini
# Simple VoIP Sender
*.caller.numApps = 1
*.caller.app[0].typename = "SimpleVoipSender"
*.caller.app[0].destAddress = "callee"
*.caller.app[0].destPort = 5000
*.caller.app[0].talkPacketSize = 160B      # G.711: 20ms × 8kHz
*.caller.app[0].talkspurtDuration = 1s     # Konuşma süresi
*.caller.app[0].silenceDuration = 1s       # Sessizlik süresi
*.caller.app[0].packetizationInterval = 20ms  # 20ms paketler

# Simple VoIP Receiver
*.callee.numApps = 1
*.callee.app[0].typename = "SimpleVoipReceiver"
*.callee.app[0].localPort = 5000
*.callee.app[0].playoutDelay = 20ms        # Jitter buffer

# VoIP Stream (with codec) - ayrı bir konfigürasyon
*.caller.app[0].typename = "VoipStreamSender"
*.caller.app[0].soundFile = "audio/voice.wav"  # Ses dosyası (zorunlu)
*.caller.app[0].codec = "g726"                 # veya "pcm_mulaw"
*.caller.app[0].sampleRate = 8000Hz
*.caller.app[0].compressedBitRate = 40kbps

*.callee.app[0].typename = "VoipStreamReceiver"
*.callee.app[0].playoutDelay = 20ms
```

**INET'te Video Streaming Konfigürasyonu:**

```ini
# Video Stream Server
*.videoServer.numApps = 1
*.videoServer.app[0].typename = "UdpVideoStreamServer"
*.videoServer.app[0].localPort = 3088
*.videoServer.app[0].sendInterval = 10ms       # 100 fps
*.videoServer.app[0].packetLen = 1000B
*.videoServer.app[0].videoSize = 10MB          # Toplam video boyutu

# Video Stream Client
*.videoClient.numApps = 1
*.videoClient.app[0].typename = "UdpVideoStreamClient"
*.videoClient.app[0].serverAddress = "videoServer"
*.videoClient.app[0].serverPort = 3088
*.videoClient.app[0].startTime = uniform(0s, 0.1s)
```

**VoIP Kalite Metrikleri (MOS):**

```
Mean Opinion Score (MOS):
═════════════════════════

5 │ █████████████████████  Excellent
4 │ ████████████████       Good
3 │ ███████████            Fair
2 │ ██████                 Poor
1 │ ████                   Bad
  └─────────────────────────────────

MOS = f(packet loss, delay, jitter, codec)

E-Model (ITU-T G.107):
  R = 93.2 - Id - Ie + A
  
Where:
  Id = Delay impairment
  Ie = Equipment impairment (codec)
  A = Advantage factor (mobility)
  
MOS = 1 + 0.035R + R(R-60)(100-R)×7×10^-6
```

> [!NOTE]
> **INET'te Eksik Özellikler:**
> INET 4.5.4'te DASH/HLS adaptive streaming doğrudan desteklenmez. Video streaming basit UDP tabanlı sabit bit rate olarak simüle edilir. Gerçekçi adaptive streaming için özel modül geliştirmek veya dış entegrasyon gerekir.

---

## 10. Taşıma Katmanı Temelleri

### 10.1 Multiplexing ve Demultiplexing

Port numaraları ile çoklu uygulamaları ayırt etme:

```
Multiplexing/Demultiplexing:
════════════════════════════

     Host A                               Host B
┌─────────────────┐                ┌─────────────────┐
│ App1    App2    │                │ App3    App4    │
│ :5000   :5001   │                │ :80     :443    │
└───┬───────┬─────┘                └───┬───────┬─────┘
    │       │                          │       │
    └───┬───┘                          └───┬───┘
        │ Multiplexing                     │ Demultiplexing
        ▼                                  ▼
┌───────────────────────────────────────────────────┐
│              Transport Layer                       │
│  Segment: [SrcPort:5000 | DstPort:80 | Data]      │
└───────────────────────────────────────────────────┘
```

**INET'te Port Yönetimi:**

```cpp
// UDP'de port binding
Udp::bind(L3Address localAddr, int localPort) {
    SocketDescriptor *sd = new SocketDescriptor();
    sd->localAddr = localAddr;
    sd->localPort = localPort;
    socketMap.insert(sd);
}

// Demultiplexing: Gelen paket için doğru socket'i bul
SocketDescriptor* Udp::findSocketFor(Packet *packet) {
    auto udpHeader = packet->peekAtFront<UdpHeader>();
    return socketMap.find(udpHeader->getDestinationPort());
}
```

### 10.2 UDP (User Datagram Protocol)

**UDP Segment Yapısı:**

```
UDP Header (8 bytes):
┌───────────────────────────────────────────────────┐
│ Source Port (16 bits) │ Dest Port (16 bits)       │
├───────────────────────┼───────────────────────────┤
│    Length (16 bits)   │   Checksum (16 bits)      │
└───────────────────────┴───────────────────────────┘
```

**INET UDP Modülü:**

```ini
# UDP Konfigürasyonu
*.host.hasUdp = true
*.host.app[0].typename = "UdpBasicApp"
*.host.app[0].destAddresses = "server"
*.host.app[0].destPort = 5000
*.host.app[0].messageLength = 1000B
*.host.app[0].sendInterval = 100ms
```

### 10.3 TCP (Transmission Control Protocol)

**TCP Özellikleri:**

| Özellik | Açıklama | INET Parametresi |
|---------|----------|------------------|
| Connection-oriented | 3-way handshake | Otomatik |
| Reliable | Retransmission | `tcpAlgorithmClass` |
| Flow Control | Receiver window | `advertisedWindow` |
| Congestion Control | cwnd yönetimi | `tcpType` (Reno, NewReno) |

**TCP Segment Yapısı:**

```
TCP Header (20-60 bytes):
┌─────────────────────────────────────────────────────────────┐
│ Source Port (16)        │ Destination Port (16)            │
├─────────────────────────┴───────────────────────────────────┤
│                    Sequence Number (32)                      │
├──────────────────────────────────────────────────────────────┤
│                 Acknowledgment Number (32)                   │
├──────┬───────┬──────────────────────┬───────────────────────┤
│Offset│Reserv │ Flags (SYN,ACK,FIN) │    Window (16)        │
│ (4)  │ (6)   │        (6)          │                        │
├──────┴───────┴──────────────────────┼───────────────────────┤
│        Checksum (16)                │   Urgent Ptr (16)     │
├─────────────────────────────────────┴───────────────────────┤
│                     Options (variable)                       │
└──────────────────────────────────────────────────────────────┘
```

### 10.4 TCP Congestion Control

**INET'te TCP Congestion Control Varyantları:**

| Varyant | INET Sınıfı | Özellik |
|---------|-------------|---------|
| Tahoe | `TcpTahoe` | Slow start, congestion avoidance |
| Reno | `TcpReno` | + Fast retransmit, fast recovery |
| NewReno | `TcpNewReno` | Improved fast recovery |
| Vegas | `TcpVegas` | RTT-based congestion control |
| Westwood | `TcpWestwood` | Bandwidth estimation |

**Congestion Control Görselleştirmesi:**

```
TCP Congestion Window (cwnd) Evrimi:
════════════════════════════════════

cwnd
  │     ╱\                      ╱\
  │    ╱  \                    ╱  \
  │   ╱    \    Packet        ╱    \
  │  ╱      \    Loss        ╱      \
  │ ╱        \  ──▶         ╱        \
  │╱ Slow     \ cwnd/2     ╱ Congestion\
  │  Start     \          ╱  Avoidance  \
  └────────────────────────────────────────▶ time
     Exponential    Linear        Exponential
     Growth         Growth        Growth

ssthresh = cwnd/2 after loss
```

**INET Konfigürasyonu:**

```ini
# TCP varyantı seçimi
**.tcp.typename = "Tcp"
**.tcp.tcpAlgorithmClass = "TcpNewReno"
**.tcp.sackSupport = true

# TCP parametreleri
**.tcp.mss = 1460
**.tcp.windowScalingSupport = true
**.tcp.advertisedWindow = 65535
```

### 10.5 TSN'de Transport Katmanı

TSN, transport katmanını doğrudan etkilemez ancak alt katmanda sağladığı garantiler transport davranışını iyileştirir:

| TSN Etkisi | Transport Üzerinde |
|------------|-------------------|
| Bounded delay | RTT tahminleri daha doğru |
| Zero loss | TCP retransmit azalır |
| Low jitter | RTP buffer'ları küçülebilir |

---

## 11. Ağ Katmanı - Data Plane

### 11.1 Forwarding vs Routing

| Kavram | Tanım | INET Modülü |
|--------|-------|-------------|
| **Forwarding** | Paketi input→output port'a aktarma | `Ipv4` |
| **Routing** | Forwarding tablosunu oluşturma | `Ospf`, `Bgp` |

```
Data Plane vs Control Plane:
════════════════════════════

┌─────────────────────────────────────────────────────────────┐
│                      CONTROL PLANE                           │
│  ┌─────────────────────────────────────────────────────┐    │
│  │          Routing Protocols (OSPF, BGP, RIP)         │    │
│  │  • Routing table oluşturma                          │    │
│  │  • Network topology keşfi                           │    │
│  └────────────────────────┬────────────────────────────┘    │
│                           │ Routing Table                    │
│                           ▼                                  │
├─────────────────────────────────────────────────────────────┤
│                       DATA PLANE                             │
│  ┌─────────────────────────────────────────────────────┐    │
│  │              IP Forwarding Engine                    │    │
│  │  • Longest prefix match                             │    │
│  │  • TTL decrement                                    │    │
│  │  • Header checksum update                           │    │
│  └─────────────────────────────────────────────────────┘    │
└─────────────────────────────────────────────────────────────┘
```

### 11.2 IPv4 Datagram Yapısı

```
IPv4 Header (20-60 bytes):
┌──────────────────────────────────────────────────────────────┐
│Version│ IHL │   DSCP   │ECN│       Total Length             │
│  (4)  │ (4) │   (6)    │(2)│           (16)                 │
├───────┴─────┴──────────┴───┴───────────────────────────────┬┤
│        Identification (16)      │Flags(3)│ Fragment Off(13)││
├─────────────────────────────────┴────────┴──────────────────┤
│    TTL (8)   │  Protocol (8)   │    Header Checksum (16)     │
├──────────────┴─────────────────┴────────────────────────────┤
│                   Source IP Address (32)                     │
├──────────────────────────────────────────────────────────────┤
│                 Destination IP Address (32)                  │
├──────────────────────────────────────────────────────────────┤
│                      Options (variable)                      │
└──────────────────────────────────────────────────────────────┘
```

**INET'te IPv4:**

```cpp
// IPv4 header oluşturma (Ipv4.cc)
void Ipv4::encapsulate(Packet *packet, const InterfaceEntry *destIE) {
    auto ipv4Header = makeShared<Ipv4Header>();
    ipv4Header->setVersion(4);
    ipv4Header->setHeaderLength(IP_HEADER_BYTES);
    ipv4Header->setTotalLengthField(B(packet->getByteLength()));
    ipv4Header->setTimeToLive(defaultTTL);
    ipv4Header->setProtocol(IP_PROT_UDP);  // veya TCP
    ipv4Header->setSrcAddress(srcAddr);
    ipv4Header->setDestAddress(destAddr);
    
    packet->insertAtFront(ipv4Header);
}
```

### 11.3 IP Addressing ve Subnetting

```
IPv4 Adres Yapısı:
══════════════════

192.168.1.100/24

IP Adresi:  192.168.1.100 = 11000000.10101000.00000001.01100100
Subnet:     /24           = 11111111.11111111.11111111.00000000
                            ├─────── Network ───────┤├─ Host ─┤

Network Address: 192.168.1.0
Broadcast:       192.168.1.255
Usable range:    192.168.1.1 - 192.168.1.254
```

**INET'te IP Konfigürasyonu:**

```ini
# Manuel IP atama
*.host.ipv4.arp.typename = "GlobalArp"
*.host.numEthInterfaces = 1
*.host.eth[0].address = "192.168.1.10"
*.host.eth[0].netmask = "255.255.255.0"

# Otomatik IP atama (Configurator)
*.configurator.config = xml("<config>
    <interface hosts='**' address='10.x.x.x' netmask='255.x.x.x'/>
</config>")
```

### 11.4 NAT (Network Address Translation)

```
NAT İşlemi:
═══════════

Private Network        NAT Router         Public Internet
192.168.1.0/24         203.0.113.1

┌─────────────┐        ┌─────────────┐        ┌─────────────┐
│   Host A    │        │    NAT      │        │   Server    │
│192.168.1.10 │────────│   Router    │────────│ 8.8.8.8     │
└─────────────┘        └─────────────┘        └─────────────┘

Outgoing Packet:
  Before NAT: Src=192.168.1.10:5000, Dst=8.8.8.8:80
  After NAT:  Src=203.0.113.1:45000, Dst=8.8.8.8:80

NAT Table:
┌──────────────────────┬─────────────────────┐
│ Internal             │ External            │
├──────────────────────┼─────────────────────┤
│ 192.168.1.10:5000    │ 203.0.113.1:45000   │
│ 192.168.1.11:5001    │ 203.0.113.1:45001   │
└──────────────────────┴─────────────────────┘
```

### 11.5 SDN ve OpenFlow

**SDN Kavramı:**

```
Geleneksel vs SDN:
══════════════════

Geleneksel:                    SDN:
                              ┌─────────────────┐
                              │  SDN Controller │
                              │   (Centralized) │
                              └────────┬────────┘
                                       │ OpenFlow
┌───────────┐                 ┌────────▼────────┐
│ Control   │                 │                 │
│   +       │                 │   Data Plane    │
│ Data Plane│                 │    (Switches)   │
└───────────┘                 └─────────────────┘
  Per-device                    Centralized control
  distributed                   Programmable
```

**INET'te SDN Benzeri Yapılar:**

TSN'de match-action prensibi, SDN OpenFlow ile benzerlik gösterir:

| OpenFlow | TSN INET Karşılığı |
|----------|-------------------|
| Match (header fields) | Stream Identifier (filter) |
| Action (forward, drop) | Stream Relay (replicate, merge) |
| Flow table | GCL (Gate Control List) |

---

## 12. Ağ Katmanı - Control Plane

### 12.1 Routing Algoritmaları

İki temel yaklaşım:

| Algoritma | Çalışma Prensibi | INET Örneği |
|-----------|-----------------|-------------|
| **Link-State** | Tüm topolojiyi bilir, Dijkstra | OSPF |
| **Distance-Vector** | Sadece komşu bilgileri, Bellman-Ford | RIP |

### 12.2 OSPF (Open Shortest Path First)

**OSPF Özellikleri:**

```
OSPF Area Yapısı:
═════════════════

              ┌───────────────────┐
              │    Backbone       │
              │     Area 0        │
              │                   │
              │  ┌───┐    ┌───┐  │
              │  │ABR│    │ABR│  │  ABR: Area Border Router
              └──┴─┬─┴────┴─┬─┴──┘
                   │        │
          ┌────────┘        └────────┐
          │                          │
    ┌─────▼─────┐              ┌─────▼─────┐
    │  Area 1   │              │  Area 2   │
    │           │              │           │
    │ Internal  │              │ Internal  │
    │ Routers   │              │ Routers   │
    └───────────┘              └───────────┘
```

**INET'te OSPF Konfigürasyonu:**

```ini
# OSPF etkinleştirme
*.router*.hasOspf = true
*.router*.ospf.ospfConfig = xmldoc("ospfConfig.xml")
```

```xml
<!-- ospfConfig.xml -->
<OSPFASConfig>
    <Area id="0.0.0.0">
        <AddressRange>
            <Address>10.0.0.0</Address>
            <Mask>255.255.0.0</Mask>
            <Status>Advertise</Status>
        </AddressRange>
    </Area>
</OSPFASConfig>
```

### 12.3 BGP (Border Gateway Protocol)

**BGP Kullanım Alanı:**

```
Inter-AS Routing:
═════════════════

    ┌─────────────────┐          ┌─────────────────┐
    │      AS 100     │          │      AS 200     │
    │   (ISP 1)       │          │   (ISP 2)       │
    │                 │   eBGP   │                 │
    │  ┌───┐   ┌───┐  │◀───────▶│  ┌───┐   ┌───┐  │
    │  │ R1│───│ R2│──│──────────│──│ R3│───│ R4│  │
    │  └───┘   └───┘  │          │  └───┘   └───┘  │
    │     iBGP ▲      │          │      ▲ iBGP    │
    │          │      │          │      │         │
    └──────────│──────┘          └──────│─────────┘
               │                        │
         OSPF/IS-IS                OSPF/IS-IS
         (Intra-AS)                (Intra-AS)
```

### 12.4 ICMP (Internet Control Message Protocol)

**ICMP Mesaj Türleri:**

| Type | Mesaj | INET Kullanımı |
|------|-------|----------------|
| 0 | Echo Reply | Ping yanıtı |
| 3 | Destination Unreachable | No route |
| 8 | Echo Request | Ping isteği |
| 11 | Time Exceeded | TTL=0, traceroute |

**INET'te Ping:**

```ini
*.client.numApps = 1
*.client.app[0].typename = "PingApp"
*.client.app[0].destAddr = "server"
*.client.app[0].startTime = 1s
*.client.app[0].sendInterval = 1s
*.client.app[0].count = 10
```

---

## 13. Link Layer ve LAN'lar

### 13.1 Error Detection

**CRC (Cyclic Redundancy Check):**

```
CRC-32 Hesaplama:
═════════════════

Data bits:    1101001...
Generator:    100110...  (CRC-32 polynomial)

          Data × 2^r
CRC = ────────────── mod Generator
          Generator

Ethernet FCS: 32-bit CRC eklenir frame sonuna
```

**INET'te FCS:**

```cpp
// EthernetFcs.cc
uint32_t calculateFcs(const Ptr<const Chunk>& data) {
    // CRC-32 hesaplama
    return crc32(data->getBytes());
}
```

### 13.2 Multiple Access Protocols

Paylaşılan iletim ortamına (shared medium) erişimi koordine eden protokollerdir.

**MAC Protocol Kategorileri:**

| Kategori | Protokoller | Mekanizma |
|----------|-------------|-----------|
| **Channel Partitioning** | TDMA, FDMA, CDMA | Kaynak bölümleme |
| **Random Access** | ALOHA, CSMA, CSMA/CD, CSMA/CA | Çarpışma yönetimi |
| **Taking Turns** | Polling, Token Ring | Sıralı erişim |

#### 13.2.1 CSMA/CD (Carrier Sense Multiple Access with Collision Detection)

**Kullanım:** Kablolu Ethernet (10 Mbps, 100 Mbps half-duplex)

**Çalışma Prensibi:**

```
CSMA/CD Algoritması:
════════════════════

1. Frame hazır
       │
       ▼
2. Channel boş mu? ────NO────▶ Bekle (carrier sense)
       │YES
       ▼
3. İletimi başlat
       │
       ▼
4. Çarpışma var mı? ───YES───▶ Jam signal gönder (48 bit)
       │NO                     │
       ▼                       ▼
5. İletim tamamlandı    Binary exponential backoff
                              │
                              └──────▶ 2'ye dön

Collision Detection Timeline:
─────────────────────────────

t=0     t=τ    t=2τ
│       │      │
▼       ▼      ▼
A→→→→→→→→→→→→→→
        ↖B (B çarpışmayı algılar)
         Jam
         
2τ = Round Trip Time = Collision detection time
Minimum Frame Size = 2τ × Bandwidth
Ethernet: 64 bytes = 512 bits @ 10 Mbps = 51.2 µs
```

**Binary Exponential Backoff:**

```
Backoff Algoritması:
═══════════════════

n = çarpışma sayısı (1-16)
K = random(0, 2^min(n,10) - 1)
Backoff time = K × 512 bit times

Örnek (10 Mbps Ethernet):
──────────────────────────
Çarpışma #1: K ∈ {0, 1}     → 0 veya 51.2 µs
Çarpışma #2: K ∈ {0,1,2,3}  → 0 ile 153.6 µs
Çarpışma #3: K ∈ {0,...,7}  → 0 ile 358.4 µs
...
Çarpışma #10+: K ∈ {0,...,1023} → max 52.4 ms

16 çarpışmadan sonra: Frame drop, hata bildirimi
```

**CSMA/CD Efficiency:**

```
Efficiency = 1 / (1 + 5 × d_prop/d_trans)

Where:
  d_prop = Propagation delay (sinyal yayılma süresi)
  d_trans = Transmission delay (frame gönderim süresi)
  
High efficiency requires: d_trans >> d_prop
  → Large frames OR short distances OR slow links
```

#### 13.2.2 CSMA/CA (Carrier Sense Multiple Access with Collision Avoidance)

**Kullanım:** Kablosuz ağlar (IEEE 802.11 WiFi)

**Neden CD değil CA?**

Kablosuz ortamda collision detection pratik değildir:
1. **Half-duplex radyo:** Aynı anda gönderip alamaz
2. **Hidden terminal:** A, B'yi görmeden C ile çarpışabilir
3. **Sinyal zayıflaması:** Gönderen sinyali alıcıdan çok güçlü, çarpışmayı algılayamaz

```
Hidden Terminal Problemi:
═════════════════════════

      ┌─────┐        ┌─────┐        ┌─────┐
      │  A  │        │ AP  │        │  B  │
      └──┬──┘        └──┬──┘        └──┬──┘
         │              │              │
         └──── Range ───┤              │
                        ├─── Range ────┘
         
A ve B birbirini görmez ama ikisi de AP'ye göndermek ister
→ AP'de çarpışma olur, A ve B farkında olmaz!

Çözüm: RTS/CTS mekanizması
```

**CSMA/CA Algoritması:**

```
CSMA/CA with RTS/CTS:
═════════════════════

Sender              Access Point           Other Stations
  │                      │                      │
  │ 1. Sense channel     │                      │
  │    (DIFS period)     │                      │
  │                      │                      │
  │──── RTS ────────────▶│                      │
  │    (Request to Send) │                      │
  │                      │                      │
  │◀───── CTS ───────────│───── CTS ──────────▶│
  │    (Clear to Send)   │  (Others hear CTS,  │
  │                      │   set NAV timer)    │
  │                      │                      │
  │════ DATA ═══════════▶│                      │
  │  (Silence during TX) │        NAV          │
  │                      │    ┌─────────┐      │
  │◀────── ACK ──────────│    │ WAIT    │      │
  │                      │    │(no TX)  │      │
  │                      │    └─────────┘      │
  │                      │                      │
  │                NAV expires                  │
  │                      │◀───── Contend ──────│

NAV = Network Allocation Vector
DIFS = DCF Inter-Frame Space (34-50 µs)
SIFS = Short Inter-Frame Space (10-16 µs)
```

**Frame Timing:**

```
802.11 Inter-Frame Spacing:
═══════════════════════════

│ DIFS │    DATA    │SIFS│ ACK │ DIFS │    DATA    │
│◄────►│◄───────────►│◄──►│◄───►│◄────►│◄───────────►│
  34µs   Variable     10µs  ACK    34µs

Priority (yüksekten düşüğe):
  SIFS < PIFS < DIFS < EIFS

  SIFS (10µs): ACK, CTS, fragmentation
  PIFS (25µs): Point coordination function
  DIFS (50µs): Normal data frames
```

**Backoff Mekanizması (802.11):**

```
Contention Window (CW):
═══════════════════════

CW_min = 15 (slots)   CW_max = 1023 (slots)

Random backoff = random(0, CW) × slot_time

Her çarpışmada: CW = min(2 × CW + 1, CW_max)
Başarılı TX sonrası: CW = CW_min

Slot Time:
  802.11b: 20 µs
  802.11a/g: 9 µs
  802.11n/ac: 9 µs
```

**CSMA/CD vs CSMA/CA Karşılaştırması:**

| Özellik | CSMA/CD | CSMA/CA |
|---------|---------|---------|
| **Ortam** | Kablolu | Kablosuz |
| **Çarpışma** | Algıla ve durdur | Önlemeye çalış |
| **Full-duplex** | Evet (çarpışma yok) | Hayır |
| **ACK** | Opsiyonel | Zorunlu |
| **RTS/CTS** | Yok | Opsiyonel |
| **Hidden terminal** | Sorun değil | RTS/CTS gerekli |
| **Overhead** | Düşük | Yüksek |
| **Efficiency** | ~95% (low load) | ~70% (with RTS/CTS) |

**INET'te MAC Protokolleri:**

```ini
# Ethernet MAC (CSMA/CD artık nadiren kullanılır - full-duplex)
*.host.eth[*].typename = "EthernetInterface"
*.host.eth[*].mac.typename = "EthernetMac"
*.host.eth[*].mac.duplexMode = true   # Full-duplex = no CSMA/CD

# 802.11 MAC (CSMA/CA)
*.host.wlan[*].typename = "Ieee80211Interface"
*.host.wlan[*].mac.typename = "Ieee80211Mac"
*.host.wlan[*].mac.dcf.rtsThreshold = 512B  # RTS/CTS for frames > 512B
*.host.wlan[*].mac.dcf.cwMin = 15
*.host.wlan[*].mac.dcf.cwMax = 1023
```

### 13.3 Ethernet Frame Yapısı

```
Ethernet Frame:
═══════════════

┌─────────┬─────┬───────┬───────┬──────────┬──────────────┬─────┐
│Preamble │ SFD │ Dest  │ Source│Type/Len  │    Payload   │ FCS │
│ 7 bytes │1byte│ MAC   │  MAC  │ 2 bytes  │  46-1500     │4byte│
│         │     │6 bytes│6 bytes│          │   bytes      │     │
└─────────┴─────┴───────┴───────┴──────────┴──────────────┴─────┘
         │                                                      │
         └────────── Minimum 64 bytes, Max 1518 bytes ─────────┘
         
With VLAN (802.1Q): Max 1522 bytes (4 byte VLAN tag eklenir)
```

### 13.4 ARP (Address Resolution Protocol)

```
ARP Resolution:
═══════════════

Host A (10.0.0.1)          Switch              Host B (10.0.0.2)
     │                        │                      │
     │ ARP Request (Broadcast)│                      │
     │ "Who has 10.0.0.2?"    │                      │
     │───────────────────────▶│──────────────────────▶│
     │                        │                      │
     │                        │   ARP Reply (Unicast)│
     │                        │   "10.0.0.2 is at    │
     │◀──────────────────────────────────────────────│
     │                        │    AA:BB:CC:DD:EE:FF"│
     │                        │                      │
     │ ARP Cache updated:     │                      │
     │ 10.0.0.2 → AA:BB:...   │                      │
```

**INET'te ARP:**

```ini
# ARP modu seçimi
*.host.ipv4.arp.typename = "Arp"          # Normal ARP
# veya
*.host.ipv4.arp.typename = "GlobalArp"    # Anında çözümleme (simülasyon hızı)
```

### 13.5 PPP (Point-to-Point Protocol)

PPP, iki nokta arasında doğrudan bağlantı kurulmasını sağlayan bir veri bağlantı katmanı protokolüdür. DSL, dial-up ve bazı WAN bağlantılarında kullanılır.

**PPP Özellikleri:**

| Özellik | Açıklama |
|---------|----------|
| **Framing** | Byte-oriented HDLC-like framing |
| **Multiplexing** | Birden fazla network protokolü (IP, IPv6, IPX) |
| **Error Detection** | FCS (CRC-16 veya CRC-32) |
| **Authentication** | PAP, CHAP, EAP |
| **Link Configuration** | LCP ile negotiation |

**PPP Frame Yapısı:**

```
PPP Frame Format:
═════════════════

┌───────┬─────────┬─────────┬──────────┬───────────────┬─────┬───────┐
│ Flag  │ Address │ Control │ Protocol │   Payload     │ FCS │ Flag  │
│ 0x7E  │  0xFF   │  0x03   │ 2 bytes  │  (variable)   │2/4B │ 0x7E  │
└───────┴─────────┴─────────┴──────────┴───────────────┴─────┴───────┘

Protocol Field Values:
  0x0021 = IP datagram
  0x0057 = IPv6 datagram  
  0xC021 = LCP (Link Control Protocol)
  0xC023 = PAP (Password Authentication)
  0xC223 = CHAP (Challenge Handshake Auth)
  0x8021 = IPCP (IP Control Protocol)
```

**PPP Bağlantı Kurulumu Fazları:**

```
PPP Link Establishment:
═══════════════════════

        Dead ────▶ Establish ────▶ Authenticate ────▶ Network ────▶ Open
         │             │                │                │            │
         │         LCP             PAP/CHAP           NCP          Data
         │      negotiation      (optional)       negotiation    transfer
         │             │                │                │            │
         └─────────────┴────────────────┴────────────────┴────────────┘
                                                                      │
         ◀──────────────────────── Terminate ◀────────────────────────┘

Phase Details:
──────────────
1. DEAD: Fiziksel link yok
2. ESTABLISH: LCP paketleri ile link parametreleri belirlenir
   - MRU (Maximum Receive Unit)
   - Authentication protocol
   - Magic number (loop detection)
3. AUTHENTICATE: Kimlik doğrulama (opsiyonel)
4. NETWORK: NCP paketleri ile network protokolleri configure edilir
   - IPCP: IP adresi, DNS server negotiation
5. OPEN: Veri transferi mümkün
6. TERMINATE: LCP Terminate-Request ile link kapatılır
```

**LCP (Link Control Protocol):**

```
LCP Packet Types:
═════════════════

Code │ Type                │ Açıklama
─────┼─────────────────────┼──────────────────────────────
  1  │ Configure-Request   │ İstenen seçenekleri öner
  2  │ Configure-Ack       │ Tüm seçenekleri kabul
  3  │ Configure-Nak       │ Bazı seçenekleri reddet, alternatif öner
  4  │ Configure-Reject    │ Bilinmeyen seçenekleri reddet
  5  │ Terminate-Request   │ Bağlantıyı sonlandır
  6  │ Terminate-Ack       │ Sonlandırmayı onayla
  7  │ Code-Reject         │ Bilinmeyen kod
  8  │ Protocol-Reject     │ Desteklenmeyen protokol
  9  │ Echo-Request        │ Link test
 10  │ Echo-Reply          │ Echo yanıtı
 11  │ Discard-Request     │ Loopback test
```

**Kimlik Doğrulama Protokolleri:**

```
PAP (Password Authentication Protocol):
═══════════════════════════════════════

Client                                Server
  │                                      │
  │──── Authenticate-Request ───────────▶│
  │     (username, password)             │ Password cleartext!
  │                                      │ (Güvensiz)
  │◀──── Authenticate-Ack ──────────────│
  │           veya                       │
  │◀──── Authenticate-Nak ──────────────│


CHAP (Challenge Handshake Authentication Protocol):
═══════════════════════════════════════════════════

Client                                Server
  │                                      │
  │◀──────── Challenge ──────────────────│ Random challenge value
  │          (ID, random, name)          │
  │                                      │
  │──────── Response ───────────────────▶│ MD5(ID + password + challenge)
  │         (ID, hash, name)             │
  │                                      │ Server computes same hash
  │◀──────── Success ───────────────────│ if hashes match
  │           veya                       │
  │◀──────── Failure ───────────────────│ if mismatch

CHAP Advantages:
  ✓ Password never sent over link
  ✓ Challenge changes each time (replay protection)
  ✓ Periodic re-authentication possible
```

**PPP vs Ethernet Karşılaştırması:**

| Özellik | PPP | Ethernet |
|---------|-----|----------|
| **Bağlantı tipi** | Point-to-point | Multi-access |
| **Adres** | Yok (her zaman 0xFF) | 48-bit MAC |
| **Authentication** | PAP, CHAP | Yok (802.1X ayrı) |
| **Configuration** | LCP/NCP negotiation | Statik |
| **Error recovery** | Üst katmana bırakır | Üst katmana bırakır |
| **MTU** | Negotiable (default 1500) | 1500 bytes |

**INET'te PPP:**

```ini
# PPP Interface tanımı
*.router.numPppInterfaces = 2
*.router.ppp[*].typename = "PppInterface"
*.router.ppp[*].mtu = 1500B

# PPP bağlantısı
**.ppp[0].ppp.queue.typename = "DropTailQueue"
**.ppp[0].ppp.queue.packetCapacity = 100

# PPP link parametreleri
*.router.ppp[0].datarate = 1Mbps
*.router.ppp[0].delay = 10ms
```

**PPPoE (PPP over Ethernet):**

```
PPPoE Frame:
════════════

┌──────────────────┬──────────────────────────────────────┐
│  Ethernet Frame  │              PPPoE Payload           │
│  (14 bytes)      │                                      │
├──────────────────┼──────────────────────────────────────┤
│ Dst MAC │Src MAC │Ver│Type│Code│SessionID│Length│ PPP  │
│  6B    │  6B    │ 1 │ 1  │ 1  │   2B     │  2B  │Frame │
└──────────────────┴──────────────────────────────────────┘

EtherType: 0x8863 (Discovery), 0x8864 (Session)

Use case: DSL modem bağlantıları
  - ISP authentication
  - Dynamic IP assignment
  - Per-session accounting
```

> [!NOTE]
> INET 4.5.4'te PPP temel düzeyde desteklenir. PPPoE, LCP negotiation ve CHAP authentication gibi gelişmiş özellikler simülasyonda basitleştirilmiş olabilir.

### 13.6 Switches ve VLANs

**Switch MAC Learning:**

```
MAC Address Table:
══════════════════

┌────────────────────┬──────┐
│     MAC Address    │ Port │
├────────────────────┼──────┤
│ AA:BB:CC:11:22:33  │  1   │
│ DD:EE:FF:44:55:66  │  2   │
│ 11:22:33:44:55:66  │  3   │
└────────────────────┴──────┘

Unknown MAC → Flood to all ports (except source)
Known MAC   → Forward to specific port
```

**VLAN Kavramı:**

```
VLAN Segmentasyonu:
═══════════════════

Physical Switch:                  Logical View:

 ┌─────────────────┐             ┌─────────┐  ┌─────────┐
 │    Switch       │             │ VLAN 10 │  │ VLAN 20 │
 │ ┌───┬───┬───┐   │             │ (Sales) │  │  (Eng)  │
 │ │P1 │P2 │P3 │P4 │   ────▶     │ ┌─┬─┐   │  │ ┌─┬─┐   │
 │ └───┴───┴───┴───┘   │         │ │1│2│   │  │ │3│4│   │
 └─────────────────────┘         │ └─┴─┘   │  │ └─┴─┘   │
                                 └─────────┘  └─────────┘
                                 Ayrı broadcast domain'ler
```

**INET'te VLAN:**

```ini
# VLAN konfigürasyonu
*.switch.hasVlan = true
*.switch.eth[0].vlanId = 10
*.switch.eth[1].vlanId = 10
*.switch.eth[2].vlanId = 20
*.switch.eth[3].vlanId = 20
```

### 13.7 Spanning Tree Protocol (STP/RSTP)

Switch'ler arasında döngülerin (loops) oluşmasını önlemek için Spanning Tree Protocol kullanılır.

**Döngü Problemi:**

```
Döngü Olmadan:                    Döngü ile (PROBLEM!):
                                  
  SW1 ─────── SW2                   SW1 ─────── SW2
              │                      │\         /│
              │                      │ \       / │
              │                      │  \     /  │
             SW3                     │   \   /   │
                                     │    \ /    │
                                     │     X     │
                                     │    / \    │
                                     │   /   \   │
                                    SW3 ─────── SW4
                                    
                                    Broadcast storm!
                                    MAC table instability!
```

**STP Port Durumları:**

```
STP Port State Machine:
═══════════════════════

                    ┌─────────────┐
          ┌─────────│  BLOCKING   │◄────────────────┐
          │         └─────────────┘                 │
          │               │                         │
          │    (20 sn)    ▼                         │
          │         ┌─────────────┐                 │
          │         │  LISTENING  │                 │
          │         └─────────────┘                 │
          │               │                         │
          │    (15 sn)    ▼                         │
          │         ┌─────────────┐                 │
          │         │  LEARNING   │                 │ Topology
          │         └─────────────┘                 │ Change
          │               │                         │
          │    (15 sn)    ▼                         │
          │         ┌─────────────┐                 │
          └────────▶│ FORWARDING  │─────────────────┘
                    └─────────────┘

Toplam Yakınsama Süresi: ~50 saniye (STP)
```

**RSTP (Rapid STP) - IEEE 802.1w:**

```
RSTP Port Roles:
════════════════

                    Root Bridge
                   ┌───────────┐
                   │    SW1    │
                   │ Priority:0│
                   └─────┬─────┘
              ┌──────────┴──────────┐
              │                     │
              ▼                     ▼
       ┌──────────┐          ┌──────────┐
       │   SW2    │          │   SW3    │
       │ [Root]   │──────────│ [Root]   │
       │  Port    │ Backup   │  Port    │
       └──────────┘          └──────────┘
              │                     │
              ▼                     ▼
       [Designated]          [Designated]
          Port                  Port

Port Rolleri:
─────────────
• Root Port: Root Bridge'e en kısa yol
• Designated Port: Segment'e forward yapan
• Alternate Port: Root Port yedek (RSTP)
• Backup Port: Designated Port yedek (RSTP)
```

**BPDU (Bridge Protocol Data Unit):**

```
BPDU Header Format:
═══════════════════

┌────────────────────────────────────────────┐
│ Protocol ID (2 bytes): 0x0000              │
├────────────────────────────────────────────┤
│ Version (1 byte): 0=STP, 2=RSTP            │
├────────────────────────────────────────────┤
│ BPDU Type (1 byte): Config/TCN             │
├────────────────────────────────────────────┤
│ Flags (1 byte): TC, TCA bits               │
├────────────────────────────────────────────┤
│ Root Bridge ID (8 bytes)                   │
│  └─ Priority (2) + MAC (6)                 │
├────────────────────────────────────────────┤
│ Root Path Cost (4 bytes)                   │
├────────────────────────────────────────────┤
│ Sender Bridge ID (8 bytes)                 │
├────────────────────────────────────────────┤
│ Port ID (2 bytes)                          │
├────────────────────────────────────────────┤
│ Timers: Message Age, Max Age, Hello, Fwd   │
└────────────────────────────────────────────┘
```

**STP vs RSTP Karşılaştırması:**

| Özellik | STP (802.1D) | RSTP (802.1w) |
|---------|--------------|---------------|
| Yakınsama süresi | 30-50 saniye | 1-2 saniye |
| Port durumları | 5 (Disabled, Blocking, Listening, Learning, Forwarding) | 3 (Discarding, Learning, Forwarding) |
| BPDU gönderim | Root'tan | Her switch'ten |
| Backward compatible | - | Evet |

**INET'te STP:**

> [!NOTE]
> INET 4.5.4'te STP/RSTP protokolü tam olarak implemente edilmemiştir. Simülasyonlarda döngü içermeyen topolojiler kullanılmalı veya manuel forwarding table konfigürasyonu yapılmalıdır.

### 13.8 Error Detection ve Correction

Data Link katmanında hata tespiti ve düzeltme mekanizmaları:

**Parity Check:**

```
Even Parity Örneği:
═══════════════════

Veri: 1 0 1 1 0 1 0
      └───────────┘
       6 bit data
       
1'lerin sayısı: 4 (çift)
Parity bit: 0 (çift kalması için)

İletilen: 1 0 1 1 0 1 0 | 0
                        └─ Parity bit

Alınan:   1 0 1 1 0 1 1 | 0  (hata var!)
1'lerin sayısı: 5 (tek) → HATA TESPİT!
```

**CRC (Cyclic Redundancy Check):**

```
CRC Hesaplama:
═════════════

Generator Polynomial: G(x) = x³ + x + 1 = 1011

Data:     1 1 0 1 0 0 1
          └───────────┘
Append:   1 1 0 1 0 0 1 | 0 0 0
                        └─────┘ (degree-1 sıfır)
                        
XOR Division:
─────────────
1101001000
1011
────
 110001000
 1011
 ────
  11101000
  1011
  ────
   1011000
   1011
   ────
    000000  ← Remainder (CRC)
    
Transmitted: 1101001 | 000 (CRC)
```

**Ethernet CRC-32:**

```
Ethernet Frame:
═══════════════

┌──────────┬──────────┬──────────┬──────────┬─────────┬─────────┐
│ Preamble │ Dest MAC │ Src MAC  │  Type    │ Payload │  FCS    │
│ (8 bytes)│ (6 bytes)│ (6 bytes)│(2 bytes) │ (46-1500)│(4 bytes)│
└──────────┴──────────┴──────────┴──────────┴─────────┴─────────┘
                                             │         │
                                             └────┬────┘
                                                  │
                                            CRC-32 hesaplanır
                                            
FCS = Frame Check Sequence (CRC-32)
Polynomial: 0x04C11DB7
```

**Hamming Code (Error Correction):**

```
Hamming(7,4) - 4 bit data, 3 bit parity:
════════════════════════════════════════

Position:  1   2   3   4   5   6   7
Type:      P1  P2  D1  P4  D2  D3  D4
           
Data: D1=1, D2=0, D3=1, D4=1

P1 covers: 1,3,5,7 (odd positions)
P2 covers: 2,3,6,7
P4 covers: 4,5,6,7

P1 = D1 ⊕ D2 ⊕ D4 = 1⊕0⊕1 = 0
P2 = D1 ⊕ D3 ⊕ D4 = 1⊕1⊕1 = 1
P4 = D2 ⊕ D3 ⊕ D4 = 0⊕1⊕1 = 0

Code: 0 1 1 0 0 1 1
      P1P2D1P4D2D3D4
```

**Hata Tespit Kapasiteleri:**

| Yöntem | Tespit | Düzeltme | Overhead |
|--------|--------|----------|----------|
| Parity | 1 bit hata | Yok | 1 bit |
| CRC-32 | Burst hatalar (≤32 bit) | Yok | 32 bit |
| Hamming | 2 bit hata | 1 bit hata | ~log₂(n) bit |
| Reed-Solomon | Burst hatalar | Burst hatalar | Yüksek |

---

## 15. Kablosuz ve Mobil Ağlar

### 15.1 Kablosuz Link Özellikleri

| Özellik | Kablolu | Kablosuz |
|---------|---------|----------|
| Signal attenuation | Düşük | Mesafe ile artar |
| Interference | Yok | Diğer cihazlar |
| Multipath | Yok | Yansımalar |
| Hidden terminal | Yok | Var |

### 15.2 IEEE 802.11 (WiFi)

**802.11 Mimarisi:**

```
WiFi BSS (Basic Service Set):
═════════════════════════════

     ┌─────────────────────────────────────┐
     │            BSS Coverage             │
     │                                     │
     │    ┌──────┐     ┌─────────┐        │
     │    │ STA1 │ ◀──▶│   AP    │◀─────▶ İnternet
     │    └──────┘     │(Access  │        │
     │                 │ Point)  │        │
     │    ┌──────┐     └─────────┘        │
     │    │ STA2 │ ◀──▶      ▲            │
     │    └──────┘           │            │
     │                  ┌────┴───┐        │
     │                  │  STA3  │        │
     │                  └────────┘        │
     └─────────────────────────────────────┘
     
STA: Station (kablosuz cihaz)
AP: Access Point (bağlantı noktası)
```

**INET'te WiFi:**

```ini
# WiFi host
*.host.wlan[*].typename = "Ieee80211Interface"
*.host.wlan[*].radio.transmitter.power = 20mW
*.host.wlan[*].mac.dcf.channelAccess.pendingQueue.packetCapacity = 100

# Access Point
*.ap.wlan[*].mgmt.typename = "Ieee80211MgmtAp"
*.ap.wlan[*].mgmt.ssid = "MyNetwork"
```

### 15.3 802.11 MAC: CSMA/CA

```
CSMA/CA with RTS/CTS:
═════════════════════

Sender              Receiver
  │                    │
  │──────RTS──────────▶│  Request to Send
  │                    │
  │◀─────CTS───────────│  Clear to Send
  │                    │
  │═══════DATA════════▶│
  │                    │
  │◀─────ACK───────────│
```

---

## 16. Time-Sensitive Networking (TSN)

TSN, geleneksel Ethernet'i deterministik, düşük gecikmeli ve yüksek güvenilirlikli iletişim için genişleten IEEE 802.1 standartlar kümesidir.

### 16.1 TSN Neden Gerekli?

**Geleneksel Ethernet Sınırlamaları:**

| Özellik | Best-Effort Ethernet | TSN |
|---------|---------------------|-----|
| Gecikme | Değişken, tahmin edilemez | Sınırlı (bounded), garantili |
| Jitter | Yüksek | Düşük |
| Güvenilirlik | Paket kaybı olabilir | FRER ile sıfır kayıp |
| Önceliklendirme | Basit priority queues | TAS ile garantili zaman dilimleri |

### 16.2 TSN Uygulama Alanları

```
TSN Kullanım Alanları ve INET Desteği:
══════════════════════════════════════

┌─────────────────────────────────────────────────────────────────┐
│                     ENDÜSTRİYEL OTOMASYON                       │
│  • Robot kontrolü (<1 ms gecikme)                               │
│  • PLC senkronizasyonu                                          │
│  • Sensör-aktüatör ağları                                       │
│  INET: TsnDevice, TsnSwitch, TAS, FRER                         │
├─────────────────────────────────────────────────────────────────┤
│                        OTOMOTİV                                  │
│  • ADAS (Advanced Driver Assistance)                            │
│  • In-vehicle networking                                        │
│  • Drive-by-wire sistemleri                                     │
│  INET: Preemption, CBS, gPTP                                    │
├─────────────────────────────────────────────────────────────────┤
│                     SES/VİDEO (AVB)                              │
│  • Pro-audio canlı performans                                   │
│  • Video prodüksiyon                                            │
│  • Broadcast sistemleri                                         │
│  INET: CBS (802.1Qav), RTP                                      │
├─────────────────────────────────────────────────────────────────┤
│                        5G/TELEKOM                                │
│  • Fronthaul/backhaul ağları                                    │
│  • eCPRI                                                        │
│  INET: gPTP, TAS                                                │
└─────────────────────────────────────────────────────────────────┘
```

### 16.3 TSN Standartları Özeti

| Standart | İsim | Amaç | INET Modülü |
|----------|------|------|-------------|
| **802.1AS** | gPTP | Zaman senkronizasyonu | `Gptp` |
| **802.1Qbv** | TAS | Time-Aware Shaping | `PeriodicGate` |
| **802.1Qav** | CBS | Credit-Based Shaping | `Ieee8021qCreditBasedGate` |
| **802.1CB** | FRER | Frame Replication | `StreamSplitter`, `StreamMerger` |
| **802.1Qci** | PSFP | Stream Filtering | `StreamFilter` |
| **802.1Qbu** | FPE | Frame Preemption | `EthernetPreemptingMacLayer` |

### 16.4 TSN Temel Kavramları

#### VLAN ve Ethernet Tag'leri

**C-TAG (IEEE 802.1Q):**
- 4 byte ek başlık
- TPID: 0x8100
- PCP (Priority): 3 bit (0-7)
- VID (VLAN ID): 12 bit

**R-TAG (IEEE 802.1CB):**
- 6 byte ek başlık
- TPID: 0xF1C1
- Sequence Number: 16 bit (FRER için)

#### Priority Code Point (PCP)

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

#### 16.4.3 Kuyruk (Queue) Kavramları

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

#### 16.4.4 Zaman Kavramları

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

**TCP State Machine:**

```
TCP Connection State Diagram:
═════════════════════════════

                        ┌─────────────┐
              ┌─────────│   CLOSED    │◄────────────────┐
              │         └──────┬──────┘                 │
              │                │                        │
              │   Active Open  │  Passive Open          │
              │   send SYN     │  (server listen)       │
              │                ▼                        │
              │         ┌─────────────┐                 │
              │         │   LISTEN    │                 │
              │         └──────┬──────┘                 │
              │                │ rcv SYN                │
              │                │ send SYN+ACK          │
              │                ▼                        │
     ┌────────────────┐ ┌─────────────┐                │
     │   SYN_SENT     │ │  SYN_RCVD   │                │
     │(client waiting)│ │  (server)   │                │
     └───────┬────────┘ └──────┬──────┘                │
             │ rcv SYN+ACK     │ rcv ACK               │
             │ send ACK        │                       │
             │                 │                       │
             └────────┬────────┘                       │
                      ▼                                │
              ┌─────────────┐                          │
              │ ESTABLISHED │ ◄──── Data Transfer ────▶│
              └──────┬──────┘                          │
                     │                                 │
                     │ Close                           │
                     ▼                                 │
              ┌─────────────┐                          │
              │  FIN_WAIT_1 │ ◀─── Active Close        │
              └──────┬──────┘                          │
                     │ rcv FIN+ACK or ACK              │
                     ▼                                 │
              ┌─────────────┐      ┌─────────────┐     │
              │  FIN_WAIT_2 │      │ CLOSE_WAIT  │     │
              └──────┬──────┘      └──────┬──────┘     │
                     │ rcv FIN            │ send FIN   │
                     │ send ACK           │            │
                     ▼                    ▼            │
              ┌─────────────┐      ┌─────────────┐     │
              │  TIME_WAIT  │      │  LAST_ACK   │     │
              │  (2×MSL)    │      └──────┬──────┘     │
              └──────┬──────┘             │ rcv ACK   │
                     │ timeout            │            │
                     └────────────────────┴────────────┘
```

**3-Way Handshake (Connection Establishment):**

```
3-Way Handshake:
════════════════

Client                          Server
  │                                │
  │──────── SYN (seq=x) ─────────▶│
  │                                │
  │◀───── SYN+ACK (seq=y, ack=x+1)│
  │                                │
  │──────── ACK (ack=y+1) ────────▶│
  │                                │
  │       ESTABLISHED              │
  │◀════════ Data ════════════════▶│

seq: Sequence number (random starting point)
ack: Acknowledgment number
```

**4-Way Termination:**

```
4-Way Termination:
═══════════════════

Client                          Server
  │                                │
  │──────── FIN (seq=u) ──────────▶│ Active close
  │                                │
  │◀────── ACK (ack=u+1) ──────────│
  │                                │
  │            wait...             │ Server may continue
  │                                │ sending data
  │                                │
  │◀────── FIN (seq=v) ────────────│ Passive close
  │                                │
  │──────── ACK (ack=v+1) ─────────▶│
  │                                │
  │     TIME_WAIT (2×MSL)          │
  │            ↓                   │
  │         CLOSED                 │
```

**TCP Congestion Control:**

```
Slow Start & Congestion Avoidance:
═══════════════════════════════════

cwnd (Congestion Window)
  ^
  │                    ╱───────────
  │                   ╱ Congestion Avoidance
  │                  ╱  (AIMD: +1 MSS per RTT)
  │                 ╱
  │       ssthresh─┼─────  ← Slow Start Threshold
  │               ╱│
  │              ╱ │
  │             ╱  │
  │            ╱   │ Slow Start
  │           ╱    │ (exponential growth)
  │          ╱     │
  │─────────╱──────┼──────────────────▶ Time
         start

Slow Start: cwnd doubles every RTT
Congestion Avoidance: cwnd += 1 MSS per RTT
On packet loss: ssthresh = cwnd/2, cwnd = 1 (Tahoe)
                          cwnd = ssthresh (Reno)
```

**TCP Varyantları:**

| Varyant | Loss Detection | Recovery | Özellik |
|---------|---------------|----------|---------|
| **Tahoe** | 3 dup ACK, timeout | Slow start | İlk versiyon |
| **Reno** | 3 dup ACK | Fast recovery | Daha hızlı |
| **NewReno** | Partial ACK handling | Enhanced recovery | Çoklu kayıp |
| **Vegas** | RTT bazlı | Proactive | Kayıptan önce yavaşla |
| **CUBIC** | BIC benzeri | Aggressive | Linux default |

**INET'te TCP Konfigürasyonu:**

```ini
# TCP varyant seçimi
*.host.tcp.typename = "Tcp"
*.host.tcp.tcpAlgorithmClass = "TcpNewReno"  # veya TcpReno, TcpVegas

# TCP parametreleri
*.host.tcp.mss = 1460                         # Maximum Segment Size
*.host.tcp.windowScalingSupport = true        # Large windows
*.host.tcp.sackSupport = true                 # Selective ACK
*.host.tcp.nagleEnabled = true                # Nagle algorithm
*.host.tcp.delayedAcksEnabled = true          # Delayed ACKs
*.host.tcp.limitedTransmitEnabled = true      # RFC 3042
```

**SCTP (Stream Control Transmission Protocol):**

SCTP, TCP ve UDP'nin özelliklerini birleştiren modern bir protokoldür:

```
SCTP Multi-Streaming:
═════════════════════

TCP (Head-of-Line Blocking):
─────────────────────────────
    Stream 1: ───●───●───X───●───●───  (kayıp tüm stream'i bloklar)
    
SCTP Multi-Stream:
─────────────────────────────
    Stream 0: ───●───●───●───●───●───  (bağımsız)
    Stream 1: ───●───X───●───●───●───  (sadece bu bloklanır)
    Stream 2: ───●───●───●───●───●───  (bağımsız)
    Stream 3: ───●───●───●───●───●───  (bağımsız)
```

**SCTP Multi-Homing:**

```
Multi-Homing Topology:
══════════════════════

         ┌─────────────┐         ┌─────────────┐
         │   Client    │         │   Server    │
         │ ┌─────────┐ │         │ ┌─────────┐ │
         │ │ IP: A.1 │─┼─────────┼─│ IP: B.1 │ │  Primary path
         │ └─────────┘ │         │ └─────────┘ │
         │ ┌─────────┐ │         │ ┌─────────┐ │
         │ │ IP: A.2 │─┼ ─ ─ ─ ─┼─│ IP: B.2 │ │  Backup path
         │ └─────────┘ │         │ └─────────┘ │
         └─────────────┘         └─────────────┘
         
Primary path fails → Automatic failover to backup
No connection reset, application unaware
```

**SCTP Header ve Chunk Yapısı:**

```
SCTP Packet:
════════════

┌────────────────────────────────────────────┐
│           Common Header (12 bytes)          │
│  Source Port │ Dest Port │ Verification Tag│
│                 Checksum                    │
├────────────────────────────────────────────┤
│              Chunk 1 (DATA)                 │
├────────────────────────────────────────────┤
│              Chunk 2 (SACK)                 │
├────────────────────────────────────────────┤
│              ...                            │
└────────────────────────────────────────────┘

Chunk Types:
  DATA (0): User data
  INIT (1): Association initiation
  INIT ACK (2): Init acknowledgment
  SACK (3): Selective acknowledgment
  HEARTBEAT (4): Path verification
  SHUTDOWN (7): Graceful close
```

**INET'te SCTP Konfigürasyonu:**

```ini
# SCTP kullanımı
*.host.hasSctp = true
*.host.sctp.typename = "Sctp"
*.host.sctp.arwnd = 65535              # Advertised receiver window
*.host.sctp.numOutboundStreams = 10    # Outbound stream sayısı
*.host.sctp.numInboundStreams = 10     # Inbound stream sayısı
```

#### 4.2.2.1 RTP/RTCP (Real-Time Transport Protocol)

**Rol:** Ses, video gibi gerçek zamanlı medya iletimi

RTP (Real-time Transport Protocol) ve RTCP (RTP Control Protocol), multimedya uygulamaları için tasarlanmış protokollerdir. UDP üzerinde çalışır, güvenilirlik yerine **düşük gecikme** ve **zamanlama bilgisi** sağlar.

**RTP vs UDP vs TCP Karşılaştırması:**

| Özellik | TCP | UDP | RTP/UDP |
|---------|-----|-----|---------|
| Güvenilirlik | ✅ Garantili | ❌ Yok | ❌ Yok |
| Sıralama | ✅ Garantili | ❌ Yok | ✅ SeqNum ile |
| Gecikme | 🔴 Yüksek | 🟢 Düşük | 🟢 Düşük |
| Zamanlama | ❌ Yok | ❌ Yok | ✅ Timestamp |
| Kaynak ID | ❌ Yok | ❌ Yok | ✅ SSRC |
| QoS Feedback | ❌ Yok | ❌ Yok | ✅ RTCP |

**RTP Header Yapısı (12 byte fixed + extensions):**

```
RTP Header Format (RFC 3550):
═════════════════════════════

 0                   1                   2                   3
 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|V=2|P|X|  CC   |M|     PT      |       Sequence Number         |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|                           Timestamp                           |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|           SSRC (Synchronization Source Identifier)            |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|            CSRC (Contributing Sources) [optional]             |
|                              ...                              |
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

Field Descriptions:
  V (2 bits):  Version = 2
  P (1 bit):   Padding flag
  X (1 bit):   Extension header present
  CC (4 bits): CSRC count (0-15)
  M (1 bit):   Marker (frame boundary)
  PT (7 bits): Payload Type (codec)
  Sequence Number (16 bits): Packet ordering
  Timestamp (32 bits): Sampling instant
  SSRC (32 bits): Unique source identifier
```

**Payload Types (PT) Örnekleri:**

| PT | Codec | Media Type | Clock Rate |
|----|-------|------------|------------|
| 0 | PCMU (G.711 µ-law) | Audio | 8000 Hz |
| 8 | PCMA (G.711 A-law) | Audio | 8000 Hz |
| 9 | G.722 | Audio | 8000 Hz |
| 26 | JPEG | Video | 90000 Hz |
| 31 | H.261 | Video | 90000 Hz |
| 32 | MPEG-1/MPEG-2 Video | Video | 90000 Hz |
| 96-127 | Dynamic (SDP ile belirlenir) | Any | Variable |

**Timestamp ve Sequence Number Kullanımı:**

```
Audio Stream Example (8 kHz sampling):
═══════════════════════════════════════

Packet 1: SeqNum=1000, Timestamp=0,     Payload=160 samples (20ms)
Packet 2: SeqNum=1001, Timestamp=160,   Payload=160 samples (20ms)
Packet 3: SeqNum=1002, Timestamp=320,   Payload=160 samples (20ms)
          (Lost in network)
Packet 4: SeqNum=1003, Timestamp=480,   Payload=160 samples (20ms)

Receiver detects:
  • SeqNum jump: 1002 → 1003 (missing packet detected)
  • Timestamp gap: 320 → 480 (20ms of audio missing)
  • Action: Insert silence or concealment
```

**RTCP (RTP Control Protocol):**

RTCP, RTP oturumları için kontrol bilgisi sağlar. Genellikle RTP port + 1 kullanır.

```
RTCP Packet Types:
══════════════════

┌──────────────────┬──────────────────────────────────────────────┐
│ Type │ Name      │ Purpose                                      │
├──────┼───────────┼──────────────────────────────────────────────┤
│ 200  │ SR        │ Sender Report - Gönderici istatistikleri     │
│ 201  │ RR        │ Receiver Report - Alıcı istatistikleri       │
│ 202  │ SDES      │ Source Description - CNAME, NAME, EMAIL      │
│ 203  │ BYE       │ Goodbye - Oturumdan ayrılma                  │
│ 204  │ APP       │ Application-specific data                    │
└──────┴───────────┴──────────────────────────────────────────────┘
```

**Sender Report (SR) İçeriği:**

```
RTCP Sender Report:
═══════════════════

┌────────────────────────────────────────────────────────┐
│ NTP Timestamp (64 bits)                                │
│   - Mutlak zaman (wall-clock)                          │
├────────────────────────────────────────────────────────┤
│ RTP Timestamp (32 bits)                                │
│   - Aynı anın RTP timestamp karşılığı                  │
├────────────────────────────────────────────────────────┤
│ Sender's Packet Count (32 bits)                        │
│   - Oturum başından beri gönderilen paket sayısı       │
├────────────────────────────────────────────────────────┤
│ Sender's Octet Count (32 bits)                         │
│   - Oturum başından beri gönderilen byte sayısı        │
└────────────────────────────────────────────────────────┘
```

**Receiver Report (RR) İçeriği:**

```
RTCP Receiver Report Block:
═══════════════════════════

┌────────────────────────────────────────────────────────┐
│ SSRC of source (32 bits)                               │
│   - Rapor edilen kaynak                                │
├────────────────────────────────────────────────────────┤
│ Fraction Lost (8 bits)                                 │
│   - Son rapor dönemindeki kayıp oranı (0-255 → 0-100%) │
├────────────────────────────────────────────────────────┤
│ Cumulative Lost (24 bits)                              │
│   - Toplam kayıp paket sayısı                          │
├────────────────────────────────────────────────────────┤
│ Extended Highest Sequence Number (32 bits)             │
│   - Alınan en yüksek sequence number                   │
├────────────────────────────────────────────────────────┤
│ Interarrival Jitter (32 bits)                          │
│   - Paketler arası gecikme değişkenliği                │
├────────────────────────────────────────────────────────┤
│ Last SR Timestamp (32 bits)                            │
│   - Son SR'nin NTP timestamp'i (orta 32 bit)           │
├────────────────────────────────────────────────────────┤
│ Delay Since Last SR (32 bits)                          │
│   - SR alımından bu RR gönderimine kadar geçen süre    │
└────────────────────────────────────────────────────────┘
```

**Jitter Hesaplama:**

```
Jitter Calculation (RFC 3550):
══════════════════════════════

For each packet i:
  D(i,j) = (Rj - Ri) - (Sj - Si)
  
  Where:
    Ri, Rj = Receive timestamps (local clock)
    Si, Sj = RTP timestamps (from packet)
    
  J(i) = J(i-1) + (|D(i-1,i)| - J(i-1)) / 16

Example:
  Packet 1: Send=1000, Receive=5000
  Packet 2: Send=1160, Receive=5165
  
  D = (5165-5000) - (1160-1000) = 165 - 160 = 5 units
  
  High jitter → large buffer needed → more delay
  Low jitter → small buffer OK → less delay
```

**Jitter Buffer (Playout Buffer):**

```
Jitter Buffer Concept:
═════════════════════

Without Buffer:
  Network: ──●──●─────●──●●───●─────●──
  Output:  Choppy, gaps, out-of-order

With Buffer:
  Network:  ──●──●─────●──●●───●─────●──
  Buffer:   [●●●●●●]  (absorbs variations)
  Output:   ──●──●──●──●──●──●──●──●──  Smooth playback

Buffer Trade-off:
  Larger buffer → Smoother, but more delay
  Smaller buffer → Less delay, but more dropouts
  
Typical values:
  VoIP: 20-150 ms
  Video: 100-500 ms
  Interactive gaming: 10-50 ms
```

**INET'te RTP Modülleri:**

| Modül | Açıklama | Konum |
|-------|----------|-------|
| `Rtp` | Ana RTP protokol modülü | `transportlayer/rtp/` |
| `RtpApplication` | RTP uygulama arayüzü | `applications/rtpapp/` |
| `RtpProfile` | Profil yönetimi | `transportlayer/rtp/` |
| `RtpPayloadSender` | Payload gönderici | `transportlayer/rtp/` |
| `RtpPayloadReceiver` | Payload alıcı | `transportlayer/rtp/` |
| `RtpAvProfile` | Audio/Video profili | `profiles/avprofile/` |
| `RtpHost` | RTP node tipi | `node/rtp/` |

**INET'te RTP Konfigürasyonu:**

```ini
# RTP host kullanımı
*.host.typename = "RtpHost"

# RTP uygulama parametreleri
*.host.app.typename = "RtpApplication"
*.host.app.commonName = "RtpSession"
*.host.app.profileName = "RtpAvProfile"
*.host.app.bandwidth = 8000                    # bps
*.host.app.destinationAddress = "224.0.0.1"   # Multicast group
*.host.app.portNumber = 5004                   # RTP port (RTCP = 5005)

# Payload sender
*.host.app.payloadType = 0                     # PCMU
*.host.app.fileName = "testfile.mp3"

# Multicast IGMP
*.host.hasIpv4 = true
*.host.ipv4.igmp.typename = "Igmpv3"
```

**VoIP Tipik Akış:**

```
VoIP Call Flow with RTP/RTCP:
═════════════════════════════

    Caller                              Callee
       │                                   │
       │──── SIP INVITE ───────────────────▶│ 1. Call setup (SIP)
       │◀─── SIP 200 OK ────────────────────│
       │──── SIP ACK ──────────────────────▶│
       │                                   │
       │════ RTP Audio (PT=0, PCMU) ════════▶│ 2. Media stream
       │◀════ RTP Audio ═══════════════════│
       │                                   │
       │◀─── RTCP RR ───────────────────────│ 3. Quality feedback
       │──── RTCP SR ──────────────────────▶│    (every 5 seconds)
       │                                   │
       │──── SIP BYE ──────────────────────▶│ 4. Call teardown
       │◀─── SIP 200 OK ────────────────────│
       │                                   │
```

**RTP ile İlgili Önemli RFC'ler:**

| RFC | Konu |
|-----|------|
| RFC 3550 | RTP: A Transport Protocol for Real-Time Applications |
| RFC 3551 | RTP Profile for Audio and Video Conferences |
| RFC 4585 | Extended RTP Profile for RTCP-Based Feedback (AVPF) |
| RFC 5761 | Multiplexing RTP and RTCP on a Single Port |
| RFC 6184 | RTP Payload Format for H.264 Video |

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

**IPv6 Detayları:**

```
IPv6 Header (40 bytes - fixed):
═══════════════════════════════

┌─────────────────────────────────────────────────────────────────┐
│ Version(4) │ Traffic Class(8) │      Flow Label(20)            │
├─────────────────────────────────────────────────────────────────┤
│      Payload Length(16)       │ Next Header(8)│  Hop Limit(8)  │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│                 Source Address (128 bits)                       │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│              Destination Address (128 bits)                     │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘

Önemli farklar (IPv4'e göre):
• Sabit header boyutu (40 byte)
• Checksum yok (üst katmanlara bırakıldı)
• Fragmentation yok (source'da yapılır)
• Options → Extension Headers
```

**IPv6 Adres Türleri:**

| Tür | Prefix | Açıklama | Örnek |
|-----|--------|----------|-------|
| **Unicast** | - | Tek hedefe | 2001:db8::1 |
| **Link-local** | fe80::/10 | Aynı link'te | fe80::1 |
| **Multicast** | ff00::/8 | Gruba | ff02::1 (all nodes) |
| **Loopback** | ::1/128 | Localhost | ::1 |
| **Unspecified** | ::/128 | Tanımsız | :: |
| **Global Unicast** | 2000::/3 | Internet | 2001:db8::/32 |

**IPv6 Extension Headers:**

```
Extension Header Chain:
═══════════════════════

IPv6 Header → Hop-by-Hop → Routing → Fragment → Auth → ESP → Dest Options → Upper Layer
     │              │          │         │        │      │          │            │
 Next=0          Next=43    Next=44   Next=51  Next=50 Next=60    Next=6     (TCP)
```

| Extension Header | Next Header Value | Amaç |
|-----------------|-------------------|------|
| Hop-by-Hop Options | 0 | Router'lar tarafından işlenir |
| Routing | 43 | Source routing |
| Fragment | 44 | Fragmentation bilgisi |
| Authentication (AH) | 51 | IPsec authentication |
| ESP | 50 | IPsec encryption |
| Destination Options | 60 | Hedef tarafından işlenir |

**ICMPv6:**

```
ICMPv6 Mesaj Türleri:
═════════════════════

Error Messages (0-127):
  1: Destination Unreachable
  2: Packet Too Big
  3: Time Exceeded
  4: Parameter Problem

Informational Messages (128-255):
  128: Echo Request
  129: Echo Reply
  133: Router Solicitation
  134: Router Advertisement
  135: Neighbor Solicitation
  136: Neighbor Advertisement
  137: Redirect
```

**Neighbor Discovery Protocol (NDP):**

```
NDP vs ARP:
═══════════

ARP (IPv4):                   NDP (IPv6):
┌─────────────────┐           ┌─────────────────┐
│ Broadcast based │           │ Multicast based │
│ Separate protocol│          │ Part of ICMPv6  │
│ No validation   │           │ SEND extension  │
└─────────────────┘           └─────────────────┘

NDP Messages:
• Router Solicitation (RS): Host → "Any routers?"
• Router Advertisement (RA): Router → "I'm here, prefix=..."
• Neighbor Solicitation (NS): "Who has this IP?" (like ARP)
• Neighbor Advertisement (NA): "I have it" (like ARP reply)
```

**INET'te IPv6:**

```ini
# IPv6 etkinleştirme
*.host.hasIpv6 = true
*.host.ipv6.forwarding = false

# Dual-stack (IPv4 + IPv6)
*.host.hasIpv4 = true
*.host.hasIpv6 = true

# Router Advertisement
*.router.ipv6.routerAdvertisement = true
```

---

**MPLS (Multi-Protocol Label Switching):**

MPLS, Layer 2.5 protokolü olarak IP routing'i hızlandırır:

```
MPLS Label Stack:
═════════════════

┌────────────────────────────────────────────────────────┐
│ L2 Header │ MPLS Label │ MPLS Label │ IP Header │ Data │
│ (Ethernet)│   (outer)  │   (inner)  │           │      │
└────────────────────────────────────────────────────────┘
                  │
                  ▼
        ┌───────────────────────────────────────┐
        │ Label(20) │ TC(3) │ S(1) │ TTL(8)    │
        └───────────────────────────────────────┘
        
        Label: 0-1048575 (20 bit)
        TC: Traffic Class (QoS)
        S: Bottom of Stack (1 = son label)
        TTL: Time to Live
```

**MPLS Operations:**

```
MPLS Label Switching:
═════════════════════

          LER                LSR                 LSR                LER
        (Ingress)                                                 (Egress)
           │                  │                   │                  │
 IP Packet │                  │                   │                  │ IP Packet
───────────▶ PUSH label=100 ──▶ SWAP 100→200 ────▶ SWAP 200→300 ───▶ POP ──────▶
           │                  │                   │                  │
           
LER: Label Edge Router (label ekler/çıkarır)
LSR: Label Switch Router (label'a göre yönlendirir)

Operations:
• PUSH: Label ekle (ingress)
• SWAP: Label değiştir (transit)
• POP: Label çıkar (egress, penultimate hop)
```

**Label Switched Path (LSP):**

```
LSP Example:
════════════

R1 ────[100]──▶ R2 ────[200]──▶ R3 ────[POP]──▶ R4
 │              │                │               │
 ├──FEC: 10.0.0.0/8──────────────────────────────┤
 │              │                │               │
 └──────────────┴────────────────┴───────────────┘
                     LSP Path

FEC: Forwarding Equivalence Class
     (same treatment = same path)
```

---

**IP Multicast:**

Tek kaynaktan çoklu hedefe verimli iletim:

```
Unicast vs Broadcast vs Multicast:
══════════════════════════════════

Unicast:            Broadcast:         Multicast:
  S                   S                  S
  │                   │                  │
  └──▶ D1            ┌┴┐               ┌─┴─┐
  │                 │ │ │             │   │
  └──▶ D2           D1D2D3 ✗         D1   D3 ✓
  │                                   (D2 istemedi)
  └──▶ D3

3 paket gönder      1 paket,          1 paket,
                    herkes alır       sadece grup üyeleri
```

**IGMP (Internet Group Management Protocol):**

```
IGMP Message Flow:
═══════════════════

Host                    Router
  │                        │
  │◀── Query (224.0.0.1) ──│  "Hangi gruplarda üye var?"
  │     (periyodik)        │
  │                        │
  │── Report (224.0.0.22) ▶│  "Ben 239.1.1.1 grubundayım"
  │                        │
  │── Leave (224.0.0.2) ──▶│  "Gruptan ayrılıyorum"
  │                        │
  
IGMP Versions:
  v1: Basic join/leave
  v2: Leave group message
  v3: Source filtering (SSM)
```

**PIM-SM (Protocol Independent Multicast - Sparse Mode):**

```
PIM-SM Tree Types:
══════════════════

Shared Tree (RPT):           Source Tree (SPT):
       RP                          S
       │                           │
    ┌──┴──┐                     ┌──┴──┐
    │     │                     │     │
   R1    R2                    R1    R2
    │     │                     │     │
   D1    D2                    D1    D2

RP: Rendezvous Point          S: Source
(*, G): Any source            (S, G): Specific source
Higher latency                Lower latency
```

**INET'te Multicast:**

```ini
# Multicast routing
*.router.hasOspf = true
*.router.ospf.areaId = 0

# IGMP
*.host.hasIgmp = true

# PIM
*.router.hasPim = true
*.router.pim.mode = "SparseDense"
```

---

**Routing Algoritmaları Karşılaştırması:**

| Algoritma | Tür | Metrik | Convergence | Ölçeklenebilirlik |
|-----------|-----|--------|-------------|-------------------|
| **Dijkstra** | Link-state | Maliyet | Hızlı | Orta (OSPF) |
| **Bellman-Ford** | Distance-vector | Hop count | Yavaş | Düşük (RIP) |
| **Path-vector** | Hybrid | AS path | Orta | Yüksek (BGP) |

**Dijkstra Algoritması (OSPF):**

```
Dijkstra Örneği:
════════════════

Network:
    A ──5── B
    │\      │
    4  2    3
    │   \   │
    D ──1── C

Step 1: Start A, dist[A]=0
Step 2: Visit A's neighbors
        dist[B]=5, dist[C]=2, dist[D]=4
Step 3: Pick min (C=2), visit C's neighbors
        dist[B]=min(5, 2+3)=5
        dist[D]=min(4, 2+1)=3
Step 4: Pick min (D=3), visit D's neighbors
        (no update)
Step 5: Pick min (B=5)

Shortest paths from A:
  A→B: 5 (A-B)
  A→C: 2 (A-C)
  A→D: 3 (A-C-D)
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

**StreamMerger Buffer Mekanizması (Detaylı):**

INET'teki `StreamMerger` modülü, duplicate tespiti için **count-based** (sayı tabanlı) bir pencere kullanır:

```cpp
// StreamMerger.cc'den
int bufferSize = par("bufferSize");  // Varsayılan: 10

// Her stream için son görülen SeqNum'ları sakla
sequenceNumbers[streamName].push_back(newSeqNum);

// Pencere boyutunu aşarsa en eskisini sil
if (it.size() > bufferSize)
    it.erase(it.begin(), it.begin() + it.size() - bufferSize);

// Duplicate kontrolü: SeqNum bu listede var mı?
return !contains(sequenceNumbers[streamName], seqNum);
```

**Kritik Gözlem:** Bu buffer **time-based** (zaman tabanlı) değil, **count-based**'dir. Yani eski SeqNum'lar sadece buffer dolunca silinir, belirli bir süre sonra değil.

> [!NOTE]
> **INET vs IEEE 802.1CB Standardı Farkı:** IEEE 802.1CB standardı, duplicate tespit penceresi için `frerSeqRcvyResetMSec` adında bir **timeout** parametresi tanımlar. INET 4.5.4'te bu timeout mekanizması henüz **implemente edilmemiştir**. Bu, standart uyumluluğu için gelecekte eklenebilir.

**IEEE 802.1CB Standart Parametreleri:**

| Standart Parametresi | Açıklama | INET Karşılığı |
|---------------------|----------|----------------|
| `frerSeqRcvyHistoryLength` | Pencere boyutu | `bufferSize` ✅ Mevcut |
| `frerSeqRcvyResetMSec` | Timeout süresi | ❌ **Yok** |
| `frerSeqRcvyLatentErrorDetection` | Hata tespiti | ⚠️ Kısmi |

**FRER Paket Akışı (End-to-End Örnek):**

Aşağıdaki örnek, bir paketin Source'dan Destination'a FRER ile nasıl gittiğini gösterir:

```
📋 FRER PAKET AKIŞI (Detaylı)
═══════════════════════════════════════════════════════════════════════════

NETWORK TOPOLOGY:
                         ┌─────┐      ┌─────┐
                    ┌────│ S2A │──────│ S3A │────┐
                    │    └─────┘      └─────┘    │
SOURCE ──── S1 ─────┤                            ├──── DESTINATION
                    │    ┌─────┐      ┌─────┐    │
                    └────│ S2B │──────│ S3B │────┘
                         └─────┘      └─────┘

═══════════════════════════════════════════════════════════════════════════

STEP 1: SOURCE - Paket Oluşturma (t=0µs)
─────────────────────────────────────────────────────────────────────────
📦 app[0].source.producePacket():
   Packet: "data-0"
   └─ Payload: [UDP Data - 1000 bytes]

STEP 2: SOURCE - Stream Identifier (t=1µs)
─────────────────────────────────────────────────────────────────────────
🏷️ bridging.streamIdentifier.identifier.processPacket():
   ├─ Stream Name: "S1" atandı
   ├─ Sequence Number: 0 atandı (ilk paket)
   └─ StreamReq Tag eklendi:
      {stream: "S1", seqNum: 0}

STEP 3: SOURCE - Stream Splitter (t=2µs)
─────────────────────────────────────────────────────────────────────────
🔀 bridging.streamRelay.splitter.processPacket():
   ├─ Input: 1 paket (stream: S1)
   ├─ Mapping: {inputStream: "S1", outputStreams: ["S1a", "S1b"]}
   └─ Output: 2 paket (REPLICATION!)
      ├─ Kopya 1: {stream: "S1a", seqNum: 0}
      └─ Kopya 2: {stream: "S1b", seqNum: 0}

STEP 4: SOURCE - Stream Encoder (t=3µs)
─────────────────────────────────────────────────────────────────────────
🔖 bridging.streamCoder.encoder.processPacket():
   Kopya 1 (S1a):
   ├─ VLAN ID: 10 atandı
   ├─ PCP: 7 (high priority)
   └─ R-TAG Header eklendi:
      ┌──────────────────────────────┐
      │ TPID: 0xF1C1 | SeqNum: 0     │
      └──────────────────────────────┘
   
   Kopya 2 (S1b):
   ├─ VLAN ID: 20 atandı
   ├─ PCP: 7
   └─ R-TAG Header eklendi: SeqNum: 0

STEP 5: S1 SWITCH - Forwarding (t=10µs)
─────────────────────────────────────────────────────────────────────────
   S1a → Port 1 → S2A yoluna
   S1b → Port 2 → S2B yoluna

STEP 6: S2A/S3A PATH (t=50µs - daha kısa yol)
─────────────────────────────────────────────────────────────────────────
   S1a → S2A (10µs) → S3A (10µs) → Destination'a ulaştı

STEP 7: S2B/S3B PATH (t=80µs - daha uzun yol)
─────────────────────────────────────────────────────────────────────────
   S1b → S2B (15µs) → S3B (15µs) → Destination'a ulaştı

STEP 8: DESTINATION - Stream Decoder (t=50µs)
─────────────────────────────────────────────────────────────────────────
🔓 bridging.streamCoder.decoder.processPacket():
   ├─ R-TAG Header okundu: SeqNum: 0
   ├─ VLAN tag kaldırıldı
   └─ Stream name geri yüklendi: "S1"

STEP 9: DESTINATION - Stream Merger (t=51µs)
─────────────────────────────────────────────────────────────────────────
🔗 bridging.streamRelay.merger.processPacket():
   
   İLK KOPYA (S1a, SeqNum=0, t=50µs):
   ├─ Buffer kontrol: SeqNum 0 buffer'da var mı? HAYIR
   ├─ Karar: ✅ KABUL
   ├─ Buffer güncelle: [0]
   └─ Paketi üst katmana ilet
   
   İKİNCİ KOPYA (S1b, SeqNum=0, t=80µs):
   ├─ Buffer kontrol: SeqNum 0 buffer'da var mı? EVET
   ├─ Karar: ❌ DROP (duplicate)
   └─ Paket silindi (numPacketsFiltered++)

SONUÇ:
   ├─ Destination'a ulaşan paket sayısı: 1 ✅
   ├─ Düşürülen duplicate sayısı: 1
   └─ End-to-end latency: 50µs (kısa yol kullanıldı)
```

> [!NOTE]
> **INET Geliştirme Önerisi:** IEEE 802.1CB standardındaki `frerSeqRcvyResetMSec` timeout parametresinin INET'e eklenmesi, standart uyumluluğunu artırır ve daha gerçekçi simülasyonlar sağlar.

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

### 7.4 TsnSwitch'te İşleme (Detaylı)

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

### 7.5 Frame Preemption Senaryosu

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

## 20. Modül Tipleri ve Konfigürasyon

### 20.1 INET Modül Türleri

| Modül Tipi | Açıklama | Örnek |
|------------|----------|-------|
| **Simple** | Temel iş mantığı | `Tcp`, `Udp`, `Ipv4` |
| **Compound** | Birden fazla modül içerir | `StandardHost`, `TsnSwitch` |
| **Network** | Topoloji tanımı | Simülasyon senaryosu |

### 20.2 Initialization Stages

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

### 20.3 omnetpp.ini Yapısı

```ini
[General]
network = MyNetwork
sim-time-limit = 100s

# Ağ konfigürasyonu
*.configurator.typename = "Ipv4NetworkConfigurator"

# Host ayarları
*.host.numApps = 1
*.host.app[0].typename = "UdpBasicApp"

# İstatistik kaydı
**.scalar-recording = true
**.vector-recording = true
```

---

## 21. Signal ve İstatistik Mekanizması

### 21.1 Signal Tanımlama

```cpp
// Header dosyasında (.h)
static simsignal_t packetSentSignal;
static simsignal_t delaySignal;

// Source dosyasında (.cc)
simsignal_t MyModule::packetSentSignal = registerSignal("packetSent");
simsignal_t MyModule::delaySignal = registerSignal("delay");

// Kullanım
emit(packetSentSignal, packet);
emit(delaySignal, simTime() - packet->getCreationTime());
```

### 21.2 İstatistik Kayıt

```ned
simple MyModule {
    @signal[packetSent](type=cPacket);
    @signal[delay](type=simtime_t);
    
    @statistic[packetCount](
        source=count(packetSent);
        record=last,vector
    );
    @statistic[avgDelay](
        source=delay;
        record=mean,max,histogram,vector;
        unit=s
    );
}
```

---

## 22. Ağ Güvenliği

Bu bölümde temel ağ güvenliği konseptlerini inceleyeceğiz.

### 22.1 Kriptografi Temelleri

**Simetrik vs Asimetrik Şifreleme:**

```
Symmetric Encryption:
═════════════════════

Alice                           Bob
  │                              │
  │   Same Key (K)               │
  │◀────────────────────────────▶│
  │                              │
  │ Plaintext → E(K) → Ciphertext │
  │────────────────────────────▶ │
  │            Ciphertext → D(K) → Plaintext
  │                              │

Algorithms: AES, DES, 3DES, ChaCha20
Speed: Fast
Problem: Key distribution
```

```
Asymmetric Encryption (Public Key):
═══════════════════════════════════

Alice                           Bob
  │                              │
  │ Bob's Public Key (Pub_B)     │
  │◀─────────────────────────────│
  │                              │
  │ E(Pub_B, message)            │
  │─────────────────────────────▶│
  │            D(Priv_B, cipher) = message
  │                              │

Algorithms: RSA, ECC, Diffie-Hellman
Speed: Slow (1000x slower than symmetric)
Use: Key exchange, digital signatures
```

**Hash Fonksiyonları:**

| Algoritma | Çıktı Boyutu | Güvenlik | Kullanım |
|-----------|--------------|----------|----------|
| MD5 | 128 bit | ❌ Broken | Checksum (non-security) |
| SHA-1 | 160 bit | ❌ Deprecated | Eski sistemler |
| SHA-256 | 256 bit | ✅ Secure | TLS, Bitcoin |
| SHA-3 | Variable | ✅ Secure | Modern uygulamalar |

**Dijital İmza:**

```
Digital Signature Process:
══════════════════════════

Signing:
  Message → Hash(M) → H
  H → Sign(Priv_A) → Signature
  
Verifying:
  Signature → Verify(Pub_A) → H'
  Message → Hash(M) → H
  Compare: H == H' ? Valid : Invalid
```

### 22.2 TLS/SSL

**TLS Handshake:**

```
TLS 1.2 Handshake:
══════════════════

Client                                    Server
  │                                          │
  │──── ClientHello ────────────────────────▶│
  │     • Version: TLS 1.2                   │
  │     • Random (32 bytes)                  │
  │     • Cipher Suites (list)               │
  │     • Session ID                         │
  │                                          │
  │◀──── ServerHello ────────────────────────│
  │     • Selected Cipher Suite              │
  │     • Random (32 bytes)                  │
  │     • Session ID                         │
  │                                          │
  │◀──── Certificate ────────────────────────│
  │     • Server's X.509 certificate         │
  │                                          │
  │◀──── ServerKeyExchange ──────────────────│
  │     • DH parameters (if DHE)             │
  │                                          │
  │◀──── ServerHelloDone ────────────────────│
  │                                          │
  │──── ClientKeyExchange ──────────────────▶│
  │     • Pre-master secret (encrypted)      │
  │                                          │
  │──── ChangeCipherSpec ───────────────────▶│
  │──── Finished (encrypted) ───────────────▶│
  │                                          │
  │◀──── ChangeCipherSpec ───────────────────│
  │◀──── Finished (encrypted) ───────────────│
  │                                          │
  │════════ Encrypted Application Data ══════│
```

**TLS Sürüm Karşılaştırması:**

| Sürüm | Yıl | Durum | Özellikler |
|-------|-----|-------|------------|
| SSL 3.0 | 1996 | ❌ Deprecated | POODLE attack |
| TLS 1.0 | 1999 | ❌ Deprecated | BEAST attack |
| TLS 1.1 | 2006 | ❌ Deprecated | IV fix |
| TLS 1.2 | 2008 | ✅ Supported | AEAD, SHA-256 |
| TLS 1.3 | 2018 | ✅ Recommended | 1-RTT, 0-RTT resume |

**Cipher Suite Yapısı:**

```
Example: TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384

TLS_        Protocol
ECDHE_      Key Exchange (Elliptic Curve Diffie-Hellman)
RSA_        Authentication (certificate signature)
WITH_
AES_256_    Encryption (256-bit AES)
GCM_        Mode (Galois/Counter Mode - AEAD)
SHA384      Hash (for PRF/HMAC)
```

### 22.3 IPsec ve VPN

**IPsec Protokolleri:**

```
IPsec Components:
═════════════════

┌─────────────────────────────────────────────────────┐
│                      IPsec                          │
├──────────────────┬──────────────────────────────────┤
│        AH        │              ESP                 │
│ (Authentication  │  (Encapsulating Security         │
│     Header)      │        Payload)                  │
├──────────────────┼──────────────────────────────────┤
│ • Integrity      │ • Confidentiality               │
│ • Authentication │ • Integrity                     │
│ • Anti-replay    │ • Authentication                │
│ • NO encryption  │ • Anti-replay                   │
└──────────────────┴──────────────────────────────────┘
```

**IPsec Modları:**

```
Transport Mode:                 Tunnel Mode:
═══════════════                 ════════════

┌──────┬─────┬──────┐          ┌──────┬──────┬──────┬──────┐
│ IP   │ ESP │ Data │          │New IP│ ESP  │Old IP│ Data │
│Header│     │      │          │Header│      │Header│      │
└──────┴─────┴──────┘          └──────┴──────┴──────┴──────┘
   │      └── Encrypted           │       └── Encrypted ──┘
   │                              │
End-to-end                     Gateway-to-gateway
(host-to-host)                 (VPN tunnels)
```

**VPN Türleri:**

| Tür | Kullanım | Protokol |
|-----|----------|----------|
| **Site-to-Site** | Ofisler arası | IPsec |
| **Remote Access** | Uzak çalışan | SSL/TLS VPN |
| **Client-to-Site** | Mobil kullanıcı | OpenVPN, WireGuard |
| **Layer 2** | Transparant bridging | L2TP/IPsec |

### 22.4 Firewall ve IDS

**Firewall Türleri:**

```
Firewall Types:
═══════════════

Packet Filter:              Stateful:                Application:
┌─────────────┐            ┌─────────────┐          ┌─────────────┐
│ IP/Port     │            │ Connection  │          │ Deep Packet │
│ based rules │            │ tracking    │          │ Inspection  │
└─────────────┘            └─────────────┘          └─────────────┘
   Layer 3-4                 Layer 3-4+                Layer 7
   Fast                      More secure               Slowest
```

**IDS vs IPS:**

```
IDS (Intrusion Detection System):
─────────────────────────────────
                          ┌───────┐
Traffic ──────────────────│ IDS   │──▶ Alert!
                   copy   │ Sensor│
         ─────────────────└───────┘
              │
              ▼
        Destination (traffic continues)

IPS (Intrusion Prevention System):
──────────────────────────────────
              ┌───────┐
Traffic ─────▶│ IPS   │──▶ Block/Allow
              │ Inline│
              └───────┘
                 ▼
              Destination (filtered)
```

**IDS Detection Methods:**

| Yöntem | Açıklama | Avantaj | Dezavantaj |
|--------|----------|---------|------------|
| **Signature** | Bilinen pattern eşleştirme | Düşük false positive | Zero-day miss |
| **Anomaly** | Normal davranıştan sapma | Zero-day detection | Yüksek false positive |
| **Heuristic** | Kural tabanlı davranış | Esnek | Tuning gerektirir |

### 22.5 WiFi Güvenlik

**WiFi Security Evolution:**

| Protokol | Yıl | Şifreleme | Durum |
|----------|-----|-----------|-------|
| **WEP** | 1997 | RC4 (40/104 bit) | ❌ Broken |
| **WPA** | 2003 | TKIP (RC4) | ❌ Deprecated |
| **WPA2** | 2004 | CCMP (AES-128) | ⚠️ KRACK vulnerable |
| **WPA3** | 2018 | GCMP (AES-128/256) | ✅ Current standard |

**WPA2 4-Way Handshake:**

```
WPA2 4-Way Handshake:
═════════════════════

Client (Supplicant)           Access Point (Authenticator)
      │                                │
      │        PMK (Pairwise Master Key) derived from password
      │                                │
      │◀───── EAPOL-Key (ANonce) ─────│  Message 1
      │                                │
      │   PTK = PRF(PMK, ANonce, SNonce, MAC_AP, MAC_Client)
      │                                │
      │───── EAPOL-Key (SNonce, MIC) ─▶│  Message 2
      │                                │
      │                    Verify MIC, derive PTK
      │                                │
      │◀── EAPOL-Key (GTK, MIC) ──────│  Message 3
      │                                │
      │   Install PTK & GTK            │
      │                                │
      │───── EAPOL-Key (ACK) ─────────▶│  Message 4
      │                                │
      │═══════ Encrypted Traffic ═════│
```

**WPA3 İyileştirmeleri:**

```
WPA3 Features:
══════════════

1. SAE (Simultaneous Authentication of Equals)
   └─ Dragonfly handshake
   └─ Forward secrecy
   └─ Offline dictionary attack resistant

2. 192-bit Security Suite
   └─ For enterprise/government
   └─ CNSA compliant

3. Enhanced Open (OWE)
   └─ Encryption for open networks
   └─ No password required

4. Management Frame Protection
   └─ Mandatory
   └─ Deauth attack mitigation
```

> [!NOTE]
> INET 4.5.4, temel güvenlik simülasyonları için sınırlı destek sağlar. Güvenlik protokollerinin tam simülasyonu için ek modüller gerekebilir.

---

## 23. Kablosuz Sensör Ağları (WSN)

Kablosuz Sensör Ağları, düşük güçlü sensör düğümlerinden oluşan dağıtık sistemlerdir.

### 23.1 WSN Mimarisi

```
WSN Architecture:
═════════════════

                    ┌─────────────┐
                    │   Gateway   │◀────▶ Internet/Server
                    └──────┬──────┘
                           │
           ┌───────────────┼───────────────┐
           │               │               │
        ┌──┴──┐         ┌──┴──┐         ┌──┴──┐
        │ S1  │◀───────▶│ S2  │◀───────▶│ S3  │  Cluster Heads
        └──┬──┘         └──┬──┘         └──┬──┘
           │               │               │
     ┌─────┼─────┐   ┌─────┼─────┐   ┌─────┼─────┐
     │     │     │   │     │     │   │     │     │
    s1    s2    s3  s4    s5    s6  s7    s8    s9   Sensor Nodes
```

**WSN Node Yapısı:**

```
Sensor Node Components:
═══════════════════════

┌─────────────────────────────────────────────────┐
│                  SENSOR NODE                     │
├────────────┬────────────┬────────────┬──────────┤
│  Sensing   │ Processing │   Radio    │  Power   │
│   Unit     │   Unit     │   Unit     │  Unit    │
│            │            │            │          │
│ • Temp     │ • MCU      │ • TX/RX    │ • Battery│
│ • Light   │ • Memory   │ • Antenna  │ • Solar  │
│ • Motion  │ • ADC      │ • 2.4GHz   │ • Energy │
│ • Humidity│            │            │  Harvest │
└────────────┴────────────┴────────────┴──────────┘
```

### 23.2 WSN MAC Protokolleri

**MAC Protocol Karşılaştırması:**

| Protokol | Tür | Enerji | Gecikme | Throughput |
|----------|-----|--------|---------|------------|
| **TDMA** | Schedule-based | Düşük | Garantili | Orta |
| **S-MAC** | Contention | Orta | Değişken | Orta |
| **B-MAC** | Preamble sampling | Düşük | Yüksek | Düşük |
| **X-MAC** | Short preamble | Çok düşük | Orta | Orta |

**S-MAC (Sensor-MAC):**

```
S-MAC Sleep/Listen Cycles:
══════════════════════════

Node A: ████░░░░░░░░████░░░░░░░░████░░░░░░░░
Node B: ████░░░░░░░░████░░░░░░░░████░░░░░░░░
Node C: ████░░░░░░░░████░░░░░░░░████░░░░░░░░
        ↑           ↑           ↑
      Active      Sleep       Active
      (Listen)                (Listen)

█ = Active (listen/transmit)
░ = Sleep (power saving)

Duty Cycle = Active Time / Cycle Time
Typical: 1-10%
```

**B-MAC (Berkeley MAC):**

```
B-MAC Preamble Sampling:
════════════════════════

Sender:    ████████████████████████████████│DATA│
           └─────── Long Preamble ─────────┘

Receiver:  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
                 ↑               ↑
               Sample          Sample
               (miss)          (hit!) → Wake up → Receive DATA
```

### 23.3 WSN Routing Protokolleri

**LEACH (Low-Energy Adaptive Clustering Hierarchy):**

```
LEACH Cluster Formation:
════════════════════════

Round 1:                    Round 2:
                           
   CH1 ●───┬───●            ●───┬───● CH2
       │   │                    │
       ●   ●                    ●
           │                    │
       ●───┘                ●───┘
                            
   ●───┬───● CH2         CH1 ●───┬───●
       │                        │
       ●                        ●
       
CH rotates each round → Energy balance
```

**SPIN (Sensor Protocols for Information via Negotiation):**

```
SPIN Negotiation:
═════════════════

Node A                    Node B
   │                         │
   │──── ADV (metadata) ────▶│  "I have data X"
   │                         │
   │◀─── REQ ────────────────│  "I want data X"
   │                         │
   │──── DATA ──────────────▶│  [actual data]
   │                         │

Avoids: Implosion, Overlap
```

**Directed Diffusion:**

```
Directed Diffusion Phases:
══════════════════════════

1. Interest Propagation:
   Sink ───interest───▶ ───▶ ───▶ ───▶ Nodes
   
2. Gradient Setup:
   Sink ◀─── gradient ◀─── ◀─── ◀─── Source
   
3. Data Delivery (reinforced path):
   Sink ◀═══════DATA═══════════════ Source
```

### 23.4 Enerji Verimliliği

**Enerji Tüketim Modeli:**

```
Energy Consumption Breakdown:
═════════════════════════════

          ┌─────────────────────────────────────┐
          │         Total Energy                │
          ├─────────────────────────────────────┤
          │ ████████████████░░░░░░░░░░░░░░░░░░ │ Communication (60-70%)
          ├─────────────────────────────────────┤
          │ ████████░░░░░░░░░░░░░░░░░░░░░░░░░░ │ Processing (10-20%)
          ├─────────────────────────────────────┤
          │ ████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ │ Sensing (5-10%)
          ├─────────────────────────────────────┤
          │ ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ │ Sleep (1-5%)
          └─────────────────────────────────────┘

E_tx >> E_rx >> E_compute >> E_sleep
```

**Duty Cycling Stratejileri:**

| Strateji | Açıklama | Enerji Tasarrufu |
|----------|----------|------------------|
| **Sync Sleep** | Koordineli uyku | 80-90% |
| **Async Sleep** | Bağımsız uyku (preamble) | 90-95% |
| **Adaptive** | Trafik bazlı ayarlama | 85-95% |
| **Event-driven** | Olay tetiklemeli | 95%+ |

### 23.5 Lokalizasyon

**Lokalizasyon Teknikleri:**

```
Localization Methods:
═════════════════════

Range-based:                    Range-free:
┌────────────────────┐          ┌────────────────────┐
│ • RSSI (signal)    │          │ • Hop count        │
│ • ToA (time)       │          │ • DV-Hop           │
│ • TDoA (time diff) │          │ • Centroid         │
│ • AoA (angle)      │          │ • APIT             │
└────────────────────┘          └────────────────────┘
   More accurate                   Less hardware
   More expensive                  Less accurate
```

**Trilateration:**

```
Trilateration Example:
══════════════════════

             (x₁,y₁)
              A1 ●
              │ d₁
              │
      d₂      ▼      d₃
  A2 ●───────(x,y)───────● A3
   (x₂,y₂)   Target    (x₃,y₃)

  (x-x₁)² + (y-y₁)² = d₁²
  (x-x₂)² + (y-y₂)² = d₂²
  (x-x₃)² + (y-y₃)² = d₃²
```

### 23.6 Zaman Senkronizasyonu

**FTSP (Flooding Time Synchronization Protocol):**

```
FTSP Synchronization:
═════════════════════

Root ●       Level 0 (reference)
     │
   sync msg
     │
    ●────●   Level 1 (±10µs)
     │
    ●────●   Level 2 (±20µs)
     │
    ●        Level 3 (±30µs)

Error accumulates per hop
Typical: 1-10 µs/hop
```

**TPSN vs FTSP:**

| Özellik | TPSN | FTSP |
|---------|------|------|
| Topoloji | Hiyerarşik | Flood-based |
| Doğruluk | ~17µs | ~1.5µs |
| Overhead | 2 msg/pair | 1 msg/broadcast |
| Mobility | Zayıf | İyi |

### 23.7 INET'te WSN

> [!NOTE]
> INET 4.5.4, temel WSN senaryoları için sınırlı destek sağlar. Kapsamlı WSN simülasyonları için Castalia veya özel modüller kullanılabilir.

```ini
# Basit WSN düğümü konfigürasyonu
*.sensor[*].wlan[*].radio.transmitter.power = 1mW
*.sensor[*].wlan[*].radio.receiver.sensitivity = -100dBm
*.sensor[*].mobility.typename = "StationaryMobility"

# Enerji modülü
*.sensor[*].energyStorage.typename = "SimpleEpEnergyStorage"
*.sensor[*].energyStorage.nominalCapacity = 10J
```

---

## 24. Hücresel Ağlar

### 24.1 4G/LTE Mimarisi

```
LTE Network Architecture:
═════════════════════════

       ┌────────────────────────────────────────────────┐
       │                    EPC                          │
       │  ┌─────┐  ┌─────┐  ┌─────┐  ┌─────┐  ┌─────┐  │
       │  │ MME │  │S-GW │  │P-GW │  │ HSS │  │PCRF │  │
       │  └──┬──┘  └──┬──┘  └──┬──┘  └─────┘  └─────┘  │
       └─────┼────────┼───────┼───────────────────────┘
             │        │       │
        ┌────┴────────┴───────┴────┐
        │         S1 Interface      │
        └───────────┬───────────────┘
                    │
       ┌────────────┼────────────────────┐
       │            │     E-UTRAN        │
       │    ┌───────┴───────┐            │
       │    │     eNodeB    │            │
       │    └───────┬───────┘            │
       │   ┌────────┴────────┐           │
       │   │                 │           │
       │  ┌┴┐               ┌┴┐          │
       │  │UE│              │UE│         │
       │  └──┘              └──┘         │
       └─────────────────────────────────┘
```

**EPC Bileşenleri:**

| Bileşen | Açıklama | Fonksiyon |
|---------|----------|-----------|
| **MME** | Mobility Management Entity | Kontrol düzlemi, handover |
| **S-GW** | Serving Gateway | Anchor point, data routing |
| **P-GW** | PDN Gateway | Internet bağlantısı, IP allocation |
| **HSS** | Home Subscriber Server | Subscriber database |
| **PCRF** | Policy & Charging Rules | QoS, tarife |

### 24.2 5G Mimarisi

```
5G Architecture (NSA vs SA):
════════════════════════════

NSA (Non-Standalone):           SA (Standalone):
                               
     4G EPC                         5G Core
       │                              │
   ┌───┴───┐                     ┌────┴────┐
   │LTE eNB│◀──▶ 5G gNB          │  5G gNB │
   └───┬───┘                     └────┬────┘
       │        \                     │
      UE ────────                    UE

Uses existing 4G core           Pure 5G network
Faster deployment               Full 5G features
```

**5G Key Technologies:**

| Teknoloji | Açıklama | Fayda |
|-----------|----------|-------|
| **mmWave** | 24-100 GHz | Yüksek kapasite |
| **Massive MIMO** | 64-256 anten | Spectral efficiency |
| **Network Slicing** | Sanal ağlar | Use-case isolation |
| **URLLC** | Ultra-reliable low-latency | Industrial, V2X |
| **mMTC** | Massive machine-type | IoT, sensörler |

### 24.3 Mobility Management

**Handover Süreci:**

```
LTE Handover Process:
═════════════════════

UE          Source eNB      Target eNB        MME
│               │               │               │
│ Measurement   │               │               │
│ Report        │               │               │
│──────────────▶│               │               │
│               │               │               │
│               │ Handover      │               │
│               │ Request       │               │
│               │──────────────▶│               │
│               │               │               │
│               │ Handover ACK  │               │
│               │◀──────────────│               │
│               │               │               │
│ HO Command    │               │               │
│◀──────────────│               │               │
│               │               │               │
│───────────────────────────────▶ Random Access │
│               │               │               │
│◀─────────────────────────────── HO Complete   │
│               │               │               │
│               │               │ Path Switch   │
│               │               │──────────────▶│
│               │               │◀──────────────│
│               │               │               │
│               │ Release       │               │
│               │◀──────────────│               │
```

**Handover Türleri:**

| Tür | Açıklama | Gecikme |
|-----|----------|---------|
| **Intra-frequency** | Aynı frekans | En düşük |
| **Inter-frequency** | Farklı frekans | Orta |
| **Inter-RAT** | LTE ↔ 5G | Yüksek |

### 24.4 INET'te Cellular

> [!NOTE]
> INET, temel cellular protokol desteği sağlar. Kapsamlı LTE simülasyonları için SimuLTE veya Simu5G kullanılmalıdır.

```ini
# Cellular network example (conceptual)
*.numUes = 10
*.numEnbs = 3

# UE mobility
*.ue[*].mobility.typename = "LinearMobility"
*.ue[*].mobility.speed = 10mps
```

---

## 25. Ağ Güvenliği

Ağ güvenliği, bilgi güvenliğinin temel unsurlarını (CIA triad: Confidentiality, Integrity, Availability) ağ ortamında sağlamayı hedefler.

### 25.1 Kriptografi Temelleri

#### 25.1.1 Simetrik Şifreleme (Symmetric Encryption)

Aynı anahtar hem şifreleme hem de çözme için kullanılır.

```
Symmetric Encryption:
═════════════════════

Plaintext ──▶ │ Encryption │ ──▶ Ciphertext ──▶ │ Decryption │ ──▶ Plaintext
              │ E(K, P)    │                    │ D(K, C)    │
                   ▲                                 ▲
                   │                                 │
                   └──────────── Key (K) ───────────┘

Örnek: AES-256
  Key size: 256 bits
  Block size: 128 bits
  Rounds: 14
```

**Block Cipher vs Stream Cipher:**

| Özellik | Block Cipher | Stream Cipher |
|---------|--------------|---------------|
| **İşlem birimi** | Sabit bloklar (128 bit) | Bit veya byte |
| **Hız** | Orta | Yüksek |
| **Paralellik** | Mode'a bağlı | Sınırlı |
| **Örnek** | AES, DES, 3DES | ChaCha20, RC4 |
| **Kullanım** | Disk encryption | Streaming, TLS |

#### 25.1.2 AES (Advanced Encryption Standard) Yapısı

AES, NIST tarafından 2001'de standardize edilmiş modern block cipher'dır.

```
AES Round Structure:
═══════════════════

      State (128-bit block = 4x4 byte matrix)
               │
               ▼
        ┌──────────────┐
        │  SubBytes    │ ← S-box substitution (non-linearity)
        └──────┬───────┘
               ▼
        ┌──────────────┐
        │  ShiftRows   │ ← Row rotation (diffusion)
        └──────┬───────┘
               ▼
        ┌──────────────┐
        │  MixColumns  │ ← Column mixing (diffusion) - son round hariç
        └──────┬───────┘
               ▼
        ┌──────────────┐
        │  AddRoundKey │ ← XOR with round key
        └──────────────┘

Round Counts:
  AES-128: 10 rounds
  AES-192: 12 rounds
  AES-256: 14 rounds

S-box: 16×16 lookup table (256 entries)
  Input:  0x53 → Output: 0xED
  Non-linear transformation provides confusion
```

**AES State Matrix:**

```
State Matrix (4×4 bytes):
═══════════════════════

┌────┬────┬────┬────┐
│ s00│ s01│ s02│ s03│
├────┼────┼────┼────┤
│ s10│ s11│ s12│ s13│
├────┼────┼────┼────┤
│ s20│ s21│ s22│ s23│
├────┼────┼────┼────┤
│ s30│ s31│ s32│ s33│
└────┴────┴────┴────┘

ShiftRows Transformation:
Row 0: No shift
Row 1: Shift left 1 byte
Row 2: Shift left 2 bytes
Row 3: Shift left 3 bytes
```

#### 25.1.3 Block Cipher Modes of Operation

Block cipher'lar tek başına sadece tek blok şifreler. Birden fazla blok için modlar kullanılır.

**ECB (Electronic Codebook) - KULLANMAYIN:**

```
ECB Mode (Insecure!):
═════════════════════

P1 ──▶ │AES(K)│ ──▶ C1
P2 ──▶ │AES(K)│ ──▶ C2
P3 ──▶ │AES(K)│ ──▶ C3

Problem: Aynı plaintext = Aynı ciphertext
  → Pattern leakage (penguin image example)
  → Chosen-plaintext attacks
  
⚠️ ECB modu hiçbir zaman kullanılmamalı!
```

**CBC (Cipher Block Chaining):**

```
CBC Mode:
═════════

Encryption:
P1──▶ ⊕ ──▶│AES(K)│──▶ C1 ──┐
      ▲                     │
      │                     ▼
     IV                P2──▶ ⊕ ──▶│AES(K)│──▶ C2

C(i) = AES(K, P(i) ⊕ C(i-1))
C(0) = IV (Initialization Vector)

✓ Aynı plaintext farklı ciphertext üretir
✗ Sequential encryption (parallelizable değil)
✗ Padding oracle attacks riski
```

**CTR (Counter Mode):**

```
CTR Mode:
═════════

Nonce||Ctr(0) ──▶│AES(K)│──▶ ⊕ ◀── P1 ──▶ C1
Nonce||Ctr(1) ──▶│AES(K)│──▶ ⊕ ◀── P2 ──▶ C2
Nonce||Ctr(2) ──▶│AES(K)│──▶ ⊕ ◀── P3 ──▶ C3

C(i) = P(i) ⊕ AES(K, Nonce || Counter(i))

✓ Parallelizable (encryption & decryption)
✓ Random access to any block
✓ No padding needed
✗ Nonce reuse = catastrophic failure
```

**GCM (Galois/Counter Mode) - TLS 1.3'te Kullanılır:**

```
GCM Mode (Authenticated Encryption):
═══════════════════════════════════

CTR Encryption + GHASH Authentication

      ┌────────────────────────────────────────────────┐
      │              GCM Operation                      │
      │                                                 │
      │  Nonce||Ctr ──▶│AES│──▶ ⊕ ◀── Plaintext        │
      │                     │                           │
      │                     ▼                           │
      │               Ciphertext ──▶│GHASH│──▶ Tag     │
      │                              ▲                  │
      │                              │                  │
      │                        AAD (Additional         │
      │                        Authenticated Data)     │
      └────────────────────────────────────────────────┘

Output: Ciphertext || Authentication Tag (128-bit)

✓ Encryption + Authentication in one pass
✓ Parallelizable
✓ Hardware acceleration (AES-NI, PCLMULQDQ)
✓ TLS 1.3 mandatory cipher suite

AEAD (Authenticated Encryption with Associated Data):
  - Encrypts plaintext
  - Authenticates ciphertext + AAD (e.g., headers)
  - Detects tampering
```

**Block Cipher Mode Karşılaştırması:**

| Mode | Paralel | Auth | IV/Nonce | Kullanım |
|------|---------|------|----------|----------|
| **ECB** | ✓ | ✗ | Yok | ❌ KULLANMA |
| **CBC** | Decrypt only | ✗ | Random IV | Legacy |
| **CTR** | ✓ | ✗ | Unique nonce | Streaming |
| **GCM** | ✓ | ✓ | Unique nonce | TLS, IPsec |
| **CCM** | ✗ | ✓ | Unique nonce | IoT, WiFi |
| **XTS** | ✓ | ✗ | Sector num | Disk encryption |

#### 25.1.4 Asimetrik Şifreleme (Public-Key Cryptography)

```
Asymmetric Encryption:
══════════════════════

Key Generation:
  → Public Key (Kpub): Paylaşılabilir
  → Private Key (Kpriv): Gizli tutulmalı

Encryption:
  Ciphertext = E(Kpub, Plaintext)
  Plaintext = D(Kpriv, Ciphertext)

Digital Signature:
  Signature = Sign(Kpriv, Message)
  Valid? = Verify(Kpub, Message, Signature)
```

**RSA Algoritması (Konsept):**

```
RSA Key Generation:
═══════════════════

1. İki büyük asal sayı seç: p, q
2. n = p × q (modulus)
3. φ(n) = (p-1)(q-1)
4. e seç: gcd(e, φ(n)) = 1, genellikle e = 65537
5. d hesapla: e × d ≡ 1 (mod φ(n))

Public Key: (n, e)
Private Key: (n, d)

Encryption: C = M^e mod n
Decryption: M = C^d mod n

Key sizes (2024):
  RSA-2048: Minimum güvenli
  RSA-3072: 128-bit security level
  RSA-4096: Long-term security
```

**Elliptic Curve Cryptography (ECC):**

```
ECC Advantages:
═══════════════

Equivalent Security Levels:
┌────────────────┬─────────────┬─────────────┐
│ Security Level │ RSA Key     │ ECC Key     │
├────────────────┼─────────────┼─────────────┤
│ 80 bits        │ 1024 bits   │ 160 bits    │
│ 112 bits       │ 2048 bits   │ 224 bits    │
│ 128 bits       │ 3072 bits   │ 256 bits    │
│ 192 bits       │ 7680 bits   │ 384 bits    │
│ 256 bits       │ 15360 bits  │ 521 bits    │
└────────────────┴─────────────┴─────────────┘

Popular Curves:
  P-256 (secp256r1): NIST, genel kullanım
  P-384 (secp384r1): Yüksek güvenlik
  X25519: Modern, hızlı, TLS 1.3
  Ed25519: Digital signatures
```

#### 25.1.5 Hash Functions

```
Cryptographic Hash:
═══════════════════

Message (any size) ──▶│ Hash │──▶ Digest (fixed size)
                      │ H()  │

Properties:
  1. Deterministic: H(m) always same
  2. One-way: Cannot derive m from H(m)
  3. Collision resistant: Hard to find m1 ≠ m2 where H(m1) = H(m2)
  4. Avalanche effect: Small input change → big output change

Common Hash Functions:
┌──────────────┬─────────────┬──────────────────┐
│ Algorithm    │ Output Size │ Status           │
├──────────────┼─────────────┼──────────────────┤
│ MD5          │ 128 bits    │ ❌ BROKEN        │
│ SHA-1        │ 160 bits    │ ❌ BROKEN        │
│ SHA-256      │ 256 bits    │ ✓ Secure         │
│ SHA-384      │ 384 bits    │ ✓ Secure         │
│ SHA-512      │ 512 bits    │ ✓ Secure         │
│ SHA-3-256    │ 256 bits    │ ✓ Secure (newer) │
│ BLAKE2       │ Variable    │ ✓ Fast & Secure  │
└──────────────┴─────────────┴──────────────────┘
```

**HMAC (Hash-based Message Authentication Code):**

```
HMAC Construction:
══════════════════

HMAC(K, m) = H((K ⊕ opad) || H((K ⊕ ipad) || m))

Where:
  ipad = 0x36 repeated
  opad = 0x5C repeated
  K = key (padded to block size)

Example: HMAC-SHA256
  Input: Key = "secret", Message = "data"
  Output: 64 hex characters (256 bits)

Usage:
  - Message authentication
  - Key derivation (HKDF)
  - Password storage (PBKDF2)
```

#### 25.1.6 Digital Signatures

```
Digital Signature Algorithms:
═════════════════════════════

RSA Signature (PKCS#1 v1.5):
  Sign: s = H(m)^d mod n
  Verify: H(m) =? s^e mod n

DSA/ECDSA:
  Sign: (r, s) = Sign(k_priv, H(m))
  Verify: Valid? = Verify(k_pub, H(m), (r, s))

EdDSA (Ed25519):
  - Faster than ECDSA
  - Deterministic signatures
  - Resistant to side-channel attacks
  - Used in: SSH keys, TLS, Signal

RSA-PSS (Probabilistic Signature Scheme):
  - Randomized padding
  - Provably secure
  - Recommended over PKCS#1 v1.5
```

### 25.2 Protokol Güvenliği

#### 25.2.1 Authentication Protocols

**Challenge-Response Authentication:**

```
Challenge-Response:
═══════════════════

Client                           Server
  │                                │
  │ ──── "I am Alice" ──────────▶ │
  │                                │ Generate random R
  │ ◀──── Challenge: R ─────────── │
  │                                │
  │ Response = H(K || R)           │
  │ ──── Response ────────────────▶│
  │                                │ Verify: H(K || R) =? Response
  │ ◀──── Accept/Reject ────────── │

Variants:
  - CHAP (PPP)
  - MS-CHAP v2
  - CRAM-MD5
```

#### 25.2.2 Man-in-the-Middle (MitM) Attacks

```
Man-in-the-Middle Attack:
═════════════════════════

Normal:
  Alice ◀────────────────────────────────▶ Bob

MitM:
  Alice ◀────────▶ Eve ◀────────▶ Bob
                   (Attacker)

Attack Scenario:
  1. Eve intercepts Alice → Bob connection
  2. Eve establishes separate connections:
     - Alice ↔ Eve (Alice thinks it's Bob)
     - Eve ↔ Bob (Bob thinks it's Alice)
  3. Eve decrypts, reads, re-encrypts traffic

Prevention:
  ✓ Certificate pinning
  ✓ Mutual authentication
  ✓ Out-of-band verification
  ✓ HSTS, HPKP
```

**Reflection Attack:**

```
Reflection Attack:
══════════════════

Normal Challenge-Response:
  A → B: "I am A"
  B → A: Challenge R
  A → B: Response = H(K, R)

Attack:
  Mallory → Bob: "I am Alice"
  Bob → Mallory: Challenge R1
  
  Mallory → Bob: "I am Bob" (new connection)
  Bob → Mallory: Challenge R2 (but Mallory sends R1)
  
  Mallory reflects R1 back to get Alice's response
  
Prevention:
  - Include responder identity in response
  - Use different keys for each direction
  - Two-way authentication
```

#### 25.2.3 Needham-Schroeder Protocol

```
Needham-Schroeder Symmetric Key:
═══════════════════════════════

1. A → S: A, B, Na
2. S → A: {Na, B, Kab, {Kab, A}Kbs}Kas
3. A → B: {Kab, A}Kbs
4. B → A: {Nb}Kab
5. A → B: {Nb - 1}Kab

Vulnerability (Denning-Sacco Attack):
  If Kab is compromised, attacker can replay step 3
  
Fix (with timestamps):
  Include timestamp in ticket: {Kab, A, T}Kbs
```

#### 25.2.4 Kerberos

```
Kerberos Authentication:
════════════════════════

Components:
  - Client (C)
  - Authentication Server (AS)
  - Ticket Granting Server (TGS)
  - Service Server (SS)

Phase 1: Initial Login
────────────────────────
C → AS: Username
AS → C: {TGT}K_as || {Session Key}K_user
        (TGT = Ticket Granting Ticket)

Phase 2: Get Service Ticket
────────────────────────────
C → TGS: TGT || Authenticator || ServiceID
TGS → C: {Service Ticket}K_service || {Session Key}K_tgs

Phase 3: Access Service
─────────────────────────
C → SS: Service Ticket || Authenticator
SS → C: {Timestamp}K_session (mutual auth)

Ticket Structure:
┌──────────────────────────────────────┐
│ Username │ Service │ IP │ Timestamp  │
│ Validity │ Session Key              │
└──────────────────────────────────────┘
Encrypted with service's secret key
```

### 25.3 TLS/SSL (Transport Layer Security)

#### 25.3.1 TLS Handshake

```
TLS 1.2 Full Handshake:
═══════════════════════

Client                              Server
  │                                    │
  │ ───── ClientHello ───────────────▶ │
  │       (versions, cipher suites,    │
  │        random, extensions)         │
  │                                    │
  │ ◀──── ServerHello ──────────────── │
  │       (version, cipher suite,      │
  │        random, session ID)         │
  │                                    │
  │ ◀──── Certificate ──────────────── │
  │       (server's X.509 cert chain)  │
  │                                    │
  │ ◀──── ServerKeyExchange ────────── │
  │       (DH parameters, signature)   │
  │                                    │
  │ ◀──── ServerHelloDone ───────────  │
  │                                    │
  │ ───── ClientKeyExchange ─────────▶ │
  │       (pre-master secret)          │
  │                                    │
  │ ───── ChangeCipherSpec ──────────▶ │
  │ ───── Finished ──────────────────▶ │
  │                                    │
  │ ◀──── ChangeCipherSpec ─────────── │
  │ ◀──── Finished ──────────────────  │
  │                                    │
  │ ═════ Application Data ═══════════ │
```

**TLS 1.3 Handshake (Faster):**

```
TLS 1.3 Full Handshake (1-RTT):
═══════════════════════════════

Client                              Server
  │                                    │
  │ ───── ClientHello ───────────────▶ │
  │       + key_share                  │
  │       + supported_versions         │
  │                                    │
  │ ◀──── ServerHello ──────────────── │
  │       + key_share                  │
  │ ◀──── {EncryptedExtensions} ─────  │
  │ ◀──── {Certificate} ─────────────  │
  │ ◀──── {CertificateVerify} ───────  │
  │ ◀──── {Finished} ────────────────  │
  │                                    │
  │ ───── {Finished} ────────────────▶ │
  │                                    │
  │ ═════ Application Data ═══════════ │

TLS 1.3 0-RTT Resumption:
  - Pre-shared key from previous session
  - First flight includes encrypted data
  - Trade-off: Replay attack risk
```

**TLS Version Comparison:**

| Feature | TLS 1.0 | TLS 1.1 | TLS 1.2 | TLS 1.3 |
|---------|---------|---------|---------|---------|
| **Year** | 1999 | 2006 | 2008 | 2018 |
| **Status** | Deprecated | Deprecated | Supported | Recommended |
| **RTT** | 2 | 2 | 2 | 1 (or 0) |
| **RSA Key Exchange** | ✓ | ✓ | ✓ | ❌ Removed |
| **Forward Secrecy** | Optional | Optional | Optional | Mandatory |
| **AEAD Only** | ✗ | ✗ | ✗ | ✓ |
| **CBC Ciphers** | ✓ | ✓ | ✓ | ❌ Removed |

**TLS 1.3 Cipher Suites:**

```
TLS 1.3 Mandatory Cipher Suites:
═══════════════════════════════

TLS_AES_128_GCM_SHA256        (mandatory)
TLS_AES_256_GCM_SHA384        (recommended)
TLS_CHACHA20_POLY1305_SHA256  (mobile/low-power)

Key Exchange:
  - X25519 (Curve25519) - default
  - P-256 (secp256r1)
  - P-384

Removed in TLS 1.3:
  ❌ RSA key exchange (no forward secrecy)
  ❌ DH parameter negotiation
  ❌ CBC mode ciphers (BEAST, padding oracle)
  ❌ RC4, 3DES, MD5, SHA-1
  ❌ Compression (CRIME attack)
  ❌ Renegotiation
```

### 25.4 IPsec

```
IPsec Architecture:
═══════════════════

┌─────────────────────────────────────────────────────┐
│                    IPsec                            │
├──────────────────────┬──────────────────────────────┤
│   Security Protocols │   Key Management             │
│   ┌────────┬───────┐ │   ┌──────────────────────┐  │
│   │   AH   │  ESP  │ │   │   IKEv2 (or IKEv1)   │  │
│   └────────┴───────┘ │   └──────────────────────┘  │
├──────────────────────┴──────────────────────────────┤
│                Security Associations (SA)            │
│              Security Policy Database (SPD)          │
└─────────────────────────────────────────────────────┘
```

**AH vs ESP:**

| Feature | AH (Authentication Header) | ESP (Encapsulating Security Payload) |
|---------|---------------------------|--------------------------------------|
| **Authentication** | ✓ | ✓ |
| **Encryption** | ✗ | ✓ |
| **IP header protection** | ✓ (immutable fields) | ✗ |
| **NAT traversal** | ✗ (breaks checksum) | ✓ (NAT-T) |
| **Protocol number** | 51 | 50 |
| **Usage** | Rare | Common |

**Transport vs Tunnel Mode:**

```
Transport Mode:
═══════════════

Original:
┌────────┬────────┬─────────┐
│ IP Hdr │TCP/UDP │ Payload │
└────────┴────────┴─────────┘

Transport Mode (ESP):
┌────────┬────────┬────────┬─────────┬─────────┬───────┐
│ IP Hdr │ESP Hdr │TCP/UDP │ Payload │ESP Trail│ESP ICV│
└────────┴────────┴────────┴─────────┴─────────┴───────┘
          └─────── Encrypted ─────────┘
└───────────── Authenticated ──────────────────┘

Use case: Host-to-host communication


Tunnel Mode:
════════════

Original:
┌────────┬────────┬─────────┐
│ IP Hdr │TCP/UDP │ Payload │
└────────┴────────┴─────────┘

Tunnel Mode (ESP):
┌────────┬────────┬────────┬────────┬─────────┬─────────┬───────┐
│New IP  │ESP Hdr │Orig IP │TCP/UDP │ Payload │ESP Trail│ESP ICV│
│ Hdr    │        │ Hdr    │        │         │         │       │
└────────┴────────┴────────┴────────┴─────────┴─────────┴───────┘
          └────────────── Encrypted ──────────────────┘
└─────────────────── Authenticated ─────────────────────────────┘

Use case: VPN gateways, site-to-site
```

**IKEv2 Exchange:**

```
IKEv2 Initial Exchange:
═══════════════════════

Initiator                         Responder
    │                                 │
    │ ─── IKE_SA_INIT ──────────────▶ │
    │     HDR, SAi1, KEi, Ni          │ (DH exchange)
    │                                 │
    │ ◀── IKE_SA_INIT ─────────────── │
    │     HDR, SAr1, KEr, Nr          │
    │                                 │
    │ ─── IKE_AUTH ─────────────────▶ │
    │     {IDi, AUTH, SAi2, TSi, TSr} │ (encrypted)
    │                                 │
    │ ◀── IKE_AUTH ──────────────────  │
    │     {IDr, AUTH, SAr2, TSi, TSr} │
    │                                 │
    │     IPsec SA established        │
```

### 25.5 IEEE 802.1X Port-Based Network Access Control

```
802.1X Architecture:
════════════════════

┌────────────────┐    ┌────────────────┐    ┌──────────────────┐
│   Supplicant   │────│  Authenticator │────│ Authentication   │
│   (Client)     │EAP │  (Switch/AP)   │RADIUS│    Server       │
│                │    │                │    │  (RADIUS/TACACS+)│
└────────────────┘    └────────────────┘    └──────────────────┘
      
Port States:
  - Unauthorized: Only EAP traffic allowed
  - Authorized: All traffic allowed

EAP over LAN (EAPOL):
  - Frame type: 0x888E
  - Encapsulates EAP messages
```

**EAP Methods:**

| Method | Authentication | Credentials | Security |
|--------|---------------|-------------|----------|
| **EAP-TLS** | Mutual | Certificates | High |
| **EAP-TTLS** | Server cert | Password in tunnel | High |
| **PEAP** | Server cert | Password in tunnel | High |
| **EAP-FAST** | PAC | Password | Medium-High |
| **EAP-MD5** | Challenge-Response | Password | Low |

**802.1X Exchange:**

```
802.1X Authentication Flow:
═══════════════════════════

Supplicant          Authenticator        RADIUS Server
    │                     │                    │
    │ ◀─ EAP-Request/ID ──│                    │
    │                     │                    │
    │ ── EAP-Response/ID ▶│                    │
    │                     │                    │
    │                     │── Access-Request ─▶│
    │                     │   (EAP-Response)   │
    │                     │                    │
    │                     │◀─ Access-Challenge │
    │ ◀── EAP-Request ────│   (EAP-Request)    │
    │                     │                    │
    │ ─── EAP-Response ──▶│                    │
    │                     │── Access-Request ─▶│
    │                     │                    │
    │                     │◀── Access-Accept ──│
    │ ◀─── EAP-Success ───│   (with VLAN,     │
    │                     │    ACL, etc.)      │
    │                     │                    │
    │     Port Authorized │                    │
```

### 25.6 SSH (Secure Shell)

```
SSH Protocol Layers:
════════════════════

┌────────────────────────────────────────┐
│    Connection Protocol (SSH-CONN)      │
│    - Channel multiplexing              │
│    - Port forwarding                   │
│    - X11 forwarding                    │
├────────────────────────────────────────┤
│    User Authentication (SSH-USERAUTH)  │
│    - Password                          │
│    - Public key                        │
│    - Keyboard-interactive              │
├────────────────────────────────────────┤
│    Transport Protocol (SSH-TRANS)      │
│    - Key exchange                      │
│    - Encryption                        │
│    - MAC                               │
└────────────────────────────────────────┘
          │
          ▼
       TCP/IP
```

**SSH Key Exchange:**

```
SSH Key Exchange (Diffie-Hellman):
══════════════════════════════════

Client                              Server
   │                                   │
   │ ── SSH_MSG_KEXINIT ─────────────▶ │
   │    (supported algorithms)         │
   │                                   │
   │ ◀─ SSH_MSG_KEXINIT ────────────── │
   │    (selected algorithms)          │
   │                                   │
   │ ── SSH_MSG_KEXDH_INIT ──────────▶ │
   │    (client DH public value)       │
   │                                   │
   │ ◀─ SSH_MSG_KEXDH_REPLY ────────── │
   │    (server DH public value,       │
   │     server host key,              │
   │     signature)                    │
   │                                   │
   │ ─── SSH_MSG_NEWKEYS ────────────▶ │
   │ ◀── SSH_MSG_NEWKEYS ───────────── │
   │                                   │
   │    Encrypted channel established  │

Host Key Verification:
  First connection: "Accept this fingerprint?"
  Subsequent: Compare with known_hosts
  Warning if changed: Potential MitM attack
```

### 25.7 Firewall ve IDS/IPS

#### 25.7.1 Firewall Types

```
Firewall Evolution:
═══════════════════

1. Packet Filter (Stateless)
   - Layer 3-4 inspection
   - IP addresses, ports
   - Fast, but no context

2. Stateful Firewall
   - Tracks connection state
   - Understands TCP handshake
   - Better than packet filter

3. Application Layer Gateway (Proxy)
   - Layer 7 inspection
   - Deep packet inspection
   - Slower, but thorough

4. Next-Generation Firewall (NGFW)
   - Stateful + DPI
   - Application awareness
   - IPS integration
   - User identity
```

**Stateful vs Stateless:**

```
Stateless Packet Filter:
════════════════════════

Rule: Allow TCP dst port 80

Problem:
  Incoming SYN to port 80 → Allowed ✓
  Incoming ACK to port 80 → Allowed ✓ (but could be attack!)

Stateful Firewall:
══════════════════

Connection Table:
┌─────────────┬─────────────┬───────┬─────────┬───────┐
│ Src IP      │ Dst IP      │ SPort │ DPort   │ State │
├─────────────┼─────────────┼───────┼─────────┼───────┤
│ 192.168.1.5 │ 10.0.0.100  │ 54321 │ 80      │ ESTAB │
│ 192.168.1.8 │ 10.0.0.100  │ 12345 │ 443     │ SYN_SENT│
└─────────────┴─────────────┴───────┴─────────┴───────┘

  Incoming packet checked against connection table
  No matching entry → Check rules or drop
```

#### 25.7.2 IDS/IPS

```
IDS vs IPS:
═══════════

IDS (Intrusion Detection System):
  - Passive monitoring
  - Alert only
  - Out-of-band deployment

IPS (Intrusion Prevention System):
  - Inline deployment
  - Block malicious traffic
  - Can drop/reset connections

Detection Methods:
──────────────────

1. Signature-based:
   - Known attack patterns
   - Fast, accurate for known attacks
   - Cannot detect zero-day

2. Anomaly-based:
   - Baseline normal behavior
   - Detect deviations
   - Can detect zero-day
   - Higher false positives

3. Protocol Analysis:
   - Validate protocol compliance
   - Detect malformed packets
```

### 25.8 Wireless Security

#### 25.8.1 WiFi Security Evolution

| Standard | Encryption | Authentication | Status |
|----------|------------|----------------|--------|
| **WEP** | RC4 (24-bit IV) | Shared key | ❌ Broken |
| **WPA** | TKIP (RC4) | PSK or 802.1X | ⚠️ Deprecated |
| **WPA2** | CCMP (AES) | PSK or 802.1X | ✓ Secure |
| **WPA3** | GCMP-256, SAE | SAE or 802.1X | ✓ Recommended |

**WPA2 4-Way Handshake:**

```
WPA2 4-Way Handshake:
═════════════════════

PTK (Pairwise Transient Key) Generation:
  PTK = PRF(PMK, "Pairwise key expansion",
            Min(AA,SPA) || Max(AA,SPA) || Min(ANonce,SNonce) || Max(ANonce,SNonce))

Where:
  PMK = From password (PSK) or RADIUS (802.1X)
  AA = Authenticator Address (AP MAC)
  SPA = Supplicant Address (Client MAC)

Handshake:
─────────────────────────────────────────────────

Client                              Access Point
   │                                      │
   │    (both have PMK from password      │
   │     or 802.1X authentication)        │
   │                                      │
   │ ◀──── Message 1: ANonce ───────────  │
   │                                      │
   │   Client generates PTK               │
   │                                      │
   │ ────  Message 2: SNonce, MIC ──────▶ │
   │                                      │
   │                     AP generates PTK │
   │                     verifies MIC     │
   │                                      │
   │ ◀──── Message 3: GTK (encrypted) ─── │
   │       Install PTK, MIC               │
   │                                      │
   │ ────  Message 4: ACK ─────────────▶  │
   │                                      │
   │      Encrypted data exchange         │

PTK Components:
  - KCK (Key Confirmation Key): MIC for EAPOL
  - KEK (Key Encryption Key): GTK encryption
  - TK (Temporal Key): Data encryption
```

**WPA3 Improvements:**

```
WPA3 SAE (Simultaneous Authentication of Equals):
═════════════════════════════════════════════════

Also known as "Dragonfly" key exchange

Advantages over WPA2-PSK:
  ✓ Forward secrecy
  ✓ Offline dictionary attack protection
  ✓ Key confirmation
  ✓ No PMK derivation from password alone

WPA3 Features:
  - SAE for personal
  - 192-bit security for enterprise (CNSA Suite)
  - Protected Management Frames (PMF) mandatory
  - Opportunistic Wireless Encryption (OWE) for open networks
```

### 25.9 TSN Protokollerine Yönelik Saldırılar

> [!WARNING]
> Bu bölüm genel TSN güvenlik açıklarını açıklar. Özel implementasyon detayları gizli bilgi olarak korunmaktadır.

#### 25.9.1 gPTP (802.1AS) Saldırıları

```
Time Synchronization Attacks:
═════════════════════════════

1. Sync Message Injection:
   - Attacker injects fake Sync messages
   - Slaves sync to wrong time
   - Effect: TAS gate schedules misalign

2. Delay Attack:
   - Asymmetric delay injection
   - Pdelay measurements corrupted
   - Effect: Clock offset errors

3. Master Spoofing:
   - Attacker claims to be grandmaster
   - Requires lower priority BMCA values
   - Effect: Takes over time distribution

4. Announce Message Manipulation:
   - Modify BMCA parameters
   - Force grandmaster election changes
   - Effect: Unstable time domain

Countermeasures:
  ✓ MACsec encryption
  ✓ 802.1AS-Rev authentication (experimental)
  ✓ Hardware timestamping verification
  ✓ Redundant time sources
```

#### 25.9.2 TAS (802.1Qbv) Saldırıları

```
Time-Aware Shaper Attacks:
══════════════════════════

1. Gate Control List Manipulation:
   - If configurator compromised
   - Change gate schedules
   - Effect: Priority inversion, deadline miss

2. Time Desynchronization Attack:
   - Attack gPTP first
   - Gates open at wrong times
   - Effect: Critical traffic blocked

3. Queue Overflow Attack:
   - Inject traffic during closed gates
   - Fill up queues
   - Effect: Legitimate traffic dropped

4. Guard Band Exploitation:
   - Time transmissions at guard band edges
   - Exploit frame preemption timing
   - Effect: Delayed critical traffic

Impact on Real-Time Systems:
  - Missed deadlines in automotive
  - Control loop instability in industrial
  - Audio/video desynchronization in AV
```

#### 25.9.3 FRER (802.1CB) Saldırıları

```
Frame Replication and Elimination Attacks:
══════════════════════════════════════════

1. Sequence Number Exhaustion:
   - Valid sequence numbers are limited (16-bit)
   - Wrap-around can cause confusion
   - Effect: Legitimate frames dropped

2. Duplicate Injection:
   - Inject frames with valid sequence numbers
   - If accepted before legitimate frame
   - Effect: Replay of old/malicious data

3. Path Manipulation:
   - Disable one redundant path
   - Single point of failure created
   - Effect: No redundancy during attack on remaining path

4. Buffer Overflow:
   - StreamMerger has limited buffer (default: 10)
   - Rapid sequence number jumping
   - Effect: Old numbers accepted as new

INET-Specific Note:
  INET's StreamMerger uses bufferSize-based duplicate detection
  without time-based timeout (frerSeqRcvyResetMSec absent).
  This differs from IEEE 802.1CB standard behavior.
```

#### 25.9.4 CBS (802.1Qav) Saldırıları

```
Credit-Based Shaper Attacks:
════════════════════════════

1. Credit Starvation:
   - Flood with high-priority traffic
   - CBS queues run out of credit
   - Effect: AVB streams interrupted

2. Bandwidth Reservation Exhaustion:
   - Claim maximum bandwidth via SRP
   - Leave no room for new streams
   - Effect: Denial of service for new talkers

3. Stream Reservation Spoofing:
   - Fake talker advertise messages
   - Register non-existent streams
   - Effect: Bandwidth waste, SRP confusion
```

#### 25.9.5 TSN Güvenlik Önerileri

```
TSN Security Recommendations:
═════════════════════════════

1. Network Layer Protection:
   ✓ MACsec (802.1AE) for link encryption
   ✓ 802.1X for port-based access control
   ✓ Physical security of network infrastructure

2. Configuration Protection:
   ✓ Secure configuration channel (TLS)
   ✓ Role-based access control
   ✓ Configuration integrity verification

3. Monitoring and Detection:
   ✓ Timing anomaly detection
   ✓ Sequence number monitoring
   ✓ Traffic pattern analysis
   ✓ gPTP master changes alerting

4. Redundancy Design:
   ✓ Diverse paths (not just replicated)
   ✓ Multiple time sources
   ✓ Fail-secure defaults

5. INET Specific:
   ✓ Increase StreamMerger.bufferSize for better duplicate detection
   ✓ Monitor sequence number gaps
   ✓ Consider custom timeout implementation
```

---

## 26. Ağ Tasarımı ve Optimizasyon

Bu bölüm Pióro & Medhi'nin "Routing, Flow, and Capacity Design" kitabından temel kavramları içerir.

### 26.1 Network Design Problems

#### 26.1.1 Traffic Demand Matrix

```
Demand Matrix (Traffic Matrix):
═══════════════════════════════

        Dest
         │  A    B    C    D
    ─────┼────────────────────
      A  │  0   100   50   75
Src   B  │ 120    0   80   90
      C  │  60   40    0  110
      D  │  85   55   95    0

d(s,t) = Traffic demand from s to t (Mbps, etc.)

This matrix drives:
  - Capacity planning
  - Routing decisions
  - Cost optimization
```

#### 26.1.2 Capacity Dimensioning

```
Basic Capacity Problem:
═══════════════════════

Given:
  - Network topology G(V, E)
  - Demand matrix D
  - Link costs c(e)

Find:
  - Link capacities y(e)
  - Routing flows x(e,d)

Minimize:
  Total cost = Σ c(e) × y(e)

Subject to:
  - Flow conservation at each node
  - Capacity constraints: Σ x(e,d) ≤ y(e)
  - Non-negativity
```

#### 26.1.3 Shortest Path Routing Optimization

```
OSPF/IS-IS Weight Optimization:
═══════════════════════════════

Standard routing uses shortest paths based on link weights.
Problem: Choose weights to minimize congestion.

Objective:
  Minimize max link utilization
  or
  Minimize Σ delay_function(load/capacity)

Constraint:
  Traffic must follow shortest paths for given weights

Approach:
  1. Start with initial weights (e.g., inverse capacity)
  2. Calculate resulting flows
  3. Identify congested links
  4. Adjust weights to redistribute traffic
  5. Iterate until convergence

This is NP-hard → Use heuristics:
  - Local search
  - Simulated annealing
  - Genetic algorithms
```

### 26.2 Fairness Concepts

#### 26.2.1 Max-Min Fairness (MMF)

```
Max-Min Fair Allocation:
════════════════════════

Definition:
  An allocation is max-min fair if you cannot increase
  any flow's rate without decreasing a smaller flow.

Algorithm (Water Filling):
  1. Start with all flows at 0
  2. Increase all flows equally
  3. When a link saturates, freeze flows using it
  4. Continue increasing unfrozen flows
  5. Repeat until all flows frozen

Example:
  Link capacity = 10 Mbps
  3 flows sharing link

  Max-min fair: Each gets 10/3 = 3.33 Mbps
```

#### 26.2.2 Proportional Fairness

```
Proportional Fairness:
══════════════════════

Definition:
  Allocation x* is proportionally fair if for any other x:
  
  Σ (x_i - x*_i) / x*_i ≤ 0

Equivalently: Maximize Σ log(x_i)

TCP Behavior:
  TCP's AIMD naturally achieves proportional fairness
  in the long run (under certain conditions)

Comparison:
  MMF: Prioritizes smallest flows
  PF: Balance between efficiency and fairness
  Efficiency: Maximize total throughput (may starve some flows)
```

### 26.3 Restoration and Protection Design

#### 26.3.1 Protection Schemes

```
Protection vs Restoration:
══════════════════════════

Protection (Pre-planned):
  - Backup paths pre-computed
  - Resources pre-allocated
  - Fast failover (< 50ms)
  - Higher resource usage

Restoration (Dynamic):
  - Backup paths computed after failure
  - Resources allocated on demand
  - Slower failover
  - More efficient resource usage


1+1 Protection:
═══════════════

       ┌─────────────┐
  S ───┤  Primary    ├─── D
       └─────────────┘
  S ───┤  Backup     ├─── D
       └─────────────┘

  - Both paths active
  - Receiver selects best
  - Immediate failover
  - 100% capacity overhead


1:1 Protection:
═══════════════

       ┌─────────────┐
  S ───┤  Primary    ├─── D (active)
       └─────────────┘
       ┌─────────────┐
  S ───┤  Backup     ├───   (standby)
       └─────────────┘

  - Backup idle until failure
  - Switchover needed
  - Backup can carry low-priority traffic
  - ~100% capacity overhead


Shared Protection:
══════════════════

Multiple working paths share backup resources

  Path 1: A──B──C (working)
  Path 2: D──E──F (working)
  
  Shared backup: G──H──I

  Assumption: Single failure at a time
  Capacity savings when paths don't share risk
```

#### 26.3.2 TSN FRER ile Protection İlişkisi

```
FRER as 1+1 Protection:
═══════════════════════

FRER (IEEE 802.1CB) implements 1+1 protection for Ethernet:

  ┌─────────────────────────────────────────┐
  │              Stream Splitter            │
  │  (replicates frames to multiple paths)  │
  └───────────┬───────────────┬─────────────┘
              │               │
              ▼               ▼
        ┌──────────┐    ┌──────────┐
        │ Path A   │    │ Path B   │
        │(primary) │    │ (backup) │
        └────┬─────┘    └────┬─────┘
             │               │
             ▼               ▼
  ┌─────────────────────────────────────────┐
  │              Stream Merger              │
  │  (eliminates duplicates, selects first) │
  └─────────────────────────────────────────┘

Key difference from traditional 1+1:
  - Per-frame replication (not per-flow)
  - Sequence number based elimination
  - No explicit switchover mechanism
```

### 26.4 Multi-Layer Network Design

```
Multi-Layer Network Concept:
════════════════════════════

Layer 3 (IP/MPLS):
  ┌─────────────────────────────────────────┐
  │    Logical topology (LSPs, VPNs)        │
  └─────────────────────────────────────────┘
                     ▲
                     │ mapping
                     ▼
Layer 2 (Ethernet):
  ┌─────────────────────────────────────────┐
  │    VLANs, MPLS tunnels                  │
  └─────────────────────────────────────────┘
                     ▲
                     │ mapping
                     ▼
Layer 1 (Optical):
  ┌─────────────────────────────────────────┐
  │    Wavelengths, fiber paths             │
  └─────────────────────────────────────────┘

Design considerations:
  - Cross-layer optimization
  - Failure propagation
  - Grooming (multiplexing lower-speed circuits)
```

---



## 27. Yararlı Kaynaklar

### 27.1 INET Framework Kaynakları

| Kaynak | URL/Konum |
|--------|-----------|
| INET User's Guide | https://inet.omnetpp.org/docs/users-guide/ |
| INET Developer's Guide | https://inet.omnetpp.org/docs/developers-guide/ |
| TSN Showcases | `showcases/tsn/` dizini |
| Tutorials | `tutorials/` dizini |
| API Reference | `doc/` dizini |

### 27.2 Temel Ağ Ders Kitapları

Bu kılavuzun içeriği aşağıdaki ders kitaplarından faydalanılarak hazırlanmıştır:

| Yazar(lar) | Kitap | Baskı | Kullanıldığı Bölümler |
|------------|-------|-------|------------------------|
| **Kurose, J.F. & Ross, K.W.** | Computer Networking: A Top-Down Approach | 8th ed., 2021 | Protokol katmanları, TCP/UDP, Routing, DNS, HTTP, Network Core |
| **Tanenbaum, A.S. & Wetherall, D.J.** | Computer Networks | 5th ed., 2011 | Physical Layer, Data Link, Ethernet, Wireless |
| **Comer, D.E.** | Internetworking with TCP/IP Vol. 1 | 6th ed., 2014 | IP, ICMP, ARP, TCP detayları |
| **Stevens, W.R.** | TCP/IP Illustrated, Volume 1 | 2nd ed., 2011 | TCP State Machine, Socket API |
| **Akyildiz, I.F. & Vuran, M.C.** | Wireless Sensor Networks | 2010 | WSN MAC, Routing, Energy Efficiency |

### 27.3 Güvenlik ve Kriptografi Kaynakları

| Yazar(lar) | Kitap | Baskı | Kullanıldığı Bölümler |
|------------|-------|-------|------------------------|
| **Stallings, W.** | Cryptography and Network Security | 8th ed., 2023 | AES, Block Cipher Modes, Hash Functions, Digital Signatures |
| **Stallings, W.** | Network Security Essentials | 6th ed., 2017 | TLS/SSL, IPsec, 802.1X, EAP, SSH |
| **Anderson, R.J.** | Security Engineering | 3rd ed., 2020 | Protocol Security, Authentication, MitM, Kerberos |

### 27.4 Ağ Tasarımı ve Optimizasyon

| Yazar(lar) | Kitap | Baskı | Kullanıldığı Bölümler |
|------------|-------|-------|------------------------|
| **Pióro, M. & Medhi, D.** | Routing, Flow, and Capacity Design in Communication and Computer Networks | 2nd ed., 2014 | Network Design, Fairness, Protection/Restoration |

### 27.5 IEEE Standartları

| Standart | Başlık | Kapsam |
|----------|--------|--------|
| IEEE 802.1AS-2020 | Timing and Synchronization | gPTP, zaman senkronizasyonu |
| IEEE 802.1Qbv-2015 | Traffic Scheduling | Time-Aware Shaper (TAS) |
| IEEE 802.1Qav-2009 | Forwarding and Queuing | Credit-Based Shaper (CBS) |
| IEEE 802.1CB-2017 | Frame Replication and Elimination | FRER |
| IEEE 802.1Qci-2017 | Per-Stream Filtering and Policing | PSFP |
| IEEE 802.1Qbu-2016 | Frame Preemption | Express/Preemptable traffic |
| IEEE 802.1AE-2018 | MAC Security | MACsec |
| IEEE 802.1X-2020 | Port-Based Network Access Control | NAC |

---



## Özet Tablo: TSN Özellikleri

| Özellik | Standart | Amaç | INET Parametre |
|---------|----------|------|----------------|
| Time Sync | 802.1AS | Saat senkronizasyonu | `hasTimeSynchronization` |
| TAS | 802.1Qbv | Garantili gecikme | `hasEgressTrafficShaping` |
| CBS | 802.1Qav | AVB streaming | `hasEgressTrafficShaping` |
| PSFP | 802.1Qci | Rate limiting | `hasIngressTrafficFiltering` |
| FRER | 802.1CB | Güvenilirlik | `hasStreamRedundancy` |
| Preemption | 802.1Qbu | Ultra-düşük gecikme | `hasFramePreemption` |
| Cut-through | - | Düşük gecikme | `hasCutthroughSwitching` |

---

## Özet Tablo: Ağ Katmanları ve INET

| Katman | Teori Konuları | INET Modülleri |
|--------|----------------|----------------|
| **Application** | HTTP, DNS, Socket | `applications/` |
| **Transport** | TCP/UDP, Congestion Control | `transportlayer/` |
| **Network** | IP, Routing (OSPF, BGP) | `networklayer/`, `routing/` |
| **Link** | Ethernet, VLAN, ARP | `linklayer/` |
| **Physical** | Wired, Wireless | `physicallayer/` |
| **TSN** | 802.1AS/Qbv/Qav/CB/Qci/Qbu | `ieee8021*/`, `queueing/` |

---

*Bu döküman, INET Framework 4.5.4 sürümü için hazırlanmıştır.*
*Network Teorisi ile INET implementasyonlarını birleştiren kapsamlı bir kılavuzdur.*
*Son Güncelleme: Ocak 2026*

