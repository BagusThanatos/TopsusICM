-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Des 2015 pada 05.51
-- Versi Server: 10.1.8-MariaDB
-- PHP Version: 5.6.14



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsusicm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `username` varchar(20) NOT NULL primary key,
  `password` varchar(20) NOT NULL,
  `namalengkap` varchar(20) NOT NULL,
  `e-mail` varchar(20) NOT NULL,
  `no.telp` varchar(14) NOT NULL,
  `golongan` char(1) NOT NULL
) ;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`username`, `password`, `namalengkap`, `e-mail`, `no.telp`, `golongan`) VALUES
('a', 'a', 'a', 'a', 'a', ''),
('b', 'b', 'b', 'b', 'b', ''),
('f', 'f', 'f', 'f', 'f', '1'),
('yayan', 'topsusicm', 'Fauzan', 'a', 'a', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contoh`
--

CREATE TABLE `contoh` (
  `id_contoh` char(6) NOT NULL primary key,
  `namacontoh` varchar(20) NOT NULL,
  `isicontoh` text NOT NULL
) ;

--
-- Dumping data untuk tabel `contoh`
--

INSERT INTO `contoh` (`id_contoh`, `namacontoh`, `isicontoh`) VALUES
('c01cri', 'c create&insert', 'Contoh :
CREATE TABLE Persons
(
PersonID int,
LastName varchar(255),
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);

Contoh :
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (''Cardinal'',''Tom B. Erichsen'',''Skagen 21'',''Stavanger'',''4006'',''Norway'');
'),
('c02upd', 'c update&delete', 'Contoh

UPDATE Customers
SET ContactName=''Alfred Schmidt'', City=''Hamburg''
WHERE CustomerName=''Alfreds Futterkiste'';

Contoh:

DELETE FROM Customers
WHERE CustomerName=''Alfreds Futterkiste'' AND ContactName=''Maria Anders'';
'),
('c03alt', 'c alteringtable', 'Contoh :

ALTER TABLE Persons
ADD DateOfBirth date
'),
('c04qut', 'c querytable', 'Contoh :
SELECT CustomerName,City FROM Customers;
'),
('c05loj', 'c leftouterjoin', 'Contoh:

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
'),
('c06inj', 'c innerjoin', 'Contoh:

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
'),
('c07foj', 'c fullouterjoin', 'Contoh:

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
'),
('c08agd', 'c aggregatingdata', 'Contoh :

SELECT * FROM Customers
ORDER BY Country;

SELECT * FROM Customers
ORDER BY Country DESC;

SELECT * FROM Customers
ORDER BY Country, CustomerName;

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
'),
('c09hvc', 'c having&case', 'Contoh:

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders FROM (Orders
INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;
'),
('c10qsb', 'c querying&subq', 'Contoh:

SELECT last_name, title
FROM employee
WHERE dept_id =
(SELECT dept_id
FROM employee
WHERE UPPER (last_name) = ‘RAK’);
'),
('c11mcq', 'c morecomplexqueries', 'Contoh:

SELECT DISTINCT City FROM Customers;
');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id_materi` char(5) NOT NULL primary key,
  `namamateri` varchar(20) NOT NULL,
  `isimateri` text NOT NULL
) ;
--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id_materi`, `namamateri`, `isimateri`) VALUES
('01cri', 'create & insert', 'CREATE TABLE 
Syntax create table digunakan untuk membuat sebuah table didalam database. Table terbentuk dari baris dan kolom, dan setiap table harus mempunyai sebuah nama.

CREATE TABLE table_name
(
column_name1 data_type(size),
column_name2 data_type(size),
column_name3 data_type(size),
....
);

Column_name : nama dari kolom pada table
Data_type : memberitahukan tipe data yang dipunyai oleh kolom
Size : memeritahukan panjang maksimum dari sebuah kolom

INSERT TABLE
Ada dua cara untuk memasukkan data kedalam table, yang pertama :
INSERT INTO table_name VALUES (value1, value2, value3, …);

Dan yang kedua :
INSERT INTO table_name (column1,column2,column3,...)
VALUES (value1,value2,value3,...);

Perbedaannya adalah, cara pertama artinya memasukkan seluruh value yang dideskripsikan kepada seluruh kolum yang ada di table. Sedangkan cara kedua, artinya memasukkan seluruh value hanya kepada kolum tertentu saja. Jumlah value dan kolum yang tersedia harus sama.

'),
('02ude', 'update & delete', 'UPDATE
Syntax update dilakukan untuk mengubah records yang sudah ada di dalam table.

UPDATE table_name
SET column1=value1,column2=value2,...
WHERE some_column=some_value;

DELETE
Digunakan saat ingin menghapus baris pada table

DELETE FROM table_name
WHERE some_column=some_value;
'),
('03que', 'query table', 'SQL QUERY

SELECT digunakan untuk memilih data dari table. Hasil dari SELECT adalah berupa table hasil.

SELECT column_name,column_name
FROM table_name;
dan
SELECT * FROM table_name;
Cara pertama digunakan untuk memilih data dari kolom-kolom tertentu saja. Sedangkan cara kedua digunakan untuk memilih data dari seluruh kolom pada table.
'),
('04alt', 'alter table', 'ALTER
Digunakan untuk menambah, menghapus, dan mengubah kolom yang sudah ada dari table.

ALTER TABLE table_name
ADD column_name datatype

ALTER TABLE table_name
DROP COLUMN column_name
'),
('05loj', 'left outer join', 'LEFT OUTER JOIN

Left outer join adalah operasi join yang akan menampilkan semua data yang terdapat di sisi kiri walaupun data di pasangan joinnya yang di sisi kanan nilainya tidak sama atau tidak ada. Pada beberapa database, left outer join biasa dikenal juga dengan left join
'),
('06inj', 'inner join', 'INNER JOIN

SQL Join digunakan untuk menggabungkan 2 tabel berbeda berdasarkan field yang sama yang ada pada kedua table tersebut. Tipe join yang paling umum adalah SQL Inner Join (simple join). Inner join return semua baris dari multiple tables saat join condition bertemu.

Syntax:
SELECT MataKuliah.nama_makul, Mahasiswa.nama
FROM MataKuliah
INNER JOIN Mahasiswa
ON MataKuliah.nim = Mahasiswa.nim;
'),
('07foj', 'full outer join', 'FULL OUTER JOIN

Full Outer Join digunakan untuk me-return semua baris dari table di sisi kiri dan table di sisi kanan. Keyword Full Outer Join mengkombinasikan hasil dari join LEFT maupun RIGHT

Syntax:
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name=table2.column_name;

'),
('08agr', 'aggregating data', 'AGREGASI

ORDER BY
ORDER BY digunakan untuk mengurutkan kolom secara ascending atau descending.

SELECT column_name, column_name
FROM table_name
ORDER BY column_name ASC|DESC, column_name ASC|DESC;
'),
('09hvc', 'having & case', 'HAVING & CASE

Klausa having ditambahkan saat keyword WHERE tidak dapat digunakan untuk fungsi agregasi.

Syntax:
SELECT column_name, aggregate_function(column_name)
FROM table_name
WHERE column_name operator value
GROUP BY column_name
HAVING aggregate_function(column_name) operator value;
'),
('10qsb', 'querying & subqs', 'QUERYING & SUBQUERIES

Subquery adalah perintah SELECT yang berada di dalam perintah SQL lain. Subquery sangat berguna ketika kita ingin menampilkan data dengan kondisi yang bergantung pada data di dalam table itu sendiri.

Syntax:
SELECT column_name [, column_name]
FROM   table1 [, table2]
WHERE column_name OPERATOR
      (SELECT column_name [, column_name]
      FROM table1 [, table2]
      [WHERE])
'),
('11mcq', 'more complex queries', 'MORE COMPLEX QUERIES (DISTINCT)

Select distinct fungsinya adalah untuk menampilkan hasil query mysql jika ada row yang isinya sama, maka hanya akan diambil salah satu nya saja.

Syntax:
SELECT DISTINCT column_name,column_name
FROM table_name;
');

-- --------------------------------------------------------

--
-- Struktur dari tabel `navigasi`
--

CREATE TABLE `navigasi` (
  `id_navigasi` integer primary key autoincrement,
  `username` varchar(20) NOT NULL,
  `nav_id_materi` char(5) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` integer primary key autoincrement,
  `nilai1` double NOT NULL,
  `nilai2` double NOT NULL,
  `status` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `id_materi` char(5) NOT NULL
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilaipretest`
--

CREATE TABLE `nilaipretest` (
  `id_nilaipretest` integer primary key autoincrement,
  `nilaip1` double NOT NULL,
  `nilaip2` double NOT NULL,
  `nilaip3` double NOT NULL,
  `nilaip4` double NOT NULL,
  `nilaip5` double NOT NULL,
  `username` varchar(20) NOT NULL
) ;

--
-- Dumping data untuk tabel `nilaipretest`
--

INSERT INTO `nilaipretest` (`id_nilaipretest`, `nilaip1`, `nilaip2`, `nilaip3`, `nilaip4`, `nilaip5`, `username`) VALUES
(1, 0.7, 0.1, 0.2, 0.1, 0.7, 'f'),
(2, 0.7, 0.1, 0.7, 0.2, 0.2, 'yayan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presentasi`
--

CREATE TABLE `presentasi` (
  `id_presentasi` integer primary key autoincrement,
  `username` varchar(20) NOT NULL,
  `pres_id_contoh` char(6) NOT NULL,
  `prestime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pretest`
--

CREATE TABLE `pretest` (
  `id_pretest` char(6) NOT NULL,
  `nomorpretest` char(1) NOT NULL,
  `isipretest` text NOT NULL,
  `bobotpretest` double NOT NULL,
  `pjwbA` text NOT NULL,
  `npjwbA` double NOT NULL,
  `pjwbB` text NOT NULL,
  `npjwbB` double NOT NULL,
  `pjwbC` text NOT NULL,
  `npjwbC` double NOT NULL
) ;

--
-- Dumping data untuk tabel `pretest`
--

INSERT INTO `pretest` (`id_pretest`, `nomorpretest`, `isipretest`, `bobotpretest`, `pjwbA`, `npjwbA`, `pjwbB`, `npjwbB`, `pjwbC`, `npjwbC`) VALUES
('p01cri', '1', 'Dari pilihan berikut, yang manakah mempunyai syntax yang benar? ', 0, 'a. CREATE TABLE colum_name;', 0.1, 'b. CREATE TABLE table_name (column_name data_type (size));', 0.7, 'c. CREATE TABLE table_name (column_name (data_type size));', 0.2),
('p02upd', '2', 'Kapan update digunakan?', 0, 'a. Saat ingin mengubah data pada table', 0.7, 'b. Saat ingin memasukkan data baru ke table', 0.2, 'c. Saat ingin menghapus data dari table', 0.1),
('p03que', '3', 'Apa maksud dari SELECT CustomerName,City FROM Customers; ?', 0, 'a. Memilih kolom CustomerName dan City dari table Customer', 0.7, 'b. Memilih seluruh kolom dari Customer', 0.1, 'c. Memilih kolom CustomerName dari table Customer', 0.2),
('p04mcq', '4', 'Pernyataan yang tepat di bawah ini, yaitu:', 0, 'a. Distinct hanya menampilkan satu row jika terdapat beberapa row yang sama', 0.7, 'b. Distinct sama dengan select biasa', 0.2, 'c. Distinct digunakan untuk menggabungkan beberapa table', 0.1),
('p05foj', '5', 'Di bawah ini yang merupakan syntax yang benar, yaitu:', 0, 'a. SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
', 0.1, 'b. SELECT Customers.CustomerName, Orders.OrderID
ON Customers
FULL OUTER JOIN Orders
FROM Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
', 0.2, 'c. SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
', 0.7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` char(7) NOT NULL,
  `nomorsoal` char(1) NOT NULL,
  `isisoal` text NOT NULL,
  `bobotsoal` double NOT NULL,
  `jawaban_A` text NOT NULL,
  `n_jwb_A` double NOT NULL,
  `jawaban_B` text NOT NULL,
  `n_jwb_B` double NOT NULL,
  `jawaban_C` text NOT NULL,
  `n_jwb_C` double NOT NULL,
  `id_materi` char(5) NOT NULL
) ;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `nomorsoal`, `isisoal`, `bobotsoal`, `jawaban_A`, `n_jwb_A`, `jawaban_B`, `n_jwb_B`, `jawaban_C`, `n_jwb_C`, `id_materi`) VALUES
('s01cri1', '1', 'Dari pilihan berikut, yang manakah mempunyai syntax yang benar? 
', 0, 'a. CREATE TABLE colum_name;

', 0.1, 'b. CREATE TABLE table_name (column_name data_type (size));
', 0.7, 'c. CREATE TABLE table_name (column_name (data_type size));', 0.2, '01cri'),
('s01cri2', '2', 'Apa perbedaan 
(1) INSERT INTO table_name VALUES (values1, values2,…);
Dan 
(2) INSERT INTO table_name (column_name1,…) VALUES (values1, values2,…); ?
', 0, 'a. (1) memasukkan value kepada beberapa kolom saja pada table
 dan (2) memasukkan value kepada seluruh kolom pada table. 
', 0.2, 'b. (2) adalah cara yang benar, dan (1) adalah cara yang salah.
', 0.1, 'c. (1) memasukkan value kepada seluruh kolom pada table dan (2) memasukkan value kepada beberapa kolom saja pada table
', 0.7, '01cri'),
('s02ude1', '1', 'Bagaimana cara jika ingin mengubah data book_name menjadi “James Bond” pada table Book, dimana ID_book sama dengan ‘007’?', 0, 'a. UPDATE Book where book_name=”James Bond”;

', 0.1, 'b. UPDATE Book where ID_Book=’007’ (book_name=”James Bond”);', 0.2, 'c. UPDATE Book SET book_name=”James Bond” WHERE ID_Book=’007’;
', 0.7, '02ude'),
('s02ude2', '2', 'Dari pilihan dibawah ini, yang mana syntax yang benar?', 0, 'a. DELETE column_name WHERE column_name=values;


', 0.1, 'b. DELETE FROM table_name WHERE column=values;', 0.7, 'c. DELETE FROM table_name;', 0.2, '02ude'),
('s03que1', '1', 'Apa maksud dari SELECT CustomerName,City FROM Customers; ?', 0, 'a. Memilih kolom CustomerName dan City dari table Customer


', 0.7, 'b. Memilih seluruh kolom dari Customer', 0.1, 'c. Memilih kolom CustomerName dari table Customer', 0.2, '03que'),
('s03que2', '2', 'Bagaimana cara yang benar untuk memilih seluruh kolom dari table Book?', 0, 'a. Select title FROM Book
', 0.1, 'b. Select (title, year) FROM Book

', 0.2, 'c. Select * FROM Book', 0.7, '03que'),
('s04alt1', '1', 'Bagaimana cara menambah kolom baru pada table?', 0, 'a. ALTER TABLE Book DROP author varchar(255);
', 0.1, 'b. ALTER TABLE Book ADD COLUMN author; 
', 0.2, 'c. ALTER TABLE Book ADD author varchar(255);
', 0.7, '04alt'),
('s04alt2', '2', 'Bagaimana cara mengahapus kolom author pada table Book?', 0, 'a. ALTER TABLE Book DROP COLUMN author;


', 0.7, 'b. ALTER TABLE Book ADD COLUMN author;	', 0.2, 'c. ALTER TABLE author DROP FROM Book;', 0.1, '04alt'),
('s05loj1', '1', 'Bagaimanakah cara left outer join yang benar?', 0, 'a. Select Mahasiswa.nama,  MataKuliah.Nama_makul
From Mahasiswa
Left outer join MataKuliah
On Mahasiswa.nim = MataKuliah.nim
Order by Mahasiswa.nama; 

', 0.7, 'b. Select Mahasiswa.nama, MataKuliah.Nama_makul
From Mahasiswa
Left outer join MataKuliah
Order by Mahasiswa.nama;

', 0.2, 'c. Select Mahasiswa.nama, MataKuliah.Nama_makul
From Mahasiswa
Inner outer join MataKuliah
On Mahasiswa.nim = MataKuliah.nim
Order by Mahasiswa.nama;

', 0.1, '05loj'),
('s05loj2', '2', 'Pernyataan mana yang benar?', 0, 'a. Left outer join sama dengan inner outer join




', 0.2, 'b. Left outer join bisa digunakan saat pasangan join table tidak mengandung data yang teapt sama dengan table pasangan joinnya', 0.7, 'c. Left outer join tidak sama dengan left join
', 0.1, '05loj'),
('s06inj1', '1', 'Bagaimanakah cara inner join yang benar?', 0, 'a. SELECT MataKuliah.nama_makul, Mahasiswa.nama
FROM MataKuliah
INNER ON Mahasiswa
JOIN MataKuliah.nim = Mahasiswa.nim;
', 0.2, 'b. SELECT MataKuliah.nama_makul, Mahasiswa.nama
FROM MataKuliah
INNER JOIN Mahasiswa
ON MataKuliah.nim = Mahasiswa.nim;
', 0.7, 'c. SELECT MataKuliah.nama_makul, Mahasiswa.nama
FROM MataKuliah
INNER JOIN Mahasiswa
ON ORDER MataKuliah.nim = Mahasiswa.nim;
', 0.1, '06inj'),
('s06inj2', '2', 'Pernyataan mana yang benar?', 0, 'a. SQL INNER JOIN bisa disebut dengan istilah complex join', 0.2, 'b. SQL INNER JOIN merupakan tipe yang umum dari SQL JOIN', 0.7, 'c. Tidak perlu ada field yang sama di antara kedua table untuk melakukann inner join', 0.1, '06inj'),
('s07foj1', '1', 'Di bawah ini yang merupakan syntax yang benar, yaitu:', 0, 'a. SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
', 0.1, 'b. SELECT Customers.CustomerName, Orders.OrderID
ON Customers
FULL OUTER JOIN Orders
FROM Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
', 0.2, 'c. SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;
', 0.7, '07foj'),
('s07foj2', '2', 'Pernyataan yang tepat di bawah ini adalah', 0, 'a. Full outer join return semua baris meskipun terdapat row yang tidak match di antara ke dua table', 0.7, 'b. Full outer join return semua baris dengan catatan semua row harus match untuk dapat ditampilkan', 0.2, 'c. Full outer join sama dengan right outer join', 0.1, '07foj'),
('s08agr1', '1', 'Bagaimana cara mengurutkan kolom secara menurun (dari besar ke kecil)?', 0, 'a. DESC', 0.7, 'b. ASC', 0.2, 'c. ORDER BY', 0.1, '08agr'),
('s08agr2', '2', 'Bagaimana cara mengurutkan table Book dengan kolom title dari kecil ke besar?', 0, 'a. SELECT title FROM Book ORDER BY title;', 0.1, 'b. SELECT * FROM Book ORDER BY title DESC;', 0.2, 'c. SELECT * FROM Book ORDER BY title;', 0.7, '08agr'),
('s09hvc1', '1', 'Di bawah ini yang merupakan syntax yang benar, yaitu', 0, 'a. SELECT ID, NAME, AGE, ADDRESS, SALARY
FROM CUSTOMERS
GROUP BY age
HAVING COUNT (age) >= 2;
', 0.7, 'b. SELECT count (id), country
FROM CUSTOMERS
GROUP BY Country
HAVING id;
', 0.2, 'c. SELECT count (id), country
HAVING count (id) >10
FROM CUSTOMERS
GROUP BY Country;
', 0.1, '09hvc'),
('s09hvc2', '2', 'Pernyataan manakah yang tepat?', 0, 'a. WHERE dan HAVING tidak dapat berada di query yang sama', 0.1, 'b. HAVING memfilter records yang merupakan summary dari hasil Group By', 0.7, 'c. Group yang tidak masuk dalam kriteria HAVING tetap dimunculkan', 0.2, '09hvc'),
('s10qsb1', '1', 'Berikut adalah tujuan dari subquery, kecuali:', 0, 'a. Menghapus baris dari satu tabel berdasarkan baris dari tabel lain', 0.7, 'b. Menggabungkan beberapa table', 0.2, 'c. Mengurutkan daftar table', 0.1, '10qsb'),
('s10qsb2', '2', 'Contoh manakah yang salah di bawah ini:', 0, 'a. SELECT * 
   FROM CUSTOMERS 
   WHERE ID IN (SELECT ID FROM CUSTOMERS WHERE SALARY > 4500);
', 0.1, 'b. SELECT nama_makul, jadwal
   FROM perkuliahan
   WHERE id_makul =
	(SELECT id_makul
         FROM MataKuliah
  WHERE UPPER (nama_makul) = ‘Informasi);
', 0.2, 'c. SELECT nama_makul, jadwal
FROM perkuliahan
WHERE id_makul =
	(FROM MataKuliah
WHERE UPPER (nama_makul) = ‘Informasi);
', 0.7, '10qsb'),
('s11mcq1', '1', 'Syntax manakah yang benar?', 0, 'a. SELECT DISTINCT SALARY FROM CUSTOMERS
ORDER BY SALARY;
', 0.7, 'b. SELECT DISTINCT ON SALARY FROM CUSTOMERS
ORDER BY SALARY;
', 0.2, 'c. SELECT SALARY DISTINCT FROM CUSTOMERS
ORDER BY SALARY;
', 0.1, '11mcq'),
('s11mcq2', '2', 'Pernyataan yang tepat di bawah ini, yaitu:', 0, 'a. Distinct hanya menampilkan satu row jika terdapat beberapa row yang sama', 0.7, 'b. Distinct sama dengan select biasa', 0.2, 'c. Distinct digunakan untuk menggabungkan beberapa table', 0.1, '11mcq');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
