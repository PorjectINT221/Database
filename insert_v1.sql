use SmartWebStore;

 
INSERT INTO brands (brandName)
VALUES ('Apple'),('Xiaomi'),('Samsung'),('Oppo'),('Google');
 
INSERT INTO products (prodName,prodPrice,prodDescription,prodDateManufacturer,prodWarranty ,prodImage,fkBrandCode) 
			   VALUES ('Iphone 12',29900,'NETWORK : GSM / CDMA / HSPA / EVDO / LTE / 5G
DISPLAY : 6.1Super Retina XDR OLED, HDR10, Dolby Vision, 625 nits (typ), 1200 nits (peak)
OS      : iOS 14.1, upgradable to iOS 14.5
Chipset	: Apple A14 Bionic (5 nm)
CPU		: Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)
GPU		: Apple GPU (4-core graphics)
RAM		: 4GB
ROM		: 64GB','2020-10-13','2 years','img',1) 
					 ,('Iphone 12 Pro',27990,'NETWORK : GSM / CDMA / HSPA / EVDO / LTE / 5G
DISPLAY : 6.1 inches Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (typ), 1200 nits (peak)
OS      : iOS 14.1, upgradable to iOS 14.5
Chipset	: Apple A14 Bionic (5 nm)
CPU		: Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)
GPU		: Apple GPU (4-core graphics)
RAM		: 4GB
ROM		: 64GB','2021-01-14','2 years','img',1)
                     ,('Samsung Galaxy S21 Ultra 5G',39900,'NETWORK	: GSM / CDMA / HSPA / EVDO / LTE / 5G
DISPLAY	: 6.8 inches Dynamic AMOLED 2X, 120Hz, HDR10+, 1500 nits (peak)
OS		: Android 11, One UI 3.1
Chipset	: Exynos 2100 (5 nm) - International
CPU 	: Octa-core (1x2.9 GHz Cortex-X1 & 3x2.80 GHz Cortex-A78 & 4x2.2 GHz Cortex-A55) - International
GPU 	: Mali-G78 MP14 - International
RAM 	: 12GB 	
ROM		: 128GB','2020-11-24','3 years','img',3)
                     ,('Samsung Galaxy S20',28900,'NETWORK	: GSM / CDMA / HSPA / EVDO / LTE
DISPLAY	: 6.2 inches Dynamic AMOLED 2X, 120Hz, HDR10+, 1200 nits (peak)
OS		: Android 10, upgradable to Android 11, One UI 3.0
Chipset	: Exynos 990 (7 nm+) - Global
CPU 	: Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55)  
GPU 	: Mali-G77 MP11 - Global
RAM 	: 8GB	
ROM		: 128GB','2020-02-11','3 years','img',3)
                     ,('Xiaomi Mi 11',21990,'NETWORK	: GSM / CDMA / HSPA / EVDO / LTE / 5G
DISPLAY	: 6.81 inches, AMOLED, 1B colors, 120Hz, HDR10+, 1500 nits (peak)
OS		: Android 11, MIUI 12.5
Chipset	: Qualcomm SM8350 Snapdragon 888 5G (5 nm)
CPU 	: Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680
GPU 	: Adreno 660
RAM 	: 8GB  	 
ROM		: 128GB','2020-10-28','3 years','img',2)
					 ,('Oppo A15 ',4299 ,'NETWORK	: GSM / HSPA / LTE
DISPLAY	: 6.52 inches IPS LCD, 480 nits (typ)
OS		: Android 10, ColorOS 7.2
Chipset	: Mediatek MT6765 Helio P35 (12nm)
CPU 	: Octa-core (4x2.35 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)
GPU 	: PowerVR GE8320
RAM 	: 2GB
ROM		: 32GB','2020-10-15','1 year','img',4)
                     ,('Google Pixel 4a',12980,'NETWORK	: GSM / HSPA / LTE
DISPLAY	: 5.81 inches OLED, HDR
OS		: Android 10, upgradable to Android 11
Chipset	: Qualcomm SDM730 Snapdragon 730G (8 nm)
CPU 	: Octa-core (2x2.2 GHz Kryo 470 Gold & 6x1.8 GHz Kryo 470 Silver)
GPU 	: Adreno 618
RAM 	: 6GB 	
ROM		: 128GB','2020-08-03','3 years','img',5)
                     ,('Google Pixel 3 ',33900,'NETWORK	: GSM / CDMA / HSPA / EVDO / LTE  
DISPLAY	: 5.5 inches P-OLED, HDR   
OS		: Android 9.0 (Pie), upgradable to Android 11
Chipset	: Qualcomm SDM845 Snapdragon 845 (10 nm)
CPU 	: Octa-core (4x2.5 GHz Kryo 385 Gold & 4x1.6 GHz Kryo 385 Silver)
GPU 	: Adreno 630
RAM 	: 4GB 
ROM		: 64GB','2018-10-09','3 years','img',5); 
               
 
INSERT INTO colors (colName)
VALUES ('Green'),('Gold'),('Orange'),('Red'),('Gray'),('Blue'),('Purple'),('Black'),('White') ;

INSERT INTO producthascolors (prodCode,colCode)
VALUES (1,1),(2,7),(3,8),(4,2),(5,1),(6,3),(7,4),(8,5);
