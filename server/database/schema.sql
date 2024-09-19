

  create table property (
  id int unsigned PRIMARY KEY AUTO_INCREMENT NOT NULL,
  email VARCHAR(155) not NULL,
  password VARCHAR(255) not NULL,
  name VARCHAR(155) NOT NULL,
  phone VARCHAR(20) NOT NULL
);


create table ground (
  id int unsigned PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(155) not NULL,
  location VARCHAR(155) NULL,
  description TEXT not NULL,
  Tracks_available VARCHAR(155) not NULL,
  Authorized_vehicles VARCHAR(155) not NULL,
  property_id int unsigned not NULL,
  Foreign key (property_id) REFERENCES property(id)
  );


create table user (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email VARCHAR(155) NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(55) NOT NULL,
    last_name VARCHAR(55) NOT NULL
  );

   INSERT INTO property (email, password, name, phone)
  VALUES("terrabike@hotmail.fr", "0000", "gilber", "03087965412"),
  ("leschamps@hotmail.fr", "1234", "joseph", "03087965412"),
  ("parisbercy@hotmail.fr", "azerty", "mathieu", "03087965412");

INSERT INTO ground ( title,  location, description, Tracks_available, Authorized_vehicles, property_id)
VALUES('Terra bike', 'Saint dié des Vosges', 'terrain de supercross', 'mx sx', 'moto', 1),
('les champs', 'marseille', 'terrain de supercross', 'freestyle', 'moto quad', 2),
('paris bercy', 'paris', 'terrain de supercross', 'mx sx enfant', 'moto quad', 3);
