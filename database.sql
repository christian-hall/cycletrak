DROP DATABASE IF EXISTS cycletrak;
CREATE DATABASE cycletrak;
USE cycletrak;

CREATE TABLE stores(
	-- states will be hard-coded in the front-end
	id				int				primary key auto_increment,
    location_name	varchar(100)	not null,
    address1		varchar(150)	not null,
    address2		varchar(150),
    city			varchar(100)	not null,
    state			varchar(2)		not null,
    zip				varchar(5)		not null,
    phone_number	varchar(10)		not null,
    email			varchar(50)		not null,
    
    CONSTRAINT unique_location_name UNIQUE (location_name)
);

CREATE TABLE users(
	id				int				primary key auto_increment,
    store_id		int				not null,
    first_name		varchar(25)		not null,
    last_name		varchar(25)		not null,
    user_name		varchar(25)		not null,
    password		varchar(25)		not null,
    birthdate		date			not null,
    email			varchar(100)	not null,
    phone_number	varchar(10)		not null,
    is_manager		boolean			not null default False,
    is_admin		boolean			not null default False,
    
    FOREIGN KEY (store_id) REFERENCES stores(id),
    CONSTRAINT unique_username UNIQUE user(user_name)
);

CREATE TABLE bike_types(
	id				int				primary key auto_increment,
    name			varchar(50)		not null,
    
    CONSTRAINT unique_bike_types UNIQUE bike_types(name)
);

CREATE TABLE color_options(
	id				int				primary key auto_increment,
    name			varchar(15)		not null,
    
    CONSTRAINT unique_color_names UNIQUE color_options(name)
);

CREATE TABLE frame_sizes(
	-- inches & centimenters will be hard-coded in the front-end
	id				int				primary key auto_increment,
    size			int				not null,
    measurement		varchar(2)		not null,
    
    CONSTRAINT unique_size UNIQUE (size, measurement)
);


CREATE TABLE bikes(
	id				int				primary key auto_increment,
    bike_type		int				not null,
    year			varchar(4)		not null,
    make			varchar(25)		not null,
    model			varchar(25)		not null,
    details			varchar(500)	not null,
    photo_file		varchar(500),
    
    frame			varchar(500),
    fork			varchar(500),
	shocks			varchar(500),
    rims_wheels		varchar(500),
    hubs			varchar(500),
    tires			varchar(500),
    crankset		varchar(500),
    chainrings		varchar(500),
    front_derailleur	varchar(500),
    rear_derailleur		varchar(500),
    cassette		varchar(500),
    shifters		varchar(500),
    handlebars		varchar(500),
    brakes			varchar(500),
    pedals			varchar(500),
    saddle			varchar(500),
    
    FOREIGN KEY (bike_type) REFERENCES bike_types(id),
    CONSTRAINT unique_bike UNIQUE (year, make, model)
);
CREATE TABLE bike_options(
	-- linkes frame sizes, colors, and bikes so that only one model needs to be entered for multiple frame sizes
    id				int				primary key auto_increment,
    bike_id			int				not null,
    size_id			int				not null,
    color_id		int				not null,
    option_name		varchar(50)		not null,
    stock_number	varchar(25)		not null,
    
    FOREIGN KEY (bike_id) REFERENCES bikes(id),
    FOREIGN KEY (size_id) REFERENCES frame_sizes(id),
    FOREIGN KEY (color_id) REFERENCES color_options(id)
);
CREATE TABLE stocked_bikes(
-- links bikes and stores so individual bikes don't need to be made at different stores
	id				int				primary key auto_increment,
    store_id		int				not null,
    bike_id			int				not null,
    quantity		int				not null default 0,
    
    CONSTRAINT one_stock_one_store UNIQUE (store_id, bike_id)
);
	
