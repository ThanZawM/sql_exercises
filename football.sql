create database football;

use football;

create table team (id int not null auto_increment, name nvarchar(100) not null, founded_date date,
			primary key(id));

insert into team (name, founded_date) values ('Barcelona', '1899-11-29');
insert into team (name, founded_date) values ('Manchester City', '1880-01-01');
insert into team (name, founded_date) values ('Real Madrid', '1902-03-06');

create table player (id int not null auto_increment, name nvarchar(100) not null, jersy_no int not null,
 			age int not null, salary decimal(10,2) not null, team_id int, height decimal(5,2), 
			primary key(id), foreign key(team_id) references team(id));

insert into player (name, jersy_no, age, salary, team_id, height) values 
			('Ter Stegen', 1, 28, 250000, 1, 187);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Pique', 3, 33, 880000, 1, 194);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Lenglet', 15, 24, 250000, 1, 186);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Jordi Alba', 18, 31, 600000, 1, 170);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Roberto', 20, 28, 680000, 1, 178);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Rakitic', 4, 32, 1120000, 1, 184);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Busquets', 5, 31, 1040000, 1, 189);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('De Jong', 21, 22, 1440000, 1, 180);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Suarez', 9, 33, 1620000, 1, 182);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Lionel Messi', 10, 33, 2500000, 1, 170);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Griezmann', 17, 29, 1380000, 1, 176);

insert into player (name, jersy_no, age, salary, team_id, height) values
			('Ederson', 31, 25, 65000, 2, 188);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Otamendi', 30, 31, 180000, 2, 181);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Laporte', 14, 25, 120000, 2, 189);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Walker', 2, 29, 110000, 2, 178);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Mendy', 22, 24, 95000, 2, 183);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Fernandinho', 25, 34, 180000, 2, 177);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('David Silva', 21, 34, 220000, 2, 170);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('De Bruyne', 17, 28, 350000, 2, 181);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Bernardo Silva', 20, 24, 150000, 2, 173);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Kun Aguero', 10, 31, 230000, 2, 172);
insert into player (name, jersy_no, age, salary, team_id, height) values
			('Sterling', 7, 24, 300000, 2, 170);

select * from player where team_id=1;

select * from player where salary>500000;

select team.name, sum(salary) from team, player where team.id=1 and
team.id=player.team_id;

select team.name, sum(salary) from team, player where team.id=2 and
team.id = player.team_id;

select * from player where height<180;

select team.name, avg(salary) from team, player where team.id=1 and
team.id=player.team_id;

select team.name, avg(salary) from team, player where team.id=2 and
team.id=player.team_id;

select * from player where salary = (select min(salary) from player);

select * from player where salary = (select max(salary) from player);

select * from player where age>30 and salary>200000;
