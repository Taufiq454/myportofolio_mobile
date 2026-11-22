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

### Tugas 8

1. Perbedaan Navigator.push(), pop(), dan pushReplacement()
    - push()
      Method push() menambahkan suatu route ke dalam stack route yang dikelola oleh Navigator. Method ini menyebabkan route yang ditambahkan berada pada paling atas stack, sehingga route yang baru saja ditambahkan tersebut akan muncul dan ditampilkan kepada pengguna.
    - pop()
      Method pop() menghapus route yang sedang ditampilkan kepada pengguna (atau dalam kata lain, route yang berada pada paling atas stack) dari stack route yang dikelola oleh Navigator. Method ini menyebabkan aplikasi untuk berpindah dari route yang sedang ditampilkan kepada pengguna ke route yang berada di bawahnya pada stack yang dikelola Navigator.
    - pushReplacement()
      Method pushReplacement() menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route. Method ini menyebabkan aplikasi untuk berpindah dari route yang sedang ditampilkan kepada pengguna ke suatu route yang diberikan. Pada stack route yang dikelola Navigator, route lama pada atas stack akan digantikan secara langsung oleh route baru yang diberikan tanpa mengubah kondisi elemen stack yang berada di bawahnya.

   Untuk membuka formulir dari kartu aksi di halaman utama, saya memakai Navigator.push(). Opsi Home di drawer memakai Navigator.pushReplacement() menuju MyHomePage, sehingga halaman formulir diganti dengan halaman utama dan stack tidak menumpuk setiap kali pengguna berpindah lewat drawer.

2. Scaffold, AppBar, dan Drawer membantu menjaga struktur halaman agar tetap konsisten. Scaffold menjadi kerangka utama halaman, AppBar menampilkan bagian atas seperti judul dan navigasi, sedangkan Drawer menyediakan menu untuk berpindah halaman. Contoh penggunaan warna tema: halaman Add Education dan Add Experience memakai AppBar dengan backgroundColor: Colors.indigo dan teks putih, selaras dengan warna drawerheader di leftdrawer, sehingga tampilan antarhalaman konsisten.

3. Formulir disusun vertikal , satu input per baris, karena cara itu paling mudah dibaca dan diisi di layar ponsel. Setiap input dibungkus padding supaya ada jarak antarkolom dan dari tepi layar, sehingga tampilan tidak terlalu rapat. Seluruh isi formulir dibungkus SingleChildScrollView agar halaman bisa digulir ketika ruang layar terbatas, misalnya di layar kecil. Tanpa penggulir, sebagian input atau tombol Save bisa terpotong dan tidak terjangkau(hilang).

4. GlobalKey<FormState> digunakan untuk mengakses dan mengelola kondisi formulir. validator berfungsi memeriksa apakah nilai yang dimasukkan pengguna sudah sesuai dengan ketentuan, sedangkan validate() digunakan untuk menjalankan seluruh validasi ketika tombol simpan ditekan. Contohnya, misal judul experience tidak boleh lebih dari 50 karakter, jika pengguna memasukkan teks lebih dari 50 maka akan ditolak karena tidak valid, atau jika memasukkan huruf di kolom tanggal juga akan ditolak karena tidak sesuai. Memilih jenis input atau papan ketik saja belum cukup karena pengguna masih bisa memasukkan data yang salah atau tidak sesuai ketentuan. Oleh karena itu, validasi tetap diperlukan untuk memastikan data yang disimpan benar.


### AI Disclosure Tugas 8
Menanyakan AI bagaimana menggunakan showDatePicker()
