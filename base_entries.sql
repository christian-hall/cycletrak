-- preset values
INSERT INTO cycletrak.stores (location_name, address1, address2, city, state, zip, phone_number, email) VALUES
	('Demo Store 1', '100 Demonstration Street', 'Suite A', 'Cincinnati', 'OH', '12345', '5535551234', 'democycles@demo.com'),
    ('Demo Store 2', '100 Example Street', null, 'Covington', 'KY', '98765', '8595551234', 'examplecycles@demo.com');

INSERT INTO cycletrak.users (store_id, first_name, last_name, user_name, password, birthdate, email, phone_number, is_manager, is_admin) VALUES
	(1, 'Alexander', 'Christenson', 'achristenson', '12345', '1980-06-08', 'alexander@demo.com', '5135555555', False, True),
    (1, 'Barbara', 'Hathaway', 'bhathoway', '12345', '1990-01-19', 'barbara@demo.com', '5135553456', True, False),
    (1, 'Charles', 'Vance', 'cvance', '12345', '1995-03-26', 'charles@demo.com', '5135554567', False, False),
    (1, 'Dwane', 'Jefferson', 'djefferson', '12345', '2000-10-31', 'dwane@demo.com', '5135555678', False, False),
    (2, 'Emily', 'McDaniel', 'emcdaniel', '12345', '1985-12-12', 'emily@demo.com', '8595556789', True, False),
    (2, 'Frederick', 'Pierce', 'fpierce', '12345', '2005-07-04', 'frederick@demo.com', '8595557890', False, False);

INSERT INTO cycletrak.bike_types (name) VALUES
	('Road'), ('Mountain'), ('Hybrid'), ('Electric'), ('Cyclocross'), ('Commuter'), ('Comfort'), ('Fitness'), ('BMX'), ('Gravel'), ('Tricycle'), ('Cruser');

INSERT INTO cycletrak.color_options (name) VALUES
	('Black'), ('White'), ('Gray'), ('Silver'), ('Brown'), ('Red'), ('Orange'), ('Yellow'), ('Green'), ('Teal'), ('Blue'), ('Indigo'), ('Purple');

INSERT INTO cycletrak.frame_sizes (size, measurement) VALUES
	(47, 'cm'), (50, 'cm'),(52, 'cm'), (54, 'cm'), (56, 'cm'), (58, 'cm'), (60, 'cm'), (62, 'cm'), (15, 'in'), (17.5, 'in'), (20, 'in');
