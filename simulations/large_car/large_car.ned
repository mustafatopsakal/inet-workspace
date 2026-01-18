package simulations.large_car;

import inet.networks.base.TsnNetworkBase;
import inet.node.contract.IEthernetNetworkNode;
import inet.node.ethernet.Eth1G;
import inet.node.tsn.TsnDevice;
import inet.node.tsn.TsnSwitch;


network LargeCarNetwork extends TsnNetworkBase
{
    @display("bgb=2200,950");
    
    submodules:
        // Backbone Switches
        Switch1: TsnSwitch {
            @display("p=461,62");
        }
        Switch2: TsnSwitch {
            @display("p=1005,364");
        }
        Switch3: TsnSwitch {
            @display("p=1651,62");
        }
        
        // Aggregation Switches
        FrontLeftSwitch: TsnSwitch {
            @display("p=461,341");
        }
        FrontRightSwitch: TsnSwitch {
            @display("p=1005,498");
        }
        RearSwitch: TsnSwitch {
            @display("p=1673,298");
        }
        
        // Edge Switches
        EndSwitch1: TsnSwitch {
            @display("p=461,498");
        }
        EndSwitch2: TsnSwitch {
            @display("p=1701,477");
        }
        
        // Vehicle Control Centers
        VCC1: TsnDevice {
            @display("p=189,62");
        }
        VCC2: TsnDevice {
            @display("p=1005,194");
        }
        VCC3: TsnDevice {
            @display("p=1847,62");
        }
        
        // Brake Actuators
        BrakeAct1: TsnDevice {
            @display("p=258,341");
        }
        BrakeAct2: TsnDevice {
            @display("p=860,646");
        }
        BrakeAct3: TsnDevice {
            @display("p=1879,238");
        }
        
        // Window Actuators
        WinAct1: TsnDevice {
            @display("p=664,450");
        }
        WinAct2: TsnDevice {
            @display("p=1215,583");
        }
        WinAct3: TsnDevice {
            @display("p=1494,385");
        }
        
        // Cameras
        Cam1: TsnDevice {
            @display("p=574,646");
        }
        Cam2: TsnDevice {
            @display("p=832,530");
        }
        Cam3: TsnDevice {
            @display("p=1720,583");
        }
        Cam4: TsnDevice {
            @display("p=1893,583");
        }
        
        // Radars
        Radar1: TsnDevice {
            @display("p=850,397");
        }
        Radar2: TsnDevice {
            @display("p=1521,583");
        }
        
        // Video Unit
        Video: TsnDevice {
            @display("p=1118,646");
        }
        
        // Lidar Sensor
        Lidar: TsnDevice {
            @display("p=339,646");
        }
        
        // Front Left Controller
        FLC: TsnDevice {
            @display("p=664,341");
        }
        
        // Front Right Controller
        FRC: TsnDevice {
            @display("p=1215,420");
        }
        
        // Rear Controller
        RC: TsnDevice {
            @display("p=1494,283");
        }
        
        // Audio Units
        Audio1: TsnDevice {
            @display("p=207,450");
        }
        Audio2: TsnDevice {
            @display("p=1005,646");
        }
        Audio3: TsnDevice {
            @display("p=1847,397");
        }
        
        // Optional Master Clock (disabled by default)
        masterClock: <> like IEthernetNetworkNode if typename != "" {
            @display("p=100,34;i=device/card");
        }

    connections:
        // Backbone connections
        Switch1.ethg++ <--> Eth1G <--> Switch2.ethg++;
        Switch1.ethg++ <--> Eth1G <--> Switch3.ethg++;
        Switch2.ethg++ <--> Eth1G <--> Switch3.ethg++;
        
        // Switch1 to FrontLeftSwitch
        Switch1.ethg++ <--> Eth1G <--> FrontLeftSwitch.ethg++;
        
        // FrontLeftSwitch to EndSwitch1
        FrontLeftSwitch.ethg++ <--> Eth1G <--> EndSwitch1.ethg++;
        
        // Switch2 to FrontRightSwitch
        Switch2.ethg++ <--> Eth1G <--> FrontRightSwitch.ethg++;
        
        // Switch3 to RearSwitch
        Switch3.ethg++ <--> Eth1G <--> RearSwitch.ethg++;
        
        // RearSwitch to EndSwitch2
        RearSwitch.ethg++ <--> Eth1G <--> EndSwitch2.ethg++;
        
        // VCC connections to backbone switches
        VCC1.ethg++ <--> Eth1G <--> Switch1.ethg++;
        VCC2.ethg++ <--> Eth1G <--> Switch2.ethg++;
        VCC3.ethg++ <--> Eth1G <--> Switch3.ethg++;
        
        // FrontLeftSwitch device connections
        BrakeAct1.ethg++ <--> Eth1G <--> FrontLeftSwitch.ethg++;
        Audio1.ethg++ <--> Eth1G <--> FrontLeftSwitch.ethg++;
        WinAct1.ethg++ <--> Eth1G <--> FrontLeftSwitch.ethg++;
        FLC.ethg++ <--> Eth1G <--> FrontLeftSwitch.ethg++;
        
        // EndSwitch1 device connections
        Lidar.ethg++ <--> Eth1G <--> EndSwitch1.ethg++;
        Cam1.ethg++ <--> Eth1G <--> EndSwitch1.ethg++;
        
        // FrontRightSwitch device connections
        Radar1.ethg++ <--> Eth1G <--> FrontRightSwitch.ethg++;
        Cam2.ethg++ <--> Eth1G <--> FrontRightSwitch.ethg++;
        BrakeAct2.ethg++ <--> Eth1G <--> FrontRightSwitch.ethg++;
        Audio2.ethg++ <--> Eth1G <--> FrontRightSwitch.ethg++;
        Video.ethg++ <--> Eth1G <--> FrontRightSwitch.ethg++;
        WinAct2.ethg++ <--> Eth1G <--> FrontRightSwitch.ethg++;
        FRC.ethg++ <--> Eth1G <--> FrontRightSwitch.ethg++;
        
        // RearSwitch device connections
        RC.ethg++ <--> Eth1G <--> RearSwitch.ethg++;
        WinAct3.ethg++ <--> Eth1G <--> RearSwitch.ethg++;
        Audio3.ethg++ <--> Eth1G <--> RearSwitch.ethg++;
        BrakeAct3.ethg++ <--> Eth1G <--> RearSwitch.ethg++;
        
        // EndSwitch2 device connections
        Radar2.ethg++ <--> Eth1G <--> EndSwitch2.ethg++;
        Cam3.ethg++ <--> Eth1G <--> EndSwitch2.ethg++;
        Cam4.ethg++ <--> Eth1G <--> EndSwitch2.ethg++;
}
