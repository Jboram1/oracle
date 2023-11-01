select * from employees, departments;  --2889개 결과(107*27)

select * from employees;  --107개 결과
desc employees;  --컬럼 13개
select * from departments;  --27개 결과

--equi 조인트:같은 컬럼을 가지고 조인하는거--
select employee_id, emp_naem, department_id from employees where department_id = 50;

select employee_id, emp_name, b.department_id, b.department_name, b.parent_id, b.manager_id, b.create_date, b.update_date
from employees a, departments b where a.department_id = b.department_id and a.department_id=50;

--drop table stuinfo;
--drop table stuscore;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table stuinfo (
	stunum number(4) primary key,
	name VARCHAR2(50),
	grade number,
	email VARCHAR2(50),
	phone VARCHAR2(50),
	gender VARCHAR2(50),
	address VARCHAR2(50)
);
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (1, 'Roosevelt', 4, 'rlilleycrop0@odnoklassniki.ru', '547-471-7178', 'Male', '8179 Shoshone Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (2, 'Tallie', 2, 'tmaffucci1@quantcast.com', '519-221-4945', 'Male', '7 Elmside Center');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (3, 'Godiva', 2, 'gjaine2@devhub.com', '225-283-7659', 'Female', '60508 Dakota Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (4, 'Carmelia', 3, 'ceuesden3@toplist.cz', '991-701-2223', 'Female', '332 Mitchell Plaza');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (5, 'Tod', 1, 'tessberger4@behance.net', '554-565-0527', 'Male', '45866 Debra Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (6, 'My', 4, 'msaipy5@ebay.co.uk', '694-524-2916', 'Male', '27 Judy Parkway');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (7, 'Madalyn', 4, 'mbranton6@addthis.com', '271-676-1847', 'Female', '834 Mesta Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (8, 'Catherine', 4, 'cplascott7@weibo.com', '104-285-7291', 'Female', '04 Mcguire Pass');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (9, 'Linette', 2, 'lharriot8@umn.edu', '268-336-0661', 'Female', '529 Fairfield Street');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (10, 'Justen', 3, 'jhembrow9@wp.com', '596-426-0673', 'Male', '183 Daystar Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (11, 'Ricky', 1, 'rbickardikea@foxnews.com', '300-485-9993', 'Male', '10057 Trailsway Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (12, 'Tymothy', 3, 'thartlandb@friendfeed.com', '192-603-9600', 'Male', '54 Shelley Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (13, 'Hakeem', 1, 'hmaccookc@tripod.com', '405-528-4526', 'Male', '637 Bultman Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (14, 'Broddy', 3, 'bbuckhurstd@aboutads.info', '498-342-3598', 'Male', '2 Roth Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (15, 'Osgood', 3, 'oheretye@foxnews.com', '934-973-0331', 'Bigender', '8 Butterfield Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (16, 'Ashton', 1, 'agoldringf@weebly.com', '112-318-2986', 'Male', '36048 Merry Terrace');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (17, 'Emiline', 2, 'edearnlyg@dell.com', '813-946-7092', 'Female', '793 Judy Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (18, 'Orel', 2, 'obourh@miitbeian.gov.cn', '377-374-2363', 'Female', '67918 Glendale Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (19, 'Klement', 3, 'kprogeri@businesswire.com', '462-984-0422', 'Male', '05 Di Loreto Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (20, 'Olenka', 4, 'ostauntonj@fema.gov', '102-301-0124', 'Female', '7 Westport Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (21, 'Katey', 2, 'kweblingk@github.com', '789-129-9355', 'Female', '16613 Dorton Street');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (22, 'Arabel', 4, 'afyersl@homestead.com', '517-608-3775', 'Female', '5 Sunnyside Parkway');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (23, 'Milty', 4, 'mionnisianm@usatoday.com', '570-399-8723', 'Male', '64 Northwestern Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (24, 'Rich', 1, 'rscargilln@yellowpages.com', '969-288-3969', 'Male', '4 Roth Parkway');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (25, 'Collie', 2, 'cspriggingo@theguardian.com', '935-985-3650', 'Genderqueer', '43711 Goodland Terrace');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (26, 'Annadiana', 1, 'asallowsp@usnews.com', '256-851-5332', 'Female', '070 Tony Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (27, 'Kandace', 3, 'kmckendryq@zimbio.com', '700-228-5540', 'Female', '826 Linden Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (28, 'Skipper', 1, 'spusillr@adobe.com', '149-339-6384', 'Male', '3810 Sycamore Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (29, 'Elmo', 2, 'emcimmies@psu.edu', '229-908-2509', 'Male', '54092 Graceland Crossing');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (30, 'Duane', 3, 'dteeneyt@prlog.org', '880-612-2329', 'Bigender', '8 Corscot Center');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (31, 'Carmelle', 2, 'ccoyettu@google.es', '435-736-6760', 'Genderqueer', '2705 Village Green Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (32, 'Tait', 4, 'tthomsonv@simplemachines.org', '494-658-7573', 'Male', '93004 Veith Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (33, 'Mara', 2, 'mlogesw@wikia.com', '515-943-9888', 'Female', '913 Melody Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (34, 'Derril', 1, 'dmerrillx@cafepress.com', '485-930-9731', 'Male', '85 Valley Edge Junction');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (35, 'Bank', 2, 'bgaviniy@tripod.com', '800-963-3342', 'Male', '9508 Hoffman Junction');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (36, 'Mattias', 1, 'moguzz@cnbc.com', '135-703-7776', 'Non-binary', '98499 Mifflin Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (37, 'Aubine', 2, 'amcfeat10@wiley.com', '617-618-3972', 'Female', '4429 Hansons Lane');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (38, 'Siobhan', 3, 'spietruszka11@skyrock.com', '774-189-9472', 'Bigender', '9302 Heath Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (39, 'Shirleen', 1, 'sgorey12@blogtalkradio.com', '206-338-1630', 'Female', '4 Chive Alley');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (40, 'Mellisent', 1, 'mmarler13@census.gov', '254-645-5996', 'Female', '9 Mitchell Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (41, 'Nadiya', 1, 'ncornillot14@dot.gov', '778-476-1325', 'Non-binary', '23664 Delaware Avenue');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (42, 'Justen', 3, 'jtownsend15@ebay.com', '661-607-8845', 'Male', '7 Pawling Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (43, 'Valene', 2, 'vlakin16@ibm.com', '177-194-0236', 'Female', '6 Randy Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (44, 'Beatrice', 4, 'brizzo17@sbwire.com', '883-403-4751', 'Female', '8 Milwaukee Junction');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (45, 'Anya', 4, 'acornthwaite18@boston.com', '648-540-5313', 'Non-binary', '577 Clemons Terrace');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (46, 'Halley', 1, 'hhellin19@acquirethisname.com', '585-894-4918', 'Female', '0 Sugar Center');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (47, 'Isadora', 1, 'isherred1a@loc.gov', '694-600-0620', 'Female', '28 3rd Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (48, 'Kelli', 1, 'kclampin1b@ning.com', '950-885-0885', 'Female', '0502 Stephen Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (49, 'Monah', 4, 'mbradtke1c@sohu.com', '491-724-0126', 'Female', '5 Johnson Pass');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (50, 'Polly', 1, 'pingliby1d@skype.com', '752-266-4273', 'Non-binary', '7974 Magdeline Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (51, 'Thor', 2, 'todonegan1e@msn.com', '787-287-8885', 'Agender', '12 Petterle Lane');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (52, 'Edd', 1, 'ehawtrey1f@wikimedia.org', '725-304-8904', 'Male', '19 Messerschmidt Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (53, 'Reynold', 1, 'rgronw1g@wp.com', '129-656-4205', 'Male', '20817 Brown Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (54, 'Garrik', 4, 'geyckelberg1h@themeforest.net', '558-390-4161', 'Male', '66 Morrow Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (55, 'Brianna', 3, 'btarn1i@sina.com.cn', '666-320-9997', 'Female', '501 Eagan Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (56, 'Micky', 2, 'mconklin1j@weebly.com', '459-746-0333', 'Male', '9 Myrtle Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (57, 'Jody', 2, 'jcasol1k@123-reg.co.uk', '988-742-9129', 'Female', '259 Mifflin Parkway');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (58, 'Rickey', 2, 'rbridden1l@zimbio.com', '982-500-9286', 'Male', '484 Graceland Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (59, 'Rosanna', 3, 'rhenstone1m@slashdot.org', '352-294-6883', 'Female', '58085 Schmedeman Plaza');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (60, 'Carmelia', 2, 'cberford1n@go.com', '427-512-9252', 'Female', '3460 Portage Terrace');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (61, 'Tessy', 2, 'tkuhne1o@shutterfly.com', '815-585-1267', 'Female', '05 Northwestern Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (62, 'Darryl', 1, 'ddegiorgis1p@weather.com', '663-637-7278', 'Male', '27 Algoma Drive');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (63, 'Merilyn', 2, 'mchristopherson1q@istockphoto.com', '407-125-3770', 'Female', '6114 Ruskin Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (64, 'Jackelyn', 3, 'judden1r@meetup.com', '957-475-7888', 'Female', '183 Declaration Pass');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (65, 'Vilhelmina', 1, 'vbagnell1s@opensource.org', '859-467-0565', 'Female', '6 Dunning Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (66, 'Estevan', 4, 'ebartaletti1t@godaddy.com', '363-220-2081', 'Male', '1769 Kedzie Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (67, 'Loraine', 1, 'lclouston1u@cnn.com', '724-882-9921', 'Female', '479 Merrick Avenue');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (68, 'Kerrin', 4, 'kwalewicz1v@cargocollective.com', '724-691-9846', 'Agender', '99171 Messerschmidt Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (69, 'Rosalynd', 1, 'rvedntyev1w@blog.com', '876-110-2876', 'Female', '8 Jenifer Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (70, 'Ermengarde', 1, 'ecaunt1x@cdbaby.com', '380-385-2339', 'Female', '2 Crest Line Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (71, 'Alfonso', 1, 'acausey1y@google.de', '574-973-4710', 'Male', '231 Packers Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (72, 'Constancia', 3, 'cthomkins1z@arstechnica.com', '898-439-2738', 'Female', '6 Ruskin Terrace');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (73, 'Stephanie', 2, 'sstode20@mozilla.org', '487-115-5949', 'Non-binary', '35667 Mcguire Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (74, 'Opal', 3, 'odorrian21@accuweather.com', '828-749-6740', 'Female', '6531 Golf View Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (75, 'Rik', 1, 'rdehooch22@newsvine.com', '784-379-1251', 'Male', '5495 Nevada Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (76, 'Coletta', 3, 'ckopp23@pcworld.com', '129-157-0455', 'Female', '46000 Independence Park');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (77, 'Ingaborg', 2, 'icorkitt24@webs.com', '846-520-1095', 'Female', '999 Loftsgordon Way');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (78, 'Skipper', 4, 'sguyot25@cdbaby.com', '195-963-2548', 'Male', '25 Sherman Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (79, 'Bail', 2, 'bsamett26@dyndns.org', '694-681-1778', 'Male', '7 Jenifer Crossing');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (80, 'Felicdad', 4, 'fcapener27@cam.ac.uk', '240-681-6575', 'Female', '04 Blue Bill Park Parkway');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (81, 'Adrian', 4, 'arobez28@ezinearticles.com', '152-592-3923', 'Male', '3348 Fair Oaks Street');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (82, 'Marlene', 4, 'mmaddaford29@google.com.au', '878-577-6063', 'Genderfluid', '894 Claremont Plaza');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (83, 'Cyrille', 3, 'ccallister2a@oaic.gov.au', '526-296-4809', 'Male', '035 Farmco Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (84, 'Jayme', 2, 'jsouthernwood2b@europa.eu', '578-884-5085', 'Genderqueer', '43653 Sommers Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (85, 'Lew', 3, 'lbools2c@networkadvertising.org', '800-945-4635', 'Male', '81 Golf Course Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (86, 'Linda', 2, 'lstickens2d@globo.com', '556-985-5360', 'Female', '0126 Reindahl Road');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (87, 'Gwendolen', 2, 'gyurivtsev2e@mysql.com', '720-708-4209', 'Female', '6481 Paget Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (88, 'Egor', 3, 'eingram2f@shop-pro.jp', '826-685-9849', 'Male', '9 Russell Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (89, 'Idelle', 4, 'iaxten2g@360.cn', '586-942-4903', 'Female', '1606 Elmside Avenue');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (90, 'Fae', 4, 'fseer2h@cnn.com', '991-192-3900', 'Female', '591 Crownhardt Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (91, 'Christa', 1, 'cmccague2i@google.co.jp', '816-458-1965', 'Female', '6890 Miller Crossing');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (92, 'Phyllys', 4, 'pchristiensen2j@oracle.com', '839-137-2446', 'Female', '20 Norway Maple Place');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (93, 'Sandye', 4, 'staylerson2k@ameblo.jp', '457-868-1385', 'Female', '01663 David Point');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (94, 'Wes', 1, 'wparkman2l@free.fr', '808-810-7109', 'Male', '5245 Dennis Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (95, 'Kate', 4, 'kbedrosian2m@so-net.ne.jp', '144-475-3431', 'Female', '5423 Meadow Ridge Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (96, 'Dyanne', 1, 'dveighey2n@upenn.edu', '729-127-9652', 'Genderfluid', '7522 Glacier Hill Court');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (97, 'Jamill', 4, 'jeede2o@multiply.com', '491-342-6424', 'Male', '367 Bay Hill');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (98, 'Bern', 4, 'browbrey2p@usatoday.com', '255-316-8579', 'Male', '70 Bunker Hill Trail');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (99, 'Massimo', 2, 'mduckhouse2q@hatena.ne.jp', '980-334-3657', 'Male', '44 Carey Circle');
insert into stuinfo (stunum, name, grade, email, phone, gender, address) values (100, 'Judd', 1, 'jyoule2r@linkedin.com', '866-258-2991', 'Male', '81644 Roth Crossing');
commit;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from stuinfo;
desc stuinfo;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table stuscore (
	sno number,
	stunum number,
	kor number,
	eng number,
	math number,
	total number,
	avg number,
	rank number,
    constraint fk_stunum foreign key(stunum)
    references stuinfo(stunum)
);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (1, 1, 63, 99, 85, 247, 82.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (2, 2, 86, 99, 84, 269, 89.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (3, 3, 71, 78, 61, 210, 70, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (4, 4, 67, 52, 71, 190, 63.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (5, 5, 95, 59, 66, 220, 73.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (6, 6, 60, 50, 77, 187, 62.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (7, 7, 66, 68, 71, 205, 68.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (8, 8, 75, 83, 53, 211, 70.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (9, 9, 82, 93, 93, 268, 89.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (10, 10, 66, 81, 67, 214, 71.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (11, 11, 65, 77, 71, 213, 71, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (12, 12, 99, 61, 91, 251, 83.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (13, 13, 94, 52, 98, 244, 81.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (14, 14, 56, 88, 95, 239, 79.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (15, 15, 97, 66, 85, 248, 82.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (16, 16, 80, 91, 84, 255, 85, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (17, 17, 70, 76, 92, 238, 79.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (18, 18, 63, 95, 76, 234, 78, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (19, 19, 64, 76, 78, 218, 72.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (20, 20, 99, 52, 66, 217, 72.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (21, 21, 60, 59, 68, 187, 62.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (22, 22, 87, 53, 57, 197, 65.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (23, 23, 81, 50, 86, 217, 72.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (24, 24, 98, 57, 82, 237, 79, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (25, 25, 56, 84, 64, 204, 68, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (26, 26, 60, 83, 79, 222, 74, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (27, 27, 98, 93, 100, 291, 97, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (28, 28, 52, 85, 78, 215, 71.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (29, 29, 68, 52, 54, 174, 58, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (30, 30, 76, 86, 93, 255, 85, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (31, 31, 91, 77, 66, 234, 78, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (32, 32, 73, 72, 64, 209, 69.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (33, 33, 81, 85, 62, 228, 76, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (34, 34, 52, 88, 55, 195, 65, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (35, 35, 95, 97, 64, 256, 85.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (36, 36, 53, 56, 88, 197, 65.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (37, 37, 54, 56, 94, 204, 68, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (38, 38, 50, 86, 51, 187, 62.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (39, 39, 58, 57, 77, 192, 64, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (40, 40, 89, 60, 71, 220, 73.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (41, 41, 81, 99, 89, 269, 89.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (42, 42, 52, 55, 95, 202, 67.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (43, 43, 95, 80, 74, 249, 83, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (44, 44, 60, 95, 74, 229, 76.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (45, 45, 73, 63, 75, 211, 70.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (46, 46, 88, 95, 67, 250, 83.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (47, 47, 84, 59, 70, 213, 71, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (48, 48, 96, 77, 61, 234, 78, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (49, 49, 66, 75, 63, 204, 68, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (50, 50, 71, 61, 74, 206, 68.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (51, 51, 81, 84, 99, 264, 88, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (52, 52, 65, 72, 55, 192, 64, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (53, 53, 82, 67, 65, 214, 71.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (54, 54, 100, 68, 86, 254, 84.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (55, 55, 79, 61, 84, 224, 74.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (56, 56, 66, 77, 82, 225, 75, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (57, 57, 99, 75, 53, 227, 75.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (58, 58, 91, 93, 81, 265, 88.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (59, 59, 58, 93, 64, 215, 71.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (60, 60, 94, 78, 88, 260, 86.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (61, 61, 96, 97, 68, 261, 87, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (62, 62, 75, 69, 80, 224, 74.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (63, 63, 54, 68, 62, 184, 61.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (64, 64, 58, 61, 95, 214, 71.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (65, 65, 99, 52, 89, 240, 80, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (66, 66, 83, 99, 58, 240, 80, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (67, 67, 55, 65, 91, 211, 70.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (68, 68, 66, 67, 53, 186, 62, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (69, 69, 97, 68, 65, 230, 76.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (70, 70, 57, 58, 72, 187, 62.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (71, 71, 73, 88, 73, 234, 78, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (72, 72, 57, 53, 69, 179, 59.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (73, 73, 84, 78, 56, 218, 72.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (74, 74, 64, 66, 93, 223, 74.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (75, 75, 65, 89, 56, 210, 70, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (76, 76, 58, 54, 95, 207, 69, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (77, 77, 59, 79, 90, 228, 76, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (78, 78, 77, 89, 62, 228, 76, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (79, 79, 62, 68, 72, 202, 67.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (80, 80, 51, 77, 99, 227, 75.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (81, 81, 75, 64, 55, 194, 64.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (82, 82, 80, 73, 97, 250, 83.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (83, 83, 58, 88, 84, 230, 76.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (84, 84, 94, 89, 60, 243, 81, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (85, 85, 60, 60, 56, 176, 58.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (86, 86, 70, 98, 59, 227, 75.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (87, 87, 68, 91, 52, 211, 70.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (88, 88, 84, 76, 85, 245, 81.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (89, 89, 54, 65, 85, 204, 68, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (90, 90, 89, 78, 84, 251, 83.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (91, 91, 76, 64, 58, 198, 66, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (92, 92, 60, 90, 88, 238, 79.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (93, 93, 74, 61, 91, 226, 75.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (94, 94, 96, 85, 69, 250, 83.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (95, 95, 91, 77, 86, 254, 84.6666666667, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (96, 96, 74, 96, 86, 256, 85.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (97, 97, 55, 93, 69, 217, 72.3333333333, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (98, 98, 51, 67, 95, 213, 71, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (99, 99, 96, 62, 76, 234, 78, 0);
insert into stuscore (sno, stunum, kor, eng, math, total, avg, rank) values (100, 100, 57, 58, 91, 206, 68.6666666667, 0);
commit;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from stuscore;
desc stuscore;

select sno, a.stunum, a.name, a.grade, gender, kor, eng, math, total, round(avg,2) as avg
from stuinfo a, stuscore b
where a.stunum = b.stunum and lower(name) like '%d%'
and gender = 'Male'
and total >= 250
;
--David Austin
select * from employees;
select * from departments;
select a.employee_id, a.emp_name, a.salary, a.job_id, b.department_id, b.department_name, b.create_date, b.update_date
from employees a, departments b
where a.department_id = b.department_id
and a.department_id = (select department_id from employees where emp_name='David Austin')
;
select department_id from employees where emp_name='David Austin';
--David Austin

--North 들어간 address 모두를 출력하고 1945년 이상인 태어난도 출력
select * from customers;
select count(*) from customers where cust_street_address like '%North%';  --North의 개수는 10764
select * from customers where cust_street_address like '%North%' and cust_year_of_birth >= 1945;

select * from jobs;
--직급별 최소 월급이 5000달러 이상인 직급의 사람들중 부서번호가 50번 이상인 사람들만 출력하시오.
--employees / departments / jobs
--사원번호 employee_id, 사원명 emp_name, 월급 salary, 직급번호 job_id, 직급별최소월급 min_salary, 부서번호 department_id, 부서명 department_name
select employee_id, emp_name, salary, a.job_id, min_salary, a.department_id, c.department_name from employees a, jobs b, departments c
where a.job_id = b.job_id and min_salary>=5000 and a.department_id = c.department_id and a.department_id >= 50;
--sa_man직급을 가진 사원번호, 사원명, 직급번호, 부서번호, 부서명을 출력하시오.
select employee_id, emp_name, job_id, a.department_id, c.department_name from employees a, departments c
where job_id = 'SA_MAN';

create table salgrade(
grade varchar2(5),
low_sal number,
high_sal number
);
select salary from employees order by salary asc;
--2001~3000 : 5cls, 3001~4000 : 4cls, 4001~8000 : 3cls, 8001~10000 : 2cls, 10001~14000 : 1cls, 14001~30000 : top
insert into salgrade values(
'5cls',2001,3000);
update salgrade set grade = '5cls' where grade = '5scls';
--update salgrade set high_sal = 30000 where grade = 'top';  --데이터 내용 수정하는 방법
select * from salgrade;
commit;

--non equi-join : 동일한 컬럼을 안가지고 조인하는거--
select salary from employees;
select * from salgrade;
select * from employees, salgrade;
select employee_id, emp_name, salary, grade from employees a, salgrade b where salary between low_sal and high_sal order by employee_id asc;

create table stugrade(
grade varchar2(10),
low_score number,
high_score number
);

-- a : 90~100, b : 80~89, c : 70~79, d : 60~69, f : 0~59
insert into stugrade values(
'F',0,59);
commit;
select * from stugrade;
--non equi-join stuscore의 avg값을 가지고 stunum, name, stuinfo.grade, total, avg, stugrade.grade 출력
select a.stunum, name, b.grade "성적", total, avg, c.grade "학년" from stuinfo c, stuscore a, stugrade b where avg between low_score and high_score
and a.stunum = c.stunum order by a.stunum asc;
--↑↓ 결과값이 동일하나 ↑속도가 빠름
select stunum, total, avg,
case
when avg >= 90 then 'A'
when avg >= 80 then 'B'
when avg >= 70 then 'C'
when avg >= 60 then 'D'
else 'F'
end as grade from stuscore;
select employee_id, emp_name, salary,
case
when salary <= 4000 then 'Y'
else ' '
end as "년봉인상" from employees;
select * from kor_loan_status;
--지역(region)별 대출금액을 출력하시오.
select region, sum(loan_jan_amt) from kor_loan_status group by region;
--기간별 대출금액을 출력하시오.
select period, sum(loan_jan_amt) from kor_loan_status group by period;
--년도별 대출금액을 출력하시오.
select substr(period,1,4), sum(loan_jan_amt) from kor_loan_status group by substr(period,1,4);
--월별 대출금액을 출력하시오.
select substr(period,5,2), sum(loan_jan_amt) from kor_loan_status group by substr(period,5,2);

select * from kor_loan_status;


--부서별 대출금액을 출력하시오.
select * from employees;
SELECT A.DEPARTMENT_ID,DEPARTMENT_NAME,SUM(SALARY) FROM EMPLOYEES A, DEPARTMENTS B
WHERE A.DEPARTMENT_ID = B.DEPARTMENT_ID GROUP BY A.DEPARTMENT_ID,DEPARTMENT_NAME;


select *from employees;

select employee_id, emp_name, department_id, manager_id from employees
order by department_id;


--같은 테이블을 가지고 조인하는 것을 셀프조인이라고 한다.
--굉장히 많이 쓴다 무조건 알고 있어라.
select a.employee_id, a.emp_name, a.manager_id, b.emp_name
from employees a, employees b
where a.manager_id = b.employee_id
order by a.department_id;

--매니저 이름이 steven king인 사원을 모두 출력하시오.
--employee_id, emp_name, manager_id,emp_name,부서번호, 부서명, 직급타이틀(job_title)
select a.employee_id, a.emp_name, a.manager_id, b.emp_name, 
a.department_id, department_name, job_title --job_title같은 컬럼이 없을때는 d를 안 붙여도 된다.
from employees a, employees b, departments c, jobs d
where a.manager_id = b.employee_id --self join
and a.department_id = c.department_id --equi join
and a.job_id = d.job_id
and b.emp_name ='Steven King';

--부서번호, 부서명, 직급타이틀
select *from jobs;

