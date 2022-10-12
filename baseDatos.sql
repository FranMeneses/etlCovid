create table estados(
	state_name text not null primary key,
	state_code text not null
)
;
create table condados(
	fips text not null primary key,
	county_name text not null,
	male_pop int not null,
	female_pop int not null,
	median_age float not null,
	latitude float not null,
	longitude float not null,
	population int not null
)
;
create table diarios(
	date_ date not null,
	fips text not null references condados(fips),
	state_name text not null,
	cases int not null,
	deaths int not null,
	primary key(date_, fips)
)

drop table diarios;
drop table condados;
drop table estados;