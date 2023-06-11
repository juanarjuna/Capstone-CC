-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2023 pada 13.19
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plantInfo-db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `disease`
--

CREATE TABLE `disease` (
  `id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `plantName` text NOT NULL,
  `diseaseName` text NOT NULL,
  `cause` text NOT NULL,
  `care` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `disease`
--

INSERT INTO `disease` (`id`, `slug`, `plantName`, `diseaseName`, `cause`, `care`) VALUES
(1, 'healthy', 'Cabe (Chili)', '-', '', ''),
(2, 'leaf-curl', 'Cabe (Chili)', 'Leaf Curl', 'Gangguan OPT (Organisme Pengganggu Tanaman) berupa hama daun cabai keriting yaitu Thrips, Tungau dan Aphids.', 'Menjaga kebersihan lahan dari gulma, Gunakan mulsa plastik hitam perak, hindari penanaman dilahan bekas atau dekat tanaman kacang panjang, Memasang perangkap perekat berwarna kuning, Gunakan pestisida nabati, Aplikasi insektisida seseperti sevin, Dharmabas, regent, jargon atau marshal.'),
(3, 'leaf-spot', 'Cabe (Chili)', 'Leaf Spot', 'Kondisi lembab dan suhu relative tinggi', 'Menggunakan fungisida antara lain Baycor 300 EC (dosis 1 cc/l air), Velimex 80 WP (dosis 2-2,5 g/l air), Dithane M-45 (dosis 180-240 g/100 l air) dan benomyl (dosis sesuai label). Bisa juga dengan menyemprot fungisida Pentacur 722 AS bergantian dengan fungisida Kudanil 75 WP atau lainnya sesuai dengan kondisi serangan.'),
(4, 'whitefly', 'Cabe (Chili)', 'Whitefly', 'Serangan pada daun berupa bercak nekrotik, akibat serangan nimfa dan serangga dewasa.', 'Pemanfaatan musuh alami (predator), Penggunaan perangkap Companionplanning dengan menanam jagung atau gandum di sekitar Penggunaan peptisida selektif'),
(5, 'yellowish', 'Cabe (Chili)', 'Yellowish', 'Hama kutu kebul (Bemisia tabaci) merusak dengan menularkan virus kuning atau virus gemini yang mengakibatkan penyakit kuning keriting.', 'Menggunakan benih yang berkualitas, lalu penggunaan persemaian yang benar, imunisasi tanaman muda, pengolahan tanah dan pemupukan berimbang, penggunaan mulsa plastik hitam perak, penanaman tanaman penghadang, sanitasi, dan pencabutan tanaman sakit.'),
(6, 'alternaria-leaf-spot', 'Kembang Kol (Cauliflower)', 'Alternaria Leaf Spot', 'Benih yang terinfeksi dan spora yang menyebar dengan cepat oleh hujan, irigasi, mesin, hewan atau manusia.', 'Gunakan benih bebas penyakit. Jika ini tidak memungkinkan, rendam benih dalam air panas (115-150 F./45-65 C.) selama 30 menit.Rotasi tanaman selama dua tahun'),
(7, 'bacterial-spot-rot', 'Kembang Kol (Cauliflower)', 'Bacterial Spot Rot', 'Kondisi lembab dan suhu relative tinggi, Memanen dari lahan yang basah, Tanaman kekurangan kalsium', 'Disinfeksi alat berkebun secara rutin, Menjaga kondisi sanitasi air saat pemanenan, Menjaga tanaman yang dipanen agar tetap kering'),
(8, 'black-leg', 'Kembang Kol (Cauliflower)', 'Black Leg', 'Jamur dan spora jamur pengganggu, udara yang lembab dan suhu tinggi, Perpindahan jamur melalui benih terinfeksi', 'Menanam bibit yang bebas infeksi jamur, Rotasi tanaman setidaknya tiga tahun sekali, Memanen ketika kelembaban rendah, Melakukan penyemprotan daun dengan fungisida'),
(9, 'black-rot', 'Kembang Kol (Cauliflower)', 'Black Rot', 'usia tanaman terlalu tua, oksidasi, jamur pengganggu', 'Mengontrol hama dan serangga dengan pestisida dan insektisida, Menggunakan bibit yang bersih dan bebas patogen, Rotasi tanaman selama 2-3 tahun, Actigard 0.5 - 1 oz tiap 7 hari untuk empat kali pengaplikasian tiap musim, Badge SC (Kelompok M1) 0.5 - 1.8 pints tiap 7 - 10 hari'),
(10, 'club-rot', 'Kembang Kol (Cauliflower)', 'Club Rot', 'Kondisi lembab dan suhu relative tinggi, Mikroorganisme yang tinggal di tanah yang terkait dengan jamur lendir', 'Meningkatkan pH tanah, Memilih bibit yang sehat dan bebas hama, Menumbuhkan bibit pada lahan yang bersih dan sehat sampai pada ukuran tanaman normal'),
(11, 'downy-mildew', 'Kembang Kol (Cauliflower)', 'Downy Mildew', 'Jamur dan spora jamur pengganggu, udara yang lembab dan suhu tinggi, Perpindahan jamur melalui benih terinfeksi', 'Meningkatkan sirkulasi udara dan menjaga daun tetap kering (jika Anda harus menggunakan alat penyiram overhead maka siram pagi-pagi atau sore hari, sehingga tanaman tidak basah sepanjang malam). Spora menahan musim dingin di sisa-sisa tanaman, jadi bersihkan ketika di musim gugur. Juga rotasi tanaman dan singkirkan tanaman yang terinfeksi segera.'),
(12, 'healthy', 'Kembang Kol (Cauliflower)', 'Healthy', '', ''),
(13, 'mosaic', 'Kembang Kol (Cauliflower)', 'Mosaic', 'Serangan virus mosaik tanaman (Cauliflower mosaic virus/CaMV), Kondisi udara lembab dan suhu relatif tinggi', 'Perawatan titik sebaran dengan produk pestisida alami untuk mengurangi jumlah serangga pembawa penyakit, Pelindung tanaman untuk menutupi tanaman harus dipasang hingga mulai mekar, Hindari bekerja di kebun selama kondisi lembab, Buang dan musnahkan semua tanaman yang terinfeksi'),
(14, 'powdery-mildew', 'Kembang Kol (Cauliflower)', 'Powdery Mildew', '', ''),
(15, 'ring-spot', 'Kembang Kol (Cauliflower)', 'Ring Spot', '', ''),
(16, 'white-rust', 'Kembang Kol (Cauliflower)', 'White Rust', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `plant`
--

CREATE TABLE `plant` (
  `id` int(11) NOT NULL,
  `slug` varchar(512) DEFAULT NULL,
  `plantName` varchar(512) DEFAULT NULL,
  `scientificName` varchar(512) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `plantTips` varchar(512) DEFAULT NULL,
  `temperature` varchar(512) DEFAULT NULL,
  `wateringTips` varchar(512) DEFAULT NULL,
  `wateringFrequency` varchar(512) DEFAULT NULL,
  `image` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `plant`
--

INSERT INTO `plant` (`id`, `slug`, `plantName`, `scientificName`, `description`, `plantTips`, `temperature`, `wateringTips`, `wateringFrequency`, `image`) VALUES
(1, 'aloevera', 'Lidah Buaya', 'Aloe vera', 'Lidah buaya adalah spesies tumbuhan dengan daun berdaging tebal bersifat menahu, telah menyebar ke kawasan beriklim tropis, semi-tropis, dan kering di berbagai belahan dunia.Tanaman lidah buaya banyak dibudidayakan untuk pertanian, pengobatan, dan tanaman hias, dan dapat juga ditanam di dalam pot.', 'Jika ditanam dalam pot, lidah buaya membutuhkan tanah yang cukup kering dan berpasir serta cahaya matahari yang cukup. Penyiraman tanaman ini hanya disarankan setelah tanah sudah benar-benar kering. Di dalam pot, tunas-tunas kecil dapat tumbuh di sekitar tanaman asli, dan dapat dipindahkan ke pot lain agar tanaman induknya memiliki ruang cukup untuk tumbuh dan untuk menghindari serangan hama. ', '16 - 30 °C', 'Pastikan tanah kering sepenuhnya sebelum menyiramnya lagi, sekitar 5-6 hari sekali saat musim panas dan 10-14 hari sekali saat musim hujan.', '5 hari 1 kali', 'https://media.istockphoto.com/id/182784203/id/foto/tanaman-lidah-buaya.jpg?s=612x612&w=0&k=20&c=YoSpZmiKFlB-FG9U_DEKK1WE9UjrWGNoam0_dmQIMcM='),
(2, 'banana', 'Pisang', 'Musa Paradisiaca', 'Pisang adalah tumbuhan terna berukuran besar dengan daun memanjang dan besar yang tumbuh langsung dari bagian tangkai. Batang pisang bersifat lunak karena terbentuk dari lapisan pelepah yang lunak dan panjang. Tangkai pisang menghasilkan bunga dalam jumlah yang banyak. Bagian bunga pada pisang akan membentuk buah yang disebut sisir. ', 'Pisang dapat tumbuh subur di wilayah dengan musim kemarau yang berlangsung hingga 4,5 bulan. Curah hujan yang diperlukan oleh pisang untuk tumbuh dengan subur adalah 650 hingga 5.000 mililiter per tahun.', '21 - 29 °C', 'Periode penyiraman pisang umumnya adalah satu hingga dua kali dalam seminggu dan pastikan tanah tetap lembab, tetapi tidak terlalu basah.', '4 hari sekali', 'https://media.istockphoto.com/id/154135061/id/foto/pisang-dalam-berbagai-tahap-kematangan-tumbuh-di-pohon.jpg?s=612x612&w=0&k=20&c=ElwQHU1WI2llSoIJQbRXacwlqifr4MXa2QstqiiYw3w='),
(3, 'blimbi', 'Belimbing', 'Averrhoa Carambola', 'Belimbing merupakan jenis buah-buahan hortikultura beriklim tropis mengandung vitamin A dan vitamin C yang tinggi dan bermanfaat bagi kesehatan tubuh bila dikonsumsi secara rutin. Belimbing mamiliki rasa manis serta segar dan banyak mengandung air ini, sangat potensial untuk dikembangkan dan bernilai ekonomis tinggi.', 'Penyiraman dapat dilakukan dengan menggunakan selang yang dilubangi sebesar jarum pada posisi samping, kemudian selang dihubungkan dengan menara air (tendon air atau bak air). air dari menara bisa langsung dialirkan, untuk pengaturannya kita bisa memasang kran pengaturan.', '23 - 28 °C', 'Penyiraman tanaman belimbing dapat dilakukan dengan cara penggenangan (dileb) atau disiram sampai daerah sekitar tajuk tanaman basah.', '-', 'https://media.istockphoto.com/id/1388573789/id/foto/buah-bintang-carambola-averrhoa-carambola.jpg?s=612x612&w=0&k=20&c=RmKCsVPI0-91DGtlPWwWli2c9psw-XpnTTye9bUunqY='),
(4, 'cantaloupe', 'Blewah', 'Cucumis melo var cantalupensis', 'Blewah adalah tumbuhan penghasil buah yang banyak digunakan sebagai minuman penyegar di Asia Tenggara. Blewah umumnya berbentuk bulat lonjong, dengan kulit berwarna jingga terang dengan bercak kehijauan. Di balik kulit buah yang tipis, terdapat daging buah yang relatif lembut dan bertekstur. Di bagian dalamnya terdapat rongga yang berisi biji dan serat.', 'Tanaman blewah ini sangat menyukai sinar matahari secara langsung daripada di lingkungan yang teduh, tidak dapat tumbuh di tanah yang keras atau padat dan tidak menyukai lahan yang lembab dan becek.', '18 - 32 °C', 'Periode penyiraman blewah umumnya adalah satu hingga dua kali dalam seminggu dan pastikan tanah tetap lembab, tetapi tidak terlalu basah.', '4 hari sekali', 'https://thegorbalsla.com/wp-content/uploads/2020/02/Blewah.jpg'),
(5, 'cassava', 'Singkong', 'Manihot esculenta', 'Ubi kayu, atau disebut juga singkong, kaspe, ketela pohon, ubi sampa atau ubi prancis adalah perdu tropis dan subtropis tahunan. Perdu bisa mencapai hingga 7 meter dengan cabang agak jarang. Akar tunggang dengan sejumlah akar cabang yang kemudian membesar menjadi umbi akar yang dapat dimakan.', 'Cara menanam singkong yang benar diawali dengan meruncingkan batang bagian bawah. Kemudian tanam pada bedengan dengan kedalaman 5-10 cm. Tancapkan sampai bibit berdiri dengan kokoh. Beberapa hari kemudian, bibit akan muncul daun kecil yang menjadi petanda bahwa pertumbuhan sedang dimulai.', '18 - 35 °C', 'Periode penyiraman singkong adalah satu hingga dua kali dalam seminggu tergantung pada keadaan tanah dan cuaca, pastikan tanah tetap lembab, tetapi tidak terlalu basah.', '4 hari sekali', 'https://media.istockphoto.com/id/1034036504/id/foto/singkong-juga-disebut-manioc-yuca-balinghoy-mogo-mandioca-kamoteng-kahoy-tapioka-dan-akar.jpg?s=612x612&w=0&k=20&c=9JNiuVyuRQX4l7Pei4bW25gWmrKufOj76KWK7cJK2eY='),
(6, 'coconut', 'Kelapa', 'Cocos nucifera', 'Kelapa dikenal karena kegunaannya yang beragam, mulai dari makanan hingga kosmetik. Daging bagian dalam menjadi sumber makanan bagi banyak orang di daerah tropis dan subtropis. Kelapa berbeda dari buah-buahan lain karena endosperma mereka mengandung \"santan\", dan ketika belum matang, dapat dipanen untuk diminum sebagai \"air kelapa\".', 'Tanaman kelapa dapat tumbuh dengan optimal pada daerah dengan curah hujan 1.300 sampai dengan 2.300 mm per-tahun, tetapi tanaman tetap dapat tumbuh meski curah hujan di daerah penanaman mencapai 3.800 mm per-tahun asalkan drainase tanah baik. Tanaman kelapa tumbuh optimal di dataran rendah atau pada ketinggian 0–450 m dpl.', '20 - 27 °C', 'Penyiraman dilakukan saat bulan kemarau dan jarang hujan turun. Sebaiknya dilakukan penyiraman yang terkontrol yaitu sekitar tiga hari sekali dan dilakukan sore hari.', '3 hari 1 kali', 'https://media.istockphoto.com/id/1222306917/id/foto/puncak-pohon-kelapa-dengan-kelapa-hijau.jpg?s=612x612&w=0&k=20&c=YsjnvcjutEFRYL5mvH92E8n6CTdFcr_ShbxzR09EwXo='),
(7, 'corn', 'Jagung', 'Zea mays', 'Jagung adalah salah satu tanaman pangan penghasil karbohidrat yang terpenting di dunia. Pada masa kini, jagung juga sudah menjadi komponen penting pakan ternak, sumber minyak pangan dan bahan dasar tepung maizena. Berbagai produk turunan hasil jagung menjadi bahan baku berbagai produk industri farmasi, kosmetika, dan kimia.', 'Jagung dapat tumbuh pada berbagai tipe tanah, asalkan ketersediaan air dan hara tercukupi dan akar mampu tumbuh dengan baik. Perakaran jagung tidak dalam, sehingga lapis olah tidak boleh terlalu keras. Jagung menyukai tanah dengan kemasaman netral (pH 5 - 6,5). ', '16 - 35 °C', 'Kebutuhan air jagung adalah rata-rata, namun kekurangan air pada masa awal tumbuh, masa pembungaan, dan pengisian biji akan berakibat pada penurunan hasil yang dramatis.', '-', 'https://media.istockphoto.com/id/1133692494/id/foto/tongkol-jagung-dengan-daun-hijau-tumbuh-di-bidang-pertanian-di-luar-ruangan.jpg?s=612x612&w=0&k=20&c=Q62GEwxqLATlZWGXhXLk-pOBsc4_O8mPJ6q4f7kO9MQ='),
(8, 'cucumber', 'Mentimun', 'Cucumis sativus', 'Mentimun merupakan tumbuhan yang menghasilkan buah yang dapat dimakan. Buahnya biasanya dipanen ketika belum masak benar untuk dijadikan sayuran atau penyegar, tergantung jenisnya. Potongan buah mentimun juga digunakan untuk melembabkan wajah serta banyak dipercaya dapat menurunkan tekanan darah tinggi.', 'Untuk jenis budidaya mentimun organik lebih memerlukan perawatan yang ekstra, sebab tanaman jenis ini rentan akan hama dan cuaca. Mentimun juga lebih bagus jika ditanam pada tanah yang memiliki kandungan hara organik cukup banyak. Tekstur tanah yang baik untuk tumbuh kembang dari tanaman ini yang memiliki kadar liat rendah dengan pH 6 – 7. (kebun.co.id)', '21 - 27 °C', 'Penyiraman dilakukan rutin setiap hari sampai umur tanaman 2-3 minggu setelah pindah tanam, pada umur selanjutnya penyiraman dapat dilakukan 2-3 hari sekali.', '2 hari 1 kali', 'https://media.istockphoto.com/id/478377196/id/foto/latar-belakang-mentimun.jpg?s=612x612&w=0&k=20&c=rtukkKbDwz0_SZJBJNJTrg9u5vwRHJ-cMUUPu6zfCNU='),
(9, 'curcuma', 'Temulawak', 'Curcuma zanthorrhiza', 'Temu lawak adalah tumbuhan obat yang tergolong dalam suku temu-temuan. Ia berasal dari Indonesia, khususnya Pulau Jawa. Terna berbatang semu dengan tinggi hingga lebih dari satu meter, tetapi kurang dari dua meter.', 'Ketinggian tempat: 100 – 600 mdpl; curah hujan tahunan: 1.500 – 4.000 mm; pH tanah: 5,0 – 6,5, struktur tanah: subur, gembur dan memiliki kandungan humus tinggi; tekstur tanah: lempung hingga lempung liat berpasir; kemiringan lahan maksimum 30 %; jumlah naungan maksimal adalah 30% (gdm.id)', '19 - 30 °C', 'Pada awal tanam penyiraman dengan air bersih setiap pagi/sore hari sampai keluar tunas. Selanjutnya penyiraman banyak dilakukan pada musim kemarau dan pastikan tanah tetap lembab.', '6 hari 1 kali', 'https://media.istockphoto.com/id/1370423386/id/foto/temulawak.jpg?s=612x612&w=0&k=20&c=efknZDP7nvqlHu4sdw4voqt8cQgNqHxPVD8mReAUb-4='),
(10, 'eggplant', 'Terong', 'Solanum melongena', 'Terung ialah terna yang sering ditanam secara tahunan. Tanaman ini tumbuh hingga 40–150 cm (16-57 inci) tingginya. Daunnya besar, dengan lobus yang kasar. Buahnya mempunyai berbagai warna, terutama ungu, hijau, dan putih.', 'Tumbuh dengan baik pada daerah bercurah hujan 85-200 mm/bulan. Jenis tanah yang bagus untuk budidaya adalah tanah lempung yang mampu mengikat air dengan baik, namun tidak pada tanah yang digenangi air. pH dari tanah yang sesuai adalah 6,5-7, sedangkan tanah yang memiliki pH di bawah itu harus ditaburi kapur pertanian atau yang sering disebut dengan dolomit.', '22 - 30 °C', 'Penyiraman dilakukan 2 kali sehari yaitu pagi dan sore atau apabila tanah terlihat kering dan juga setelah pemberian pupuk.', '1 hari 2 kali', 'https://media.istockphoto.com/id/1309479975/id/foto/terong-matang-tumbuh-di-kebun-sayur.jpg?s=612x612&w=0&k=20&c=wOTKVyCSML2MYTe7cilCTBTdKQ4ip6PFmbP6XOsl9Kc='),
(11, 'galangal', 'Lengkuas', 'Alpinia galanga', 'Lengkuas, laos atau kelawas merupakan jenis tumbuhan umbi-umbian yang bisa hidup di daerah dataran tinggi maupun dataran rendah. Umumnya masyarakat memanfaatkannya sebagai campuran bumbu masak dan pengobatan tradisional.', 'Lahan dibersihkan dari gulma atau tanaman pengganggu lainnya, gemburkan tanah pada lahan dengan dibajak sedalam 30 cm, lalu diamkan lahan selama 2-4 minggu agar gas beracun tanahnya menguap. Jika dirasa belum gembur lakukan kembali penggemburan sekitar 2-3 minggu sebelum tanam lalu lakukan pemupukan dasar dengan pupuk kandang. Jika pH tanah rendah dan beberapa unsur hara yang dibutuhkan tanaman lengkuas tumbuh tidak tersedia, lakukan pengapuran dengan menggunakan kapur dolomit.', '23 - 26 °C', 'Periode penyiraman lengkuas umumnya adalah satu hingga dua kali dalam seminggu dan pastikan tanah tetap lembab, dan jangan sampai air menggenang.', '4 hari 1 kali', 'https://media.istockphoto.com/id/1361464845/id/foto/sekelompok-lengkuas-di-pasar.jpg?s=612x612&w=0&k=20&c=5lwp84XcPmZTwIF32mXx0x4hgJEPn5qXAAc-wDAkfug='),
(12, 'ginger', 'Jahe', 'Zingiber officinale', 'Jahe adalah tumbuhan yang rimpangnya sering digunakan sebagai rempah-rempah dan bahan baku pengobatan tradisional. Rimpangnya berbentuk jemari yang menggembung di ruas-ruas tengah. Rasa dominan pedas yang dirasakan dari jahe disebabkan oleh senyawa keton bernama zingeron.', 'Sebaiknya ditanam pada lahan kosong ataupun pekarangan rumah, memilih tanah yang berhumus, tidak berkerikil, dan mempunyai aerasi udara yang mudah. Bibit jahe yang telah berkembang daun sehabis disemai dibiarkan menyesuaikan diri dengan lingkungan yang mempunyai naungan sampai berusia sampai 1,5 – 2 bulan. Sehabis merambah umur 2 – 4 minggu, lakukan penyiraman dengan fermentasi SOT HCS ataupun pupuk organik.', '20 - 35 °C', 'Penyiraman dapat dilakukan dengan intensitas penyiraman sekitar sehari sekali pada pagi ataupun sore dan jangan sampai tanaman terlalu tergenang air.', '1 hari 1 kali', 'https://media.istockphoto.com/id/534722361/id/foto/tampilan-akar-jahe-segar.jpg?s=612x612&w=0&k=20&c=Cu7QS8Vv2OsUN3z02JXjZ0RZm8emzcucGZV8JIEGZus='),
(13, 'guava', 'Jambu Biji', 'Psidium guajava', 'Jambu biji (Psidium guajava ) atau sering juga disebut jambu batu, jambu siki dan jambu klutuk adalah tanaman tropis. Jambu batu memiliki buah yang berwarna hijau dengan daging buah berwarna hijau atau merah dan berasa asam-manis. Buah jambu batu dikenal mengandung banyak vitamin C.', 'Campurkan pasir, tanah, dan pupuk kompos dengan perbandingan 2:1:1 Masukkan campuran ke dalam pot atau polybag sebanyak ¾ bagian Biarkan selama dua minggu Letakkan biji di bagian atas campuran tersebut Tutupi dengan pasir Siramlah dengan air secukupnya.', '23 - 28 °C', 'Penyiraman dilakukan sebanyak 1-2 kali sehari agar jambu biji rajin berbuah.', '1 hari 2 kali', 'https://media.istockphoto.com/id/163852307/id/foto/buah-jambu-biji.jpg?s=612x612&w=0&k=20&c=YXtu0mO08QOIaWtbCg4s53UQxahJPap6Z1La4HfzaDA='),
(14, 'kale', 'Kale', 'Brassica oleracea var. Sabellica', 'Kubis keriting atau kale, adalah tumbuhan kultivar yang ditanam untuk daunnya yang dapat dimakan, meskipun beberapa digunakan sebagai tanaman hias. Tumbuhan kale memiliki daun berwarna hijau atau ungu, dan daun pusatnya tidak membentuk kepala.', 'Campurkan 1-½ cup pupuk 5-10-10 per 25 kaki media tanam, sedalam 3 sampai 4 inchi di dalam tanah. Tanam benih kale ¼ sampai ½ inchi di dalam tanah yang ringan dan berdrainase baik. Setelah sekitar dua minggu, kale dipindah dengan jarak antar tanaman sekitar 8 – 12 inchi.', '23 - 35 °C', 'Perhatikan media tanamnya jika mudah kering, maka frekuensi penyiraman sebaiknya dua kali sehari, yaitu pagi dan sore.', '1 hari 2 kali', 'https://media.istockphoto.com/id/1218679698/id/foto/salad-kale-segar-terisolasi-di-latar-belakang-putih-daun-keriting-kale-mentah-konsep-makanan.jpg?s=612x612&w=0&k=20&c=O1RPni2ll6jLGN-YzQbLdVOESJuPV3Uvahcj0BUov-4='),
(15, 'longbeans', 'Kacang Panjang', 'Vigna sinensis L', 'Kacang panjang adalah salah satu tanaman sayuran yang populer dalam kuliner Asia Tenggara dan Asia Timur. Buah polongnya dimasak sebagai sayur atau dimakan mentah sebagai lalapan. Ia tumbuh dengan cara memanjat atau melilit. Bagian yang dijadikan sayur atau lalapan adalah buah (polong) yang masih muda dan serat-seratnya masih lunak.', 'Jenis tanah yang cocok untuk tanaman kacang panjang adalah jenis tanah lempung berpasir dengan pH tanah 5,5-6,5. Disarankan untuk menanam kacang panjang di awal musim hujan-awal musim kemarau supaya kebutuhan air terpenuhi.', '20 - 30 °C', 'Penyiraman 2 kali sehari pada pagi dan sore hari jika Anda membudidayakan di musim kemarau. Sedangkan penyiraman di musim hujan hanya dilakukan jika tanah sedang kering.', '1 hari 2 kali', 'https://media.istockphoto.com/id/1262599601/id/foto/kacang-yardlong-hijau-organik-dalam-bidikan-close-up.jpg?s=612x612&w=0&k=20&c=ggzkJ_s3YyviJ3xLedh5FGuePNEW0pSwjoS0-2nZ_bk='),
(16, 'mango', 'Mangga', 'Mangifera indica', 'Buah mangga termasuk kelompok buah batu (drupa) yang berdaging, dengan ukuran dan bentuk yang sangat berubah-ubah bergantung pada macamnya. Pohon mangga berperawakan besar, dapat mencapai tinggi hingga 30 m atau lebih, meski kebanyakan mangga pekarangan hanya sekitar 15 m atau kurang.', 'Tanaman mangga tumbuh baik pada tekstur tanah yang subur & gembur dengan nilai pH 5 – 6,5. Ketinggian disarankan 300-500m dpl, serta memiliki drainase yang baik.', '24 - 27 °C', 'Penyiraman dilakukan 2 kali sehari yaitu pagi dan sore atau apabila tanah terlihat kering dan juga setelah pemberian pupuk.', '1 hari 2 kali', 'https://media.istockphoto.com/id/466409570/id/foto/sekelompok-mangga-hijau-dan-matang-di-pohon-di-kebun.jpg?s=612x612&w=0&k=20&c=ioaQN1xFKDHmOPTvQmSksrCmyxJBRg4u6zj6E90sRNI='),
(17, 'melon', 'Melon', 'Cucumis melo L', 'tanaman yang menghasilkannya yang termasuk dalam suku labu-labuan. Buanya bisa dimakan segar atau diiris-iris sebagai campuran es buah. Tumbuhan semusim, merambat tetapi menjalar, tidak memanjat. Daun berbentuk menjari dengan lekuk moderat sehingga seperti lingkaran bersudut. Batangnya biasanya tidak berkayu.', 'Musim tanam yang dianjurkan untuk penanaman melon adalah saat awal bulan musim kemarau agar memperoleh sinar matahari secara maksimal dan meminimalisir serangan penyakit. Lokasi lahan untuk tanaman melon sebaiknya lahan yang mudah pengairannya, tidak berangin kencang, bukan daerah rawan banjir.', '21 - 27 °C', 'Penyiraman hendaknya dilakukan setiap sore hingga umur tanaman satu minggu. Selanjutnya penyiraman dilakukan setiap 2 hari sekali.', '2 hari 1 kali', 'https://media.istockphoto.com/id/150442822/id/foto/melon.jpg?s=612x612&w=0&k=20&c=0D_2yVHJi5G7_rvrMzYH_y-sbTVI7JreSJihQd5sPfA='),
(18, 'orange', 'Jeruk', 'Citrus sp', 'Jeruk manis merupakan hibrida antara jeruk bali (Citrus maxima) dan mandarin (Citrus reticulata). Pohon jeruk banyak ditanam di iklim tropis dan subtropis karena bisa menghasilkan buah yang manis. Buah jeruk dapat dimakan segar atau diolah untuk jus, sedangkan kulitnya bisa dimanfaatkan untuk bumbu karena harum.', 'Rata-rata jeruk lebih berkualitas bila ditanam di lokasi yang memiliki cuaca hangat, dengan sinar matahari yang cukup. Oleh karena itu, jeruk juga bisa ditanam pada lahan sawah atau tegal, dengan syarat tidak terhalang oleh pohon lain.', '25 - 30 °C', 'Penyiraman pada pohon jeruk harus dilakukan 2 kali dalam sehari, waktu yang baik saat penyiraman adalah saat matahari belum terik yaitu saat pagi hari maupun sore hari.', '1 hari 2 kali', 'https://media.istockphoto.com/id/517500580/id/foto/jeruk-matang-tergantung-di-pohon.jpg?s=612x612&w=0&k=20&c=elDTYTHoA2NhaCxSSzubHBHrHkN8EU5INLyJ6dNjtog='),
(19, 'paddy', 'Padi', 'Oryza sativa', 'Padi merupakan salah satu tanaman budidaya terpenting dalam peradaban. Padi diduga berasal dari India atau Indocina dan masuk ke Indonesia sekitar 1500 SM.Hasil dari pengolahan padi dinamakan beras. Tanaman ini merupakan terna semusim, berakar serabut, batang sangat pendek, struktur serupa batang terbentuk dari rangkaian pelepah daun yang saling menopang daun sempurna dengan pelepah tegak, daun berbentuk lanset', 'Padi dapat ditanam di musim kemarau atau hujan. Pada musim kemarau produksi meningkat asalkan air irigasi selalu tersedia. Di musim hujan, walaupun air melimpah prduksi dapat menurun karena penyerbukan kurang intensif. Tanaman padi memerlukan penyinaram matahari penuh tanpa naungan.', '20 - 33 °C', 'Gunakan sistem irigasi terus menerus dilakukan dengan memberikan air kepada padi dan biarkan tergenang mulai beberapa hari setelah tanam hingga beberapa hari menjelang panen.', '-', 'https://media.istockphoto.com/id/1322226891/id/foto/nasi-matang-di-pertanian-di-musim-gugur.jpg?s=612x612&w=0&k=20&c=3MNsvRYdrs8JaveYXTyPZGPQJyarAW-jL_xgXB43tl4='),
(20, 'papaya', 'Pepaya', 'Carica papaya L', 'Pepaya adalah tumbuhan yang diperkirakan berasal dari Meksiko bagian selatan dan bagian utara dari Amerika Selatan. Buah pepaya dimakan dagingnya, baik ketika muda maupun masak. Daging buah muda dimasak sebagai sayuran sedangkan daging buah masak dimakan segar atau sebagai campuran koktail buah. Pepaya dimanfaatkan pula daunnya sebagai sayuran dan pelunak daging. ', 'Pepaya dapat tumbuh pada ketinggian 500-1000 mdpl dengan tanah hembur dan mengandung banyak humus, dilengkapi drainase yang baik agar tidak tergenang air.', '15 - 35 °C', 'Penyiraman dilakukan 1 kali sehari yaitu pagi hari dan disesuaikan saat kondisi hujan.', '1 hari 1 kali', 'https://media.istockphoto.com/id/956046518/id/foto/pepaya-sudah-matang-di-pohon.jpg?s=612x612&w=0&k=20&c=Q9XP2uIhAolioCEFq1QlzqIiQfwx8BDLDW6o3rR6tok='),
(21, 'pepper-chili', 'Cabai', 'Capsicum annuum L', 'Cabai adalah buah dan tumbuhan anggota genus Capsicum. Buahnya dapat digolongkan sebagai sayuran maupun bumbu, tergantung bagaimana pemanfaatannya. Sebagai bumbu, buah cabai yang pedas sangat populer di Asia Tenggara sebagai penguat rasa untuk makanan.', 'Penanaman sebaiknya dilakukan pada pagi hari dan sore hari untuk menghindari stress, diusahakan dilakukan serentak dalam satu hari. Sebaiknya lubang tanam dibuat zig zag tidak sejajar untuk mengatur sirkulasi angin dan penetrasi sinar matahari.', '24 - 28 °C', 'Penyiraman dilakukan sebanyak seminggu 2 kali dan lakukan di pagi hari, hindari penyiraman di siang atau malam hari. Hanya siram pada pagi atau sore hari.', '4 hari 1 kali', 'https://media.istockphoto.com/id/1178191832/id/foto/kelompok-tandan-tanaman-lada-burung-matang-organik-karibia-tropis-hijau.jpg?s=612x612&w=0&k=20&c=lIcCzB35f-_wScsEUn0g1MLl_6rEpMdgz6mct0WZns0='),
(22, 'pineapple', 'Nanas', 'Ananas comosus', 'Nanas adalah tumbuhan tropis dengan buah yang dapat dimakan. Sejak tahun 1820-an, nanas telah ditanam secara komersial di rumah kaca dan banyak perkebunan tropis. Selain itu, nanas merupakan buah tropis terpenting ketiga dalam produksi dunia. ', 'Tanaman nanas cenderung mudah untuk tumbuh, baik pada iklim kering maupun basah, curah hujan tinggi maupun rendah. Tanaman nanas dapat tumbuh dengan baik dengan penyinaran antara 33-71%. Tanah dengan pH 4,5 – 5,5 yang gembur, tanah lempung berpasir dan kandungan unsur hara tinggi. Masa penanaman hingga sistem drainase juga berpengaruh pada budidaya nanas.', '23 - 32 °C', 'Penyiraman dilakukan 1-2 kali dalam seminggu atau tergantung kondisi cuaca, dan waktu penyiraman terbaik adalah sore dan pagi hari', '6 hari 1 kali', 'https://media.istockphoto.com/id/1184478864/id/foto/buah-nanas-hijau-tumbuh-di-kebun-di-madhupur-tangail-bangladesh.jpg?s=612x612&w=0&k=20&c=FzvtVl-G9W7IpGYOG-09ftlzm_cs8kRo_572iwBv7jU='),
(23, 'pomelo', 'Jeruk Bali', 'Citrus grandis', 'Jeruk bali merupakan tanaman jeruk yang menghasilkan buah terbesar. Bobot buah jeruk bali bisa mencapai 1–2 kg. Daging buahnya berbulir dengan warna merah-oranye dan rasa yang cenderung terasa manis bercampur asam dan sedikit getir.', 'Cocok ditanam pada lahan yang memiliki tanah subur serta mendapat cahaya matahari yang cukup. Bisa juga apabila tidak memiliki lahan maka bisa menggunakan pot.', '25 - 30 °C', 'Pertama kali setelah penanaman disarankan untuk sering menyiram yaitu sehari sekali. Setelah itu lakukan seminggu 1 kali karena tanaman ini tahan kering.', '6 hari 1 kali', 'https://media.istockphoto.com/id/452547687/id/foto/jeruk-bali.jpg?s=612x612&w=0&k=20&c=a9UF4hlGlMFv3hnKxGSeYUChLinYS_4p260Yty8-n0k='),
(24, 'shallot', 'Bawang Merah', 'Allium ascalonicum', 'Bawang merah adalah salah satu bumbu masak utama dunia yang berasal dari Iran, Pakistan, dan pegunungan-pegunungan di sebelah utaranya, tetapi kemudian menyebar ke berbagai penjuru dunia, baik sub-tropis maupun tropis. Wujudnya berupa umbi yang dapat dimakan mentah, untuk bumbu masak, acar, obat tradisional, kulit umbinya dapat dijadikan zat pewarna dan daunnya dapat pula digunakan untuk campuran sayur.', 'Bawang merah tumbuh di dataran rendah hingga dataran tinggi sekitar 1000 mpdl; penyinaran cahaya matahari sekitar 75%; persyaratan tanah : gembur, subur dan banyak mengandung bahan organik; jenis tanah yang paling bagus yaitu lempung berpasir atau lempung berdebu; pH tanah yang baik berkisar 5,5 – 6,5; drainase dan aerasi tanah diusahakan bagus.', '25 - 30 °C', 'Penyiraman pada bawang merah dilakukan sehari 2 kali setiap pagi dan sore sampai berumur 10 hari. Setelah itu, penyiraman bisa dikurangi hingga 1 kali sehari.', '1 hari 2 kali', 'https://media.istockphoto.com/id/1027141058/id/foto/bawang-merah.jpg?s=612x612&w=0&k=20&c=yxZifAPlTFZKDf0m6o8o6zGSAvtcjyhuLR6-1n6IhKI='),
(25, 'soybeans', 'Kacang Kedelai', 'Glycine max', 'Kedelai, atau kacang kedelai, adalah salah satu tanaman jenis polong-polongan yang menjadi bahan dasar banyak makanan dari Asia Timur seperti susu, kecap, tahu, dan tempe. Kedelai merupakan sumber utama protein nabati dan minyak nabati dunia.', 'Saat menjelang panen, tanah sebaiknya dalam keadaan kering.', '21 - 30 °C', 'Kondisi tanah sebaiknya lembab tetapi tidak becek dan dibutuhkan sejak benih ditanam hingga pengisian polong. ', '1 hari 2 kali', 'https://media.istockphoto.com/id/184878412/id/foto/kedelai.jpg?s=612x612&w=0&k=20&c=uR8bgDoMPFHJiSaAA1BC7G5Aaunx0BbwQm_4pLY2G3Q='),
(26, 'spinach', 'Bayam', 'Amaranthus sp', 'Bayam adalah tumbuhan yang biasa ditanam untuk dikonsumsi daunnya sebagai sayuran hijau. Tumbuhan ini merupakan terna semusim yang menyukai iklim hangat dan cahaya kuat, berasal dari Amerika tropik namun sekarang tersebar ke seluruh dunia. Tumbuhan ini dikenal sebagai sayuran sumber zat besi yang penting bagi tubuh.', 'Bayam sesuai ditanam berbagai jenis tanah terutama tanah gembur liat ringan dan tanah liat berpasir. Tanah yang kaya dengan bahan organik, mempunyai saluran yang baik dan mempunyai kemasaman tanah di antar 5.5 – 6.5', '20 - 30 °C', 'Penyiraman yang teratur 2-3 kali seminggu tetapi tidak berlebihan dan pastikan tanah lembab, sebaiknya lakukan pada pagi atau sore hari.', '3 hari 1 kali', 'https://media.istockphoto.com/id/177423078/id/foto/bayam-di-atas-putih.jpg?s=612x612&w=0&k=20&c=AZWDec6oXWh_NwgkVSbmoF0wDv_agZcXXXskJcCd2-I='),
(27, 'sweet-potatoes', 'Ubi Jalar', 'Ipomoea batatas L', 'Ubi jalar adalah sejenis tanaman budidaya. Bagian yang dimanfaatkan adalah akarnya yang membentuk umbi dengan kadar gizi (karbohidrat) yang tinggi. Di Afrika, umbi dari ubi jalar menjadi salah satu sumber makanan pokok yang penting. Di Asia, selain dimanfaatkan umbinya, daun muda ubi jalar juga dibuat sayuran. Terdapat pula ubi jalar yang dijadikan tanaman hias karena keindahan daunnya.', 'Ubi jalar ditanam dengan  membenamkan 2/3 stek batang kedalam tanah yang lembab. Jarak antar tanaman dalam satu baris 30 cm dan jarak antar baris 40 cm.', '21 - 27 °C', 'Seusai tanam, tanah ubi jalar harus diairi, selama 15-30 menit hingga tanah cukup basah, kemudian airnya dialirkan keseluruh pembuangan, lakukan hingga tanaman ubi jalar berumur 1-2 bulan. Pada 2-3 minggu sebelum panen, pengairan dikurangi atau dihentikan. ', '-', 'https://media.istockphoto.com/id/625441142/id/foto/ubi-jalar-segar.jpg?s=612x612&w=0&k=20&c=BWzbZoM6HhudS6mKtA7CCCB1Z8cytuq-C2pt9JNJttk='),
(28, 'tobacco', 'Tembakau', 'Nicotiana spp., L', 'Tembakau adalah kelompok tumbuhan dari genus Nicotiana yang daunnya biasa digunakan sebagai bahan baku dalam kegiatan merokok. Tembakau adalah produk pertanian semusim yang termasuk komoditas perkebunan. Tumbuhan tembakau merupakan tumbuhan semusim, mampu tumbuh di kisaran iklim yang luas dengan waktu tumbuh 60 sampai 90 hari.', 'Pastikan keadaan bebas embun beku dari hari pertama pencangkokan sampai panen dengan temperatur 20 °C sampai 30 °C .', '20 - 30 °C', 'Tanaman tembakau disiram menggunakan air dicampur dengan pupuk setiap 5 hari sekali.', '5 hari 1 kali', 'https://media.istockphoto.com/id/641330880/id/foto/closeup-tembakau-daun-kering-di-latar-belakang-putih.jpg?s=612x612&w=0&k=20&c=wZUso0VFl_c3eIZs9xC5a--qgIFhQYBER_4KUI7y1aE='),
(29, 'tomato', 'Tomat', 'Solanum lycopersicum', 'Tomat atau rangam adalah tumbuhan asli Amerika Tengah dan Selatan, dari Meksiko sampai Peru. Tomat merupakan tumbuhan siklus hidup singkat, dapat tumbuh setinggi 1 sampai 3 meter. Tumbuhan ini memiliki buah berwarna hijau, kuning, dan merah yang biasa dipakai sebagai sayur dalam masakan atau dimakan secara langsung tanpa diproses.', 'Penyiraman sebaiknya dilakukan dengan menggunakan alat/gembor yang memiliki lubang halus, agar tidak merusak bibit tanaman yang sudah atau baru tumbuh.', '21 - 28 °C', 'Penyiraman dilakukan 2 kali sehari, yaitu pagi dan sore hari. ', '1 hari 2 kali', 'https://media.istockphoto.com/id/1128036139/id/foto/tomat-organik-di-peternakan.jpg?s=612x612&w=0&k=20&c=9o7M02aVGZb2tyObfRDIjVn6SshxA8u5XukuDO2YaYw='),
(30, 'waterapple', 'Jambu Air', 'Syzygium aqueum', 'Jambu air adalah tumbuhan dalam suku jambu-jambuan atau Myrtaceae yang berasal dari Asia Tenggara. Jambu air sebetulnya berbeda dengan jambu semarang, kerabat dekatnya yang memiliki pohon dan buah hampir serupa.', 'Ketika ingin menyemai jambu air, pastikan benih yang dipilih berasal dari buah yang memiliki kualitas baik, manis, besar, dan tumbuh cepat. Siapkan benih dengan cara memisahkan benih dari daging buah matang, rendam dalam air bersih selama satu setengah jam dan pilih yang tenggelam. Lalu keringkan di bawah terik matahari.', '10 - 28 °C', 'Pohon jambu air yang muda harus disiram sebanyak 1-2 kali dalam sehari. Untuk pohon yang tua, penyiraman cukup dilakukan sebanyak 10 – 12 kali selama sebulan.', '1 hari 2 kali', 'https://media.istockphoto.com/id/1090104826/id/foto/apel-mawar.jpg?s=612x612&w=0&k=20&c=eqCueN-z89sjQiFFLHoU1F12ngn9WsyS6XOBD_8Yahw='),
(31, 'watermelon', 'Semangka', 'Citrullus lanatus', 'Semangka adalah tanaman merambat yang berasal dari daerah setengah gurun di Afrika bagian selatan.[2] Tanaman ini masih sekerabat dengan labu-labuan (Cucurbitaceae), melon (Cucumis melo), dan ketimun (Cucumis sativus). Semangka biasa dipanen buahnya untuk dimakan segar atau dibuat jus. Biji semangka yang dikeringkan dan disangrai juga dapat dimakan isinya (kotiledon) sebagai kuaci.', 'Pada kondisi awal pembentukan bunga sebaiknya jangan disiram, lakukan penyiraman kembali saat buah semangka mulai terbentuk.', '18 - 35 °C', 'Semangka disiram setiap 3 hari sekali atau dapat disesuaikan dengan kondisi cuaca ataupun lingkungan setempat', '3 hari 1 kali', 'https://media.istockphoto.com/id/641888644/id/foto/semangka-di-kebun.jpg?s=612x612&w=0&k=20&c=GVIExsXoIK1a3sB77H3JjZrzlBZgOZGP_ZiC_6dWAmw=');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userplant`
--

CREATE TABLE `userplant` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `startDate` varchar(255) NOT NULL,
  `lastScheduledDate` varchar(255) NOT NULL,
  `nextScheduledDate` varchar(255) NOT NULL,
  `plantId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `disease` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `userplant`
--

INSERT INTO `userplant` (`id`, `location`, `startDate`, `lastScheduledDate`, `nextScheduledDate`, `plantId`, `UserId`, `disease`) VALUES
(1, 'Mirage', '2022-02-02', '2023-08-09', '2023-08-10', 4, 1, ''),
(2, 'Dust33333', '2022-02-03', '2023-08-90', '2023-08-01', 2, 1, 'pidpid'),
(3, 'Dust33333', '2022-02-03', '2023-08-90', '2023-08-01', 2, 1, 'pidpid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `foto`) VALUES
(2, 'Axe', 'Axe@gmail.com', 'sha256$wjlSmJ9189LBcg2O$f6c6594dd94b280ecf5965838405525a86fbb7bf93a629418a519aa30b01463e', 'test'),
(3, 'Hahahihi', '1@gmail.com', 'sha256$xXamYxQtHM3ph1Cu$5856ceb1d6621749000ac202795ffc541380b747165d7c4ebf549c1d9b327cf1', 'tes2t'),
(4, 'budi', '2@gmail.com', 'sha256$k93e4XU5GZWpxnF5$488f97110d308d62cbc2ce209c54a01f7972a3a062535c0dda6a7eaa56f26be9', ''),
(5, 'wa', '3@gmail.com', 'sha256$oVSyM2h0GzFLx9Y7$2085967f526cbc59aae8835f787a06b7ce31498aa18acdd1aa16bdee367a9143', ''),
(6, 'jo', '5@gmail.com', 'sha256$hQiLlZofRCS4qsJY$b35b6ef9e837afb91d2ce90802d395dbbc815985c5b4bf88b70836f70623643c', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `userplant`
--
ALTER TABLE `userplant`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `plant`
--
ALTER TABLE `plant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `userplant`
--
ALTER TABLE `userplant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
