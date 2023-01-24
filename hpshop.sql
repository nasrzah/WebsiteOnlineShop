-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2023 at 01:09 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hpshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'hamzah', '2efc6e7c6b2868d6601e690f9b60b40dd788c26a'),
(4, 'sedri', 'c43ddb001aa8f91cec7694b8d659abf991f43997'),
(5, 'retno', '2cf72ab9ffafce1ad3059f4c08372d5ea4073ac5');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price_before` int(20) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price_before`, `price`, `quantity`, `image`) VALUES
(8, 3, 30, 'Varash Care Ori – 60ml', 200000, 170000, 1, 'varashcarefreespray.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 3, 'Hamzah Nasrulloh', '0851569766', 'nasrullohhamzah@gmail.com', 'cash on delivery', 'JL. Serayu Timur 68,  taman, Kota Madiun, Prov. Jawa Timur, Indonesia - 63133', 'Manisan Buah Amla (125000 x 1) - ', 125000, '2023-01-04', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `produsen` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `price_before` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `produsen`, `details`, `price`, `price_before`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'Manisan Buah Amla', 'Retno Indrawati', 'Manisan kesehatan Buah Amla.\r\nBagus untuk membersihkan pencernaan dan sebagai camilan sehari-hari yg menyehatkan tubuh. Disarankan minum air putih yg banyak. Untuk memperlancar BAB.\r\nisi 125 gram : Rp 125.000', 125000, 130000, 'amla-600x600.jpg', 'amla.jpg', '70ae81eb-71c6-466b-ba6d-4e86d6b293c8.jpg'),
(29, 'Kenzen Menjaga Stamina Tubuh dan Ketahanan', 'Retno Indrawati', 'Minuman ini untuk memelihara stamina pria \r\nProduk yang ditunggu-tunggu dan akan sangat laris maniss karena para pria pasti membutuhkannya.\r\n\r\nBagus untuk Anda yang :\r\n– Sering kelelahan\r\n– Butuh stamina lebih saat bekerja\r\n– Mau lembur\r\n– Ingin menambah keharmonisan rumah tangga \r\n\r\nRasa : ada aja (wajib coba sendiri)\r\nKhasiat : apalagi (Selamat Mencoba) \r\n\r\nSudah ber-ijin BPOM\r\n\r\nKandungan Kenzen:\r\n\r\n1. Ekstrak Purwoceng (Pimpinella Pruatjan Folium Extract)\r\n2. Ekstrak Pasak Bumi (Eurycoma', 125000, 150000, 'Kenzen17-600x600.jpg', 'Kenzen20-600x600.jpg', 'Kenzen15-600x600.jpg'),
(30, 'Varash Care Ori – 60ml', 'Retno Indrawati', '🍃 VARASH CARE NATURAL OIL ORIGINAL & HOT 🍃\r\nGambar mungkin berisi: teks\r\nIsi 60ml\r\n🌸 Care Ori Rp. 170.000\r\n🌸 Care Hot Rp. 195.000\r\n\r\nSemua keluhan yang bersifat mendadak, sakit karena faktor cuaca, kondisi pikiran yang tidak bagus & kelelahan yang menyebabkan kekebalan tubuh menurun sangat bagus menggunakan Varash Care & Hot.\r\nJika penyakit yang diderita bersifat kronis dan sudah berlangsung lama dianjurkan menggunakan Varash Classic.\r\n\r\nBerikut beberapa keluhan yang bisa terbantu dengan menggun', 170000, 200000, 'varashcarefreespray.jpg', 'Varash Care.jpg', 'Varash Care.jpg'),
(31, 'Varash Care Hot', 'Retno Indrawati', '🍃 VARASH CARE NATURAL OIL ORIGINAL & HOT 🍃\r\n\r\nIsi 60ml\r\n🌸 Care Ori Rp. 170.000\r\n🌸 Care Hot Rp. 195.000\r\n\r\nSemua keluhan yang bersifat mendadak, sakit karena faktor cuaca, kondisi pikiran yang tidak bagus & kelelahan yang menyebabkan kekebalan tubuh menurun sangat bagus menggunakan Varash Care & Hot.\r\nJika penyakit yang diderita bersifat kronis dan sudah berlangsung lama dianjurkan menggunakan Varash Classic.\r\n\r\nBerikut beberapa keluhan yang bisa terbantu dengan menggunakan Varash Care ori & Hot ', 196000, 230000, 'varash-care-hot-free-spray-.jpg', 'download (1).jpg', 'download.jpg'),
(32, 'ROSEVARA CINNAMON ESSENTIAL OIL', 'Retno Indrawati', 'ROSEVARA CINNAMON\r\nESSENTIAL OIL\r\n🎋 ROSEVARA CINNAMON ESSENTIAL OIL 🎋\r\n\r\nVarash Mengeluarkan Varian baru produk Rosevara yaitu Minyak Murni Kayu Manis (Cinnamon)\r\n\r\nHarga Rp. 240.000\r\nisi 6ml\r\n\r\nCinnamon bark oil (minyak kulit kayu manis) berasal dari spesies tumbuhan dengan nama ilmiah Laurus cinnamomum yang termasuk dalam keluarga botani Lauraceae.\r\n\r\nBerasal dari Asia Selatan, saat ini kayu manis (cinnamon) ditanam di banyak negara Asia.\r\n\r\nTerdapat lebih dari 100 varietas kayu manis tumbuh d', 240000, 300000, 'rosevara-cinnamon-600x600.jpg', 'download (2).jpg', 'download (3).jpg'),
(33, 'ROSEVARA PATCHOULI ESSENTIAL OIL', 'Retno Indrawati', 'Varash Mengeluarkan  Varian baru produk Rosevara yaitu Minyak Murni Daun Nilam (Patchouli)\r\n\r\nHarga Patchouli 75rb\r\nisi 6 ml', 75000, 100000, 'rosevara-patchouli-600x600.jpg', 'download (3).jpg', 'download (4).jpg'),
(34, 'ROSEVARA CLOVE BUD', 'Retno Indrawati', 'MANFAAT & PENGGUNAAN MINYAK CENGKEH\r\nVarash Mengeluarkan 2 Varian baru produk Rosevara yaitu Minyak Murni Bunga Cengkeh dan gagang cengkeh\r\nHarga clove bud 110rb\r\nisi 6 ml\r\n(bunga cengkeh adalah bagian terbaik dari cengkeh)\r\nManfaat minyak cengkeh bagi kesehatan bisa dikaitkan dengan antimikroba, antijamur, antiseptik, antivirus, serta afrodisiak.', 110000, 120000, 'WhatsApp-Image-2019-07-19-at-13.40.14-1-600x600.jpeg', 'ROSEVARA-CLOVE-BUD.jpg', '03c1ba75-1e7e-42fc-a2e3-39298e3ba4f9.jpg'),
(35, 'Rosevara Lavender Oil', 'Retno Indrawati', 'MANFAAT PENYEMBUHAN LAVENDER ESSENTIAL OIL (MINYAK LAVENDER)\r\n\r\nLavender merupakan essential oil (minyak esensial) atau minyak atsiri yang paling banyak digunakan di dunia. Teks-teks kuno menyebutkan lavender essential oil telah digunakan untuk tujuan pengobatan dan upacara agama selama lebih dari 2.500 tahun.\r\nHarga Rosevara Lavender : 175.000\r\nIsi 6 ml', 175000, 180000, '370f366263177bec61b6c928aebb9cf1.jpg', 'S5e1658c0228f4a29809e4ca057d940cd0.jpg', '84df584b2b14ce64749f84f0572d8c61.jpg'),
(36, 'ROSEVARA CANANGA', 'Retno Indrawati', '(MINYAK BUNGA KENANGA) Salah satu tanaman yang populer memproduksi minyak atsiri adalah bunga dari tanaman kenanga. Bunga kenanga (Cananga odorata) merupakan bunga yang berasal dari beberapa negara di Asia Tenggara khususnya Filipina, Thailand dan Indonesia.\r\nHarga 175.000\r\nIsi 6 ml', 175000, 180000, '6d4d03bdf8acba43ca2a0e91486cb452.jpg', 'ROSEVARA-CANANGA.jpg', '0b3d8c180d6142a41599be8b0c92a9e5.jpg'),
(37, 'LEMONGRASS PURE 100% ESSENTIAL OIL', 'Retno Indrawati', 'LEMONGRASS PURE 100% ESSENTIAL OIL\r\nAnda tahu lemongrass?\r\nItu tuh yang dipakai bumbu masak yang enak… bahasa indonesianya serai dapur.. Selain menjadi bumbu memasak yang lezat, sebagian dari mungkin tidak pernah menduga bahwa serai dapur (lemongrass) memiliki begitu banyak manfaat penyembuhan.\r\nHarga aromaterapi lemongrass : 50rb\r\nIsi 6 ml', 50000, 65000, 'WhatsApp-Image-2019-07-19-at-13.38.37-600x600.jpeg', '79b67f85c58ddcd28c2d42997a9f6ea4.jpg', '69e8b40ba9c3f3a93bd8c4d5065d2b17.jpg'),
(38, 'ROSEVARA CENDANA OIL', 'Retno Indrawati', 'OSEVARA CENDANA OIL (PURE SANDALWOOD ESSENTIAL OIL) Minyak Cendana atau dalam dunia internasional sering disebut sebagai sandalwood Oil, Kualitas minyak cendana terbaik adalah Cendana NTT. Maka sering sumba disebut sebagai negeri Sandalwood.\r\n\r\nHarga 950rb isi 5ml\r\n', 950000, 970000, 'cendana.jpeg', '81f1c1edbbb29c14e525cf08d18bfdec.jpg', 'cendana2.jpg'),
(39, 'MINYAK ANGIN VR79', 'Retno Indrawati', 'Minyak angin VR79 adalah minyak angin dengan kandungan plus plus yang tidak dimiliki oleh minyak angin yang beredar di pasar. Dengan tambahan kandungan 5 tanaman berkhasiat obat yaitu Minyak zaitun, Minyak Pala, Minyak Kayu Putih, Minyak Eucaliptus, Minyak Cengkeh\r\nIsi 10 ml. Harga Rp 35.000', 35000, 40000, 'minyak angin.jpeg', 'minyk.jpeg', 'minyakg.jpg'),
(40, 'Varash Natural Oil – 60ml', 'Retno Indrawati', 'Minyak obat yg terbuat dari 108 tanaman berkhasiat obat. Membantu penyembuhan lebih dari 78 masalah kesehatan. Pemakaian dengan cara dibalur dan digosokan di areal tubuh tertentu.\r\nIsi 60 ml : Rp. 175.000\r\nMinyak Varash Natural Oil yang terbuat dari 108 macam tanaman herbal sudah terbukti membantu pengobatan  lebih dari 78  jenis Penyakit.', 175000, 180000, 'natural oil.jpg', 'natural oil 2.png', 'natural oil 3.jpg'),
(41, 'Anava Body Scrub Boreh', 'Retno Indrawati', 'Anava Body Scrub\r\nUntuk mengangkat sel kulit mati, mencerahkan kulit dan membuat kulit lebih sehat dan bercahaya. Dipakai seminggu 1-2x. Harga Rp. 190.000\r\nAda 2 aroma :\r\nBoreh body scrub dan poetry keraton body scrub', 190000, 200000, 'd15d356a-d4c7-4707-ab58-9e6bb70d0bf8.jpg', '5084060_01f51623-7fce-4119-996f-5ec2bf352f75_1000_326.png', 'a29a2492-d7f7-4673-ad55-a7751d8a4001.png'),
(42, 'Anava Body Butter Nusantara', 'Retno Indrawati', 'Anava Body Butter\r\nLebih pekat dari hand body, body butter bertahan lama wanginya bisa seharian. Berfungsi untuk menjaga kelembaban kulit, menghilangkan kulit bersisik, mengurangi kerutan dan stretchmark.\r\nHarga 190.000\r\nAda 2 aroma :\r\nBody butter nusantara\r\nBody butter keputren', 190000, 200000, '9b77c4a2f0f2acc9eb5dae09b016d85e.jpg_720x720q80.jpg', 'IMG_20180916_WA0037_scaled.jpg.webp', '6b7be31bf5ca15df485618298bd39211.jpg'),
(43, 'Varash Care Roll On HOT', 'Retno Indrawati', 'Varash Care Roll On hot\r\nMinyak angin dengan 108 lebih tanaman herbal. Baik untuk teman perjalanan. Bersifat hangat. Pengganti Minyak angin, berkhasiat untuk mengatasi mual, pusing, salah urat, dan masuk angin.\r\nVarash care Hot :\r\nRoll on 8 ml :Rp 45.000', 45000, 50000, '5cadd715-5c67-4ffe-b920-393897c0cdbd.jpg', '9fc831e1-18a2-4c4f-a359-b52c754b1e51.jpg', '9fc831e1-18a2-4c4f-a359-b52c754b1e51.jpg'),
(44, 'Varash Care Roll On', 'Retno Indrawati', 'Minyak angin dengan 108 lebih tanaman herbal. Baik untuk teman perjalanan. Bersifat hangat. Pengganti Minyak angin, berkhasiat untuk mengatasi mual, pusing, salah urat, dan masuk angin.\r\nVarash care :\r\nRoll On 8 ml : Rp 35.000', 35000, 40000, '30b84ab7-607e-4647-8052-befac04b2e89.jpg', 'care-rollon-1.jpg', 'a9347cc987e5b7fb03f9d676e812c237.jpg'),
(45, 'Anava Body Butter Keputren', 'Retno Indrawati', 'Anava Body Butter\r\nLebih pekat dari hand body, body butter bertahan lama wanginya bisa seharian. Berfungsi untuk menjaga kelembaban kulit, menghilangkan kulit bersisik, mengurangi kerutan dan stretchmark.\r\nHarga 190.000\r\nAda 2 aroma :\r\nBody butter nusantara\r\nBody butter keputren', 190000, 200000, 'anava-keputren.jpg', 'data.jpg', '298fb556e039ffd7186afbb03e8fcccf.jpg'),
(46, 'Anava Body Scrub Poetry Keraton', 'Retno Indrawati', 'Anava Body Scrub\r\nUntuk mengangkat sel kulit mati, mencerahkan kulit dan membuat kulit lebih sehat dan bercahaya. Dipakai seminggu 1-2x. Harga Rp. 190.000\r\nAda 2 aroma :\r\nBoreh body scrub dan poetry keraton body scrub', 190000, 200000, 'anava-putri-keraton-600x600.jpg', '319570506_3de5ad28-6330-4f23-8969-976603c76785_640_640.jpg', '298fb556e039ffd7186afbb03e8fcccf.jpg'),
(47, 'Rosevara', 'Retno Indrawati', 'Rosevara\r\n\r\nKalau Minyak Cendana Rosevara adalah Pure Essensial Oil Murni yg diolah dari Galih Kayu Cendana kualitas kelas 1. Berfungsi sebagai antioksidan sangat tinggi, anti inflamasi, antibiotik dan antiseptik alami, menjaga kejernihan pikiran, anti stress, anti aging dan aromanya mampu memberikan relaksasi dan kedamaian.\r\n\r\nHarga 950.000, isi 5 ml.', 950000, 970000, 'amZzL3Q2MS8xNTkvMjI5NTQzMTU2LzU0NTE4Lzk0NzM0M2Q2LzVlMzdmMDlhTmU1ZjIwNDIz.jpg.dpg.webp', 'cendannna.jpg', '81f1c1edbbb29c14e525cf08d18bfdec.jpg'),
(48, 'Minyak Avara', 'Retno Indrawati', 'Minyak Avara\r\nKhusus anak & batita utk menjaga kesehatan dan kekebalan anak\r\n1 botol isi 100 ml Rp. 270.000\r\nTERAPI “AVARA” UNTUK BATUK PILEK DEMAM Anak”🍋\r\n1. Balurkan pada bagian tubuh yang sakit atau tidak nyaman\r\n2. Balurkan disepanjang tulang belakang dari atas sampai bawah\r\n3. balurkan pada telapak kaki dan sela sela jari kaki\r\n4. Balurkan dengan cara digosok atau ditekan halus sampai minyak benar benar masuk dan diserap pori pori tubuh.\r\n5. Baluri secara telaten dengan penuh perhatian ', 270000, 300000, '0fb32c0b2da26791528b295e2544b7a3.jpg', '90ab0e0f-46ad-4ae3-915a-da06db6d0fe4.jpg', '40ad99d1-dd1d-4dae-a4ee-70af3810914a.jpg'),
(49, 'Elliva oil', 'Retno Indrawati', 'Elliva oil\r\nProduk yg dibuat khusus untuk perawatan kulit wajah. Diolah dengan komposisi seimbang sehingga bisa membantu mengatasi keluhan wajah anda.\r\n1 botol isi 8 ml Rp.150.000\r\n(JERAWAT, FLEK, KERUTAN, KANTONG MATA)\r\n\r\nProduk VARASH Elliva Oil adalah produk yang dibuat secara khusus untuk perawatan kulit wajah & bibir.\r\n\r\nAlami, tanpa efek samping, tanpa pewarna, tanpa parfum, pengawet dan bahan kimia berbahaya.', 150000, 160000, 'eliva.jpg', '1915969_7dae5d49-9894-44e4-8cc2-073e8ece3568.jpg', '1915969_7dae5d49-9894-44e4-8cc2-073e8ece3568 (1).jpg'),
(50, 'Mayva natural soap extra 108 herbal & beras merah', 'Retno Indrawati', 'Mayva natural soap extra 108 herbal & beras merah\r\nMemberikan kehangatan yg pas, relaksasi pikiran mendalam serta memberikan ekstra tenaga dan penyembuhan. Cocok untuk meregenerasi sel kulit.\r\n1 batang Rp. 75.000\r\nMayva natural soap extra 108 herbal & beras merah\r\n\r\nAkhirnya yang ditunggu tunggu telah hadir.\r\n\r\nSabun alami sebagai pelengkap penyembuhan dengan Varash Natural Oil.\r\n\r\nSabun ini sangat bagus digunakan sehari hari.\r\n\r\nMemberikan kehangatan yang pas. relaksasi pikiran mendalam.', 75000, 100000, '0d9ce824179be8c3257d76b4486f4d5f.jpg', 'extra-rempah-600x600.jpg', '157ef8f44c19c03fa3c0e137d1210d6f.jpg'),
(51, 'Mayva natural soap extra avocado', 'Retno Indrawati', 'Mayva natural soap extra avocado\r\nSabun tanpa pengawet, pewarna dan tanpa detergen. Cocok digunakan sehari-hari untuk menjaga kesehatan kulit agar tetap natural dan alami.\r\n1 batang Rp. 35.000\r\nTelah hadir sabun alami yang sangat bagus utk merawat kulit tubuh menjadi halus Sehat alami.\r\n\r\nDigunakan untuk sehari hari.\r\n\r\nCocok untuk semua Jenis kulit. Dan bagus menjaga kesehatan kulit tetap nampak natural dan alami.\r\n\r\nSabun Mayva tidak mengandung pengawet, pewarna, tanpa detergen dan tanpa bahan', 35000, 40000, '9e8f2a776c47609d55c68cafe8b5f580.jpg', 'tmp_phpin1mao_9862167_1501937801.webp', '11c86e3829f7142d5d5e2b01ed69bace.jpg'),
(52, 'Sabun Wajah Black mayva', 'Retno Indrawati', 'Sabun Wajah Black mayva\r\nProduk terbaik untuk perawatan wajah yang bermasalah dan untuk merawat wajah secara alami. Menghilangkan jerawat, mencerahkan wajah secara alami.\r\n1 batang Rp. 135.000\r\nMinyak Zaitun berfungsi memberikan kelembaban pada wajah, mencegah kekeringan, namun juga mengatur kadar minyak pada wajah sehingga tidak berlebih. ', 135000, 150000, 'f5441e925ea65c020c19c7df23dcd174.jpg', 'bc8fdb4d-3d56-4a78-8908-f482cb027c37.jpg', '745e7bd2-cfd6-41eb-8494-f1008bb92e27.jpg'),
(54, 'Svatish Hair Nutrition', 'Retno Indrawati', 'Svatish Hair Nutrition\r\nadalah Minyak rambut berbahan alami 100%. baik untuk nutrisi rambut. Mencegah kerontokan dan rambut memutih. Sangat bagus sebagai penyeimbang kesehatan rambut krn faktor kimia deterjen dari shampo.\r\nisi 60 ml : Rp 185.000', 185000, 200000, '653863950c5e575f234be55668c50317.jpg', 'svatish-600x600.jpg', 'Svatish_Hair_Nutrition1.jpg'),
(55, 'Varash Classic Booster Therapy', 'Retno Indrawati', 'Varash classic booster therapy\r\nTingkat kepekatan varash classic sangat terasa, karena merupakan saripati dari Varash natural oil yg original. Hangatnya terasa strong meresap tapi bukan panas, membuat tubuh nyaman. Kemampuan utk menyembuhkan 5x lebih cpt dr varash original.\r\n1 botol isi 100 ml Rp. 350.000\r\n(BEST SELLER)', 350000, 400000, 'cc6d452cc7958543a22f64071de41e15.jpg', 'natural oill.webp', 'natural oill.webp'),
(56, 'Varash Natural Oil – 100ml', 'Retno Indrawati', 'Varash Natural Oil\r\n\r\nMinyak obat yg terbuat dari 108 tanaman berkhasiat obat. Membantu penyembuhan lebih dari 78 masalah kesehatan. Pemakaian dengan cara dibalur dan digosokan di areal tubuh tertentu.\r\nisi 100 ml : Rp 240.000\r\nIsi 60 ml : Rp. 175.000', 240000, 300000, '56ae213f1f1d06aa05f38e4d01ab30b1.jpg', 'S475314edc8234842aba488cc2d66eb26p.jpg_720x720q80.jpg_.webp', '41325cb9-c377-4fc5-ab1b-f0a32682f72a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'hamzah', 'nasrzah24@gmail.com', '2efc6e7c6b2868d6601e690f9b60b40dd788c26a');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price_before` int(20) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price_before`, `price`, `image`) VALUES
(10, 3, 29, 'Kenzen Menjaga Stamina Tubuh dan Ketahanan', 150000, 125000, 'Kenzen17-600x600.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
