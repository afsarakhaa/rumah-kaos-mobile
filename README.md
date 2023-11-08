### Nama : Afsar Rakha Farrasandi
### NPM : 2206028636
### Kelas : PBP C

# Rumah Kaos Mobile
![Bagan Request Client](https://github.com/afsarakhaa/rumah-kaos/assets/122893320/1ec0cfb0-becc-4aaa-ab99-c4b060aa8c2d)

## Selamat datang di **Rumah Kaos**!
### Kali ini, Rumah Kaos hadir dengan versi terbaru, yaitu Mobile Version!
### Rasakan sensasi berbelanja dengan lebih mudah di manapun dan kapanpun jadi lebih mudah karena Rumah Kaos Mobile!

<br/>

# Tugas 7: Elemen Dasar Flutter
<br />

<details>
<summary> 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
</summary>

<br/>

Dalam pengembangan aplikasi Flutter, terdapat dua jenis widget utama yang digunakan untuk membangun UI: **StatelessWidget** dan **StatefulWidget**. Kedua widget ini memiliki peran penting dan penggunaan yang berbeda tergantung pada kebutuhan aplikasi kita.

Berikut adalah tabel yang menggambarkan perbedaan utama antara `StatelessWidget` dan `StatefulWidget`:

| Aspek | StatelessWidget | StatefulWidget |
|-------|----------------|---------------|
| **Definisi** | Widget yang tidak memerlukan state. Artinya, tidak ada data yang diharapkan berubah sepanjang waktu widget ditampilkan. | Widget yang memiliki state yang bisa berubah. Ini digunakan untuk widget yang bisa berinteraksi dengan pengguna atau data yang berubah-ubah. |
| **Penggunaan** | Ideal untuk UI yang static dan tidak berubah setelah rendering pertama, seperti teks atau ikon. | Digunakan untuk UI yang dinamis dan interaktif, seperti form, atau informasi yang terus berubah. |
| **State** | Tidak memiliki state sendiri. | Memiliki state sendiri yang dapat berubah dan memicu UI untuk membangun ulang. |
| **Rebuild** | Tidak dibangun ulang ketika data berubah. | Dibangun ulang ketika state-nya berubah menggunakan `setState()`. |
| **Performance** | Lebih efisien jika data tidak berubah. | Memiliki overhead karena perlu mengelola state dan mungkin membangun ulang lebih sering. |
| **Contoh** | `Text`, `Icon`, dan `FlatButton`. | `Checkbox`, `Radio`, `Slider`, dan form input. |
| **Lifecycle** | Memiliki metode `build()` saja. | Memiliki metode `createState()`, dan state memiliki lifecycle seperti `initState()`, `dispose()`, dll. |

## Kesimpulan

Pemilihan antara `StatelessWidget` dan `StatefulWidget` bergantung pada apakah UI component yang dibangun butuh untuk diperbarui selama masa maintain atau pengembangan. Jika jawabannya ya, maka `StatefulWidget` adalah pilihan yang tepat. Jika tidak, `StatelessWidget` lebih disukai karena lebih ringan dan sederhana.
</details>

<br/>

<details>
<summary> 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
</summary>

<br/>

Pada hal ini, hampir semua hal adalah widget, maka dari itu, berikut adalah seluruh widget yang saya gunakan dalam tugas ini beserta penjelasannya

| Widget | Fungsi |
|--------|--------|
| `MaterialApp` | Widget pembungkus yang menyediakan aplikasi dengan data tema, rute, dan lainnya. |
| `Scaffold` | Menyediakan struktur dasar untuk aplikasi desain material, termasuk app bars, body, dan lain-lain. |
| `AppBar` | Menampilkan app bar di bagian atas layar, biasanya berisi judul dan aksi. |
| `SingleChildScrollView` | Memungkinkan konten di dalamnya dapat discroll, berguna untuk konten yang melebihi layar. |
| `Padding` | Menambahkan ruang di sekitar widget anak, berguna untuk memberikan margin. |
| `Column` | Mengatur anak-anaknya dalam tata letak vertikal linier. |
| `Text` | Menampilkan string teks dengan berbagai styling. |
| `GridView.builder` | Membuat grid item yang dibangun secara dinamis, efisien untuk daftar item besar. |
| `SliverGridDelegateWithFixedCrossAxisCount` | Mengontrol tata letak grid, termasuk jumlah kolom dan spacing. |
| `Card` | Widget material design yang menampilkan informasi yang dapat di-tap. |
| `InkWell` | Menangkap tab dan memberikan efek visual ketika disentuh. |
| `Icon` | Menampilkan ikon material. |
| `SizedBox` | Kotak dengan ukuran tertentu, sering digunakan untuk spacing. |
| `TextStyle` | Menentukan gaya teks seperti ukuran font, berat, dan warna. |
| `ScaffoldMessenger` | Menampilkan `SnackBar`, memberikan feedback sementara ke pengguna. |
| `SnackBar` | Menampilkan pesan singkat di bagian bawah layar. |
| `IconData` | Mendefinisikan ikon-ikon material yang tersedia. |
| `Color` | Merepresentasikan warna. |
| `ThemeData` | Menentukan tema warna dan desain yang digunakan di aplikasi. |
| `ColorScheme.fromSeed` | Menciptakan skema warna dari warna seed. |
| `RoundedRectangleBorder` | Memberikan bentuk bulat pada border `Card`. |
| `main` | Fungsi entry point eksekusi aplikasi Flutter. |

</details>

<br/>

<details>
<summary> 3.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
</summary>

<br/>

- ### [x]  Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.

    Pada hal ini saya membuat program Flutter Baru dengan nama "Rumah Kaos Mobile" karena merupakan versi mobile dari App Rumah Kaos.

    #### Persyaratan Sistem
    - Flutter SDK
    - Dart SDK
    - IDE yang mendukung Flutter (misalnya, Android Studio atau Visual Studio Code)

    #### Setup Aplikasi
    1. Instal Flutter SDK dan Dart SDK di sistem Anda.
    2. Setup editor yang Anda pilih (misalnya, Android Studio atau Visual Studio Code) dengan plugin Flutter dan Dart.
    3. Clone repository ini atau buat aplikasi Flutter baru menggunakan perintah `flutter create nama_aplikasi`.

    #### Struktur Kode
    Aplikasi ini terdiri dari dua file Dart utama:
    - `main.dart`: File utama yang menjalankan aplikasi Flutter.
    - `menu.dart`: Berisi widget yang digunakan untuk menampilkan tombol dan fungsi aplikasi.

    #### Cara Menjalankan
    1. Buka terminal.
    2. Navigasi ke direktori aplikasi.
    3. Jalankan `flutter run` untuk menjalankan aplikasi pada simulator atau perangkat.

- ### [x]  Membuat tiga tombol sederhana dengan ikon dan teks (Lihat Item, Tambah Item, Logout)

    ### Langkah 1: Mendefinisikan Model Data

    Saya pertama-tama mendefinisikan model data yang akan mewakili setiap item pada UI. Model ini dinamakan `ShopItem`.

    ```dart
    class ShopItem {
    final String name;
    final IconData icon;
    final Color color;

    ShopItem(this.name, this.icon, this.color);
    }
    ```

    Model `ShopItem` ini memiliki nama, ikon, dan warna yang nantinya digunakan untuk menampilkan tombol.

    ### Langkah 2: Membuat Widget Tombol

    Selanjutnya, saya membuat sebuah Stateless Widget yang disebut `ShopCard`. Widget ini mengambil `ShopItem` sebagai parameter dan menampilkannya sebagai sebuah Card yang bisa ditekan.

    ```dart
    class ShopCard extends StatelessWidget {
    final ShopItem item;

    const ShopCard(this.item, {Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Card(
        color: item.color,
        child: InkWell(
            onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Saya telah menekan tombol ${item.name}!"))
            );
            },
            child: Column(
            // ... Isi child sesuai dengan struktur yang ada di kode asli
            ),
        ),
        );
    }
    }
    ```

    Dalam `ShopCard`, `InkWell` digunakan untuk menangkap gestur tap dan menampilkan Snackbar.

    ### Langkah 3: Menampilkan Tombol pada Layar Utama

    Pada `MyHomePage`, saya menggunakan `GridView.builder` untuk menampilkan `ShopCard`. Setiap card merepresentasikan satu dari tiga tombol fungsi aplikasi yang diminta.

    ```dart
    class MyHomePage extends StatelessWidget {
    // ... Constructor dan variabel lainnya ...

    @override
    Widget build(BuildContext context) {
        // ... Scaffold dan AppBar ...

        return GridView.builder(
        // ... GridView builder setup ...
        itemBuilder: (context, index) {
            return ShopCard(items[index]);
        },
        );
    }
    }
    ```

    `GridView.builder` akan membangun sebuah `ShopCard` untuk setiap `ShopItem` yang ada di dalam list `items`.

    ### Langkah 4: Menetapkan Item Tombol

    Saya menetapkan tombol-tombol yang diinginkan dalam sebuah list bernama `items` di `MyHomePage`.

    ```dart
    final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Colors.green),
    ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.blue),
    ShopItem("Logout", Icons.logout, Colors.red),
    ];
    ```
- ### [x]  Memunculkan Snackbar dan tulisannya

    #### Implementasi Tombol dan Snackbar
    Saya membuat tiga tombol dengan ikon dan teks menggunakan `ShopCard`. Setiap `ShopCard` dikonfigurasi dengan sebuah `ShopItem` yang memiliki nama, ikon, dan warna tertentu. Ketika tombol ditekan, sebuah `SnackBar` ditampilkan dengan menggunakan `ScaffoldMessenger.of(context)` untuk memberikan umpan balik kepada pengguna.

    ##### Kode `ShopCard` untuk Snackbar
    ```dart
    child: InkWell(
    onTap: () {
        ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")));
    },
    // Rest of the code
    )
    ```
    Setiap tombol memiliki `onTap` callback yang menghasilkan `SnackBar` dengan pesan yang sesuai berdasarkan item yang ditekan.
</details>

<br/>

**BONUS** -> Saya mengerjakan bonus untuk Tugas 7 berupa implementasi warna berbeda pada Aplikasi saya.