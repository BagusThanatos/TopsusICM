-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2015 at 05:16 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

--/*SET time_zone = "+00:00";*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `topsusicm`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE IF NOT EXISTS "akun" (
  "username" varchar(20) NOT NULL primary key,
  "password" varchar(20) NOT NULL,
  "namalengkap" varchar(20) NOT NULL,
  "e-mail" varchar(20) NOT NULL,
  "no.telp" varchar(14) NOT NULL,
  "golongan" char(1) NOT NULL
);

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`username`, `password`, `namalengkap`, `e-mail`, `no.telp`, `golongan`) VALUES
('1', '1', '1', '1', '1', '1'),
('2', '2', '2', '2', '2', '4');

-- --------------------------------------------------------

--
-- Table structure for table `contoh`
--

CREATE TABLE IF NOT EXISTS "contoh" (
  "id_contoh" char(6) NOT NULL primary key,
  "namacontoh" varchar(20) NOT NULL,
  "isicontoh" text NOT NULL
);

--
-- Dumping data for table `contoh`
--

INSERT INTO `contoh` (`id_contoh`, `namacontoh`, `isicontoh`) VALUES
('c01cri', 'c create&insert', 'Contoh :\r\nCREATE TABLE Persons\r\n(\r\nPersonID int,\r\nLastName varchar(255),\r\nFirstName varchar(255),\r\nAddress varchar(255),\r\nCity varchar(255)\r\n);\r\n\r\nContoh :\r\nINSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)\r\nVALUES (''Cardinal'',''Tom B. Erichsen'',''Skagen 21'',''Stavanger'',''4006'',''Norway'');\r\n'),
('c02upd', 'c update&delete', 'Contoh\r\n\r\nUPDATE Customers\r\nSET ContactName=''Alfred Schmidt'', City=''Hamburg''\r\nWHERE CustomerName=''Alfreds Futterkiste'';\r\n\r\nContoh:\r\n\r\nDELETE FROM Customers\r\nWHERE CustomerName=''Alfreds Futterkiste'' AND ContactName=''Maria Anders'';\r\n'),
('c03alt', 'c alteringtable', 'Contoh :\r\n\r\nALTER TABLE Persons\r\nADD DateOfBirth date\r\n'),
('c04qut', 'c querytable', 'Contoh :\r\nSELECT CustomerName,City FROM Customers;\r\n'),
('c05loj', 'c leftouterjoin', 'Contoh:\r\n\r\nSELECT Customers.CustomerName, Orders.OrderID\r\nFROM Customers\r\nLEFT JOIN Orders\r\nON Customers.CustomerID=Orders.CustomerID\r\nORDER BY Customers.CustomerName;\r\n'),
('c06inj', 'c innerjoin', 'Contoh:\r\n\r\nSELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate\r\nFROM Orders\r\nINNER JOIN Customers\r\nON Orders.CustomerID=Customers.CustomerID;\r\n'),
('c07foj', 'c fullouterjoin', 'Contoh:\r\n\r\nSELECT Customers.CustomerName, Orders.OrderID\r\nFROM Customers\r\nFULL OUTER JOIN Orders\r\nON Customers.CustomerID=Orders.CustomerID\r\nORDER BY Customers.CustomerName;\r\n'),
('c08agd', 'c aggregatingdata', 'Contoh :\r\n\r\nSELECT * FROM Customers\r\nORDER BY Country;\r\n\r\nSELECT * FROM Customers\r\nORDER BY Country DESC;\r\n\r\nSELECT * FROM Customers\r\nORDER BY Country, CustomerName;\r\n\r\nSELECT * FROM Customers\r\nORDER BY Country ASC, CustomerName DESC;\r\n'),
('c09hvc', 'c having&case', 'Contoh:\r\n\r\nSELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders FROM (Orders\r\nINNER JOIN Employees\r\nON Orders.EmployeeID=Employees.EmployeeID)\r\nGROUP BY LastName\r\nHAVING COUNT(Orders.OrderID) > 10;\r\n'),
('c10qsb', 'c querying&subq', 'Contoh:\r\n\r\nSELECT last_name, title\r\nFROM employee\r\nWHERE dept_id =\r\n(SELECT dept_id\r\nFROM employee\r\nWHERE UPPER (last_name) = ‘RAK’);\r\n'),
('c11mcq', 'c morecomplexqueries', 'Contoh:\r\n\r\nSELECT DISTINCT City FROM Customers;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE IF NOT EXISTS "materi" (
  "id_materi" char(5) NOT NULL primary key,
  "namamateri" varchar(20) NOT NULL,
  "isimateri" text NOT NULL
);

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `namamateri`, `isimateri`) VALUES
('01cri', 'create & insert', 'CREATE TABLE \r\nSyntax create table digunakan untuk membuat sebuah table didalam database. Table terbentuk dari baris dan kolom, dan setiap table harus mempunyai sebuah nama.\r\n\r\nCREATE TABLE table_name\r\n(\r\ncolumn_name1 data_type(size),\r\ncolumn_name2 data_type(size),\r\ncolumn_name3 data_type(size),\r\n....\r\n);\r\n\r\nColumn_name : nama dari kolom pada table\r\nData_type : memberitahukan tipe data yang dipunyai oleh kolom\r\nSize : memeritahukan panjang maksimum dari sebuah kolom\r\n\r\nINSERT TABLE\r\nAda dua cara untuk memasukkan data kedalam table, yang pertama :\r\nINSERT INTO table_name VALUES (value1, value2, value3, …);\r\n\r\nDan yang kedua :\r\nINSERT INTO table_name (column1,column2,column3,...)\r\nVALUES (value1,value2,value3,...);\r\n\r\nPerbedaannya adalah, cara pertama artinya memasukkan seluruh value yang dideskripsikan kepada seluruh kolum yang ada di table. Sedangkan cara kedua, artinya memasukkan seluruh value hanya kepada kolum tertentu saja. Jumlah value dan kolum yang tersedia harus sama.\r\n\r\n'),
('02ude', 'update & delete', 'UPDATE\r\nSyntax update dilakukan untuk mengubah records yang sudah ada di dalam table.\r\n\r\nUPDATE table_name\r\nSET column1=value1,column2=value2,...\r\nWHERE some_column=some_value;\r\n\r\nDELETE\r\nDigunakan saat ingin menghapus baris pada table\r\n\r\nDELETE FROM table_name\r\nWHERE some_column=some_value;\r\n'),
('03que', 'query table', 'SQL QUERY\r\n\r\nSELECT digunakan untuk memilih data dari table. Hasil dari SELECT adalah berupa table hasil.\r\n\r\nSELECT column_name,column_name\r\nFROM table_name;\r\ndan\r\nSELECT * FROM table_name;\r\nCara pertama digunakan untuk memilih data dari kolom-kolom tertentu saja. Sedangkan cara kedua digunakan untuk memilih data dari seluruh kolom pada table.\r\n'),
('04alt', 'alter table', 'ALTER\r\nDigunakan untuk menambah, menghapus, dan mengubah kolom yang sudah ada dari table.\r\n\r\nALTER TABLE table_name\r\nADD column_name datatype\r\n\r\nALTER TABLE table_name\r\nDROP COLUMN column_name\r\n'),
('05loj', 'left outer join', 'LEFT OUTER JOIN\r\n\r\nLeft outer join adalah operasi join yang akan menampilkan semua data yang terdapat di sisi kiri walaupun data di pasangan joinnya yang di sisi kanan nilainya tidak sama atau tidak ada. Pada beberapa database, left outer join biasa dikenal juga dengan left join\r\n'),
('06inj', 'inner join', 'INNER JOIN\r\n\r\nSQL Join digunakan untuk menggabungkan 2 tabel berbeda berdasarkan field yang sama yang ada pada kedua table tersebut. Tipe join yang paling umum adalah SQL Inner Join (simple join). Inner join return semua baris dari multiple tables saat join condition bertemu.\r\n\r\nSyntax:\r\nSELECT MataKuliah.nama_makul, Mahasiswa.nama\r\nFROM MataKuliah\r\nINNER JOIN Mahasiswa\r\nON MataKuliah.nim = Mahasiswa.nim;\r\n'),
('07foj', 'full outer join', 'FULL OUTER JOIN\r\n\r\nFull Outer Join digunakan untuk me-return semua baris dari table di sisi kiri dan table di sisi kanan. Keyword Full Outer Join mengkombinasikan hasil dari join LEFT maupun RIGHT\r\n\r\nSyntax:\r\nSELECT column_name(s)\r\nFROM table1\r\nFULL OUTER JOIN table2\r\nON table1.column_name=table2.column_name;\r\n\r\n'),
('08agr', 'aggregating data', 'AGREGASI\r\n\r\nORDER BY\r\nORDER BY digunakan untuk mengurutkan kolom secara ascending atau descending.\r\n\r\nSELECT column_name, column_name\r\nFROM table_name\r\nORDER BY column_name ASC|DESC, column_name ASC|DESC;\r\n'),
('09hvc', 'having & case', 'HAVING & CASE\r\n\r\nKlausa having ditambahkan saat keyword WHERE tidak dapat digunakan untuk fungsi agregasi.\r\n\r\nSyntax:\r\nSELECT column_name, aggregate_function(column_name)\r\nFROM table_name\r\nWHERE column_name operator value\r\nGROUP BY column_name\r\nHAVING aggregate_function(column_name) operator value;\r\n'),
('10qsb', 'querying & subqs', 'QUERYING & SUBQUERIES\r\n\r\nSubquery adalah perintah SELECT yang berada di dalam perintah SQL lain. Subquery sangat berguna ketika kita ingin menampilkan data dengan kondisi yang bergantung pada data di dalam table itu sendiri.\r\n\r\nSyntax:\r\nSELECT column_name [, column_name]\r\nFROM   table1 [, table2]\r\nWHERE column_name OPERATOR\r\n      (SELECT column_name [, column_name]\r\n      FROM table1 [, table2]\r\n      [WHERE])\r\n'),
('11mcq', 'more complex queries', 'MORE COMPLEX QUERIES (DISTINCT)\r\n\r\nSelect distinct fungsinya adalah untuk menampilkan hasil query mysql jika ada row yang isinya sama, maka hanya akan diambil salah satu nya saja.\r\n\r\nSyntax:\r\nSELECT DISTINCT column_name,column_name\r\nFROM table_name;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `navigasi`
--

CREATE TABLE IF NOT EXISTS "navigasi" (
  "id_navigasi" integer primary key autoincrement,
  "username" varchar(20) NOT NULL,
  "nav_id_materi" char(5) NOT NULL,
  "time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `navigasi`
--

INSERT INTO `navigasi` (`id_navigasi`, `username`, `nav_id_materi`, `time`) VALUES
(1, '1', '10qsb', '2015-12-19 22:39:29'),
(2, '1', '10qsb', '2015-12-19 22:41:10'),
(3, '1', '05loj', '2015-12-19 22:41:12'),
(4, '1', '10qsb', '2015-12-19 22:41:51'),
(5, '1', '10qsb', '2015-12-19 22:43:07'),
(6, '1', '10qsb', '2015-12-19 22:43:22'),
(7, '1', '10qsb', '2015-12-19 22:44:46'),
(8, '1', '03que', '2015-12-19 22:45:42'),
(9, '1', '11mcq', '2015-12-19 22:46:42'),
(10, '1', '01cri', '2015-12-20 03:57:55'),
(11, '1', '02ude', '2015-12-20 03:57:57'),
(12, '1', '03que', '2015-12-20 03:57:58'),
(13, '1', '11mcq', '2015-12-20 03:57:58'),
(14, '1', '08agr', '2015-12-20 03:58:01'),
(15, '1', '04alt', '2015-12-20 03:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS "nilai" (
  "id_nilai" integer NOT NULL primary key AUTOINCREMENT,
  "nilai1" double NOT NULL,
  "nilai2" double NOT NULL,
  "status" varchar(10) NOT NULL,
  "username" varchar(20) NOT NULL,
  "id_materi" char(5) NOT NULL
);

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nilai1`, `nilai2`, `status`, `username`, `id_materi`) VALUES
(1, 0.2, 0, 'begin', '2', '01cri'),
(2, 0.7, 0, 'int', '1', '01cri'),
(3, 0.7, 0, 'int', '1', '01cri'),
(4, 0.7, 0.7, 'adv', '1', '01cri'),
(5, 0.2, 0.1, 'beg', '1', '02ude'),
(6, 0.2, 0.1, 'beg', '1', '02ude'),
(7, 0, 0, 'beg', '1', '02ude'),
(8, 0.7, 0.7, 'adv', '1', '02ude'),
(9, 0.1, 0.7, 'int', '1', '10qsb'),
(10, 0.2, 0.7, 'int', '1', '10qsb'),
(11, 0.7, 0.7, 'adv', '1', '03que'),
(12, 0.7, 0.7, 'adv', '1', '03que');

-- --------------------------------------------------------

--
-- Table structure for table `nilaipretest`
--

CREATE TABLE IF NOT EXISTS "nilaipretest" (
  "id_nilaipretest" integer NOT NULL primary key AUTOINCREMENT,
  "nilaip1" double NOT NULL,
  "nilaip2" double NOT NULL,
  "nilaip3" double NOT NULL,
  "nilaip4" double NOT NULL,
  "nilaip5" double NOT NULL,
  "username" varchar(20) NOT NULL
) ;

--
-- Dumping data for table `nilaipretest`
--

INSERT INTO `nilaipretest` (`id_nilaipretest`, `nilaip1`, `nilaip2`, `nilaip3`, `nilaip4`, `nilaip5`, `username`) VALUES
(1, 0.7, 0.7, 0.7, 0.7, 0, '2'),
(2, 0.7, 0.1, 0.2, 0.1, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `presentasi`
--

CREATE TABLE IF NOT EXISTS "presentasi" (
  "id_presentasi" integer NOT NULL primary key AUTOINCREMENT,
  "username" varchar(20) NOT NULL,
  "pres_id_contoh" char(6) NOT NULL,
  "prestime" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `pretest`
--

CREATE TABLE IF NOT EXISTS "pretest" (
  "id_pretest" char(6) NOT NULL primary key,
  "nomorpretest" char(1) NOT NULL,
  "isipretest" text NOT NULL,
  "pjwbA" text NOT NULL,
  "npjwbA" double NOT NULL,
  "pjwbB" text NOT NULL,
  "npjwbB" double NOT NULL,
  "pjwbC" text NOT NULL,
  "npjwbC" double NOT NULL
);

--
-- Dumping data for table `pretest`
--

INSERT INTO `pretest` (`id_pretest`, `nomorpretest`, `isipretest`, `pjwbA`, `npjwbA`, `pjwbB`, `npjwbB`, `pjwbC`, `npjwbC`) VALUES
('p01cri', '1', 'Dari pilihan berikut, yang manakah mempunyai syntax yang benar? ', 'a. CREATE TABLE colum_name;', 0.1, 'b. CREATE TABLE table_name (column_name data_type (size));', 0.7, 'c. CREATE TABLE table_name (column_name (data_type size));', 0.2),
('p02upd', '2', 'Kapan update digunakan?', 'a. Saat ingin mengubah data pada table', 0.7, 'b. Saat ingin memasukkan data baru ke table', 0.2, 'c. Saat ingin menghapus data dari table', 0.1),
('p03que', '3', 'Apa maksud dari SELECT CustomerName,City FROM Customers; ?', 'a. Memilih kolom CustomerName dan City dari table Customer', 0.7, 'b. Memilih seluruh kolom dari Customer', 0.1, 'c. Memilih kolom CustomerName dari table Customer', 0.2),
('p04mcq', '4', 'Pernyataan yang tepat di bawah ini, yaitu:', 'a. Distinct hanya menampilkan satu row jika terdapat beberapa row yang sama', 0.7, 'b. Distinct sama dengan select biasa', 0.2, 'c. Distinct digunakan untuk menggabungkan beberapa table', 0.1),
('p05foj', '5', 'Di bawah ini yang merupakan syntax yang benar, yaitu:', 'a. SELECT Customers.CustomerName, Orders.OrderID\r\nFROM Customers\r\nFULL JOIN Orders\r\nON Customers.CustomerID=Orders.CustomerID\r\nORDER BY Customers.CustomerName;\r\n', 0.1, 'b. SELECT Customers.CustomerName, Orders.OrderID\r\nON Customers\r\nFULL OUTER JOIN Orders\r\nFROM Customers.CustomerID=Orders.CustomerID\r\nORDER BY Customers.CustomerName;\r\n', 0.2, 'c. SELECT Customers.CustomerName, Orders.OrderID\r\nFROM Customers\r\nFULL OUTER JOIN Orders\r\nON Customers.CustomerID=Orders.CustomerID\r\nORDER BY Customers.CustomerName;\r\n', 0.7);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE IF NOT EXISTS "soal" (
  "id_soal" char(7) NOT NULL primary key ,
  "nomorsoal" char(1) NOT NULL,
  "isisoal" text NOT NULL,
  "jawaban_A" text NOT NULL,
  "n_jwb_A" double NOT NULL,
  "jawaban_B" text NOT NULL,
  "n_jwb_B" double NOT NULL,
  "jawaban_C" text NOT NULL,
  "n_jwb_C" double NOT NULL,
  "id_materi" char(5) NOT NULL
);

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `nomorsoal`, `isisoal`, `jawaban_A`, `n_jwb_A`, `jawaban_B`, `n_jwb_B`, `jawaban_C`, `n_jwb_C`, `id_materi`) VALUES
('s01cri1', '1', 'Dari pilihan berikut, yang manakah mempunyai syntax yang benar? \r\n', 'a. CREATE TABLE colum_name;\r\n\r\n', 0.1, 'b. CREATE TABLE table_name (column_name data_type (size));\r\n', 0.7, 'c. CREATE TABLE table_name (column_name (data_type size));', 0.2, '01cri'),
('s01cri2', '2', 'Apa perbedaan \r\n(1) INSERT INTO table_name VALUES (values1, values2,…);\r\nDan \r\n(2) INSERT INTO table_name (column_name1,…) VALUES (values1, values2,…); ?\r\n', 'a. (1) memasukkan value kepada beberapa kolom saja pada table\r\n dan (2) memasukkan value kepada seluruh kolom pada table. \r\n', 0.2, 'b. (2) adalah cara yang benar, dan (1) adalah cara yang salah.\r\n', 0.1, 'c. (1) memasukkan value kepada seluruh kolom pada table dan (2) memasukkan value kepada beberapa kolom saja pada table\r\n', 0.7, '01cri'),
('s02ude1', '1', 'Bagaimana cara jika ingin mengubah data book_name menjadi “James Bond” pada table Book, dimana ID_book sama dengan ‘007’?', 'a. UPDATE Book where book_name=”James Bond”;\r\n\r\n', 0.1, 'b. UPDATE Book where ID_Book=’007’ (book_name=”James Bond”);', 0.2, 'c. UPDATE Book SET book_name=”James Bond” WHERE ID_Book=’007’;\r\n', 0.7, '02ude'),
('s02ude2', '2', 'Dari pilihan dibawah ini, yang mana syntax yang benar?', 'a. DELETE column_name WHERE column_name=values;\r\n\r\n\r\n', 0.1, 'b. DELETE FROM table_name WHERE column=values;', 0.7, 'c. DELETE FROM table_name;', 0.2, '02ude'),
('s03que1', '1', 'Apa maksud dari SELECT CustomerName,City FROM Customers; ?', 'a. Memilih kolom CustomerName dan City dari table Customer\r\n\r\n\r\n', 0.7, 'b. Memilih seluruh kolom dari Customer', 0.1, 'c. Memilih kolom CustomerName dari table Customer', 0.2, '03que'),
('s03que2', '2', 'Bagaimana cara yang benar untuk memilih seluruh kolom dari table Book?', 'a. Select title FROM Book\r\n', 0.1, 'b. Select (title, year) FROM Book\r\n\r\n', 0.2, 'c. Select * FROM Book', 0.7, '03que'),
('s04alt1', '1', 'Bagaimana cara menambah kolom baru pada table?', 'a. ALTER TABLE Book DROP author varchar(255);\r\n', 0.1, 'b. ALTER TABLE Book ADD COLUMN author; \r\n', 0.2, 'c. ALTER TABLE Book ADD author varchar(255);\r\n', 0.7, '04alt'),
('s04alt2', '2', 'Bagaimana cara mengahapus kolom author pada table Book?', 'a. ALTER TABLE Book DROP COLUMN author;\r\n\r\n\r\n', 0.7, 'b. ALTER TABLE Book ADD COLUMN author;	', 0.2, 'c. ALTER TABLE author DROP FROM Book;', 0.1, '04alt'),
('s05loj1', '1', 'Bagaimanakah cara left outer join yang benar?', 'a. Select Mahasiswa.nama,  MataKuliah.Nama_makul\r\nFrom Mahasiswa\r\nLeft outer join MataKuliah\r\nOn Mahasiswa.nim = MataKuliah.nim\r\nOrder by Mahasiswa.nama; \r\n\r\n', 0.7, 'b. Select Mahasiswa.nama, MataKuliah.Nama_makul\r\nFrom Mahasiswa\r\nLeft outer join MataKuliah\r\nOrder by Mahasiswa.nama;\r\n\r\n', 0.2, 'c. Select Mahasiswa.nama, MataKuliah.Nama_makul\r\nFrom Mahasiswa\r\nInner outer join MataKuliah\r\nOn Mahasiswa.nim = MataKuliah.nim\r\nOrder by Mahasiswa.nama;\r\n\r\n', 0.1, '05loj'),
('s05loj2', '2', 'Pernyataan mana yang benar?', 'a. Left outer join sama dengan inner outer join\r\n\r\n\r\n\r\n\r\n', 0.2, 'b. Left outer join bisa digunakan saat pasangan join table tidak mengandung data yang teapt sama dengan table pasangan joinnya', 0.7, 'c. Left outer join tidak sama dengan left join\r\n', 0.1, '05loj'),
('s06inj1', '1', 'Bagaimanakah cara inner join yang benar?', 'a. SELECT MataKuliah.nama_makul, Mahasiswa.nama\r\nFROM MataKuliah\r\nINNER ON Mahasiswa\r\nJOIN MataKuliah.nim = Mahasiswa.nim;\r\n', 0.2, 'b. SELECT MataKuliah.nama_makul, Mahasiswa.nama\r\nFROM MataKuliah\r\nINNER JOIN Mahasiswa\r\nON MataKuliah.nim = Mahasiswa.nim;\r\n', 0.7, 'c. SELECT MataKuliah.nama_makul, Mahasiswa.nama\r\nFROM MataKuliah\r\nINNER JOIN Mahasiswa\r\nON ORDER MataKuliah.nim = Mahasiswa.nim;\r\n', 0.1, '06inj'),
('s06inj2', '2', 'Pernyataan mana yang benar?', 'a. SQL INNER JOIN bisa disebut dengan istilah complex join', 0.2, 'b. SQL INNER JOIN merupakan tipe yang umum dari SQL JOIN', 0.7, 'c. Tidak perlu ada field yang sama di antara kedua table untuk melakukann inner join', 0.1, '06inj'),
('s07foj1', '1', 'Di bawah ini yang merupakan syntax yang benar, yaitu:', 'a. SELECT Customers.CustomerName, Orders.OrderID\r\nFROM Customers\r\nFULL JOIN Orders\r\nON Customers.CustomerID=Orders.CustomerID\r\nORDER BY Customers.CustomerName;\r\n', 0.1, 'b. SELECT Customers.CustomerName, Orders.OrderID\r\nON Customers\r\nFULL OUTER JOIN Orders\r\nFROM Customers.CustomerID=Orders.CustomerID\r\nORDER BY Customers.CustomerName;\r\n', 0.2, 'c. SELECT Customers.CustomerName, Orders.OrderID\r\nFROM Customers\r\nFULL OUTER JOIN Orders\r\nON Customers.CustomerID=Orders.CustomerID\r\nORDER BY Customers.CustomerName;\r\n', 0.7, '07foj'),
('s07foj2', '2', 'Pernyataan yang tepat di bawah ini adalah', 'a. Full outer join return semua baris meskipun terdapat row yang tidak match di antara ke dua table', 0.7, 'b. Full outer join return semua baris dengan catatan semua row harus match untuk dapat ditampilkan', 0.2, 'c. Full outer join sama dengan right outer join', 0.1, '07foj'),
('s08agr1', '1', 'Bagaimana cara mengurutkan kolom secara menurun (dari besar ke kecil)?', 'a. DESC', 0.7, 'b. ASC', 0.2, 'c. ORDER BY', 0.1, '08agr'),
('s08agr2', '2', 'Bagaimana cara mengurutkan table Book dengan kolom title dari kecil ke besar?', 'a. SELECT title FROM Book ORDER BY title;', 0.1, 'b. SELECT * FROM Book ORDER BY title DESC;', 0.2, 'c. SELECT * FROM Book ORDER BY title;', 0.7, '08agr'),
('s09hvc1', '1', 'Di bawah ini yang merupakan syntax yang benar, yaitu', 'a. SELECT ID, NAME, AGE, ADDRESS, SALARY\r\nFROM CUSTOMERS\r\nGROUP BY age\r\nHAVING COUNT (age) >= 2;\r\n', 0.7, 'b. SELECT count (id), country\r\nFROM CUSTOMERS\r\nGROUP BY Country\r\nHAVING id;\r\n', 0.2, 'c. SELECT count (id), country\r\nHAVING count (id) >10\r\nFROM CUSTOMERS\r\nGROUP BY Country;\r\n', 0.1, '09hvc'),
('s09hvc2', '2', 'Pernyataan manakah yang tepat?', 'a. WHERE dan HAVING tidak dapat berada di query yang sama', 0.1, 'b. HAVING memfilter records yang merupakan summary dari hasil Group By', 0.7, 'c. Group yang tidak masuk dalam kriteria HAVING tetap dimunculkan', 0.2, '09hvc'),
('s10qsb1', '1', 'Berikut adalah tujuan dari subquery, kecuali:', 'a. Menghapus baris dari satu tabel berdasarkan baris dari tabel lain', 0.7, 'b. Menggabungkan beberapa table', 0.2, 'c. Mengurutkan daftar table', 0.1, '10qsb'),
('s10qsb2', '2', 'Contoh manakah yang salah di bawah ini:', 'a. SELECT * \r\n   FROM CUSTOMERS \r\n   WHERE ID IN (SELECT ID FROM CUSTOMERS WHERE SALARY > 4500);\r\n', 0.1, 'b. SELECT nama_makul, jadwal\r\n   FROM perkuliahan\r\n   WHERE id_makul =\r\n	(SELECT id_makul\r\n         FROM MataKuliah\r\n  WHERE UPPER (nama_makul) = ‘Informasi);\r\n', 0.2, 'c. SELECT nama_makul, jadwal\r\nFROM perkuliahan\r\nWHERE id_makul =\r\n	(FROM MataKuliah\r\nWHERE UPPER (nama_makul) = ‘Informasi);\r\n', 0.7, '10qsb'),
('s11mcq1', '1', 'Syntax manakah yang benar?', 'a. SELECT DISTINCT SALARY FROM CUSTOMERS\r\nORDER BY SALARY;\r\n', 0.7, 'b. SELECT DISTINCT ON SALARY FROM CUSTOMERS\r\nORDER BY SALARY;\r\n', 0.2, 'c. SELECT SALARY DISTINCT FROM CUSTOMERS\r\nORDER BY SALARY;\r\n', 0.1, '11mcq'),
('s11mcq2', '2', 'Pernyataan yang tepat di bawah ini, yaitu:', 'a. Distinct hanya menampilkan satu row jika terdapat beberapa row yang sama', 0.7, 'b. Distinct sama dengan select biasa', 0.2, 'c. Distinct digunakan untuk menggabungkan beberapa table', 0.1, '11mcq');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
