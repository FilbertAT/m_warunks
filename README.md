- [Tugas 7](#Tugas-7)

# Tugas 7
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
**Stateless Widget** adalah widget yang tidak memiliki keadaan atau state yang dapat berubah selama aplikasi berjalan. Ini berarti widget hanya memiliki satu tampilan tetap yang tidak bergantung pada interaksi pengguna atau data yang mungkin berubah seiring waktu. Karena tidak memiliki state, stateless widget hanya dirender satu kali, yaitu saat pertama kali dibuat oleh aplikasi, dan tidak perlu diperbarui kembali kecuali strukturnya berubah. Contoh penggunaan stateless widget adalah elemen UI statis seperti teks atau ikon yang hanya menampilkan informasi tetap, seperti `Text`, `Icon`, atau `Image`.

**Stateful Widget** adalah widget yang memiliki state, sehingga bisa berubah saat aplikasi berjalan. Berbeda dengan stateless widget, stateful widget dapat merespons interaksi pengguna, perubahan data, atau kejadian lain yang menyebabkan tampilannya diperbarui. Misalnya, ketika pengguna berinteraksi dengan tombol, memasukkan data dalam formulir, atau ketika data eksternal berubah, tampilan widget ini bisa diperbarui untuk mencerminkan perubahan tersebut. Contoh umum dari stateful widget termasuk elemen UI interaktif seperti formulir input, daftar yang bisa diperbarui, atau tombol dengan animasi saat ditekan, seperti `Checkbox`, `TextField`, dan `Slider`.

Perbedaan Utama:
- Stateless: Tidak memiliki state internal dan statis.
- Stateful: Memiliki state internal yang dapat berubah dan dinamis.
    
## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- **MaterialApp**: Menyediakan struktur dasar aplikasi Flutter dan mengatur tema serta halaman awal aplikasi.

- **Scaffold**: Struktur dasar untuk UI halaman yang mencakup AppBar, body, dan elemen-elemen tata letak lainnya.

- **AppBar**: Menampilkan header/bar di bagian atas halaman dengan judul dan gaya warna yang diatur sesuai tema.

- **Padding**: Memberikan jarak atau ruang di sekitar widget tertentu untuk tata letak yang lebih rapi.

- **Column**: Menyusun widget secara vertikal dalam sebuah urutan.

- **Row**: Menyusun widget secara horizontal dalam sebuah urutan.

- **SizedBox**: Memberikan jarak kosong atau ruang vertikal tertentu antara widget.

- **Text**: Menampilkan teks statis di layar dengan opsi gaya.

- **GridView.count**: Membuat grid dengan jumlah kolom yang ditentukan, cocok untuk menampilkan item dalam tata letak grid.

- **Container**: Mengelola tata letak seperti ukuran, warna, padding, dan margin untuk widget di dalamnya.

- **Card**: Kotak dengan bayangan, biasanya digunakan untuk menampilkan informasi atau konten dengan desain yang lebih terfokus.
  - **InfoCard**: Menampilkan informasi pengguna (NPM, Nama, Kelas) dalam `Card` dengan dua Text. Menggunakan `MediaQuery` agar responsif terhadap lebar layar, dan ditata secara horizontal dalam `Row`.
  - **ItemCard**: Mewakili opsi menu (misalnya, "Lihat Daftar Produk") dengan ikon, warna, dan aksi ketika diketuk. Menggunakan `Material` dan `InkWell` untuk tampilan dan interaksi, menampilkan pesan `SnackBar` saat ditekan, serta disusun dalam tata letak grid.

- **MediaQuery**: Mendapatkan ukuran dan informasi tentang layar perangkat, membantu dalam tata letak responsif.

- **Material**: Menyediakan efek visual dari Material Design seperti warna latar belakang dan efek interaktif.

- **InkWell**: Menambahkan ripple effect (efek sentuh) saat user menekan / interaksi dengan ItemCard

- **Icon**: Menampilkan ikon dari library Material Icons.

- **SnackBar**: Menampilkan pesan singkat di bagian bawah layar untuk memberi notifikasi atau informasi sementara. Pada aplikasi saya, SnackBar akan ter-trigger saat ItemCard ditekan.

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` pada Flutter digunakan untuk memberi tahu framework bahwa state atau keadaan pada Stateful widget telah berubah dan perlu diperbarui (rebuild). Ketika `setState()` dipanggil, Flutter akan merender ulang widget terkait sehingga perubahan data dapat terlihat pada UI.

Hanya variabel-variabel yang berada dalam state dari Stateful widget (variabel yang disimpan di dalam kelas State) yang akan terpengaruh dengan setState(). Ini biasanya mencakup:
- Variabel dinamis yang nilainya dapat berubah karena interaksi pengguna, seperti variabel penghitung, status tombol, atau teks input.
- Data yang diambil atau diperbarui dari sumber eksternal, seperti API atau database, dan perlu ditampilkan di UI.
- Variabel kontrol untuk animasi, efek visual, atau kondisi yang mengubah tampilan komponen (misalnya, apakah sebuah elemen terlihat atau tersembunyi).

Pada aplikasi saya di week ini, belum ada variabel yang terdampak oleh `setState()` karena `setState()` hanya digunakan pada **Stateful Widgets**, sedangkan semua widget yang ada dalam `menu.dart` saat ini adalah **Stateless Widgets**.

## Jelaskan perbedaan antara const dengan final.
1. `const` (Konstanta pada waktu kompilasi):
   - Nilai dari variabel `const` harus ditentukan pada waktu kompilasi, sehingga benar-benar tetap dan tidak bisa diubah sepanjang program.
   - `const` cocok digunakan untuk nilai-nilai yang sudah diketahui dan tidak akan berubah selamanya (misalnya, nilai numerik tetap, atau objek yang tidak akan berubah).
   - Contoh: `const int age = 25;` atau `const Color primaryColor = Color(0xFF000000);`

2. `final` (Konstanta pada waktu runtime):
   - Nilai dari variabel `final` hanya dapat ditetapkan sekali, tetapi nilainya dapat dihasilkan saat runtime.
   - `final` lebih fleksibel dibanding `const` karena memungkinkan variabel untuk ditetapkan berdasarkan hasil operasi atau fungsi yang dijalankan saat aplikasi berjalan, asalkan hanya sekali.
   - Contoh: `final DateTime now = DateTime.now();`

## Step-by-Step Implementation Checklist Tugas 7
1. Buat Proyek Flutter Baru dengan tema E-Commerce. Project saya, saya namakan `m_warunks` sebagai aplikasi mobile untuk aplikasi `warunks` saya kemarin.
    ```bash
    flutter create m_warunks
    cd m_warunks
    flutter run
    ```
    Setelah project terbuat, saya pun mencoba untuk menjalankan aplikasi warunks mobile ini dengan perintah `flutter run` untuk mengetes apakah aplikasi telah berhasil terbuat.

2. Buat Struktur Direktori dan File Awal yaitu file baru bernama `menu.dart` untuk memisahkan halaman utama dari `main.dart`.

3. Buat kelas `MyApp` dengan `MaterialApp` pada `main.dart` untuk mengatur tema warna aplikasi. Lalu, tambahkan `home: MyHomePage()` sebagai halaman utama aplikasi dan impor file `menu.dart` di bagian atas `main.dart` dengan menambahkan `import 'package:mental_health_tracker/menu.dart';`. 

4. Potong seluruh kode terkait `MyHomePage` dari `main.dart` dan pindahkan ke `menu.dart`, kemudian ubah `MyHomePage` menjadi **stateless widget** dengan menggunakan **StatelessWidget**.

5. Di dalam `menu.dart`, buat widget `InfoCard` untuk menampilkan informasi pengguna seperti `NPM`, `Nama`, dan `Kelas`. Selain itu, buat widget `ItemCard` untuk menampilkan tombol menu seperti `Lihat Produk`, `Tambah Produk`, dan `Logout`. Setelah itu, buat daftar item menu (items) di dalam `MyHomePage` dan tampilkan setiap `ItemCard` dalam format grid menggunakan `GridView.count`.

6. Untuk menetapkan warna pada Item yang diminta oleh Tugas 7, saat membuat instance `ItemHomepage`, tentukan warna latar belakang untuk setiap item sebagai parameter ketiga di dalam konstruktor `ItemHomepage` (contoh: `Color.fromARGB(255, 217, 22, 86)` dimana ini adalah warna yang saya dapatkan dari sebuah color palette di <a>colorhunt.co</a>). Lalu, pada widget `ItemCard`, gunakan `item.color` sebagai properti color di dalam widget `Material` untuk menerapkan warna latar belakang yang telah ditentukan pada setiap item.

7. Untuk menambahkan proyek `warunks` ini ke GitHub, inisialisasi repositori Git di direktori proyek dengan git init, lalu git add dan commit. Buat repositori baru di GitHub, lalu tambahkan URL repositorinya, dan lakukan git push.