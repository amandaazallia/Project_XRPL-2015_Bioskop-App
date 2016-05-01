-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 11, 2015 at 09:54 AM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ariefset_in_man`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `fungsi` text,
  `id` int(100) NOT NULL,
  `fitur` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`fungsi`, `id`, `fitur`) VALUES
('Mendapatkan Informasi seputar film yang ditayangkan. Sistem pemberi informasi dari pengolahan aplikasi visual pembelian "Cinema XXI". Memberikan Informasi terpercaya yang diperoleh darii sumber paling terpercaya.', 1, 'Menyediakan jadwal penayangan untuk pemutaran film di bioskop yang anda tuju. Menyediakan sinopsis film sebagai bahan referensi anda untuk judul film yang akan pilih setelahnya. Menyediakan waktu penayangan dan tempat penayangan dengan jelas. Membantu mempromosikan aplikasi visual kami.');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `id` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `id`) VALUES
('amanda', '11111', 1);

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE IF NOT EXISTS `berkas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namafile` text NOT NULL,
  `versi` varchar(10) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `log_data` text NOT NULL,
  `db_update` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`id`, `namafile`, `versi`, `alamat`, `log_data`, `db_update`) VALUES
(2, 'data.sql', '01', 'localhost/update/berkas/01/data.sql', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE IF NOT EXISTS `daftar` (
  `id` int(50) NOT NULL,
  `username` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `id` int(40) NOT NULL,
  `judul_film` varchar(4000) DEFAULT NULL,
  `waktu_tayang` varchar(4000) DEFAULT NULL,
  `tempat_tayang` varchar(4000) DEFAULT NULL,
  `trailer_film` text,
  `sinopsis_film` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `judul_film`, `waktu_tayang`, `tempat_tayang`, `trailer_film`, `sinopsis_film`) VALUES
(4, 'Fast and Farious 7', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', 'ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/Furious 7 - Official Super Bowl Spot (HD).mp4', 'Sinopsis Furious 7.  Karna ini adalah film serial berkelanjutan, tentu kita ketahui bersama, film  Furious 7 akan melanjutkan kisah diseri sebelumnya, yaitu Fast & Furious 6. Kisah sebelumnya menceritakan dimana sang ketua tim yang bernama Dom (Vin Diesel) sukses menyelamatkan kekasihnya Ortiz (Michelle Rodriguez) dari tangan sang penjahat, Owen Shaw (Luke Evans).\r\n\r\nKeberhasilan Dom (Van Diesel) dalam menyelamatkan kekasihnya dan mengalahkan Shaw (Luke Evans) justru memunculkan masalah baru, memang benar dendam tidak akan menyelesaikan sebuah masalah. Namun, tanpa adanya dendam maka serial sebuah film action tidak akan menjadi berkelanjutan. Keluarga adalah segalanya, mungkin fakta itulah yang melandasi sifat aktor yang diperankan Jason Statham. Merasa tak terima dengan kekalahan yang diterima oleh sang kakak, adik Owen yang diperankan oleh Jason Statham pun bersiap menuntut balas. \r\n\r\n \r\nFilm ''Fast and Furious 7'' masih dengan Dominic Toretto dan Brian O''Conner melaksanakan misi baru, yaitu penyelamatan seorang gadis. Sedangkan gadis yang akan diselamatkan tersebut diperankan oleh Michelle Rodriguez. Guna mencegah ceritanya menjadi kehilangan arah, Penulis naskah Chris Morgan memutuskan untuk membuat adegan kepergian karakter Brian O Connor (Paul Walker). '),
(5, 'Insidious Chapter 3', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', 'ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/Insidious 3 Trailer.mp4', 'Film Ber genre Horro ini memang sudah mem-bbuming dari awal kehadirannya. Kini Insidious sudah mencapai Chapter 3, ynag kembali melanjutkan cerita dari Insidious Chapter 2. Di dalam Insidious Chapter 3 ini anda masih menemui hantu pengantin dari Insidious Chapter 2.'),
(7, 'Tomorrow Land', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', 'ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/Tomorrowland Official Super Bowl Spot (2015) - George Clooney Movie HD.mp4', 'Tomorrow Land akan mengisahkan tentang sosok profesor jenius bernama Frank Walker. Namun karena usia sudah tua dia memilih untuk menyendiri. sementara itu di tempat lain terdapat seorang gadis bernama Casey Newton yang tinggal di dunia berbeda yang sudah mengalami banyak kehancuran . \r\nSuatu hari casey mengambil beberapa barang pribadinya di kantor polisi. namun saat mengambil barang tersebut dia menemukan pin misterius. saat casey menyentuh pin tersebut dia bisa pergi ke suatu dunia. yang lebih baik, dari dunia yang ia tinggali saat ini\r\nSaat casey melakukan perjalanan ke dunia baru ia bertemu dengan frank . apa yang selanjutnya terjadi ? bagaimana nasib dunia di ditinggal casey?'),
(8, 'finding Dori', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', '15.00-17.20, 17.55-19.45, 20.00-21.30 	ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/Finding Dory 2015 Trailer - Finding Dory 2015 OFFICIAL TRAILER DISNEY PIXAR FILM.mp4', 'Pada Finding Nemo sebelumnya, anda akan menemukan dimana cerita perjuangan seorang ayah untuk menemukan anaknya yang hilang. Dalam sepanjang perjuangannya tersebut jika anda pecinta film kartun maka anda akan melihat sosok sahabat yang membantu ayahnya saat itu untuk mencari nemo.  Sahabat yang anda sering lihat itu adalah sejenis ikan badut yang berwarna belang garis biru dan garis kuning. Kini Finding Dori hadir karena cerita yang akan ditampilkan adalah dimana kali ini si Dori lah ynag hilang. Untuk mengetahui lebih lanjut jalan ceritanya silahkan tonton di bioskop kesayangan anda.'),
(9, 'Comic 8:Casino Kings', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', '15.00-17.20, 17.55-19.45, 20.00-21.30 	ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/Teaser Comic 8- Casino Kings.mp4', 'Sukses dengan Comic 8 yang pertama, kini Indonesia mempunyai film yang bergenre komedi, lainnya yang tidak lain adalah lanjutan dari Comic 8, yaitu Comic 8 :Casino Kings. Namun, kini cerita yang ditampilkan sedikit berbeda karena sekarang Indro Warkop lah yang menjadi pemimpin dari geng mereka. Mereka bertujuan untuk melakukan misi , untuk lebih jelasnya silahkan tonton di bioskop kesayangan anda'),
(10, 'Monkey Kingdom', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', 'ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/', 'Sinopsis Film Monkey Kingdom - Hidup adalah sebuah petualangan untuk Maya, monyet pirang-nongol pintar dan banyak akal di "Monyet Kingdom," film baru Disneynature yang ditetapkan antara reruntuhan kuno di hutan bertingkat dari Asia Selatan. Dunia Maya selamanya berubah ketika dia menyambut anaknya, Kip, dalam keluarga yang rumit nya. Seperti semua keluarga, Maya memiliki kepribadian lebih dari pangsa warna-warni-dan dia bertekad untuk memberikan anaknya satu kaki dalam dunia ini. Ketika rumah lama mereka di Castle Rock diambil alih oleh monyet tetangga yang kuat, seluruh keluarga Maya dipaksa untuk pindah, dan dia menggunakan jalan cerdas dan kecerdikan untuk memimpin mereka ke sumber daya yang belum dimanfaatkan di tengah-tengah makhluk baru yang aneh dan sekitarnya meresahkan. Pada akhirnya, mereka akan semua harus bekerja sama untuk merebut kembali Castle Rock, di mana Maya diharapkan dapat mewujudkan mimpinya untuk masa depan anaknya.'),
(11, 'Chappie', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', '15.00-17.20, 17.55-19.45, 20.00-21.30 	ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/', 'Chappie ( 2015 )\r\n\r\nDirector: Neill Blomkamp\r\nWriters: Neill Blomkamp, Terri Tatchell\r\nStars: Sharlto Copley, Dev Patel, Yolandi Visser, Ninja Visser, Sigourney Weaver, Hugh Jackman\r\n\r\nSinopsis Mengenai Film Chappie 2015\r\n\r\nFilm action dan komedi Hollywood berjudul “Chappie” ini adalah film yang bercerita tentang sebuah robot yang bernama Chappie diciptakan dengan memiliki kemampuan seperti manusia dan memiliki perasaan. Chappie hidup tinggal bersama orang yang menciptakannya dan membuatnya menjadi bagian dari keluarga. Keluarga tersebut mengajarkan Chappie berbagai hal yang dilakukan seperti manusia.\r\n\r\nSuatu ketika terjadi evolusi luar biasa dari robot dan Chappie dianggap berbahaya sehingga harus dihancurkan. Namun pihak keluarga yang merawat Chappie menentang hal tersebut dan mempertahankan perlawanan dan harus mencoba bertahan hidup dari berbagai ancaman.\r\n'),
(12, 'Filosofi Kopi', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', 'ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/', 'Sinopsis Filosofi Kopi :\r\nMenceritakan tentang seorang anak petani kopi yang dibesarkan di perkebunan kopi Ben “Chico Jericho”. Saat berusia 12 tahun, Ben pergi meninggalkan orang tuanya. Selanjutnya ia bertemu dengan Jody “Rio Dewanto” dan Jody pun menjadi sahabatnya. Kemudian Ben diasuh oleh orang tua Jody, setelah dewasa Jody dan Ben membangun sebuah kedai kopi serta memberinya nama Filosofi Kopi. Suatu ketika hutang bernilai ratusan juta mengancam keberadaan kedai Filosofi Kopi yang mereka bangun. Ditengah perjuangan mengatasi hutang dan masalah diantara mereka, seseorang pengusaha muncul dengan tantangan yang dapat menyelamatkan kedai Filosofi Kopi. Dengan keterampilannya mengolah kopi Ben sukses memenangkan satu miliar dari pengusaha tersebut, tetapi kemunculan El meruntuhkan seluruhnya, El mengatakan ada kopi yang lebih baik dibandingkan kopi racikan Ben. Mereka tidak punya pilihan selain pergi mencari Kopi Tiwus, Kopi Tiwus sangat menentukan keberadaan Filosofi Kopi serta persahabatan Ben dan Jody.\r\n'),
(13, 'The Avenger: Age Of Ultron', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', 'ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/', 'Film The Avenger: Age Of Ultron berkisah tentang seorang ilmuwan cerdas sekaligus pengusaha kaya dan juga anggota dari the avengers, Tony Stark ynag menciptakan robot super yang diberi nama ultron untuk menggantikan Iron Man. Namun rencana nya tak berjalan mulus ultron yang mampu berfikir sendiri tiba tiba berniat untuk memusnahkan umat manusia kehadiran ultron akan menjadikan tantangan sendiri bagi tim avenger karena permasalahan ini anggota dari tim avengers menjadi tercerai berai. '),
(14, 'Mad Max', '12.15-14.45, 15.00-17.20, 17.55-19.45, 20.00-21.30', 'ARION,ARTHA Gading, Blok M Plaza, Cipinang, Kalibata, Lippo Plaza, Plaza Indonesia, Pondok Indah, Pondok Gede, Pejaten Village, TIM', 'film/', 'Mad Max bersetting di sebuah padang pasir setelah terjadi kekacauan besar. hal ini menyebabkan semua manusia di bumi untuk berjuang bertahan hidup. max seorang yang hidupnya penuh dengan pertualangan dan dia juga merupakan sosok pria yang tidak banyak bicara namun kini max hanya ingin hidup dengan tenang setelah kehilangan anak dan istrinya saat kekacauan terjadi.sementara itu furiosa adalah seorang wanita yang berusaha untuk bebas dari padang pasir tersebut dari tempat masa kecilnya.');

-- --------------------------------------------------------

--
-- Table structure for table `film2`
--

CREATE TABLE IF NOT EXISTS `film2` (
  `judul_film` varchar(1000) DEFAULT NULL,
  `waktu_tayang` varchar(200) DEFAULT NULL,
  `tempat_tayang` varchar(2000) DEFAULT NULL,
  `trailer_film` varchar(1000) DEFAULT NULL,
  `sinopsis_film` varchar(2000) DEFAULT NULL,
  `id` int(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film2`
--

INSERT INTO `film2` (`judul_film`, `waktu_tayang`, `tempat_tayang`, `trailer_film`, `sinopsis_film`, `id`) VALUES
('Insidious :Chapter3', 'april 2015', 'cdfaaas', 'asaassaas', 'asaassasaas', 2);

-- --------------------------------------------------------

--
-- Table structure for table `film3`
--

CREATE TABLE IF NOT EXISTS `film3` (
  `judul_film` varchar(1000) DEFAULT NULL,
  `waktu_tayang` varchar(200) DEFAULT NULL,
  `tempat_tayang` varchar(2000) DEFAULT NULL,
  `trailer_film` varchar(1000) DEFAULT NULL,
  `sinopsis_film` varchar(2000) DEFAULT NULL,
  `id` int(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film3`
--

INSERT INTO `film3` (`judul_film`, `waktu_tayang`, `tempat_tayang`, `trailer_film`, `sinopsis_film`, `id`) VALUES
('Insidious 3', '6 April 2015', 'Tamini', ' cnsjnsj,sdsdsd', 'nskjnkdsnjdksnksn', 1),
('Toba Dreams', '6 april 2015', 'jakarta', 'cnsjknskj', 'dcnsjskjnkdsd', 2),
('LDR', '6 april 2015', 'nfskjnsdndsjsdkds', 'nweknbwekjwnbkew', 'nfwjwekwnekwenmewk', 3),
('Beauty And The Beast', '6 april 2015', 'ncsnskn', 'andjaknskjansa', 'sdakljalklsajmlas', 4),
('Miss Call', '6 april 2015', 'lippo plaza', 'cnskjsnkjsdkksdsdk', 'nsknkjskskskskss', 5),
('The Lazarus Effect ', '6 april 2015', 'ndsakjnsakjsaksadksak', 'dajndaklodakljalj', 'damlkmlalmasmas', 6),
('The Duff', '6 april 2015', 'dankjankjanaknakjas', 'adnjkankankanas', 'ajkanksakjnakakakaksa', 7),
('Mad Max: Fury Road', '6 april 2015', 'nkdkallak', 'dnakamlaslmsal', 'asklajmlalaksa', 8),
('Dejavu: Ajian Puter Giling', '6 april 2015', 'nfsknslkanl', 'afsmksakmlala', 'ankakklaka', 9),
('TAROT', 'mei 2015', 'jabodetabek', 'dakaddaskldasl', 'sklaasl', 11),
('Monster Trucks', 'mei 2015', 'ndkajka', 'djaaakiosla', 'nxakjana', 13);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal1`
--

CREATE TABLE IF NOT EXISTS `jadwal1` (
  `judul_film` varchar(300) DEFAULT NULL,
  `waktu_tayang` varchar(300) DEFAULT NULL,
  `tempat_tayang` varchar(200) DEFAULT NULL,
  `id` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal1`
--

INSERT INTO `jadwal1` (`judul_film`, `waktu_tayang`, `tempat_tayang`, `id`) VALUES
('Chappie', '12.15-14.45', 'ARION', 6),
('Cinderella', '12.15-14.45', 'ARTHA Gading', 7),
('Friday The 13h Saquel', '12.15-14.45', 'ARTUM', 8),
('Insurgent', '15.00-17.30', 'Blok M Plaza', 9),
('The Pinguins Of Madagascar', '15.00-17.30', 'Cibubur', 10),
('Insidious Chapter 3', '15.00-17.30', 'Cipinang', 11),
('Fast and Farious 7', '17.55-19.45', 'Kramat Jati Lippo Plaza', 12),
('Monkey Kingdom', '17.55-19.45', 'Pejaten Village', 13),
('The Avenger: Age Of Ultron', '17.55-19.45', 'Tamini', 14),
('Mean Moms', '20.00-21.30', 'Pondok Indah', 15),
('Mad Max', '20.00-21.30', 'Gading', 16),
('TomorrowLand', '20.00-21.30', 'Pondok Gede', 17),
('Monster Trucks', '20.00-21.30', 'Kalibata', 18);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal2`
--

CREATE TABLE IF NOT EXISTS `jadwal2` (
  `judul_film` varchar(300) DEFAULT NULL,
  `waktu_tayang` varchar(300) DEFAULT NULL,
  `tempat_tayang` varchar(200) DEFAULT NULL,
  `id` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal2`
--

INSERT INTO `jadwal2` (`judul_film`, `waktu_tayang`, `tempat_tayang`, `id`) VALUES
('The Avenger :Age Of Ultron', '12.15-14.45', 'Kalibata', 1),
('Mean Moms', '12.15-14.45', 'Pejaten Village', 2),
('Mad Max: Fury Road', '15.00-17.30', 'Plaza Indoenesia', 3),
('TomorrowLand', '15.00-17.30', 'Plaza Indonesia', 4),
('Moonster Trucks', '17.55-19.45', 'Tamini', 5);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal3`
--

CREATE TABLE IF NOT EXISTS `jadwal3` (
  `judul_film` varchar(300) DEFAULT NULL,
  `waktu_tayang` varchar(300) DEFAULT NULL,
  `tempat_tayang` varchar(200) DEFAULT NULL,
  `id` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal3`
--

INSERT INTO `jadwal3` (`judul_film`, `waktu_tayang`, `tempat_tayang`, `id`) VALUES
('San Andreas 3D', '12.45-14.45', 'TIM', 1),
('Jurassic World', '15.00-17.30', 'Pondok Indah', 2),
('Entourage', '17.55-19.45', 'Gading', 3),
('Fantastic Four', '17.55-19.45', 'Pejaten Village', 4);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal4`
--

CREATE TABLE IF NOT EXISTS `jadwal4` (
  `judul_film` varchar(300) DEFAULT NULL,
  `waktu_tayang` varchar(300) DEFAULT NULL,
  `tempat_tayang` varchar(200) DEFAULT NULL,
  `id` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal5`
--

CREATE TABLE IF NOT EXISTS `jadwal5` (
  `judul_film` varchar(300) DEFAULT NULL,
  `waktu_tayang` varchar(300) DEFAULT NULL,
  `tempat_tayang` varchar(200) DEFAULT NULL,
  `id` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jd1`
--

CREATE TABLE IF NOT EXISTS `jd1` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd1`
--

INSERT INTO `jd1` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'The Avengers : Age Of Ultron', 'Film Bioskop Hollywood Action tersebut bertajuk ‘Avengers: Age of Ultron’. Film ‘Avengers: Age of Ultron’ merupakan sekuel dari film pertamanya yang telah sukses dengan judul The Avengers. Film Bioskop Hollywood ‘Avengers: Age of Ultron’ ini akan dibintangi oleh sederet aktor dan aktris Hollywood seperti Robert Downey Jr., Chris Evans, Chris Hemsworth, Mark Ruffalo, Scarlett Johansson, Jeremy Renner, Elizabeth Olsen, Aaron Johnson, Samuel L. Jackson, Cobie Smulders, James Spader, Thomas Kretchmann, Paul Bettany, Don Cheadle, Josh Brolin, Anthony Mackie.\r\nFilm Avengers: Age of Ultron (2015) merupakan film yang diproduksi oleh Walt Diney Pictures, Marvel Studios dimana fil ini ditulis sekaligus disutradarai oleh Joss Whedon. Film Avengers: Age of Ultron menjadi salah satu film yanhg dinanti-nanti hingga film ini pun mampu menguasai Box Office dunia. Bahkan beberapa negara berkesempatan untuk menayangkan film ‘Avengers: Age of Ultron ‘ terlebih dahulu daripada di Amerika Serikat dan salah satu negara yang beruntung adalah Indonesia.\r\n', '12.15-14.45', 'b'),
(2, 'Mean Moms', 'n', '12.15-14.45', 'b'),
(3, 'Mad Max', 'Max “Tom Hardy” adalah seseorang yang kehidupannya dipenuhi dengan aksi. Setelah kematian istri dan anaknya disaat kekacauan terjadi kini Max hanya mencari ketenangan. Furiosa “Charlize Theron” merupakan seorang wanita yang berupaya untuk bisa pergi dari padang pasir dan tetap hidup agar ia bisa kembali ke kota tempat dimana ia berasal. Mad Max meyakini bahwa langkah terbaik untuk bertahan hidup adalah mengembara sendirian. Akan tetapi ia jadi terbuai dengan kelompok yang melarikan diri melalui Wasteland dalam War Rig.', '12.15-14.45', 'v'),
(4, 'Tomorrow Land', 'n', '15.00-17.30', 'n'),
(5, 'Monster Trucks', 'j', '15.00-17.30', 'n'),
(6, 'San Andreas 3D', 'K', '15.00-17.30', 'K'),
(7, 'Insidious Chapter 3', 'Sinopsis lengkap film Miss Call ini bercerita Mitha ialah seseorang gadis remaja yg menggemari hal-hal bernuansa horror, gadis yg mempunyai kreatifitas lumayan tinggi itu membuat design beberapa hal yg sanggup menciptakan orang lain yg masuk ke kamarnya spontan merinding ketakutan. Satu faktor yg tidak jarang beliau melakukan kala senggang ialah menakut-nakuti orang, salah satunya ialah me-misscall orang lain dulu menakuti-nakuti orang tersebut jikalau orang tersebut menelponnya.\r\n\r\nSebuah tengah malam sepulang program pesta ulang thn sahabatnya, Mitha me-misscall No. acak yg nyatanya pemilik nomer sedang bertengkar hebat. Pertengkaran itu berhenti diiringi kematian si pemilik No. yg bernama CHIKA. Mitha tak mengetahui apa yg sesungguhnya sedang berlangsung, ia menyangka apabila sudah dipermainkan dikarenakan mendapat telephone balik dari nomer itu. Kondisi makin tegang disaat Mitha yg menemukan satu buah Mobile Phone di depan rumahnya yg nyatanya yaitu Handphone milik CHIKA. Sejak waktu itu, Mitha mulai sejak mengalami berbagai kejadian tidak wajar dirumahnya sendiri. Di sinilah ketegangan di film Miss Call mulai berlangsung menyeramkan.\r\n', '17.55-19.45', 'n'),
(8, 'Fast and Farious 7', '\r\n\r\nSinopsis Furious 7.  Karna ini adalah film serial berkelanjutan, tentu kita ketahui bersama, film  Furious 7 akan melanjutkan kisah diseri sebelumnya, yaitu Fast & Furious 6. Kisah sebelumnya menceritakan dimana sang ketua tim yang bernama Dom (Vin Diesel) sukses menyelamatkan kekasihnya Ortiz (Michelle Rodriguez) dari tangan sang penjahat, Owen Shaw (Luke Evans).\r\n\r\nKeberhasilan Dom (Van Diesel) dalam menyelamatkan kekasihnya dan mengalahkan Shaw (Luke Evans) justru memunculkan masalah baru, memang benar dendam tidak akan menyelesaikan sebuah masalah. Namun, tanpa adanya dendam maka serial sebuah film action tidak akan menjadi berkelanjutan. Keluarga adalah segalanya, mungkin fakta itulah yang melandasi sifat aktor yang diperankan Jason Statham. Merasa tak terima dengan kekalahan yang diterima oleh sang kakak, adik Owen yang diperankan oleh Jason Statham pun bersiap menuntut balas. \r\n\r\n\r\nFilm ''Fast and Furious 7'' masih dengan Dominic Toretto dan Brian O''Conner melaksanakan misi baru, yaitu penyelamatan seorang gadis. Sedangkan gadis yang akan diselamatkan tersebut diperankan oleh Michelle Rodriguez. Guna mencegah ceritanya menjadi kehilangan arah, Penulis naskah Chris Morgan memutuskan untuk membuat adegan kepergian karakter Brian O Connor (Paul Walker). ', '17.55-19.45', 'm'),
(9, 'Monkey Kingdom', 'n', '17.55-19.45', 'N'),
(10, 'Chappie', ' Film action dan komedi Hollywood berjudul “Chappie” ini adalah film yang bercerita tentang sebuah robot yang bernama Chappie diciptakan dengan memiliki kemampuan seperti manusia dan memiliki perasaan. Chappie hidup tinggal bersama orang yang menciptakannya dan membuatnya menjadi bagian dari keluarga. Keluarga tersebut mengajarkan Chappie berbagai hal yang dilakukan seperti manusia.\r\n\r\nSuatu ketika terjadi evolusi luar biasa dari robot dan Chappie dianggap berbahaya sehingga harus dihancurkan. Namun pihak keluarga yang merawat Chappie menentang hal tersebut dan mempertahankan perlawanan dan harus mencoba bertahan hidup dari berbagai ancaman.', '20.00-21.30', 'nm'),
(11, 'Miss Call', 'Sinopsis lengkap film Miss Call ini bercerita Mitha ialah seseorang gadis remaja yg menggemari hal-hal bernuansa horror, gadis yg mempunyai kreatifitas lumayan tinggi itu membuat design beberapa hal yg sanggup menciptakan orang lain yg masuk ke kamarnya spontan merinding ketakutan. Satu faktor yg tidak jarang beliau melakukan kala senggang ialah menakut-nakuti orang, salah satunya ialah me-misscall orang lain dulu menakuti-nakuti orang tersebut jikalau orang tersebut menelponnya.\r\n\r\nSebuah tengah malam sepulang program pesta ulang thn sahabatnya, Mitha me-misscall No. acak yg nyatanya pemilik nomer sedang bertengkar hebat. Pertengkaran itu berhenti diiringi kematian si pemilik No. yg bernama CHIKA. Mitha tak mengetahui apa yg sesungguhnya sedang berlangsung, ia menyangka apabila sudah dipermainkan dikarenakan mendapat telephone balik dari nomer itu. Kondisi makin tegang disaat Mitha yg menemukan satu buah Mobile Phone di depan rumahnya yg nyatanya yaitu Handphone milik CHIKA. Sejak waktu itu, Mitha mulai sejak mengalami berbagai kejadian tidak wajar dirumahnya sendiri. Di sinilah ketegangan di film Miss Call mulai berlangsung menyeramkan.\r\n', '20.00-21.30', 'n'),
(12, 'Filosofi Kopi', 'n', '20.00-21.30', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `jd2`
--

CREATE TABLE IF NOT EXISTS `jd2` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd2`
--

INSERT INTO `jd2` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Cinderella', 'j', '12.15-14.45', 'nm'),
(2, 'Chappie', 'c', '12.15-14.45', 'nm'),
(3, 'Filosofi Kopi', 'm', '12.15-14.45', 'nm'),
(4, 'Insidious Chapter 3', 'n', '15.00-17.30', 'nc'),
(5, 'Fast And Farious 7', 'j', '15.00-17.30', 'j'),
(6, 'Monkey Kingdom', 'm', '15.00-17.30', 'm'),
(7, 'The Avengers : Age Of Ultran', 'n', '17.55-19.45', 'nm'),
(8, 'Mean Moms', 'n', '17.55-19.45', 'nm'),
(9, 'Mad Max:Fury Road', 'csx', '17.55-19.45', 'nmm'),
(10, 'Miss Call', 'jk', '17.55-19.45', 'sdd'),
(11, 'Filosofi Kopi', 'ds', '20.00-21.30', 'n'),
(12, 'Monster Trucks', 'n', '20.00-21.30', 'jd');

-- --------------------------------------------------------

--
-- Table structure for table `jd3`
--

CREATE TABLE IF NOT EXISTS `jd3` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd3`
--

INSERT INTO `jd3` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Monster Trucks', 'n', '12.15-14.45', 'n'),
(2, 'Chappie', 'jk', '12.15-14.45', 'bf'),
(3, 'Mad Max', 'jmki', '12.15-14.45', 'njk'),
(4, 'Tomorrow Land', 'sdf', '15.00-17.30', 'sf jk'),
(5, 'Fast And Farious 7', 'ds', '15.00-17.30', 'jnsd'),
(6, 'Mean Moms', 'cf', '15.00-17.30', 'dskj'),
(7, 'Filosofi Kopi', 'n', '17.55-19.45', 'bh'),
(8, 'Insidious Chapter 3', 'c', '17.55-19.45', 'n'),
(9, 'Monkey Kingdom', 'sj', '17.55-19.45', 'se'),
(10, 'The Avengers: Age Of Ultron', 'sndkj', '20.00-21.30', 'jmd'),
(11, 'San Andreas 3D', 'jmjm', '20.00-21.30', 'fsd'),
(12, 'Miss Call', 'jask', '20.00-21.30', 'jkmds');

-- --------------------------------------------------------

--
-- Table structure for table `jd4`
--

CREATE TABLE IF NOT EXISTS `jd4` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd4`
--

INSERT INTO `jd4` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Cinderella', 'sjk', '12.15-14.45', 'jsk'),
(2, 'Monster Trucks', 'j', '12.15-14.45', 'mss'),
(3, 'Tomorrow Land', 'ds', '12.15-14.45', 'jkj'),
(4, 'Fast And Farious 7', 'J', '15.00-17.30', 'jj'),
(5, 'Mean Moms', 'k', '15.00-17.30', 'jjj'),
(6, 'Filosofi Kopi', 'sd', '15.00-17.30', 'nds'),
(7, 'Insidious Chapter 3', 'mk', '17.55-19.45', 'jd'),
(8, 'Miss Call', 'dnjks', '17.55-19.45', 'mmm'),
(9, 'Mad Max', 'dajk', '17.55-19.45', 'NNNN'),
(10, 'The Avengers: Age Of Ultron', 'dnjks', '20.00-21.30', 'mmm'),
(11, 'Chappie', 'dajk', '20.00-21.30', 'NNNN'),
(12, 'San Andreas 3D', 'dnjks', '20.00-21.30', 'mmm');

-- --------------------------------------------------------

--
-- Table structure for table `jd5`
--

CREATE TABLE IF NOT EXISTS `jd5` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd5`
--

INSERT INTO `jd5` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Mean Moms', 'msd', '12.15-14.45', 'M'),
(2, 'Filosofi Kopi', 'fs', '12.15-14.45', 'dsa'),
(3, 'Mad Max', 'ds', '12.15-14.45', 'dkm'),
(4, 'Filosofi Kopi', 'fs', '15.00- 17.30', 'fss'),
(5, 'Tomorrow Land', 'fs', '15.00-17.30', 'fs'),
(6, 'Mad Max', 'fss', '15.00-17.30', 'dsj'),
(7, 'Mean Moms', 'ds', '17.55-19.45', 'NJKNJ'),
(8, 'Filosofi Kopi', 'ds', '17.55-19.45', 'sdf'),
(9, 'Mad Max', 'dadas', '17.55-19.45', 'faa'),
(10, 'The Avengers: Age Of Ultron', 'da', '20.00-21.30', 'jk'),
(11, 'Mad Max', 'da', '20.00-21.30', 'jkn'),
(12, 'Insidious Chapter 3', 'fsjk', '20.00-21.30', 'jhh');

-- --------------------------------------------------------

--
-- Table structure for table `jd6`
--

CREATE TABLE IF NOT EXISTS `jd6` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd6`
--

INSERT INTO `jd6` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Tomorrow Land', 'da', '12.15-14.45', 'kknj'),
(2, 'Fast And Farious 7', 'jkl', '12.15-14.45', 'jkasd'),
(3, 'Mean Moms', 'fda', '12.15-14.45', 'jkn'),
(4, 'Mad Max', 'dak', '15.00-17.30', 'nk'),
(5, 'The Avengers : Age Of Ultron', 'af', '15.00-17.30', 'jkn'),
(6, 'Filosofi Kopi', 'a', '15.00- 17.30', 'jkn'),
(7, 'Fast And Farious 7', 'da', '17.55-19.45', 'kn'),
(8, 'Mad Max', 'da', '17.55-19.45', 'nj'),
(9, 'Insidious Chapter 3', 'm', '17.55-19.45', 'nk'),
(10, 'Monkey Kingdom', 'kk', '20.00-21.30', 'kn'),
(11, 'Mean Moms', 'fda', '20.00-21.30', 'kjn'),
(12, 'Tomorrow Land', 'amk', '20.00-21.30', 'jnk');

-- --------------------------------------------------------

--
-- Table structure for table `jd7`
--

CREATE TABLE IF NOT EXISTS `jd7` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd7`
--

INSERT INTO `jd7` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Monster Trucks ', 'k', '12.15-14.45', 'kj'),
(2, 'Mad Max', 'bkj', '12.15-14.45', ' m'),
(3, 'Insidious Chapter 3', 'NK', '12.15-14.45', 'knj'),
(4, 'Tomorrow Land', 'ndak', '15.00-14.45', 'nk'),
(5, 'FIlosofi Kopi', 'ndakj', '15.00-17.30', 'nk'),
(6, 'Fast And Farious 7', 'n', '15.00-17.30', 'nk'),
(7, 'Filosofi Kopi', 'nkj', '17.55-19.45', 'nk'),
(8, 'Mean Moms', 'nkjl', '17.55-19.45', 'kn'),
(9, 'Mad Max', 'k', '17.55-19.45', 'jf'),
(10, 'Mad Max', 'da', '20.00-21.30', 'kn'),
(11, 'Monster Trucks', 'naj', '20.00-21.30', 'jnk'),
(12, 'Mean Moms', 'jk', '20.00-21.30', 'nk');

-- --------------------------------------------------------

--
-- Table structure for table `jd8`
--

CREATE TABLE IF NOT EXISTS `jd8` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd8`
--

INSERT INTO `jd8` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Tomorrow Land', 'd', '12.15-14.45', 'n'),
(2, 'Mad Max', 'df', '12.15-14.45', 'm'),
(3, 'Insidious Chapter 3', 'c', '12.15-14.45', 'k'),
(4, 'Tomorrow Land', 'dm', '15.00-17.30', 'nk'),
(5, 'Mad Max ', 'd', '15.00-17.30', 'nk'),
(6, 'Fast And Farious 7', ' ds', '15.00-17.30', 'nkj'),
(7, 'TAROT', 'nk', '17.55-29.45', 'kn'),
(8, 'Monster Trucks', 'nk', '17.55-19.45', 'akn'),
(9, 'Mean Moms', 'da', '17.55-19.45', 'fs'),
(10, 'Fast And Farious 7', 'ds', '20.00-21.30', 'nk'),
(11, 'Insidious Chapter 3', 'ndk', '20.00-21.30', 'ff'),
(12, 'Mad Max', 'ak', '20.00-21.30', 'nk');

-- --------------------------------------------------------

--
-- Table structure for table `jd9`
--

CREATE TABLE IF NOT EXISTS `jd9` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd9`
--

INSERT INTO `jd9` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Insidious Chapter 3', 'nk', '12.15-14.45', 'knj'),
(2, 'Fast And Farious 7', 'nak', '12.15-14.45', 'knn'),
(3, 'Tomorrow Land', 'fan', '12.15-14.45', 'nak'),
(4, 'Insidious Chapter 3', 'f', '15.00-17.30', 'mkl'),
(6, 'Mad Max', 'nk', '15.00-17.30', 'kj'),
(7, 'Fast And Farious 7', 'f', '15.00-17.30', 'mk'),
(8, 'Insidious Chapter 3', 'ndka', '17.55-19.45', 'nkj'),
(9, 'Fast And Farious 7', 'nkj', '17.55-19.45', 'jkb'),
(10, 'Mad Max', 'k', '17.55-19.45', 'j'),
(11, 'Tomorrow Land', 'ndak', '20.00-21.30', 'kj'),
(12, 'Insidious Chapter 3', 'jn', '20.00-21.30', 'nk'),
(13, 'Monster Trucks', 'nk', '20.00-21.30', 'jn');

-- --------------------------------------------------------

--
-- Table structure for table `jd10`
--

CREATE TABLE IF NOT EXISTS `jd10` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd10`
--

INSERT INTO `jd10` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Fast And Farious 7', 'ndks', '12.15-14.45', 'jk'),
(2, 'Mad Max', 'NK', '12.15-14.45', 'nk'),
(3, 'Insidious Chapter 3', 'nkj', '12.15-14.45', 'nk'),
(4, 'Mean Moms', 'nk', '15.00-17.30', 'jk'),
(5, 'Monster Trucks', 'mk', '15.00-17.30', ' j'),
(6, 'Tomorrow Land', 'njk', '15.00-17.30', 'jn'),
(7, 'Insidious Chapter 3', 'nk', '17.55-19.45', 'nk'),
(8, 'Mad Max', 'nk', '17.55-19.45', 'knj'),
(9, 'Mean Moms', 'nk', '17.55-19.45', 'fs'),
(10, 'Tomorrow Land', 'kn', '20.00-21.30', 'km'),
(11, 'Mad max', 'nk', '20.00-21.30', 'nk'),
(12, 'Mean Moms', 'nk', '20.00-21.30', 'kn');

-- --------------------------------------------------------

--
-- Table structure for table `jd11`
--

CREATE TABLE IF NOT EXISTS `jd11` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd11`
--

INSERT INTO `jd11` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Mean Moms', 'f', '12.15-14.45', 'nk'),
(2, 'Monster Trucks', 'nk', '12.15-14.45', 'nk'),
(3, 'Fast And Farious 7', 'nk', '12.15-14.45', 'njk'),
(4, 'Insidious Chapter 3', 'nkj', '15.00-17.30', 'mk'),
(5, 'Tomorrow Land', 'mk', '15.00-17.30', 'nk'),
(6, 'Insidious Chapter 3', 'lkj', '15.00-17.30', 'nk'),
(7, 'Mad Max', 'k', '17.55-19.45', 'nkj'),
(8, 'Mean Moms', 'nkj', '17.55-19.45', 'jnk'),
(9, 'Mad Max', 'nk', '17.55-19.45', 'njk'),
(10, 'Fast And Farious 7', 'nk', '20.00-21.30', 'nk'),
(11, 'Tomorrow Land', 'kj', '20.00-21.30', ' kjn'),
(12, 'Insidious Chapter 3', 'nk', '20.00-21.30', 'nk');

-- --------------------------------------------------------

--
-- Table structure for table `jd12`
--

CREATE TABLE IF NOT EXISTS `jd12` (
  `id` int(40) NOT NULL,
  `judul` varchar(1000) DEFAULT NULL,
  `sinopsis` text,
  `waktu` varchar(1000) DEFAULT NULL,
  `trailer` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jd12`
--

INSERT INTO `jd12` (`id`, `judul`, `sinopsis`, `waktu`, `trailer`) VALUES
(1, 'Mad Max', 'njk', '12.15-14.45', 'njk'),
(2, 'Insidious Chapter 3', 'nk', '12.15-14.45', 'nk'),
(3, 'Mad Max', 'nk', '12.15-14.45', 'nk'),
(4, 'Mean Moms', 'd', '15.00-17.30', 'nj'),
(5, 'Insidious Chapter 3', 'nk', '15.00-17.30', 'nk'),
(6, 'Mad Max', 'NKJ', '15.00-17.30', 'jnk'),
(7, 'Monster Trucks', 'nk', '17.55-19.45', 'nkj'),
(8, 'Mean Moms', 'nk', '17.55-19.45', 'nk'),
(9, 'Insidious Chapter 3', 'njk', '17.55-19.45', 'nk'),
(10, 'Tomorrow Land', 'nk', '20.00-21.30', 'nk'),
(11, 'Mad Max', 'bk', '20.00-21.30', 'nk'),
(12, 'Mean Moms', 'njk', '20.00-21.30', 'nki');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `judul_film` varchar(30) NOT NULL,
  `jam_tayang` varchar(30) NOT NULL,
  `tanggal` varchar(40) NOT NULL,
  `jumlah_tiket` varchar(20) NOT NULL,
  `lokasi` varchar(40) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `kursi` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `sisa_kursi` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`judul_film`, `jam_tayang`, `tanggal`, `jumlah_tiket`, `lokasi`, `harga`, `id`, `kursi`, `total`, `sisa_kursi`) VALUES
('Mad Max : Fury Road', '15.00 - 17.30', '24/04/2015 22:11:19', '1', 'ARION PLAZA', '30000', 45, '1', '30000', ''),
('The Avengers : Age of Ultron', '12.15 - 14.45', '24/04/2015 22:11:19', '2', 'ARION PLAZA', '30000', 46, '2', '60000', ''),
('Means Mom', '12.15 - 14.45', '24/04/2015 22:11:19', '2', 'ARION PLAZA', '30000', 47, '2', '60000', ''),
('Means Mom', '12.15 - 14.45', '24/04/2015 22:11:19', '2', 'ARION PLAZA', '30000', 48, '2', '60000', ''),
('Means Mom', '12.15 - 14.45', '24/04/2015 22:11:19', '2', 'CIPINANG ', '30000', 49, '2', '60000', '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `email` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `nama`, `email`) VALUES
(1, 'Amanda', 'amandaazallia@gmail.com'),
(2, 'dd', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(40) NOT NULL,
  `lokasi` varchar(3000) NOT NULL,
  `jum_kursi` varchar(300) NOT NULL,
  `sisa_kursi` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `lokasi`, `jum_kursi`, `sisa_kursi`) VALUES
(1, 'ARION', '90', '83'),
(2, 'ARTHA GADING', '90', ''),
(3, 'BLOK M PLAZA', '90', ''),
(4, 'CIPINANG', '90', ''),
(5, 'KALIBATA', '90', ''),
(6, 'LIPPO PLAZA', '90', ''),
(7, 'TAMINI', '90', ''),
(8, 'PLAZA INDONESIA', '90', ''),
(9, 'PONDOK INDAH', '90', ''),
(10, 'PONDOK GEDE', '90', ''),
(11, 'PEJATEN VILLAGE', '50', ''),
(12, 'TIM(Taman Ismail Marzuki)', '90', '');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `bangku` varchar(100) NOT NULL,
  `sisa_kursi` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=204 ;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `bangku`, `sisa_kursi`) VALUES
(147, 'A1', ''),
(148, 'A2', ''),
(149, 'A3', ''),
(150, 'A3', ''),
(151, 'A2', ''),
(152, 'A2', ''),
(153, 'B1', ''),
(154, 'C1', ''),
(155, 'F5', ''),
(156, 'E1', ''),
(157, 'B3', ''),
(158, 'A4', ''),
(159, 'A5', ''),
(160, 'A4', ''),
(161, 'A5', ''),
(162, 'A2', ''),
(163, 'Q5', ''),
(164, 'A3', ''),
(165, 'A4', ''),
(166, 'C5', ''),
(167, 'A2', ''),
(168, 'A3', ''),
(169, 'A4', ''),
(170, 'C4', ''),
(171, 'A2', ''),
(172, 'A3', ''),
(173, 'A4', ''),
(174, 'E5', ''),
(175, 'E4', ''),
(176, 'E3', ''),
(177, 'A4', ''),
(178, 'A5', ''),
(179, 'E5', ''),
(180, 'E4', ''),
(181, 'A4', ''),
(182, 'A3', ''),
(183, 'A5', ''),
(184, 'C4', ''),
(185, 'F5', ''),
(186, 'A5', ''),
(187, 'C5', ''),
(188, 'H5', ''),
(189, 'H4', ''),
(190, 'J3', ''),
(191, 'J4', ''),
(192, 'H5', ''),
(193, 'J5', ''),
(194, 'H5', ''),
(195, 'I1', ''),
(196, 'F5', ''),
(197, 'C3', ''),
(198, 'A4', ''),
(199, 'A5', ''),
(200, 'C3', ''),
(201, 'C4', ''),
(202, 'H5', ''),
(203, 'J5', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(40) NOT NULL,
  `nama` text,
  `email` text,
  `komentar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
