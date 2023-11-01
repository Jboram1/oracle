--부서명 최대연봉, 최소연봉, 몇균연봉을 출력하시오.
select department_id, max(salary), min(salary), round(avg(salary),2) as stu_avg from employees
where department_id>50 group by department_id having avg(salary)>5000 order by department_id;
--그룹에 대한 조건은 having사용

select * from employees;

select * from departments;

select employee_id, emp_name, department_id, job_id from employees;

select employee_id, emp_name, employees.department_id, department_name, departments.manager_id, departments.create_date from employees, departments
where employees.department_id = departments.department_id;

select employee_id, emp_name,  employees.department_id, department_name from employees, departments
where employees.department_id = departments.department_id;

select * from employees;  --107
select * from departments;  --27
select count(*) from employees,departments;  --107*27=2889
select * from employees,departments;

--equi join :  공통의 컬럼을 가지고 검색하는것
select employees.department_id, department_name from employees, departments where employees.department_id = departments.department_id;

select e.department_id, department_name from employees e, departments d where e.department_id = d.department_id;  --약식

select *from jobs;
--employees, jobs
--사원번호, 사원이름, 직급, 직급최대월급 최소월급을 출력하시오.

select employee_id, emp_name, e.job_id, j.max_salary, j.min_salary from employees e, jobs j where e.job_id = j.job_id;

--------------------------------------------------------------------------------------------------------
create table stuinfo (
	stunum number(4),
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
--------------------------------------------------------------------------------------------------------
select * from stuinfo;

select * from stuscore;

update stuscore a set a.name = (select b.name from stuinfo b where a.stunum = b.stunum);

commit;

alter table stuscore drop column name;

drop table stuscore;

--------------------------------------------------------------------------------------------------------
create table stuscore (
	stunum number,
	kor number,
	eng number,
	math number,
	total number,
	avg number,
	rank number
);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (1, 90, 69, 90, 249, 83, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (2, 65, 83, 91, 239, 79.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (3, 64, 91, 94, 249, 83, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (4, 73, 72, 62, 207, 69, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (5, 51, 80, 64, 195, 65, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (6, 90, 57, 91, 238, 79.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (7, 50, 63, 52, 165, 55, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (8, 77, 98, 82, 257, 85.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (9, 94, 58, 92, 244, 81.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (10, 55, 76, 66, 197, 65.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (11, 79, 54, 94, 227, 75.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (12, 89, 61, 75, 225, 75, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (13, 79, 93, 100, 272, 90.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (14, 86, 75, 53, 214, 71.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (15, 66, 73, 50, 189, 63, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (16, 73, 69, 55, 197, 65.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (17, 82, 50, 62, 194, 64.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (18, 86, 87, 87, 260, 86.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (19, 99, 75, 63, 237, 79, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (20, 86, 74, 73, 233, 77.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (21, 61, 55, 53, 169, 56.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (22, 70, 50, 51, 171, 57, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (23, 70, 94, 82, 246, 82, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (24, 59, 83, 71, 213, 71, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (25, 99, 52, 92, 243, 81, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (26, 83, 55, 94, 232, 77.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (27, 87, 78, 80, 245, 81.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (28, 66, 58, 61, 185, 61.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (29, 76, 51, 99, 226, 75.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (30, 84, 77, 50, 211, 70.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (31, 72, 92, 97, 261, 87, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (32, 64, 91, 66, 221, 73.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (33, 50, 69, 56, 175, 58.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (34, 90, 84, 81, 255, 85, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (35, 97, 75, 64, 236, 78.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (36, 96, 93, 76, 265, 88.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (37, 54, 73, 50, 177, 59, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (38, 56, 77, 95, 228, 76, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (39, 63, 91, 56, 210, 70, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (40, 54, 80, 97, 231, 77, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (41, 58, 80, 51, 189, 63, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (42, 96, 56, 72, 224, 74.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (43, 77, 79, 69, 225, 75, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (44, 81, 64, 55, 200, 66.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (45, 76, 68, 71, 215, 71.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (46, 58, 57, 84, 199, 66.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (47, 50, 71, 70, 191, 63.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (48, 57, 68, 55, 180, 60, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (49, 90, 70, 74, 234, 78, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (50, 100, 92, 62, 254, 84.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (51, 82, 79, 57, 218, 72.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (52, 55, 50, 57, 162, 54, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (53, 60, 76, 85, 221, 73.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (54, 70, 79, 72, 221, 73.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (55, 71, 77, 94, 242, 80.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (56, 91, 96, 50, 237, 79, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (57, 89, 61, 94, 244, 81.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (58, 59, 79, 71, 209, 69.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (59, 92, 70, 76, 238, 79.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (60, 71, 58, 94, 223, 74.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (61, 98, 68, 81, 247, 82.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (62, 68, 84, 97, 249, 83, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (63, 81, 71, 89, 241, 80.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (64, 51, 72, 60, 183, 61, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (65, 84, 74, 74, 232, 77.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (66, 90, 89, 96, 275, 91.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (67, 63, 55, 85, 203, 67.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (68, 68, 93, 53, 214, 71.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (69, 57, 73, 100, 230, 76.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (70, 52, 95, 81, 228, 76, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (71, 89, 59, 78, 226, 75.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (72, 73, 61, 71, 205, 68.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (73, 90, 94, 96, 280, 93.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (74, 69, 56, 91, 216, 72, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (75, 62, 96, 65, 223, 74.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (76, 63, 62, 66, 191, 63.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (77, 91, 68, 62, 221, 73.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (78, 96, 84, 61, 241, 80.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (79, 78, 94, 50, 222, 74, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (80, 95, 59, 57, 211, 70.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (81, 55, 88, 69, 212, 70.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (82, 93, 78, 76, 247, 82.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (83, 78, 79, 57, 214, 71.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (84, 50, 95, 89, 234, 78, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (85, 91, 62, 75, 228, 76, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (86, 65, 54, 91, 210, 70, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (87, 91, 54, 92, 237, 79, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (88, 76, 76, 87, 239, 79.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (89, 83, 100, 65, 248, 82.6666666667, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (90, 52, 52, 74, 178, 59.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (91, 88, 90, 71, 249, 83, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (92, 89, 92, 75, 256, 85.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (93, 57, 85, 80, 222, 74, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (94, 64, 96, 74, 234, 78, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (95, 57, 53, 64, 174, 58, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (96, 84, 61, 93, 238, 79.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (97, 84, 87, 85, 256, 85.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (98, 97, 85, 83, 265, 88.3333333333, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (99, 51, 69, 72, 192, 64, 0);
insert into stuscore (stunum, kor, eng, math, total, avg, rank) values (100, 77, 64, 92, 233, 77.6666666667, 0);

commit;
--------------------------------------------------------------------------------------------------------

select * from stuscore;

desc stuinfo;

select a.stunum, name, grade, total, avg, rank from stuinfo a, stuscore b where a.stunum = b.stunum;

commit;