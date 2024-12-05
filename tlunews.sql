CREATE DATABASE tintuc;
USE tintuc;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role INT NOT NULL CHECK (role IN (0, 1)) -- 0: người dùng, 1: quản trị viên
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE news (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    image VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE
);

insert into users (id, username, password, role) values (1, 'gshayes0', '$2a$04$k/QurzNhR2jNxAWbbw5hOe.xHdK0PLlUq8dAeBHHS6Bw.mEADo3p2', 1);
insert into users (id, username, password, role) values (2, 'ghame1', '$2a$04$3emtp9T.gJRgBHSU4JlX9uw7U556DcWGutR4mIOP1KKDzDivDtGL.', 1);
insert into users (id, username, password, role) values (3, 'afrere2', '$2a$04$T3fcX1fFK/KKPkCdugj7EuzoeqzqXvT.xFoKX6eWIrcFmW48u3atq', 0);
insert into users (id, username, password, role) values (4, 'ecornbill3', '$2a$04$XBNPoyTVULTkfhuVkryhFujDx7Oj2J6bhP4aOEyki9n3PXn3CgZcS', 0);
insert into users (id, username, password, role) values (5, 'kmurkin4', '$2a$04$TLtamdGd7uxJTL3/idsSl.YdeLrc0C2S9pJ0vzuxdCpKl3MQT4Qo6', 1);
insert into users (id, username, password, role) values (6, 'dclemow5', '$2a$04$2qfJD.br9KVpFi/0/7PdsO6iBRLAYcRcXHDGX9NsoiC7Bw25OhfvS', 0);
insert into users (id, username, password, role) values (7, 'otaw6', '$2a$04$vOYMNodID.exlFITlC269eD.pDhJcyz/whTERre/IewEEu.DAjPu.', 0);
insert into users (id, username, password, role) values (8, 'egillogley7', '$2a$04$xPYUH3i9ONtZ5HS3t08cWOuPnFwcJT7HTXx0bONW3z.bGqQUxb1VK', 1);
insert into users (id, username, password, role) values (9, 'cotham8', '$2a$04$8IFIA1hIBqqg3qyoQ8RlpuqdNwZ/FtXhTLOjcIkadREJAfPxPNMZy', 1);
insert into users (id, username, password, role) values (10, 'mclute9', '$2a$04$NvVK/OaSz.NCbz2Fp/KNGujVAwj3jWJGKEcXw27Mg9pdLeHWySlv2', 0);
insert into users (id, username, password, role) values (11, 'cbertha', '$2a$04$E5Fav7CBVO7mQ5MbzK9T1e/r23kNSn3eQ2tgyEMskVgNI4l9eiS8a', 1);
insert into users (id, username, password, role) values (12, 'cdalgetyb', '$2a$04$d.cBbYBLRamJFuNasHqzQur/YXrwoRWo7sGuCNXqdvdtjNRzFIC0a', 0);
insert into users (id, username, password, role) values (13, 'mtomec', '$2a$04$ovfNKpJjG/H5uh.o140A0eSw04HfRMcHxz1JqwJ43r4UTJVp0/Ro2', 0);
insert into users (id, username, password, role) values (14, 'tcudbyd', '$2a$04$xKCsMElhMjjAVpK.S8UorOdk5u69efdPey88RWtx833J9h4KOqLwG', 0);
insert into users (id, username, password, role) values (15, 'lgludore', '$2a$04$tbZpqjq9CXh0KuxAuscKGe1zU9WQjP4tNAB8.ZUCfKfHLddYkyDo.', 1);
insert into users (id, username, password, role) values (16, 'pkhomishinf', '$2a$04$cfLc345orw1xiy8BlSFH4uAXr5X3a0lfkKW7kVlaxnLaR1u/oUAV2', 0);
insert into users (id, username, password, role) values (17, 'rdrissellg', '$2a$04$A1o/axGBUFdoBpdjHxB4b.2IJxa6zyzsSb51GGdWD/nveJrAf1H6q', 0);
insert into users (id, username, password, role) values (18, 'lhabdenh', '$2a$04$Glc6G0YKXGqx9xOxCfQUTe6aPdR/4GEVcF10IlbmVsTseKA5K5aE2', 1);
insert into users (id, username, password, role) values (19, 'tlawlancei', '$2a$04$1uLCM63hCKuZ1wR6TGyWjOCh7ZYnw7W6bMAlzoHvf/AfQ2FcPEZDW', 1);
insert into users (id, username, password, role) values (20, 'chailesj', '$2a$04$lftflXYCbgL4NEDfook56e8XHYT7QFQFFn3NXqY7KNzdsHiwqgnzy', 1);


insert into categories (name) values ('at nibh');
insert into categories (name) values ('ultrices phasellus');
insert into categories (name) values ('dolor morbi');
insert into categories (name) values ('posuere metus');
insert into categories (name) values ('vel est');
insert into categories (name) values ('suscipit');
insert into categories (name) values ('nulla nunc');
insert into categories (name) values ('dapibus duis');
insert into categories (name) values ('phasellus in');
insert into categories (name) values ('erat quisque');
insert into categories (name) values ('luctus');
insert into categories (name) values ('pharetra');
insert into categories (name) values ('purus');
insert into categories (name) values ('laoreet');
insert into categories (name) values ('mauris lacinia');
insert into categories (name) values ('ut');
insert into categories (name) values ('vestibulum ante');
insert into categories (name) values ('curabitur convallis');
insert into categories (name) values ('curabitur convallis');
insert into categories (name) values ('blandit');

insert into news (title, content, image, created_at, category_id) values ('Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 'images/2.jpg', '2024-09-08', 1);
insert into news (title, content, image, created_at, category_id) values ('Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'images/2.jpg', '2024-10-07', 2);
insert into news (title, content, image, created_at, category_id) values ('Quisque ut erat. Curabitur gravida nisi at nibh.', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'images/1.jpg', '2023-12-23', 3);
insert into news (title, content, image, created_at, category_id) values ('Etiam faucibus cursus urna.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'images/2.jpg', '2024-04-23', 4);
insert into news (title, content, image, created_at, category_id) values ('Morbi ut odio.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'images/1.jpg', '2024-11-03', 5);
insert into news (title, content, image, created_at, category_id) values ('Proin risus.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'images/3.jpg', '2023-12-17', 6);
insert into news (title, content, image, created_at, category_id) values ('Vivamus tortor. Duis mattis egestas metus.', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'images/3.jpg', '2024-02-17', 7);
insert into news (title, content, image, created_at, category_id) values ('Duis bibendum.', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'images/1.jpg', '2024-04-09', 8);
insert into news (title, content, image, created_at, category_id) values ('Pellentesque at nulla.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'images/2.jpg', '2024-09-02', 9);
insert into news (title, content, image, created_at, category_id) values ('Nunc purus. Phasellus in felis.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'images/3.jpg', '2024-01-13', 10);
insert into news (title, content, image, created_at, category_id) values ('In hac habitasse platea dictumst.', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'images/2.jpg', '2024-10-21', 11);
insert into news (title, content, image, created_at, category_id) values ('In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'images/3.jpg', '2024-09-04', 12);
insert into news (title, content, image, created_at, category_id) values ('Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'images/3.jpg', '2024-05-02', 13);
insert into news (title, content, image, created_at, category_id) values ('Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 'images/2.jpg', '2024-08-06', 14);
insert into news (title, content, image, created_at, category_id) values ('Phasellus in felis.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'images/1.jpg', '2024-04-15', 15);
insert into news (title, content, image, created_at, category_id) values ('Praesent blandit.', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'images/2.jpg', '2024-08-24', 16);
insert into news (title, content, image, created_at, category_id) values ('Sed ante.', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'images/2.jpg', '2024-02-05', 17);
insert into news (title, content, image, created_at, category_id) values ('Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'images/1.jpg', '2024-11-12', 18);
insert into news (title, content, image, created_at, category_id) values ('Aenean fermentum.', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'images/3.jpg', '2024-03-01', 19);
insert into news (title, content, image, created_at, category_id) values ('Nullam sit amet turpis elementum ligula vehicula consequat.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.

Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'images/2.jpg', '2024-07-20', 20);


SELECT * FROM users;
SELECT * FROM categories;
SELECT * FROM news;