# myportofolio_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



### Tugas 7

1. Widget tree adalah susunan widget berbentuk pohon, dari root sampai widget paling kecil. Widget parent membungkus dan mengatur widget child, misalnya Column sebagai parent dari beberapa Text. Parent menentukan tata letak child, dan child mewarisi konteks dari parent.
2.  Scaffold: kerangka dasar halaman.
    AppBar: bar judul di atas halaman.
    Text: menampilkan teks.
    Padding: memberi jarak di sekeliling widget.
    Column: menyusun widget secara vertikal.
    Row: menyusun widget secara horizontal.
    Center: menempatkan child di tengah.
    SizedBox: memberi jarak kosong.
    GridView.count: menampilkan widget dalam kisi dengan jumlah kolom tetap.
    Card: kartu dengan bayangan.
    Container: kotak untuk mengatur ukuran, padding, dan dekorasi.
    Material: memberi warna latar dan bentuk pada kartu.
    InkWell: membuat area bisa ditekan dengan efek ripple.
    Icon: menampilkan ikon.
    SnackBar: pesan singkat di bawah layar saat tombol ditekan.
    ScaffoldMessenger: mengatur penampilan SnackBar.
    InfoCard dan ItemCard: widget buatan sendiri untuk kartu informasi dan kartu tombol menu.
    MyHomePage: widget halaman utama.
3. MaterialApp menyediakan konfigurasi dasar aplikasi: tema, navigasi, dan halaman awal dengan gaya material design. MaterialApp dipakai sebagai root karena semua widget di bawahnya butuh akses ke tema, navigasi, dan Scaffold/SnackBar, yang semuanya disediakan olehnya.
4. StatelessWidget tidak punya state yang berubah, tampilannya tetap selama datanya sama. StatefulWidget punya state yang bisa berubah dan memicu tampilan diperbarui lewat setState(). Stateless dipakai untuk tampilan statis, seperti halaman profil atau kartu info. Sedangkan Stateful dipakai jika tampilan berubah akibat interaksi atau data, seperti counter, form input, atau checkbox.
5. BuildContext adalah penanda posisi sebuah widget di dalam widget tree. Pentingnya lewat context, widget bisa mengakses data dari induknya, seperti tema, dan ukuran layar. Di metode build, contohnya Theme.of(context), dan MediaQuery.of(context).
6. Hot reload: memasukkan perubahan kode ke aplikasi yang sedang berjalan dengan cepat, dan state tetap dipertahankan.
Hot restart: menjalankan ulang aplikasi dari awal, sehingga state kembali ke kondisi awal. 
Hot reload tidak cukup saat mengubah main(), variabel global/static, atau nilai awal state (initState). Harus menggunakan hot restart untuk itu.
Full restart juga diperlukan saat mengubah pubspec.yaml (dependency/aset), kode native, atau permission, karena perubahan itu tidak bisa dimuat ke aplikasi yang sedang berjalan.

### AI Disclosure Tugas 7
Tidak menggunakan AI

