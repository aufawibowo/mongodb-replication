# Sharding MongoDB
 
 Muhammad Aufa Wibowo 05111640000184

# Deskripsi Singkat Tentang MongoDB Sharding
Sharding adalah metode untuk mendistribusikan data di beberapa mesin. MongoDB menggunakan sharding untuk mendukung penyebaran dengan set data yang sangat besar dan operasi throughput yang tinggi.

Sistem basis data dengan kumpulan data besar atau aplikasi throughput tinggi dapat menantang kapasitas satu server. Misalnya, tingkat kueri yang tinggi dapat menghabiskan kapasitas CPU server. Bekerja mengatur ukuran yang lebih besar dari RAM sistem menekankan kapasitas I / O dari drive disk.

Ada dua metode untuk mengatasi pertumbuhan sistem: penskalaan vertikal dan horizontal.

Penskalaan Vertikal melibatkan peningkatan kapasitas server tunggal, seperti menggunakan CPU yang lebih kuat, menambah lebih banyak RAM, atau menambah jumlah ruang penyimpanan. Keterbatasan dalam teknologi yang tersedia dapat membatasi satu mesin dari cukup kuat untuk beban kerja yang diberikan. Selain itu, penyedia berbasis Cloud memiliki langit-langit yang keras berdasarkan konfigurasi perangkat keras yang tersedia. Akibatnya, ada maksimum praktis untuk penskalaan vertikal.

Penskalaan Horizontal melibatkan membagi dataset sistem dan memuat lebih dari beberapa server, menambahkan server tambahan untuk meningkatkan kapasitas sesuai kebutuhan. Sementara kecepatan atau kapasitas keseluruhan dari satu mesin mungkin tidak tinggi, masing-masing mesin menangani subset dari keseluruhan beban kerja, berpotensi memberikan efisiensi yang lebih baik daripada server berkecepatan tinggi berkecepatan tinggi tunggal. Memperluas kapasitas penyebaran hanya membutuhkan penambahan server tambahan sesuai kebutuhan, yang dapat menjadi biaya keseluruhan yang lebih rendah daripada perangkat keras kelas atas untuk satu mesin. Imbalannya adalah meningkatnya kompleksitas dalam infrastruktur dan pemeliharaan untuk penyebaran.

MongoDB mendukung penskalaan horizontal melalui sharding.

# Implementasi Cluster MongoDB
- Menggunakan versi MongoDB 4.2
- Menggunakan virtualisasi Vagrant
- Terdiri dari:
    - 2 config server
    - 3 shard server
    - 1 query router

[!gambar](img/main.jpg)

## Konfigurasi
1. Config Server
   - OS: `bento/ubuntu-18.04`
   - RAM: 1024 MB
   - IP:
     -  `192.168.212.2`
     -  `192.168.212.3`
2. Shard Server
   - OS: `bento/ubuntu-18.04`
   - RAM: 1024 MB
   - IP:
     -  `192.168.212.4`
     -  `192.168.212.5`
     -  `192.168.212.6`
3. Query Router
   - OS: `bento/ubuntu-18.04`
   - RAM: 1024 MB
   - IP:
     -  `192.168.212.7`

# Dataset
- https://www.kaggle.com/datasnaek/youtube-new

# Implementasi Aplikasi CRUD


