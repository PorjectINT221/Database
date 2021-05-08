use SmartWebStore;

 
INSERT INTO brands (brandName)
VALUES ('Apple'),('Xiaomi'),('Samsung'),('Oppo'),('Google'),('Sony');
 
INSERT INTO products (prodName,prodPrice,prodDescription,prodDateManufacturer,prodWarranty ,prodImage,fkBrandCode) 
			   VALUES ('Iphone 12',29900,'NETWORK : GSM / CDMA / HSPA / EVDO / LTE / 5G
DISPLAY : 6.1Super Retina XDR OLED, HDR10, Dolby Vision, 625 nits (typ), 1200 nits (peak)
OS      : iOS 14.1, upgradable to iOS 14.5
Chipset	: Apple A14 Bionic (5 nm)
CPU		: Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)
GPU		: Apple GPU (4-core graphics)
RAM		: 4GB
ROM		: 64GB','2020-10-13','2 years','iphone-12.png',1)
					 ,('Iphone 12 Pro',27990,'NETWORK : GSM / CDMA / HSPA / EVDO / LTE / 5G
DISPLAY : 6.1 inches Super Retina XDR OLED, HDR10, Dolby Vision, 800 nits (typ), 1200 nits (peak)
OS      : iOS 14.1, upgradable to iOS 14.5
Chipset	: Apple A14 Bionic (5 nm)
CPU		: Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)
GPU		: Apple GPU (4-core graphics)
RAM		: 4GB
ROM		: 64GB','2021-01-14','2 years','iphone-12-pro.png',1)
                     ,('Galaxy S21 Ultra 5G',39900,'NETWORK	: GSM / CDMA / HSPA / EVDO / LTE / 5G
DISPLAY	: 6.8 inches Dynamic AMOLED 2X, 120Hz, HDR10+, 1500 nits (peak)
OS		: Android 11, One UI 3.1
Chipset	: Exynos 2100 (5 nm) - International
CPU 	: Octa-core (1x2.9 GHz Cortex-X1 & 3x2.80 GHz Cortex-A78 & 4x2.2 GHz Cortex-A55) - International
GPU 	: Mali-G78 MP14 - International
RAM 	: 12GB 	
ROM		: 128GB','2020-11-24','3 years','samsung-s21-ultra.png',3)
                     ,('Galaxy S20',28900,'NETWORK	: GSM / CDMA / HSPA / EVDO / LTE
DISPLAY	: 6.2 inches Dynamic AMOLED 2X, 120Hz, HDR10+, 1200 nits (peak)
OS		: Android 10, upgradable to Android 11, One UI 3.0
Chipset	: Exynos 990 (7 nm+) - Global
CPU 	: Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55)  
GPU 	: Mali-G77 MP11 - Global
RAM 	: 8GB	
ROM		: 128GB','2020-02-11','3 years','samsung-s20.png',3)
                     ,('Mi 11',21990,'NETWORK : GSM / CDMA / HSPA / EVDO / LTE / 5G
DISPLAY	: 6.81 inches, AMOLED, 1B colors, 120Hz, HDR10+, 1500 nits (peak)
OS		: Android 11, MIUI 12.5
Chipset	: Qualcomm SM8350 Snapdragon 888 5G (5 nm)
CPU 	: Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680
GPU 	: Adreno 660
RAM 	: 8GB  	 
ROM		: 128GB','2020-10-28','3 years','xiaomi_mi11-5g.png',2)
					 ,('A15',4299 ,'NETWORK : GSM / HSPA / LTE
DISPLAY	: 6.52 inches IPS LCD, 480 nits (typ)
OS		: Android 10, ColorOS 7.2
Chipset	: Mediatek MT6765 Helio P35 (12nm)
CPU 	: Octa-core (4x2.35 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)
GPU 	: PowerVR GE8320
RAM 	: 2GB
ROM		: 32GB','2020-10-15','1 year','Oppo-A15.png',4)
                     ,('Pixel 4a',12980,'NETWORK	: GSM / HSPA / LTE
DISPLAY	: 5.81 inches OLED, HDR
OS		: Android 10, upgradable to Android 11
Chipset	: Qualcomm SDM730 Snapdragon 730G (8 nm)
CPU 	: Octa-core (2x2.2 GHz Kryo 470 Gold & 6x1.8 GHz Kryo 470 Silver)
GPU 	: Adreno 618
RAM 	: 6GB 	
ROM		: 128GB','2020-08-03','3 years','Google-Pixel 4a.png',5)
                     ,('Pixel 3',33900,'NETWORK : GSM / CDMA / HSPA / EVDO / LTE  
DISPLAY	: 5.5 inches P-OLED, HDR   
OS		: Android 9.0 (Pie), upgradable to Android 11
Chipset	: Qualcomm SDM845 Snapdragon 845 (10 nm)
CPU 	: Octa-core (4x2.5 GHz Kryo 385 Gold & 4x1.6 GHz Kryo 385 Silver)
GPU 	: Adreno 630
RAM 	: 4GB 
ROM		: 64GB','2018-10-09','3 years','Google-Pixel-3.png',5) 

 ,('Iphone 8',28500,'NETWORK : GSM / HSPA / LTE
DISPLAY	: 4.7 inches, Retina IPS LCD, 625 nits (typ)  
OS		: iOS 11, upgradable to iOS 14.5.1
Chipset	: Apple A11 Bionic (10 nm)
CPU 	: Hexa-core (2x Monsoon + 4x Mistral)
GPU 	: Apple GPU (three-core graphics)
RAM 	: 2GB 	
ROM		: 64GB','2017-09-12','3 years','iphone-8.png',1) 
 ,('Iphone xr',29900,'NETWORK : GSM / CDMA / HSPA / EVDO / LTE  
DISPLAY	: 6.1 inches, Liquid Retina IPS LCD, 625 nits (typ)  
OS		: iOS 12, upgradable to iOS 14.5.1
Chipset	: Apple A12 Bionic (7 nm)
CPU 	: Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)
GPU 	: Apple GPU (4-core graphics)
RAM 	: 3GB	
ROM		: 64GB','2018-09-12','5 years','iphone-xr.png',1)
 ,('Xperia 5 II',28990,'NETWORK : GSM / HSPA / LTE / 5G  
DISPLAY	: 6.1 inches, OLED, 1B colors, 120Hz, HDR BT.2020  
OS		: Android 11
Chipset	: Qualcomm SM8350 Snapdragon 888 5G (5 nm)
CPU 	: Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680)
GPU 	: Adreno 660
RAM 	: 128GB 	
ROM		: 8GB','2021-04-14','3 years','sony-xperia-5-ii.png',6)
 ,('Xperia 1',31990,'NETWORK : GSM / HSPA / LTE / 5G
DISPLAY	: 6.5 inches, OLED, 1B colors, 120Hz, HDR BT.2020 
OS		: Android 11
Chipset	: Qualcomm SM8350 Snapdragon 888 5G (5 nm)
CPU 	: Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680)
GPU 	: Adreno 660
RAM 	: 256GB	
ROM		: 12GB','2021-04-14','3 years','SONY-Xperia-1.png',6)
 ,('Xperia 10 II',12990,'NETWORK : GSM / HSPA / LTE / 5G  
DISPLAY	: 6.0 inches, OLED, 1B colors, HDR  
OS		: Android 11
Chipset	: Qualcomm SM6350 Snapdragon 690 5G (8 nm) 
CPU 	: Octa-core (2x2.0 GHz Kryo 560 Gold & 6x1.7 GHz Kryo 560 Silver)
GPU 	: Adreno 619
RAM 	: 128GB 	
ROM		: 6GB','2021-04-14','2 years','sony-xperia-10-II.png',6)
 ,('Galaxy s10',31900,'NETWORK : GSM / CDMA / HSPA / EVDO / LTE  
DISPLAY	: 6.1 inches, Dynamic AMOLED, HDR10+  
OS		: Android 9.0 (Pie), upgradable to Android 11, One UI 3.0
Chipset	: Exynos 9820 (8 nm) - EMEA/LATAM
CPU 	: Octa-core (2x2.73 GHz Mongoose M4 & 2x2.31 GHz Cortex-A75 & 4x1.95 GHz Cortex-A55) - EMEA/LATAM
GPU 	: Mali-G76 MP12 - EMEA/LATAM
RAM 	: 128GB 	
ROM		: 8GB','2019-02-20','3 years','samsung-galaxy-s10.png',3)
 ,('Galaxy S10 Lite',18900,'NETWORK	: GSM / HSPA / LTE  
DISPLAY	: 6.7 inches, Super AMOLED Plus, HDR10+s 
OS		: Android 10, upgradable to Android 11, One UI 3.1
Chipset	: Qualcomm SM8150 Snapdragon 855 (7 nm)
CPU 	: Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485)
GPU 	: Adreno 640
RAM 	: 128GB	
ROM		: 6GB','2020-01-03','3 years','samsung-galaxy-s10-lite.png',3)
 ,('Galaxy S9',27900,'NETWORK : GSM / CDMA / HSPA / EVDO / LTE  
DISPLAY	: 5.8 inches, Super AMOLED, HDR10 
OS		: Android 8.0 (Oreo), upgradable to Android 10, One UI 2.5
Chipset	: Exynos 9810 (10 nm) - EMEA
CPU 	: Octa-core (4x2.7 GHz Mongoose M3 & 4x1.8 GHz Cortex-A55) - EMEA
GPU 	: Mali-G72 MP18 - EMEA
RAM 	: 64GB	
ROM		: 4GB','2018-02-25','1 years','galaxy-s9.png',3)
 ,('Find X3 Pro',33990,'NETWORK : GSM / CDMA / HSPA / CDMA2000 / LTE / 5G  
DISPLAY	: 6.7 inches, LTPO AMOLED, 1B colors, 120Hz, HDR10+, BT.2020, 500 nits (typ), 1300 nits (peak)  
OS		: Android 11, ColorOS 11.2
Chipset	: Qualcomm SM8350 Snapdragon 888 5G (5 nm)
CPU 	: Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680
GPU 	: Adreno 660
RAM 	: 256GB	
ROM		: 8GB','2021-03-11','3 years','oppo-find-x3-pro.png',4)
 ,('Reno5 5G',13990,'NETWORK : GSM / CDMA / HSPA / LTE / 5G  
DISPLAY	: 6.43 inches, AMOLED, 90Hz, 430 nits (typ), 750 nits (peak)  
OS		: Android 11, ColorOS 11.1
Chipset	: Qualcomm SM7250 Snapdragon 765G 5G (7 nm)
CPU 	: Octa-core (1x2.4 GHz Kryo 475 Prime & 1x2.2 GHz Kryo 475 Gold & 6x1.8 GHz Kryo 475 Silver)
GPU 	: Adreno 620
RAM 	: 128GB 	 
ROM		: 8GB','2016-06-20','1 years','oppo-reno5-5g.png',4)
 ,('A37',6990,'NETWORK	: GSM / HSPA / LTE   
DISPLAY	: 5.0 inches, IPS LCD  
OS		: Android 5.1 (Lollipop), ColorOS 3
Chipset	: Qualcomm MSM8916 Snapdragon 410 (28 nm)
CPU 	: Quad-core 1.2 GHz Cortex-A53
GPU 	: Adreno 306
RAM 	: 16GB 	
ROM		: 2GB','2016-06-09','3 years','Oppo-A37.png',4);
 
               
 

INSERT INTO colors (colName)
VALUES ('Green'),('Gold'),('Orange'),('Red'),('Gray'),('Blue'),('Purple'),('Black'),('White') ;

INSERT INTO producthascolors (prodCode,colCode)
VALUES (1,7),(1,2),(1,3),(1,4),(1,5) 
,(2,7),(2,4),(2,5),(2,2),(2,9)
,(3,8),(3,7),(3,6),(3,5)
,(4,2),(4,1),(4,9),(4,8)
,(5,2),(5,1),(5,3),(5,4)
,(6,3),(6,1),(6,4),(6,9),(6,7)
,(7,4),(7,1),(7,3),(7,8),(7,5)
,(8,5),(8,1),(8,4),(8,3),(8,2)
,(9,4),(9,1),(9,9),(9,8),(9,7)
,(10,4),(10,2),(10,1),(10,3)
,(11,7),(11,8),(11,9),(11,1),(11,2)
,(12,8),(12,9),(12,1),(12,2)
,(13,1),(13,2),(13,3)
,(14,3),(14,9),(14,8),(14,2)
,(15,9),(15,8),(15,7),(15,6),(15,5)
,(16,2),(16,1),(16,9)
,(17,3),(17,8),(17,9),(17,7),(17,6)
,(17,3),(17,9)
,(19,6),(19,9),(19,8),(19,5);
 

 

