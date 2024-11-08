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

# Tugas 8
## Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Penggunaan `const` di Flutter memiliki kegunaan utama untuk mengoptimalkan performa aplikasi dengan membuat objek yang bersifat tetap atau immutable. Dengan mendeklarasikan widget atau objek sebagai `const`, Flutter dapat menghemat memori dan waktu pemrosesan karena objek tersebut hanya akan dibuat sekali dan dapat digunakan kembali tanpa perlu dire-render setiap kali UI diperbarui.

`const` sebaiknya digunakan pada widget atau objek yang bersifat statis dan tidak akan berubah selama runtime, seperti elemen-elemen UI yang hanya ditampilkan sebagai `Text`, `Icon`, atau `Container` yang tidak mengalami perubahan nilai. Ini mencakup elemen-elemen yang tidak bergantung pada input pengguna atau perubahan data yang bersifat dinamis, sehingga dengan mendeklarasikannya sebagai `const`, Flutter dapat lebih mengoptimalkan performa aplikasi dan menghemat memori.

Sebaliknya, `const` sebaiknya tidak digunakan pada widget atau objek yang bergantung pada perubahan state (variabel stateful) atau input dinamis, seperti elemen yang akan dimutasi atau ditampilkan berdasarkan interaksi pengguna dan data yang dapat berubah. Pada situasi ini, mendeklarasikan objek sebagai `const` dapat menyebabkan error atau hasil yang tidak diinginkan karena `const` mengunci nilai agar tetap konstan, sehingga tidak cocok untuk elemen yang perlu di-update atau berubah selama runtime aplikasi.

## Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Dalam Flutter, `Column` dan `Row` adalah widget layout yang digunakan untuk menata widget anak-anaknya dalam arah tertentu. `Column` menata widget secara vertikal (dari atas ke bawah), sedangkan `Row` menata widget secara horizontal (dari kiri ke kanan). Kedua widget ini sangat berguna untuk membuat layout yang responsif dan fleksibel, serta dapat menampung beberapa widget anak yang diatur berdasarkan properti seperti `mainAxisAlignment` dan `crossAxisAlignment` untuk mengontrol tata letaknya.

`Column` cocok digunakan saat membutuhkan layout vertikal, seperti menampilkan daftar item yang disusun dari atas ke bawah. Sebaliknya, `Row` digunakan saat tata letak yang diinginkan adalah horizontal, misalnya untuk menempatkan ikon-ikon di satu baris. Selain itu, `Column` dan `Row` sering dipadukan dengan widget seperti `Expanded` atau `Flexible` untuk memberikan fleksibilitas dalam alokasi ruang pada masing-masing widget anaknya. Berikut contoh implementasi keduanya:
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)

Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.star),
    Icon(Icons.favorite),
    Icon(Icons.person),
  ],
)
```
Pada contoh ini, `Column` akan menampilkan `Text` widget secara vertikal dari atas ke bawah. `mainAxisAlignment` diatur ke `center` agar widget berada di tengah vertikal, sedangkan `crossAxisAlignment` ke `start` untuk memposisikannya di kiri horizontal. 

Sedangkan, `Row` menampilkan `Icon` widget secara horizontal dari kiri ke kanan. `mainAxisAlignment` diatur ke `spaceAround`, sehingga ikon tersebar merata, sedangkan `crossAxisAlignment` ke `center` untuk menempatkan ikon-ikon di tengah secara vertikal.

## Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Elemen input yang saya gunakan pada halaman form yang saya buat pada tugas kali ini adalah:
1. `Nama Produk` berupa `TextFormField` dengan validasi tidak boleh kosong, minimal 3 karakter, maksimal 40 karakter.
2. `Harga` berupa `TextFormField` dengan validasi tidak boleh kosong, harus berupa angka, maksimal 10 digit.(Mengapa tidak langsung integer, justifikasinya adalah agar bisa dimaksimalkan jumlah digitnya)
3. `Kategori` berupa `TextFormField` dengan validasi tidak boleh kosong, minimal 2 karakter, maksimal 40 karakter.
4. `Deskripsi` berupa `TextFormField` dengan validasi tidak boleh kosong, maksimal 1000 karakter.

Beberapa elemen input python lain yang tidak saya gunakan pada tugas ini adalah:
1. `DropdownButton` yang bisa memilih opsi dari daftar dropdown.
2. `Checkbox` yang bisa memilih satu atau beberapa opsi dari daftar.
3. `RadioButton` yang bisa memilih satu opsi dari beberapa pilihan.
4. `Switch` yang bisa mengaktifkan atau menonaktifkan opsi.
5. `Slider` yang bisa mengatur nilai dalam rentang tertentu dengan gerakan geser.

##  Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
**Iya dong**, saya mengimplementasikan tema pada aplikasi yang saya buat. pada `main.dart` saya memiliki block of code berikut:
```dart
  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
    ).copyWith(secondary: Colors.deepPurple[400]),
  ),
```
yang dimana `primarySwatch` akan menentukan warna utama / tema (_theme_) aplikasi yang digunakan di berbagai komponen seperti AppBar, FloatingActionButton, dan lainnya. Sedangkan secondary colornya akan menentukan warna sekunder aplikasi yang digunakan untuk elemen-elemen tambahan seperti tombol, ikon, dan aksen lainnya. Dimana keduanya berfunsi sebagai tema yang telah didefinisikan ke seluruh aplikasi, memastikan bahwa semua widget yang mendukung tema akan mengikuti skema warna yang telah ditentukan. Contoh pengunaannya adalah pada `ProductCard` mengambil warna sekunder dengan `color: Theme.of(context).colorScheme.secondary`

## Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Dalam menangani navigasi pada aplikasi Flutter dengan banyak halaman, saya menerapkan sistem routing terpusat menggunakan named routes yang didefinisikan di `MaterialApp` pada `main.dart`. Setiap halaman diberikan nama unik yang memungkinkan navigasi antar halaman dilakukan dengan mudah menggunakan `Navigator.pushNamed` dan `Navigator.pop`. Selain itu, saya memanfaatkan widget seperti `Drawer` untuk menyediakan akses cepat ke berbagai bagian utama aplikasi, memastikan bahwa pengguna dapat berpindah antar halaman tanpa kesulitan. Pendekatan ini tidak hanya menjaga konsistensi navigasi tetapi juga memudahkan pengelolaan dan pemeliharaan kode seiring bertambahnya jumlah halaman dalam aplikasi, sehingga meningkatkan efisiensi pengembangan dan pengalaman pengguna secara keseluruhan.