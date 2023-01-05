use tt2;
insert into branch values
("Isb1","Sector H12 Islamabad", 4),
("Lhr1","Gulberg Lahore" , 4),
("Shk1","Sheikhupura", 3);

insert into department values 
("Gr1","Graphics","Isb1"),
("Gr2","Graphics","Lhr1"),
("Gr3","Graphics","Shk1"),
("Web1","Web Development","Isb1"),
("Web2","Web Development","Lhr1"),
("Web3","Web Development","Shk1"),
("Se1","Software Engineering","Isb1"),
("Se2","Software Engineering","Lhr1"),
("Se3","Software Engineering","Shk1");


insert into `client` values
("ct1001","Mike Tyson", "tysonpunches@outlook.com"),
("ct1002",'Aaron Connolly','aaronconnolly@gmail.com'),
("ct1003","Tariq Jamil", "tjtheboss@gmail.com"),
("ct1004",'Florin Andone','florinandone@gmail.com'),
("ct1005",'Neelam Pope','nilampope@gmail.com'),
("ct1006",'Bailey Peacockarrell','baileypeacock-Farrell@gmail.com'),
("ct1007",'Wazir Norris','wazirnorris@gmail.com'),
("ct1008",'Matthew Lowton','matthewlowton@gmail.com'),
("ct1009",'Hafsa Mushtaque','hafsahafsa@gmail.com'),
("ct1010",'James Tarkowski','jamestarkowski@gmail.com'),
("ct1011",'ITFactoori Mee','admin@itfactoori.com');

insert into orders values
("ord1","ct101"),
("ord2","ct102"),
("ord3","ct103"),
("ord4","ct101"),
("ord5","ct105"),
("ord6","ct104"),
("ord7","ct106"),
("ord8","ct1011"),
("ord9","ct110"),
("ord10","ct109"),
("ord11","ct107"),
("ord12","ct108");

insert into project values
("prj1","Build a browser named Gooqle","ord4"),
("prj2","Build a game named Newton and Apple","ord5"),
("prj3","Develop a search bar for e-commerce site","ord7"),
("prj4","Hack NASA with HTML","ord10");

insert into team values
("GrIsb1","Graphics developer","Isb1","Gr1","prj2"),
("GrIsb2","Graphics developer","Isb1","Gr1","prj1"),
("WebIsb1","Web development","Isb1","Web1","prj4"),
("SeIsb1","AI neural","Isb1","Se1",NULL),
("SeIsb2","QA team","Isb1","Se1","prj1"),

("GrLhr1","Graphics dev n rev","Lhr1","Gr2","prj1"),
("WebLhr1","Web dev n design","Lhr1","Web2","prj3"),
("SeLhr1","Agile devs","Lhr1","Se2",NULL),

("GrShk1","Graphics dev n rev","Shk1","Gr3","prj2"),
("WebShk1","Web development","Shk1","Web3","prj3"),
("SeShk1","Design n Development","Shk1","Se3","prj1");

insert into `rank` values
( "Sr1","Senior Engg"),
( "Sr2","Associate Senior Engg"),
( "Jr1", "Junior Engg"),
( "Tr1", "Trainee Engg");

insert into salary values
(1, 13250.0, "Sr1"),
(2, 12700.0, "Sr2"),
(3, 12350.0, "Jr1"),
(4, 11700.0 ,"Tr1");


insert into employee_det values
(62201, 'Ainsley Niles',"Female",0333255,"ainsleymaitles@gmail.com",'london England'),
(62202,"Raja Haider","Male",0333224,"rajahaider@gmail.com","punjab Pakistan"),
(62203, 'Joseph Willock',"Male",0333257,"josephwillock@gmail.com",'london England'),
(62204 ,'Calum Chambers',"Female",0333239,"calumchambers@gmail.com",'berlin England'),
(62205,'Gabriel Magalhães',"Male",0333252,"gabrielmagalhães@gmail.com",'manuas Brazil'),
(62206,'Héctor Bellerín',"Male",0333234,"hectorbellerín@gmail.com",'cordoba Spain'),
(62207, "Salman al Shahidi", "Male", 0355112, "salmansaudi@gmail.com", "Jaddah Saudi Arab"),
(62208, "Hashir Moheed", "Male", 0322222, "fopisdebest@gmail.com", "Islamabad Pakistan"),
(62209, "Arsalan Ahmed", "Male", 0331122, "polito@gmail.com", "Roma Italia"),
(62210, "Chohdri Akhtar", "Male", 0341213, "akhtarlava@outlook.com", "Lahore Pakistan"),
(62211,'Berni Leno',"Female",0333228,"berndleno@gmail.com",'berlin Germany' ),
(62212,"Sajeel Hussain","Male",0333222,"sajeelhussain@gmail.com","punjab Pakistan"),
(62213,"Hussnain Mehdi","Male",0333223,"hussnainmehdi@gmail.com","mianwali Pakistan"),
(62214, "Imran Khan", "Male", 0326226, "iipti@gmail.com", "Mianwali Pakistan"),
(62215,"Tanzeel Ur Rehman","Male","tanzeelurrehman@gmail.com",0333225," punjab Pakistan"),
(62216,"Lamias Zafar","Female",0333226,"lameeszafar@gmail.com","mianwali Pakistan"),
(62217,"Ramsey Aaron ","Male",0333227,"ramseyaaron@gmail.com","london England"),
(62218,"Samia Suluhu", "Female", 0312121, "samiatanzania@gmail.com", "Dadoma Tanzania"),
(62219,'Matt Macey',"Male",0333229,"mattmacey@gmail.com",'london England'),
(62220,'Lionel Messi',"Male",0333231,"lionelmessi@gmail.com",'cordoba  Spain'),
(62221,'Neymar da Silva',"Female",0333232,"neymardasilva@gmail.com",'cordoba Spain'),
(62222,'Rúnar Alex Rúnarsson',"Female",0333233,"runaralexrunarsson@gmail.com",'vik Iceland'),
(62223, "Helery Clinton", "Female", 0315125, "helerynextpresi@gmail.com", "Mexico USA"),
(62224,'Kieran Tierney',"Female",0333235,"kierantierney@gmail.com",'mianwali Pakistan'),
(62225,'William Saliba',0333236,"williamsaliba@gmail.com",'paris France'),
(62226,'Rob Holding',"Male",0333237,"robhholding@gmail.com",'london England'),
(62227,'Shkodran Mustafi',"Male",0333238,"shkodranmustafi@gmail.com",'berlin Germany'),
(62228, "Altaf Hussain", "Male", 0330112, "pakzindabad@outlook.com", "London England"),
(62229,'David Luiz',"Male",0333250,"davidluiz@gmail.com",'manuas Brazil'),
(62230,'Sead Kolasinac',"Female",0333251,"seadkolasinac@gmail.com",'Bosnia And Herzegovina'),
(62231, "Pervaiz Khattak", "Male", 0311331, "strongman@yahoo.com", "Peshawar Pakistan"),
(62232,'Mesut Ozil',"Male",0333253,"mesutozil@gmail.com",'berlin Germany'),
(62233,'Lucas Torreira',"Male",0333254,"lucastorreira@gmail.com",' Uruguay'),
(62234,"Nawaz Sharif", "Male",0333221,"noonleague@gmail.com","Punjab Pakistan"),
(62235,'Mohamed Elneny',"Male",0333256,"mohamedelneny@gmail.com",'cairo Egypt');

insert into employee values
("e1001", "Project supervision", "GrIsb1", "Sr1",62201, 'Niles'),
("e1002", "Programmer", "GrIsb1",  "Tr1", 62202,"Haider"),
("e1003", "Programmer", "WebIsb1", "Sr1", 62203, 'Willock'),
("e1004", "Project supervision", "WebIsb1",  "Sr1", 62204 ,'Chambers'),
("e1005", "Project Editor", "GrIsb1",  "Tr1", 62205,'Magalhães'),
("e1006", "Tester", "GrIsb1",  "Tr1", 62206,'Bellerín'),
("e1007", "Project Editor", "GrIsb2",  "Tr1", 62207, "Shahidi"),
('e1008', "Project supervision", "SeIsb1", "Sr1", 62208, "Moheed"),
('e1009', "Programmer", "SeIsb1", "Sr1", 62209, "Ahmed"),
('e1010', "Project Editor", "GrIsb1", "Sr2", 62210, "Akhtar"),
('e1011', "Project Editor", "WebIsb1", "Sr2", 622111,'Leno'),
('e1012', "Tester", "SeIsb1",  "Tr1", 62212,"Hussain"),
('e1013', "Project Editor", "SeIsb2",  "Tr1", 62213,"Mehdi"),
('e1014', "Project supervision", "SeIsb2",  "Sr2", 62214, "Khan"),
('e1015', "Tester", "GrIsb1", "Jr1", 62215,"Rehman"),
('e1016', "Project supervision",  "WebShk1", "Sr1", 62216,"Zafar"),
('e1017', "Tester", "WebIsb1", "Jr1", 62217,"Aaron"),
('e1018', "Programmer", "WebIsb1",  "Tr1", 62218,"Suluhu"),
('e1019', "Project Dev", "SeIsb2", "Jr1", 62219,'Macey'),
('e1020', "Project supervision", "SeShk1", "Sr1", 62220,'Messi'),
('e1021', "Tester", "SeIsb2", "Sr1", 62221,'Silva'),
('e1022', "Programmer", "WebShk1", "Sr2", 62222,'Runarsson'),
('e1023', "Project Editor", "SeLhr1", "Sr2", 62223, "Clinton"),
('e1024', "Project supervision", "SeLhr1", "Sr1", 62224,'Tierney'),
('e1025', "Programmer", "GrIsb2", "Jr1", 62225,'Saliba'),
('e1026', "Programmer", "GrShk1", "Sr1", 62226,'Holding'),
('e1027', "Project supervision", "WebLhr1", "Sr1", 62227,'Mustafi'),
('e1028', "Programmer", "WebShk1", "Jr1", 62228, "Hussain"),
('e1029', "Project Editor", "GrShk1", "Sr2", 62229,'Luiz'),
('e1030', "Tester", "SeLhr1",  "Tr1", 62230,'Kolasinac'),
('e1031', "Programmer", "WebLhr1", "Jr1", 62231, "Khattak"),
('e1032', "Project Editor", "GrLhr1",  "Tr1", 62232,'Ozil'),
('e1033', "Tester", "WebLhr1", "Jr1", 62233,'Torreira'),
('e1034', "Programmer", "GrLhr1", "Jr1", 62234,"Sharif"),
('e1035', "Project supervision", "GrLhr1", "Sr1", 62235,'Elneny');

insert into internee values
('i1001', "Hadaiq Khan","hadaiqisfine@gmail.com","5 months", "Unpaid", "SeShk1"),
('i1002', "Marwa Loud","marwasings@outlook.com", "6 months", "Unpaid", "SeLhr1"),
('i1003', "Wilo De New","wilosingstoo@yahoo.com", "3 months", "200$ voucher", "SeIsb1"),
('i1004', "Bahadur Khan","bahadurkhan@gmail.com","3 months", "Unpaid", "WebShk1"),
('i1005', "Rana Fawad","ranafawad@outlook.com", "8 months", "Unpaid",  "SeIsb1"),
('i1006', "Shazaib ","shazaib@yahoo.com", "2 months", "260$ voucher", "WebLhr1"),
('i1007', "Mustafa Khan","mustafaKhan@gmail.com","2 months", "100$ voucher", "SeShk1"),
('i1008', "Fahad Khan","khan@outlook.com", "3 months", "Unpaid","GrShk1"),
('i1009', "Rana Awais","ranaowais@yahoo.com", "6 months", "340$ voucher", "SeLhr1"),
('i1010', "Tania Rania","ranaowais123@yahoo.com", "3 months", "100$ voucher",  "WebShk1"),
('i1011', "Sania Khania","ranaowais321@yahoo.com", "6 months", "340$ voucher",  "SeShk1");


insert into team_has_lead values
("e1001","GrIsb1"),
("e1007", "GrIsb2"),
("e1004", "WebIsb1"),
('e1008', "SeIsb1"),
('e1014', "SeIsb2"),
('e1035', "GrLhr1"),
('e1027', "WebLhr1"),
('e1024', "SeLhr1"),
('e1029', "GrShk1"),
('e1016', "WebShk1"),
('e1020', "SeShk1");


insert into order_details values
("ord1", "Develop an AI website named ChatGPT",200,"Completed"),
("ord2", "Develop a database system for software house",350, "Completed"),
("ord3", "Develop GUI for Fakebook" ,600 , "Completed"),
("ord4", "Develop a browser named Gooqle, should also have a framework called krome. Use Modern GUI", 400, "Approved"),
("ord5", "Develop an interactive game, named Newton and Apple. Details in given manual", 380, "Approved"),
("ord6", "Make automatic bread toaster", 100, "Rejected"),
("ord7", "E-Commerce Site(Details in given doc)", 450,  "Approved"),
("ord8", "Build an automatic Kalashankov maker", 340, "Rejected"),
("ord9", "Smart health prediction system", 590,"Pending"),
("ord10", "I'm a competitor of NASA, I want you to hack it 〠 ", 11000, "Approved"),
("ord11", "Software for camera motion sensor system" , 560,  "Pending");


insert into applicant values
(72201, "Afza Naz","afzanaz007@gmail.com","Unreal engine dev"),
(72202, "Afrah Nosheen","afrah123@yahoo.com","Software engineer" ),
(72203, "Khaqan Shafiq","khaqanboss007@gmail.com","BS IT"),
(72204, "Zyan Haider","haider123@yahoo.com","BS Graphics" ),
(72205, "Zain Afzal","afzal123@yahoo.com","Software engineer" ),
(72206, "Muhammad Aslam","aslamatta007@gmail.com","Software engineer"),
(72207, "Farwa Saeed","farwa123@yahoo.com","Computer science" ),
(72208, "Rana Awais","awaisboss007@gmail.com","MS Graphics"),
(72209, "Rafia Anum","ranianum@gmail.com","Software engineer");

insert into attendance values
-- ('e1001', "2022-12-", "present"),
-- ('e1002', "2022-12-", "present"),
-- ('e1003', "2022-12-","present"),
-- ('e1004', "2022-12-","absent"),
-- ('e1005', "2022-12-","present"),
-- ('e1006', "2022-12-","present"),
-- ('e1007', "2022-12-","present"),
-- ('e1008', "2022-12-","absent"),
-- ('e1009', "2022-12-","present"),
-- ('e1010', "2022-12-","present"),
-- ('e1011', "2022-12-","present"),
-- ('e1012', "2022-12-","present"),
-- ('e1013', "2022-12-", "present"),
-- ('e1014', "2022-12-","present"),
-- ('e1015', "2022-12-","present"),
-- ('e1016', "2022-12-","absent"),
-- ('e1017', "2022-12-","present"),
-- ('e1018', "2022-12-","present"),
-- ('e1019', "2022-12-","present"),
-- ('e1020', "2022-12-","absent"),
-- ('e1021', "2022-12-","present"),
-- ('e1022', "2022-12-","present"),
-- ('e1023', "2022-12-", "present"),
-- ('e1024', "2022-12-","present"),
-- ('e1025', "2022-12-","present"),
-- ('e1026', "2022-12-","absent"),
-- ('e1027', "2022-12-","present"),
-- ('e1028', "2022-12-","present"),
-- ('e1029', "2022-12-","present"),
-- ('e1030', "2022-12-","absent"),
-- ('e1031', "2022-12-","present"),
-- ('e1032', "2022-12-","present"),
-- ('e1033', "2022-12-","present"),
-- ('e1034', "2022-12-", "present"),

('e1001', "2022-12-28", "present"),
('e1002', "2022-12-28", "present"),
('e1003', "2022-12-28","present"),
('e1004', "2022-12-28","absent"),
('e1005', "2022-12-28","present"),
('e1006', "2022-12-28","present"),
('e1007', "2022-12-28","present"),
('e1008', "2022-12-28","absent"),
('e1009', "2022-12-28","present"),
('e1010', "2022-12-28","present"),
('e1011', "2022-12-28","present"),
('e1012', "2022-12-28","present"),
('e1013', "2022-12-28", "present"),
('e1014', "2022-12-28","present"),
('e1015', "2022-12-28","present"),
('e1016', "2022-12-28","absent"),
('e1017', "2022-12-28","present"),
('e1018', "2022-12-28","present"),
('e1019', "2022-12-28","present"),
('e1020', "2022-12-28","absent"),
('e1021', "2022-12-28","present"),
('e1022', "2022-12-28","present"),
('e1023', "2022-12-28", "present"),
('e1024', "2022-12-28","present"),
('e1025', "2022-12-28","present"),
('e1026', "2022-12-28","absent"),
('e1027', "2022-12-28","present"),
('e1028', "2022-12-28","present"),
('e1029', "2022-12-28","present"),
('e1030', "2022-12-28","absent"),
('e1031', "2022-12-28","present"),
('e1032', "2022-12-28","present"),
('e1033', "2022-12-28","present"),
('e1034', "2022-12-28", "present");

insert into administration values

( 'a1001',"Afnan Tahir","afnantahir1134@gmail.com","Superviser", "Isb1", 'Tahir'),
( 'a1002', "Hamza Kafeel", "hamza123@outlook.com", "General manager",  "Isb1", 'Kafeel'),
( 'a1003', "Christina Alto", "chrisalto1122@outlook.com", "Queue manager",  "Isb1", 'Alto'),
( 'a1004', "Salman Asif", "salmanasif099@gmail.com", "Process manager",  "Isb1" , 'Asif'),
( 'a1005', "Suleman Khan", "suleman234@gmail.com", "Business manager",  "Isb1" , 'Khan'),

( 'a1006', "Ritik Devgan", "ritikprogrammer@yahoo.com", "Superviser", "Lhr1", 'Devgan'),
( 'a1009', "Zaineb Altaf", "zainebalftaf@outlook.com", "General manager", "Lhr1", 'Altaf'),
( 'a1010', "Abu Huraira", "abuhuraira@gmail.com", "Business manager", "Lhr1", 'Huraira'),
( 'a1011', "Ayesha Asif", "ayeshaasif@outlook.com", "Process manager", "Lhr1", 'Asif'),

( 'a1012', "Sufyan Aslam", "sufyanaslam@gmail.com", "Superviser", "Shk1", 'Aslam'),
( 'a1013', "Gul-e-lala", "gulelalaaslam@yahoo.com", "General manager", "Shk1", 'lala'),
( 'a1014', "Mukhtar Ali", "mukhtarkhan@gmail.com", "Business manager", "Shk1", 'Ali'),
( 'a1015', "Shahzaman Turi", "shzmen11@yahoo.com", "Process manager", "Shk1", 'Turi');
;

insert into department_has_applicant values 
("Gr1",72201, "2022-12-12"),
("Web2",72202, "2022-12-08"),
("Se1",72203, "2022-12-06"),
("Gr2",72204,"2022-12-21"),
("Se3",72205, "2022-12-16"),
("Gr3",72206,"2013-12-25"),
("Web1",72207,"2022-11-22"),
("Gr2",72208, "2022-12-26"),
("Se2",72209,"2022-12-22")
;

