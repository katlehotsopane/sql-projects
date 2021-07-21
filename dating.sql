Create table my_contacts (
	cont_id bigserial,
	first_name varchar(50),
	last_name varchar(50),
	mobile_no varchar(50),
	gender varchar(1),
	email varchar (50),
	birthday varchar(50), 
	profession varchar(50),
	city varchar(50),
	zip_code varchar(50),
	seeking varchar (50),
	status_id integer,
	primary key(cont_id)
);


create table my_contact_interests (
	cont_id integer references my_contacts(cont_id),
	interest_id integer references interests(interest_id),
	constraint cont_interest_key primary key (cont_id)
);


create table contact_seeking (
	seeking_id integer references seeking(seeking_id),
	contact_id integer references my_contacts(cont_id)
);

Create table profession (
	prof_id bigserial,
	profession_name varchar(50)
);
 

Create table zip_code (
zip_code integer,
city varchar(50),
province  varchar(50),
CONSTRAINT zip_code_key PRIMARY KEY (zip_code),
CONSTRAINT check_zip_code_not_zero CHECK (zip_code < 10000)
);

create table status (
	status_id bigserial,
	status varchar(50),
	primary key (status_id)
);


create table interests (
	interest_id bigserial,
	interest varchar,
	constraint interest_key primary key (interest_id)	
);

create table seeking (
	seeking_id bigserial,
	seeking varchar
);

Insert into profession (profession_name)
values 
('Data analyst'),
('Java developer'),
('Software engineer'),
('Auditor'),
('Electrical engineer'),
('Social worker'),
('Computer Programmer'),
('Quality Asurance tester'),
('Athletic Trainer'),
('Dentists'),
('Network engineer'),
('Sales Engineers'),
('Web Developers'),
('IT technician'),
('Chief Executive');


Insert into zip_code(zip_code,city,province)
values
(9399,'Bloemfontein','Free-State'),
(2499,'Carltonville','Gauteng'),
(1399,'Nelspruit','Mpumalanga');
(0999,'Polokwane','Limopo'),
(4730,'Umzinkulu','KwaZulu-Natal'),
(8999,'Gordonia','Northern-Cape'),
(6099,'Port-Elizabeth','Eastern-Cape'),
(6699,'Lusikisiki','Eastern Cape'),
(7599,'Pinelands','Western Cape'),
(8099,'Steenberg','Western-Cape'),
(1799,'Krugersdorp','Gauteng'),
(3199,'Umlazi','KwaZulu-Natal'),
(0499,'Mafikeng','North-West'),
(6499,'Queenstown','Eastern-Cape')
(4099,'Ethekwini','KwaZulu-Natal'),


Insert into status(status_id,status)
values
('1','{looking}'),
('2','{married}'),
('3','{single}'),
('4','{engaged}'),
('5','{complicated}'),
('6','{taken}');


Insert into interests(interest)
values
('touring'),
('reading newspapers'),
('exercising'),
('Music'),
('Art & Design'),
('Video Gaming'),
('dancing'),
('Volunteering');


Insert into contact_interests (contact)
values
('dancing')
('reading newspapers'),
('traveling'),
('playing indoors'),
('pets'),
('role play'),
('volunteering'),
('Singing'),
('Helping people'),
('role play'),
('cooking'),
('Music');
('pets'),

	
Insert into public.seeking (seeking_id,seeking)
values
('1','{male}'),
('2','{female}'),
('3','{Transgender}'),
('4','{Gay male}'),
('5','{Lesbain}');


Insert into my_contacts (first_name, last_name, mobile_no, email, gender, birthday, profession, zip_code,status_id,seeking)
values 	('Mohau', 'Itumeleng', '27 735668314', 'thembin@gmail.com', 'M', '03-03-1998', 'Accountant', 0299,'2','2'),
		('katleho', 'Mogane', '27 783452256', 'katleho@gmail.com', 'M', '04-02-1997', 'Data analyst', 0499,'1','2'),
		('noni', 'bulls', '27 639268214', 'noni@gmail.co,za', 'F', '31-07-1997', 'Java developer', 0999,'1','1'),
		('siphelele', 'Magala', '27 633338310', 'siphelele@gmail.co.za', 'M','21-06-1999', 'Software engineer',  1799,'3','3'),
		('lelo', 'lebsa', '27 825121449', 'lelo@thegirl.com', 'F', '11-04-2000', 'Electrical engineer', 4099,'4','5'),
		('amo', 'Daniels', '27 836542298', 'amo@gmail.co.za', 'M', '06-03-1998', 'Social worker', 4730,'5','2'),
		('haley', 'david', '27 623569231', 'healey@gmail.com', 'F', '05-12-1999', 'Computer Programmers',  9399,'6','1'),
		('tamara-ami', 'Sekese', '27 73981023', 'tarama@gmail.com', 'M', '26-05-2000', 'Computer Programmer', 8999,'2','2'),
		('xolile', 'tavia', '27 635443219', 'xolile@nikki.com', 'F', '07-07-2000','Athletic Trainer', 6099,'4','5'),
		('lesedy', 'Menzo', '27 639887451', 'lesedy@gmail.co.za', 'M', '21-06-2000', 'Dentists', 6499,'2','2'),
		('sky', 'sabela', '27 635447823', 'khanyimbau@khanyi.com', 'F', '17-04-1998','Network engineer', 6099,'1','5'),
		('bouy', 'nthona', '27 625692210', 'bouy@thegirl.com', 'F', '23-05-1999','Accountant', 9301,'3','1'),
		('dylan', 'sephai', '27 8256598', 'dylan@gmail.co.za', 'M', '18-07-1999','Auditors', 8401,'5','2'),
		('godwin', 'monate', '27 987692210', 'godwn@gmail.com', 'M', '20-08-1998','Chief Executives', 9320,'5','2'),
		('black', 'thembelani', '27 431038820', 'black@gmail.com', 'F', '23-05-2000','Quality Asurance teste', 8773,'1','5');


select my_contacts.first_name,my_contacts.last_name,
			profession.prof_id,
			my_contacts.status_id,
			my_contacts.zip_code
			from my_contacts left join profession
			on profession.prof_id = status_id
			left join zip_code
			on zip_code.zip_code = zip_code.zip_code
			order by my_contacts;
			


drop table my_contacts;
drop table my_contact_interests;
drop table profession;
drop table status;
drop table seeking;
drop table zip_code;
drop table contact_seeking;
drop table interests;

select * from my_contacts;
select * from zip_code;
select * from profession;
select * from status;
select * from interests;
select * from contact_interests;
select * from contact_seeking;
select * from seeking;

delete from seeking;
delete from my_contacts; 
delete from zip_code;
delete from profession;
delete from status;
delete from interests;
delete from contact_interests;
delete from contact_seeking;