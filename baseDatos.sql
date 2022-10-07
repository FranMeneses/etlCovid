create table estados (
	county text not null,
	state text not null,
	state_code text not null,
	population int not null,
	primary key (county, state)
);

create table condados (
	fips int not null,
	county text not null,
	state text not null,
	state_code text not null,
	male int not null,
	female int not null,
	median_age float not null,
	lat float not null,
	long float not null,
	primary key (county, state),
	foreign key (county, state) references estados (county, state)
);

create table diarios (
	date date not null,
	county text not null,
	state text not null,
	fips int not null,
	cases int not null,
	deaths int not null,
	primary key (date, county, state),
	foreign key (county, state) references estados (county, state)
);