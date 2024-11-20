- [Tugas 7](#Tugas-7)
- [Tugas 8](#Tugas-8)
- [Tugas 9](#Tugas-9)

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

# Tugas 9
## Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Kita perlu membuat model untuk pengambilan atau pengiriman data JSON karena model tersebut berfungsi sebagai representasi struktur data yang diterima atau dikirim antara aplikasi Flutter dan backend Django. Dengan adanya model, kita dapat dengan mudah memetakan data JSON ke dalam objek Dart yang terstruktur, sehingga memudahkan proses manipulasi dan penggunaan data dalam aplikasi.

Jika kita tidak membuat model terlebih dahulu, kita mungkin akan menghadapi kesulitan dalam memproses data JSON secara langsung, yang bisa menyebabkan error atau code yang kurang efisien. Tanpa model, pengelolaan data menjadi kurang terstruktur dan rentan terhadap kesalahan, terutama saat aplikasi berkembang dan data menjadi lebih kompleks.

## Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http yang pada tugas ini berfungsi sebagai alat untuk melakukan komunikasi jaringan antara aplikasi Flutter dan backend Django melalui protokol HTTP. Dengan menggunakan library ini, aplikasi Flutter dapat mengirimkan permintaan HTTP seperti GET, POST, PUT, dan DELETE ke server Django.

Dalam konteks tugas ini, http digunakan untuk:
- Mengambil data: Melakukan permintaan GET ke endpoint JSON di Django untuk mendapatkan daftar item atau detail item tertentu dalam format JSON.
- Mengirim data: Melakukan permintaan POST atau PUT untuk registrasi akun, login, atau mengirim data lain ke server.
- Autentikasi: Mengelola header dan token yang diperlukan untuk autentikasi pengguna saat berkomunikasi dengan server.

## Jelaskan fungsi dari `CookieRequest` dan jelaskan mengapa instance `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` adalah kelas dalam Flutter yang digunakan untuk melakukan permintaan HTTP dengan manajemen cookie, berfungsi menyimpan dan mengirim cookie (seperti session ID) yang diterima dari server pada setiap permintaan berikutnya, sehingga memungkinkan aplikasi mempertahankan sesi autentikasi dan status login pengguna saat berinteraksi dengan backend Django; membagikan instance `CookieRequest` ke semua komponen aplikasi penting untuk menjaga konsistensi manajemen sesi dan autentikasi di seluruh aplikasi, mencegah masalah seperti logout tak terduga atau kesalahan autentikasi saat pengguna berpindah antar fitur, dan memastikan pengalaman pengguna yang mulus serta integrasi yang efektif dengan backend.

## Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
1. Input Data di Flutter: Pengguna memasukkan data melalui antarmuka aplikasi Flutter, seperti mengisi formulir atau menekan tombol.

2. Mengirim Permintaan ke Backend:
   - Aplikasi Flutter menggunakan library http atau CookieRequest untuk membuat permintaan HTTP ke server Django.
   - Data input pengguna dikirimkan ke server melalui metode HTTP yang sesuai (misalnya, POST untuk mengirim data baru).

3. Pemrosesan di Django:
   - Penerimaan Permintaan: Server Django menerima permintaan dan data melalui endpoint yang telah ditentukan.
   - Validasi dan Pengolahan Data: Data yang diterima divalidasi dan diproses sesuai dengan logika bisnis aplikasi.
   - Penyimpanan Data: Jika diperlukan, data disimpan ke dalam database menggunakan model Django.

4. Mengirim Respons ke Flutter:
   - Menyiapkan Data: Django menyiapkan respons dalam format JSON yang berisi data yang dibutuhkan aplikasi Flutter.
   - Mengirim Respons: Respons JSON dikirim kembali ke aplikasi Flutter sebagai tanggapan atas permintaan sebelumnya.

5. Penerimaan dan Pengolahan Data di Flutter:
   - Menerima Respons: Aplikasi Flutter menerima respons JSON dari server.
   - Parsing JSON: Data JSON diparse menjadi objek Dart menggunakan model yang telah dibuat, sehingga data dapat diolah dalam aplikasi.

6. Menampilkan Data pada UI:
   - Memperbarui State: State aplikasi diperbarui dengan data baru yang telah diparse.
   - Membangun Widget: UI diperbarui dengan menampilkan data tersebut melalui widget-widget Flutter, sehingga pengguna dapat melihat hasilnya.

7. Feedback ke Pengguna: Aplikasi mungkin memberikan notifikasi atau pesan kepada pengguna sebagai konfirmasi bahwa data telah berhasil diproses dan ditampilkan.

## Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Mekanisme Autentikasi dari Login, Registrasi, hingga Logout:

1. **_Input Data di Flutter_**. Pengguna memasukkan username dan password pada form `login` atau `registration` di aplikasi Flutter.

2. **_Mengirim Permintaan ke Django_**. Aplikasi Flutter menggunakan instance `CookieRequest` untuk mengirim permintaan HTTP POST ke server Django. Untuk `Registration`, data dikirim ke endpoint /auth/register/ dengan payload username, password1, dan password2. Sedangkan untuk `Login`, data dikirim ke endpoint /auth/login/ dengan payload username dan password. `CookieRequest` ini juga memastikan cookie sesi dikirim pada setiap permintaan ke Django sehingga memungkinkan Django mengenali sesi pengguna dan memberikan akses sesuai haknya.

3. **_Pemrosesan Permintaan di Django_**.
   - **_Registrasi_**. View `register` menerima data, memvalidasi kesesuaian password, dan memastikan username unik. Jika valid, akun baru dibuat menggunakan `User.objects.create_user()` dan disimpan ke database. Lalu, Django mengirim respons JSON dengan status sukses atau pesan error.

   - **_Login_**. View `login` menggunakan `authenticate()` untuk memverifikasi kredensial. Jika berhasil, `auth_login()` dipanggil untuk membuat sesi pengguna. Lalu, Django mengirim respons JSON dengan status login dan informasi pengguna.

4. **_Penerimaan Respons di Flutter_**. Aplikasi Flutter menerima respons JSON dari Django. Jika sukses, `CookieRequest` menyimpan cookie sesi untuk autentikasi selanjutnya. Jika gagal, aplikasi menampilkan pesan error kepada pengguna.

5. **_Pembaruan Antarmuka di Flutter_**. Setelah login atau registrasi berhasil, aplikasi menavigasi pengguna ke halaman menu utama. State aplikasi diperbarui untuk mencerminkan bahwa pengguna telah terautentikasi.

6. **_Logout_**. Saat pengguna memilih logout, aplikasi Flutter menghapus cookie sesi dengan memanggil metode logout pada `CookieRequest`. Permintaan logout dikirim ke server Django jika endpoint tersedia. State aplikasi direset, dan pengguna diarahkan kembali ke halaman login.

7. **_Pengaturan Keamanan di Django_**. Middleware `corsheaders.middleware.CorsMiddleware` ditambahkan untuk mengatur CORS. Lalu, pengaturan `CSRF` dan sesi di `settings.py` disesuaikan untuk memungkinkan komunikasi antara Flutter dan Django. `CORS_ALLOW_CREDENTIALS` dan `CORS_ALLOW_ALL_ORIGINS` diatur untuk mendukung autentikasi lintas domain.


## Step-by-Step Implementation Checklist Tugas 9
0. Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
   - Juga termasuk untuk telah memastikan mengimplementasikan beberapa code tambahan yang dibutuhkan dalam proses integrasi Django ke Flutter.
   - Seperti mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter dengan membuat method yang sesuai pada app authentication pada project Django, lalu membuat page login dan register yang menyesuaikan

1. Mengimplementasikan Fitur Registrasi Akun pada Flutter:
   - Membuat file `register.dart` di folder screens pada proyek Flutter.
   - Menggunakan `TextEditingController` untuk mengambil input username, password, dan confirm password.
   - Mengirim data registrasi ke endpoint Django `/auth/register/` menggunakan `CookieRequest`.
      ```dart
      final response = await request.postJson(
         "http://127.0.0.1:8000/auth/register/",
         jsonEncode({
            "username": _usernameController.text,
            "password1": _passwordController.text,
            "password2": _confirmPasswordController.text,
         }),
      );
      ```
   - *APP URL masih dalam bentuk lokal karena PWS masih belum bisa diintegrasikan dengan Flutter

2. Membuat Halaman Login pada Flutter:
   - Membuat file `login.dart` di folder screens.
   - Menggunakan `TextEditingController` untuk mengambil input username dan password.
   - Mengirim data login ke endpoint Django `/auth/login/` menggunakan Cookie`Request.
      ```dart
      final response = await request.login(
         "http://127.0.0.1:8000/auth/login/",
         {
            'username': _usernameController.text,
            'password': _passwordController.text,
         },
      );
      ```
   - *APP URL masih dalam bentuk lokal karena PWS masih belum bisa diintegrasikan dengan Flutter

3. Mengintegrasikan Sistem Autentikasi Django dengan Flutter:
   - Menambahkan package `provider` dan `pbp_django_auth` ke pubspec.yaml.
   - Memodifikasi `main.dart` untuk menyediakan `CookieRequest` ke seluruh widget menggunakan `Provider`.
      ```dart
      class MyApp extends StatelessWidget {
         @override
         Widget build(BuildContext context) {
            return Provider(
               create: (_) => CookieRequest(),
               child: MaterialApp(
               home: const LoginPage(),
               ),
            );
         }
      }
      ```

4. Membuat Model Kustom Sesuai dengan Proyek Django:
   - Mengambil contoh data JSON dari endpoint Django proyek saya sebelumnya.
   - Menggunakan Quicktype untuk menghasilkan model Dart berdasarkan data JSON tersebut.
   - Membuat file model `product_entry.dart`, dan paste kode hasil Quicktype.
   - Dalam proyek ini, saya memiliki 4 attribute / data yaitu `name`, `price`, `category`, `description`.

5. Membuat Halaman Daftar Semua Item dari Endpoint JSON:
   - Membuat file `list_productentry.dart` di folder screens.
   - Menggunakan `FutureBuilder` dan `ListView.builder` untuk menampilkan daftar item.
   - Mengambil data dari endpoint Django menggunakan metode GET pada `CookieRequest`.
      ```dart
      Future<List<Item>> fetchItems(CookieRequest request) async {
         final response = await request.get('http://127.0.0.1:8000/items/json/');
         List<Item> items = [];
         for (var d in response) {
            items.add(Item.fromJson(d));
         }
         return items;
      }
      ```
   - Lalu menampilkan `name`, `price`, `category`, dan `description`. dari setiap Item, menampilkan keempat atribut tersebut pada setiap item.


6. Membuat Halaman Detail untuk Setiap Item:
   - Membuat file `product_detail.dart`.
   - Mengakses Halaman Detail dengan Menekan Item pada Daftar dan menambahkan onTap pada setiap ListTile di daftar item untuk navigasi ke halaman detail.
   - Menampilkan seluruh atribut item yang dipilih.
      ```dart
      class ProductDetailPage extends StatelessWidget {
         final ProductEntry item;

         const ProductDetailPage({super.key, required this.item});

         @override
         Widget build(BuildContext context) {
            return Scaffold(
               appBar: AppBar(
               title: const Text("Product Details"),
               ),
               body: Padding(
               padding: const EdgeInsets.all(16.0),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        Text(
                        "Name: ${item.fields.name}",
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text("Price: ${item.fields.price}"),
                        const SizedBox(height: 8),
                        Text("Category: ${item.fields.category}"),
                        const SizedBox(height: 8),
                        Text("Description: ${item.fields.description}"),
                        const Spacer(),
                        ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Back to Product Entry List"),
                        ),
                     ],
                  ),
               ),
            );
         }
      }
      ```
   - Menampilkan Seluruh Atribut pada Model Item di Halaman Detail (`ItemDetailPage`) dengan menampilkan semua properti item yang tersedia. Implementasi saya berada pada code dibawah dengan menggunakan `Column` pada `ListView` di halaman `list_productentry.dart`
   - Menambahkan Tombol untuk Kembali ke Halaman Daftar Item dengan menggunakan `Navigator.pop()` seperti dibawah, yang akan mengembalikan screen yang sedang dilihat sekarang ke screen sebelumnya
   ```dart
   ElevatedButton(
      onPressed: () => Navigator.pop(context),
      child: Text('Back'),
   ),
   ```

7. Melakukan Filter dengan Menampilkan Item Milik Pengguna yang Login:
   - Di Django:
   Memodifikasi view pada Django untuk mengembalikan item yang hanya dimiliki oleh pengguna yang sedang login.
   ```python
   def user_items_json(request):
      items = Item.objects.filter(user=request.user)
      return HttpResponse(serializers.serialize("json", items), content_type="application/json")
   ```
   Pastikan endpoint hanya dapat diakses jika pengguna sudah terautentikasi.

   - Di Flutter:
   Saat mengambil data, menggunakan sesi pengguna yang login (melalui CookieRequest) dan menggunakan endpoint yang sudah difilter.
   ```dart
   final response = await request.get('http://[APP_URL_KAMU]/user/items/json/');
   ```