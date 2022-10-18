INSERT INTO Categories VALUES
		('CT001' , 'Amidopyrine'),
		('CT002' , 'Phenacetin'),
		('CT003' , 'Methaqualone')
SELECT* FROM Categories

INSERT INTO Medicines VALUES
		('MD001', 'CT001', 'Acarbose'  , '35000', ' obat untuk menurunkan kadar gula darah pada penderita diabetes tipe 2'  , '35'),
		('MD002', 'CT001', 'Acitretin' , '45000', 'obat untuk mengobati psoriasis parah'							        , '61'),
		('MD003', 'CT001', 'Adenosine' , '75000', 'obat yang digunakan untuk membantu proses pemeriksaan radiologi jantung' , '15'),
		('MD004', 'CT001', 'Aliskiren' , '53000', 'obat untuk menurunkan tekanan darah pada penderita hipertensi'			, '42'),
		('MD005', 'CT001', 'Antibiotik', '60000', 'obat yang digunakan untuk mengatasi infeksi bakteri'						, '50'),
		('MD006', 'CT002', 'Benzolac'  , '42000', 'untuk mengatasi jerawat ringan hingga sedang'							, '74'),
		('MD007', 'CT002', 'Albumin'   , '85000', 'cairan infus yang digunakan untuk mengatasi hipoalbuminemia'				, '120'),
		('MD008', 'CT002', 'Botox'     , '52000', 'untuk mengurangi kerutan di wajah'										, '65'),
		('MD009', 'CT002', 'Degirol'   , '37000', 'mengobati sakit tenggorokan, sariawan, atau radang pada mulut'			, '81'),
		('MD010', 'CT002', 'Imboost'   , '65000', 'suplemen yang bermanfaat untuk menjaga daya tahan tubuh.'				, '85'),
		('MD011', 'CT003', 'Lincomycin', '75000', 'obat antibiotik untuk menangani infeksi bakteri berat.'					, '137'),
		('MD012', 'CT003', 'Gabapentin', '91000', 'obat untuk meredakan kejang pada penderita epilepsi.'					, '102'),
		('MD013', 'CT003', 'Imatinib'  , '82000', 'obat untuk menangani leukemia atau kanker darah.'						, '90'),
		('MD014', 'CT003', 'Halothane' , '31000', 'obat bius berbentuk gas'													, '81'),
		('MD015', 'CT003', 'Daktarin'  , '51000', 'untuk mengatasi penyakit kulit akibat infeksi jamur'						, '71')

SELECT*FROM Medicines


INSERT INTO Vendors VALUES
	('VN001' , 'PT. Dunia Cakrawala Anugerah' , '081280588834' , 'duniacakrawala.com' , 'Jl. Hayam Wuruk No.127'						  , '1999'),
	('VN002' , 'PT. Korindo Alesktron'        , '7975959'      , 'korindogroup.com'   , 'Jl. Letjen M.T. Haryono No.Kav 62'				  , '1969'),
	('VN003' , 'PT. Isotekindo Intertama'     , '08111710055'  , 'isotekindo.com'	  , 'Jl. Raya Kby. Lama Kel No.309 C'				  , '1998'),
	('VN004' , 'PT. Bina Mitra Jaya Bersama'  , '8548445'      , 'binamitra.com'	  , 'Jl. Raya Waru, Dusun Sawo'					      , '1986'),
	('VN005' , 'PT. Podo Mekar Jaya Sentosa'  , '5325151'      , 'podomekar.com'      , 'Jl. Kalisari III No.14'					      , '1998'),
	('VN006' , 'PT. Tifanny Usaha Mandiri'    , '22793585'     , 'tiffany-um.com'     , '15 B, RT.13/RW.5, Pejaten Tim.'			      , '1972'),
	('VN007' , 'CV. Karya Sejati'             , '8319988'      , 'karyasejati.com'    , 'JL Tebet Brt Dlm Raya, Psr Tebet Brt Los DKS/45' , '1981'),
	('VN008' , 'CV. Joanna Mandiri Persada'   , '08041787878'  , 'joannamandiri.com'  , 'Jl. Warung Jati Barat No.36'				      , '1997'),
	('VN009' , 'CangJia Inc'                  , '018321238597' , 'cangjiainc.com'     , 'Zha Yuan Rd no.47, FengXian. Shanghai. China'    , '1988'),
	('VN010' , 'PT. Kalbe Farma Tbk'          , '021423873889' , 'kalbefarma.com'     , 'Jl. Let. Jend Suprapto Kav 4'				      , '1966'),
	('VN011' , 'PT. Kimia Farma Tbk'          , '3847709'      , 'kimiafarma.com'	  , 'Jl. Veteran No. 9'							      , '1986'),
	('VN012' , 'PT. Bio Farma Persero'        , '1500810'      , 'biofarma.com'		  , 'Jl. Pasteur No.28'								  , '1980'),
	('VN013' , 'PT. Novartis Indonesia'       , '1582058'      , 'novartisid.com'	  , 'Jl. Prof. Dr. Satrio Kav. 18'					  , '1991'),
	('VN014' , 'PT. Interbat'                 , '42804190'     , 'interbat.com'		  , 'Jl. Letjend R. Suprapto No. 33'				  , '1977'),
	('VN015' , 'PT. Sanofi-Aventis Indonesia' , '47899789'     , 'sanofi.com'		  , 'Pulo Mas Timur K, RT.3/RW.12, Kayu Putih'		  , '1978')

SELECT*FROM Vendors

INSERT INTO Employees VALUES
	('EM001' , 'Tono'    , 'tononugroho@hallo.com'       , '089634362185' , 'JL. Manggis II No. 7'    , '1999-02-02' , 'Male'   , '1000000'),
	('EM002' , 'Budi'    , 'budiutomo@hallo.com'         , '081218219571' , 'JL. Nanas No. 10'        , '1996-02-13' , 'Female'   , '1250000'),
	('EM003' , 'Galih'   , 'galihsebastian@hallo.com'    , '081385723124' , 'JL. Delima No. 1'        , '2001-01-14' , 'Male'   , '1250000'),
	('EM004' , 'Fikri'   , 'fikrikurniawan@hallo.com'    , '085711328109' , 'JL. Semangka No. 12'     , '1998-03-15' , 'Male'   , '1375000'),
	('EM005' , 'Isman'   , 'ismanindrawan@hallo.com'     , '089639182857' , 'JL. Kota Bambu I No. 15' , '1999-01-28' , 'Male'   , '1000000'),
	('EM006' , 'Dimas'   , 'dimasbudi@hallo.com'		 , '081285086523' , 'JL. Bidara I No. 20'     , '2000-03-11' , 'Male'   , '1500000'),
	('EM007' , 'Fani'    , 'fanihorison@hallo.com'       , '085783129931' , 'JL. Flamboyan No. 3'     , '1998-06-17' , 'Female' , '1750000'),
	('EM008' , 'Haikal'  , 'haikalkoerniawan@hallo.com'  , '081382428132' , 'JL. Wortel No. 9'        , '1999-06-12' , 'Male'   , '1325000'),
	('EM009' , 'Agus'    , 'agusbudi@hallo.com'          , '089584278453' , 'JL. Rawa Kepa No. 4'     , '1997-08-22' , 'Male'   , '2250000'),
	('EM010' , 'Syahdan' , 'syahdanfirmansyah@hallo.com' , '081283749271' , 'JL. Buni No. 8'          , '1995-09-12' , 'Male'   , '2500000'),
	('EM011' , 'Andika'  , 'andikahermansyah@hallo.com'  , '089682839502' , 'JL. Benda Timur No. 14'  , '1999-01-02' , 'Male'   , '1950000'),
	('EM012' , 'Ahamd'   , 'ahmadalwan@hallo.com'		 , '085781239103' , 'JL. Burung No. 17'       , '2000-01-04' , 'Male'   , '1725000'),
	('EM013' , 'Fitri'   , 'fitriputri@hallo.com'		 , '081381930482' , 'JL. Kemanggisan No.22'   , '1999-11-26' , 'Female' , '1375000'),
	('EM014' , 'Desma'   , 'desmasimangunsong@hallo.com' , '081295812934' , 'JL. Rawa Belong No.30'   , '1995-07-08' , 'Female' , '2150000'),
	('EM015' , 'Dodi'    , 'dodisetiawan@hallo.com'	     , '081385926523' , 'JL. Pelajar No.27'       , '1996-02-13' , 'Male'   , '1650000')

SELECT*FROM Employees

INSERT INTO PurchaseTransactions VALUES
	('PC001' , 'VN001' , 'EM001' , '2021-01-01'),
	('PC002' , 'VN002' , 'EM002' , '2021-02-05'),
	('PC003' , 'VN003' , 'EM003' , '2021-03-09'),
	('PC004' , 'VN004' , 'EM004' , '2021-04-10'),
	('PC005' , 'VN005' , 'EM005' , '2021-04-12'),
	('PC006' , 'VN006' , 'EM006' , '2021-05-25'),
	('PC007' , 'VN007' , 'EM007' , '2021-06-16'),
	('PC008' , 'VN008' , 'EM008' , '2021-07-20'),
	('PC009' , 'VN009' , 'EM009' , '2021-07-27'),
	('PC010' , 'VN010' , 'EM010' , '2021-08-03'),
	('PC011' , 'VN011' , 'EM011' , '2021-09-23'),
	('PC012' , 'VN012' , 'EM012' , '2021-10-18'),
	('PC013' , 'VN013' , 'EM013' , '2021-10-28'),
	('PC014' , 'VN014' , 'EM014' , '2021-11-30'),
	('PC015' , 'VN015' , 'EM015' , '2021-12-08')

SELECT*FROM PurchaseTransactions

INSERT INTO PurchaseDetails VALUES
	('PC001' , 'MD001' , 'Acarbose'   , '21'),
	('PC002' , 'MD002' , 'Acitretin'  , '35'),
	('PC003' , 'MD005' , 'Antibiotik' , '15'),
	('PC004' , 'MD003' , 'Adenosine'  , '11'),
	('PC005' , 'MD006' , 'Benzolac'   , '45'),
	('PC006' , 'MD009' , 'Imboost'    , '52'),
	('PC007' , 'MD011' , 'Gabapentin' , '70'),
	('PC010' , 'MD008' , 'Botox'      , '23'),
	('PC011' , 'MD013' , 'Halothane'  , '52'),
	('PC012' , 'MD012' , 'Imatinib'   , '32'),
	('PC013' , 'MD004' , 'Aliskiren'  , '10'),
	('PC014' , 'MD015' , 'Ketamine'   , '60'),
	('PC015' , 'MD004' , 'Aliskiren'  , '12')

SELECT*FROM PurchaseDetails

INSERT INTO Customers VALUES
		('CU001' , 'Alvin'   , '1996-12-26' , '089573820572'  , 'alvindermawan@hallo.com'	  , 'Male' , 'Jl. Pluit Karang Molek XVI No. 27' , 'alvin123'),
		('CU002' , 'Anto'    , '1999-07-10' , '081293127465'  , 'antosetiawan@hallo.com'	  , 'Male' , 'Jl. Karang Indah III No.1B'	     , 'antosetiawan123'),
		('CU003' , 'Ari'	 , '2000-09-09' , '085791826481'  , 'ariandriawan@hallo.com '	  , 'Male' , 'Jl. Rome II No. 3'				 , 'aridriawan1'),
		('CU004' , 'Anthony' , '1998-04-21' , '081381759019'  , 'anthonymarcellino@hallo.com' , 'Male' , 'Jl. Katamaran Permai II No. 5'	 , 'anton112'),
		('CU005' , 'Hilmi'   , '1995-01-30' , '089619329031'  , 'hilmialwan@hallo.com'		  , 'Male' , 'Jl. Pluit Karang Cantik X No. 13'  , 'hills111'),
		('CU006' , 'Erwina'   , '2001-02-26' , '081241296155'  , 'erwin@hallo.com'			  , 'Female' , 'Jl. Pluit Karang Jelita IV No. 2'  , 'erwin123' ),
		('CU007' , 'Dean'    , '1997-04-13' , '081398381949'  , 'deanwijaya@hallo.com'		  , 'Male' , 'Jl. Katamaran Indah 3 No. 1C'		 , 'deans11'),
		('CU008' , 'Guntur'  , '1999-05-12' , '081291241531'  , 'guntursujono@hallo.com'	  , 'Male' , 'Jl. Layar Permai 4 No. 5'			 , 'gunturjon1'),
		('CU009' , 'Ivan'    , '2001-07-25' , '081375942263'  , 'ivangunawan@hallo.com'		  , 'Male' , 'Jl. Gedong Panjang No. 12'		 , 'ivangunawan123'),
		('CU010' , 'Ilhami'   , '1997-09-11' , '089592740124'  , 'ilham@hallo.com'			  , 'Female' , 'Jl. Lotus Palace 2 No. 1'			 , 'ilham97'),
		('CU011' , 'Rafa'    , '2000-01-27' , '082180634121'  , 'rafaandika@hallo.com'		  , 'Male' , 'Jl. Pluit Karang Barat VI No. 3B'	 , 'rafa2000'),
		('CU012' , 'Rakha'   , '1996-04-22' , '089577359051'  , 'rakhamuhammad@hallo.com'	  , 'Male' , 'Jl. Pluit Karang Indah VI No. 13'  , 'rakha96'),
		('CU013' , 'Alifian' , '2002-07-16' , '081373829561'  , 'alifianhidayat@hallo.com'	  , 'Male' , 'Jl. Pluit Sakti No. 20'		     , 'alif31'),
		('CU014' , 'Ikbal'   , '1991-08-19' , '081281957152'  , 'ikbal@hallo.com'			  , 'Male' , 'Jl. Layar Jelita No. 17'			 , 'ikbal123'),
		('CU015' , 'Eya'     , '1995-05-07' , '082191673213'  , 'ekasetia@hallo.com'		  , 'Female' , 'Jl. Jembatan Besi 1 No 9'			 , 'ekas112')

INSERT INTO SalesTransactions VALUES
		('SL001' , 'CU001'   , 'EM001'   , '2021-05-02'),
		('SL002' , 'CU002'   , 'EM002'   , '2021-05-04'),
		('SL003' , 'CU003'   , 'EM003'   , '2021-05-12'),
		('SL004' , 'CU004'   , 'EM004'   , '2021-06-01'),
		('SL005' , 'CU005'   , 'EM005'   , '2021-06-13'),
		('SL006' , 'CU006'   , 'EM006'   , '2021-06-21'),
		('SL007' , 'CU007'   , 'EM007'   , '2021-07-05'),
		('SL008' , 'CU008'   , 'EM008'   , '2021-07-12'),
		('SL009' , 'CU009'   , 'EM009'   , '2021-07-16'),
		('SL010' , 'CU010'   , 'EM010'   , '2021-07-22'),
		('SL011' , 'CU011'   , 'EM011'   , '2021-08-03'),
		('SL012' , 'CU012'   , 'EM012'   , '2021-08-08'),
		('SL013' , 'CU013'   , 'EM013'   , '2021-08-13'),
		('SL014' , 'CU014'   , 'EM014'   , '2021-08-16'),
		('SL015' , 'CU015'   , 'EM015'   , '2021-09-30')

SELECT*FROM SalesTransactions

INSERT INTO SalesDetails VALUES
		('SL001' , 'MD001' , 'Acarbose'   , '1'), 
		('SL001' , 'MD002' , 'Acitretin'  , '3'),
		('SL002' , 'MD003' , 'Adenosine'  , '1'),
		('SL002' , 'MD001' , 'Acarbose'   , '2'),
		('SL002' , 'MD004' , 'Aliskiren'  , '3'),
		('SL003' , 'MD005' , 'Antibiotik' , '2'),
		('SL003' , 'MD003' , 'Adenosine'  , '1'),
	 	('SL004' , 'MD006' , 'Benzolac'   , '2'),
		('SL004' , 'MD004' , 'Aliskiren'  , '3'),
		('SL005' , 'MD007' , 'Albumin'    , '4'),
		('SL005' , 'MD005' , 'Antibiotik' , '1'),
		('SL006' , 'MD008' , 'Degirol'    , '3'),
		('SL006' , 'MD009' , 'Imboost'    , '5'),
		('SL006' , 'MD002' , 'Acitretin'  , '2'),
		('SL007' , 'MD006' , 'Benzolac'   , '3'),
		('SL008' , 'MD010' , 'Lincomycin' , '2'),
		('SL009' , 'MD011' , 'Gabapentin' , '1'),
		('SL010' , 'MD012' , 'Imatinib'   , '4'),
		('SL011' , 'MD007' , 'Albumin'    , '1'),
		('SL011' , 'MD013' , 'Halothane'  , '3'),
		('SL012' , 'MD015' , 'Ketamine'   , '2'),
		('SL013' , 'MD008' , 'Degirol'    , '3'),
		('SL014' , 'MD005' , 'Antibiotik' , '2'),
		('SL015' , 'MD010' , 'Lincomycin' , '2'),
		('SL015' , 'MD005' , 'Antibiotik' , '1')

SELECT*FROM SalesDetails
