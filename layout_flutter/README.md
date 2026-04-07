Nama: Fajar Kurnia Putra
Kelas: SIB 2F
Absen: 09
Nim: 244107060074
Perograman Mobile Jobsheet Flutter 2

Praktikum 1, Kode Flutter ini membangun antarmuka aplikasi sederhana yang menampilkan kerangka dasar (Scaffold dan AppBar) beserta sebuah komponen tata letak bernama titleSection di bagian utama layarnya (body). Komponen titleSection tersebut dirancang menggunakan widget Row untuk menyusun elemen secara horizontal, di mana bagian kirinya menampilkan teks judul "Wisata Gunung di Batu" beserta subjudul lokasi yang disusun vertikal menggunakan Column, sementara bagian kanannya menampilkan ikon bintang merah beserta angka rating.
![Screenshot layout_flutter](images/Prak1.jpg)

Praktikum 2, Tambahan kode ini berfungsi untuk membangun barisan tombol aksi (telepon, rute, dan bagikan) di bawah area judul dengan cara yang efisien. Pertama, dibuat sebuah fungsi bantuan bernama _buildButtonColumn yang bertugas mencetak sebuah tata letak berisi ikon dan teks di bawahnya, sehingga kita tidak perlu menulis ulang desain yang sama berkali-kali. Selanjutnya, fungsi tersebut dipanggil tiga kali di dalam variabel buttonSection menggunakan widget Row dengan pengaturan spaceEvenly agar ketiga tombol tersebut berjejer mendatar dengan jarak yang rapi dan seimbang. Terakhir, variabel buttonSection tersebut disisipkan tepat di bawah titleSection pada kerangka utama (body) aplikasi agar langsung muncul di layar.
![Screenshot layout_flutter](images/Prak1.jpg)

Praktikum 3, Tambahan kode ini berfungsi untuk membuat area paragraf deskripsi (textSection) menggunakan widget Container yang diberi jarak tepi (padding) sebesar 32 piksel agar teks terlihat rapi dan tidak menempel di pinggir layar. Di dalam kontainer tersebut, disisipkan widget Text yang berisi informasi tempat wisata beserta nama dan NIM-mu, dan dilengkapi dengan properti softWrap: true yang memastikan teks akan otomatis turun ke baris baru jika panjangnya sudah mencapai batas lebar layar. Terakhir, variabel textSection tersebut ditambahkan ke dalam susunan Column pada bagian body tepat di bawah buttonSection, sehingga paragrafnya akan langsung muncul di bawah barisan tombol pada aplikasi.
![Screenshot layout_flutter](images/Prak1.jpg)

Praktikum 4, Pada penambahan kode ini, sebuah widget Image.asset disisipkan di urutan paling atas untuk menampilkan gambar secara lokal (dari folder images/lake.jpeg) dengan ukuran tinggi dan lebar yang telah disesuaikan agar menutupi area perseginya secara penuh dan proporsional menggunakan BoxFit.cover. Selain itu, struktur utama di dalam body yang sebelumnya menggunakan widget Column kini diganti menjadi ListView yang secara otomatis mengaktifkan fitur gulir (scroll), sehingga seluruh konten halaman, mulai dari gambar pemandangan di atas hingga teks identitas di bawah, bisa digeser dan tetap terlihat utuh tanpa menyebabkan layar error atau terpotong pada perangkat dengan layar kecil.
![Screenshot layout_flutter](images/Prak1.jpg)