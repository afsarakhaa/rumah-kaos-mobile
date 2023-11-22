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

<br/>

# Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements
<br />

<details>
<summary> 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
</summary>

<br/>

**Perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`**

Flutter menyediakan metode `Navigator.push()` dan `Navigator.pushReplacement()` untuk navigasi antar halaman. Keduanya memiliki tujuan yang berbeda:

- `Navigator.push()`: Digunakan untuk menavigasi ke halaman baru tanpa menghapus halaman saat ini dari stack. Halaman sebelumnya tetap ada di stack, sehingga user dapat kembali ke halaman tersebut.
- `Navigator.pushReplacement()`: Digunakan untuk menavigasi ke halaman baru dengan menggantikan halaman saat ini di stack. Halaman saat ini akan dihapus dari stack, dan tidak dapat kembali ke halaman tersebut.

### Tabel Perbandingan

| Fitur                    | Navigator.push()                  | Navigator.pushReplacement()    |
|--------------------------|-----------------------------------|-------------------------------|
| Deskripsi                | Menambahkan halaman baru ke stack.| Mengganti halaman saat ini dengan halaman baru di stack. |
| Kembalinya ke Halaman Sebelumnya | Memungkinkan kembali ke halaman sebelumnya. | Tidak memungkinkan kembali ke halaman sebelumnya. |
| Penggunaan Stack         | Menambahkan ke stack.             | Menggantikan elemen di stack. |
| Kasus Penggunaan         | Menavigasi ke halaman baru sambil mempertahankan histori. | Menavigasi ke halaman baru saat tidak perlu kembali ke halaman sebelumnya (misalnya, setelah login berhasil). |

### Contoh Penggunaan

**Navigator.push()**
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => ShopFormPage()),
);
```
Dalam contoh ini, user menavigasi ke `ShopFormPage` dan dapat kembali ke halaman sebelumnya dengan menggunakan tombol kembali.

**Navigator.pushReplacement()**
```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => MyHomePage()),
);
```
Dalam contoh ini, user menavigasi ke `MyHomePage`, tetapi tidak dapat kembali ke halaman sebelumnya karena telah digantikan oleh `MyHomePage`.

### Kesimpulan

Pemilihan antara `Navigator.push()` dan `Navigator.pushReplacement()` tergantung pada kebutuhan navigasi dalam aplikasi yang dibuat. Penggunaan yang tepat akan memastikan pengalaman pengguna yang intuitif dan efisien.

</details>
<br/>

<details>
<summary> 2.  Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing! </summary>

<br/>

Berikut penjelasan masing-masing layout widget pada Flutter beserta konteks penggunaannya:

| Nama Layout Widget  | Deskripsi                                                                                                                      | Konteks Penggunaan                             |
|---------------------|--------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------|
| `Container`         | Widget yang digunakan untuk mengatur tata letak dan dekorasi elemen-elemen dalam kotak.                                    | Biasanya digunakan untuk mengelompokkan dan mengatur elemen-elemen lain dalam kotak dengan batas tertentu.                |
| `Row`               | Widget yang mengatur anak-anaknya dalam baris horizontal.                                                                      | Berguna ketika kita ingin menampilkan elemen-elemen dalam satu baris secara horizontal.                                |
| `Column`            | Widget yang mengatur anak-anaknya dalam kolom vertikal.                                                                        | Berguna ketika kita ingin menampilkan elemen-elemen dalam satu kolom secara vertikal.                                  |
| `ListView`          | Widget yang mengatur anak-anaknya dalam daftar gulir (scrollable list).                                                         | Digunakan ketika kita memiliki daftar elemen yang panjang dan ingin memungkinkan pengguna untuk menggulirnya.         |
| `Stack`             | Widget yang mengatur anak-anaknya dalam tumpukan, yang memungkinkan elemen-elemen tumpuk di atas satu sama lain.          | Berguna ketika kita ingin menumpuk elemen-elemen dalam tata letak yang lebih kompleks, seperti tumpukan kartu.         |
| `Expanded`          | Widget yang memungkinkan anak-anaknya memperluas ruang yang tersedia dalam arah tertentu.                                     | Digunakan dalam `Row` atau `Column` untuk memberikan sebagian dari ruang yang tersedia kepada anak-anaknya.             |
| `Wrap`              | Widget yang mengatur anak-anaknya dalam baris-baris yang memanjang secara otomatis, dan memindahkan ke baris berikutnya jika tidak cukup ruang. | Cocok untuk tata letak dengan elemen-elemen berukuran bervariasi yang perlu diatur dalam baris-baris.         |
| `Flow`              | Widget yang mengatur anak-anaknya dalam tata letak aliran (flow layout), dengan kemampuan mengisi ruang secara otomatis.  | Berguna untuk tata letak yang kompleks yang memerlukan penataan elemen dengan baik tanpa perlu mengatur secara manual. |
| `Card`              | Widget yang menggambarkan kartu dengan bayangan dan tampilan yang elegan.                                                       | Umumnya digunakan untuk menampilkan konten dalam kartu terpisah dengan dekorasi visual yang konsisten.                |
</details>

<br/>

<details>
<summary> 3.  Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
</summary>

<br/>

Pada tugas ini, saya menggunakan empat elemen input dalam form Flutter, yaitu:

1. **TextFormField untuk Nama Produk**:
   - Alasan penggunaan: Elemen ini digunakan untuk mengumpulkan informasi tentang nama produk yang akan ditambahkan. TextFormField digunakan karena memungkinkan pengguna untuk memasukkan teks dan memiliki validasi untuk memastikan bahwa input tidak kosong.

2. T**extFormField untuk Harga**:
   - Alasan penggunaan: Elemen ini digunakan untuk mengumpulkan informasi tentang harga produk. TextFormField digunakan karena memungkinkan pengguna untuk memasukkan angka (dalam bentuk teks) dan memiliki validasi untuk memastikan bahwa input tidak kosong dan berupa angka.

3. **TextFormField untuk Deskripsi**:
   - Alasan penggunaan: Elemen ini digunakan untuk mengumpulkan deskripsi produk. TextFormField digunakan karena memungkinkan pengguna untuk memasukkan teks deskripsi produk dan memiliki validasi untuk memastikan bahwa input tidak kosong.

4. **TextFormField untuk Jumlah**:
   - Alasan penggunaan: Elemen ini digunakan untuk mengumpulkan informasi tentang jumlah produk yang tersedia. TextFormField digunakan karena memungkinkan pengguna untuk memasukkan angka (dalam bentuk teks) dan memiliki validasi untuk memastikan bahwa input tidak kosong dan berupa angka.

Penggunaan TextFormField dalam form ini memungkinkan pengguna untuk memasukkan informasi yang dibutuhkan (nama produk, harga, deskripsi, dan jumlah) dengan memastikan bahwa input sesuai dengan persyaratan (tidak kosong, harga dan jumlah berupa angka). Validasi yang terdapat pada masing-masing elemen input juga membantu dalam menghindari kesalahan input yang tidak valid.

</details>

<br/>

<details>
<summary> 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
</summary>

## Deskripsi
Clean Architecture adalah sebuah pendekatan dalam pengembangan perangkat lunak yang bertujuan untuk memisahkan komponen-komponen utama dalam sebuah aplikasi, sehingga aplikasi menjadi lebih modular, teruji dengan baik, dan mudah untuk dipelihara. Penerapan Clean Architecture pada aplikasi Flutter dapat membantu kita memisahkan logika bisnis dari aspek teknis dan tampilan, sehingga memungkinkan pengujian yang lebih baik, skalabilitas, dan pemeliharaan yang lebih mudah.

## Langkah-Langkah Penerapan Clean Architecture

1. Pembagian Lapisan:
   - Lapisan Internal: Ini adalah lapisan yang berisi logika bisnis aplikasi. Di dalam lapisan ini, kita dapat mendefinisikan use cases (interactors) yang menggambarkan fungsionalitas utama aplikasi kita.
   - Lapisan Eksternal: Ini adalah lapisan yang berisi implementasi teknis seperti UI, database, API, dan perangkat keras. Flutter sering digunakan di lapisan ini untuk mengimplementasikan tampilan pengguna (UI).

2. Pembagian Modul:
   - Domain Layer: Ini adalah modul yang berisi semua logika bisnis, termasuk entitas, use cases, dan repositori abstrak. Tidak ada ketergantungan ke infrastruktur di sini.
   - Data Layer: Ini adalah modul yang mengimplementasikan repositori abstrak dari domain layer. Modul ini bertanggung jawab untuk berkomunikasi dengan data eksternal, seperti database atau API.
   - Presentation Layer: Ini adalah modul yang berisi komponen UI seperti widget, halaman, dan manajemen state UI. Ini adalah bagian yang berinteraksi langsung dengan pengguna.

3. Dependency Injection:
   - Gunakan teknik Dependency Injection (DI) untuk menghubungkan lapisan tersebut. Dengan Flutter, kita bisa menggunakan paket seperti "get_it" atau "provider" untuk mengatur injeksi dependensi.

4. Pengujian:
   - Lapisan domain harus memiliki pengujian unit yang kuat untuk memastikan logika bisnis berfungsi dengan baik.
   - Lapisan data perlu memiliki pengujian integrasi untuk memastikan koneksi dengan data eksternal berjalan dengan baik.
   - Lapisan presentasi harus memiliki pengujian widget untuk memastikan UI berperilaku seperti yang diharapkan.

5. Menggunakan Pola Desain:
   - Dalam lapisan presentasi, kita bisa menggunakan pola desain seperti MVVM (Model-View-ViewModel) atau BLoC (Business Logic Component) untuk memisahkan tampilan dari logika bisnis.

6. Memisahkan Responsabilitas:
   - Pastikan setiap lapisan hanya memiliki responsabilitas tertentu dan tidak bergantung pada lapisan lain secara langsung.

7. Menerapkan Prinsip Single Responsibility:
   - Pastikan setiap kelas atau komponen hanya memiliki satu tanggung jawab utama.

Penerapan Clean Architecture pada aplikasi Flutter akan membantu kita mencapai pemisahan yang baik antara komponen-komponen aplikasi kita, membuat kode lebih mudah diuji, dan memungkinkan kita untuk mengganti teknologi atau lapisan tanpa mengganggu bagian lain dari aplikasi kita. 
</details>

<br/>

<details>
<summary> 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
</summary>

<br/>

### A. Formulir Tambah Item Baru

#### 1. Buat Halaman Baru untuk Formulir Tambah Item:

1.1 Tambahkan file `shoplist_form.dart`:

```dart
// shoplist_form.dart

import 'package:flutter/material.dart';

class ShopFormPage extends StatefulWidget {
  const ShopFormPage({Key? key}) : super(key: key);

  @override
  State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
  // ... (existing code)
}
```

#### 2. Elemen Input pada Formulir:

2.1 Tambahkan elemen input pada `_ShopFormPageState`:

```dart
// _ShopFormPageState in shoplist_form.dart

// ... (existing code)

String _name = "";
int _price = 0;
String _description = "";
int _amount = 0;
final _formKey = GlobalKey<FormState>();

@override
Widget build(BuildContext context) {
  return Scaffold(
    // ... (existing code)
    body: Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ... (existing code)
          ],
        ),
      ),
    ),
  );
}
```

#### 3. Tombol Save:

3.1 Tambahkan Tombol "Save" pada `_ShopFormPageState`:

```dart
// _ShopFormPageState in shoplist_form.dart

// ... (existing code)

Align(
  alignment: Alignment.bottomCenter,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      onPressed: () {
        // ... (existing code)

        // Save button logic
        if (_formKey.currentState!.validate()) {
          // ... (existing code)
        }
      },
      child: const Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),
```

#### 4. Navigasi:

4.1 Arahkan pengguna ke halaman form tambah item baru dari `MyHomePage`:

```dart
// menu.dart

// ... (existing code)

class MyHomePage extends StatelessWidget {
  // ... (existing code)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ... (existing code)
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              // ... (existing code)
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ShopFormPage(),
                    ),
                  );
                },
                child: ShopCard(items[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### B. Drawer

#### 1. Buat Drawer:

1.1 Tambahkan drawer pada `left_drawer.dart`:

```dart
// left_drawer.dart

// ... (existing code)

class LeftDrawer extends StatelessWidget {
  // ... (existing code)

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // ... (existing code)
        ],
      ),
    );
  }
}
```

#### 2. Opsi Drawer:

2.1 Tambahkan opsi "Tambah Item" pada `LeftDrawer`:

```dart
// left_drawer.dart

// ... (existing code)

ListTile(
  leading: const Icon(Icons.add_shopping_cart),
  title: const Text('Tambah Item'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ShopFormPage(),
      ),
    );
  },
),
```

#### 3. Opsi Drawer:

3.1 Tambahkan opsi "Halaman Utama" pada `LeftDrawer`:

```dart
// left_drawer.dart

// ... (existing code)

ListTile(
  leading: const Icon(Icons.home_outlined),
  title: const Text('Halaman Utama'),
  onTap: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ),
    );
  },
),
```

</details>

</br>

**BONUS** -> Saya mengerjakan bonus untuk Tugas 8 berupa Membuat sebuah halaman baru, yaitu halaman daftar item yang sudah dibuat dengan isi halamannya adalah setiap data produk yang sudah pernah dibuat.

<br/>

Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

<br />

<details>
<summary> 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
</summary>

<br/>

### Pengambilan Data JSON Tanpa Model di Flutter
***Ya, kita bisa mengambil data JSON tanpa membuat model terlebih dahulu di Flutter.*** 

Flutter dan Dart menyediakan cara untuk melakukan ini dengan menggunakan `Map` dan dynamic typing. Contohnya, kita bisa menggunakan `jsonDecode` untuk mengubah string JSON menjadi `Map<String, dynamic>` atau `List<dynamic>` di Dart, yang memungkinkan kita untuk mengakses data tanpa mendefinisikan model kelas terlebih dahulu.

**Contoh Penggunaan:**

```dart
var data = jsonDecode(responseBody) as Map<String, dynamic>;
print(data['key']); // Mengakses nilai menggunakan key
```

**Perbandingan dengan Pendekatan Model:**

**1. Fleksibilitas vs Struktur** 

Menggunakan pendekatan tanpa model memberikan fleksibilitas lebih dalam mengakses data JSON, terutama bila struktur data sering berubah atau tidak terdefinisi dengan jelas. Namun, pendekatan ini kurang terstruktur dan bisa lebih rentan terhadap kesalahan pada runtime, seperti typo dalam nama key.

**2. Keselamatan Tipe** 

Pendekatan model (strong typing) memberikan keuntungan dalam bentuk keselamatan tipe. Model yang didefinisikan memastikan bahwa data yang diakses sesuai dengan struktur yang kita harapkan. Ini mengurangi kemungkinan kesalahan saat runtime dan memudahkan debugging.

**3. Manajemen Data yang Lebih Baik** 

Model membantu dalam manajemen data yang lebih baik. Jika aplikasi berkembang menjadi lebih kompleks, memiliki model yang jelas membantu dalam memelihara kode, meningkatkan keterbacaan, dan memudahkan kolaborasi dalam tim.

**Kesimpulan** 

Menggunakan model atau tidak bergantung pada kasus penggunaan spesifik. Untuk proyek yang lebih besar dan kompleks, atau ketika bekerja dalam tim, mendefinisikan model sering kali lebih disukai karena alasan keselamatan tipe dan manajemen kode. Untuk skenario yang lebih sederhana atau dengan data yang sering berubah, mengakses data JSON langsung tanpa model bisa menjadi pilihan yang efisien.

</details>

<br />

<details>
<summary> 2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
</summary>

<br/>

### Fungsi `CookieRequest` dalam Aplikasi Flutter

**Apa itu `CookieRequest`?**
`CookieRequest` dalam konteks pengembangan aplikasi, khususnya di Flutter, sering merujuk pada mekanisme yang mengatur pengiriman dan penerimaan cookie saat melakukan request HTTP. Cookies adalah data kecil yang disimpan di perangkat klien dan dikirimkan kembali ke server pada setiap request. `CookieRequest` bertugas untuk memastikan bahwa cookie ini diatur dan dikirimkan dengan benar.

**Fungsi Utama `CookieRequest`:**
1. **Pengelolaan Sesi Pengguna:** `CookieRequest` membantu dalam mengelola sesi pengguna. Cookie sering digunakan untuk menyimpan token autentikasi atau informasi sesi lainnya yang memungkinkan aplikasi mengenali pengguna yang sudah login.
2. **Pemeliharaan State antara Request:** Cookie membantu menjaga keadaan (state) antara berbagai request HTTP. Hal ini penting untuk fitur seperti keranjang belanja di e-commerce atau preferensi pengguna.
3. **Keamanan:** Dalam banyak kasus, `CookieRequest` juga mengelola aspek keamanan, seperti memastikan bahwa cookie sensitif hanya dikirim melalui koneksi HTTPS.

**Mengapa `CookieRequest` Perlu Dibagikan ke Semua Komponen?**
1. **Konsistensi State:** Memastikan bahwa setiap komponen aplikasi memiliki akses ke state yang sama dan terkini, yang sangat penting untuk fungsionalitas dan user experience.
2. **Efisiensi dan DRY (Don't Repeat Yourself):** Dengan membagikan instance `CookieRequest`, kita dapat menghindari duplikasi kode untuk pengelolaan cookie di berbagai bagian aplikasi.
3. **Pengelolaan Sumber Daya:** Membagi satu instance memastikan penggunaan sumber daya yang efisien, seperti memori dan koneksi jaringan, karena tidak perlu membuat banyak instance untuk tujuan yang sama.
4. **Sinkronisasi Akses Data:** Memungkinkan semua komponen untuk secara sinkron mengakses dan memodifikasi cookie atau data sesi, yang penting untuk integritas data dan pengalaman pengguna.

### Kesimpulan
Dalam aplikasi Flutter, `CookieRequest` memainkan peran penting dalam pengelolaan sesi dan keamanan pengguna, serta dalam menjaga konsistensi dan efisiensi pengelolaan state aplikasi. Memiliki satu instance `CookieRequest` yang dibagikan di seluruh aplikasi memastikan bahwa semua komponen bekerja dengan state yang sama, mengurangi duplikasi kode, dan meningkatkan efisiensi penggunaan sumber daya.

</details>

<br />

<details>
<summary> 3.  Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
</summary>

<br/>

Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada aplikasi Flutter melibatkan beberapa langkah utama. Ini termasuk mengirim request HTTP ke server, menerima response dalam format JSON, menguraikan data JSON tersebut, dan akhirnya menampilkan data tersebut dalam UI Flutter. Berikut adalah penjelasan rinci dari setiap langkah:

### 1. Mengirim Request HTTP
Pertama, aplikasi Flutter mengirim request HTTP ke server atau endpoint API yang menyediakan data JSON. Ini biasanya dilakukan menggunakan paket `http` yang tersedia di Flutter.

Contoh kode untuk mengirim request:
```dart
var url = Uri.parse('https://example.com/data');
var response = await http.get(url);
```

### 2. Menerima Response JSON
Setelah request terkirim, aplikasi akan menerima response dari server. Jika request berhasil, response ini akan berisi data dalam format JSON.

### 3. Menguraikan (Parsing) JSON
Langkah selanjutnya adalah menguraikan response JSON tersebut menjadi struktur data yang bisa digunakan oleh Flutter. Ada dua cara umum untuk melakukan ini:

   - **Menggunakan Dynamic Typing:** Menguraikan JSON menjadi `Map<String, dynamic>` atau `List<dynamic>` menggunakan `jsonDecode` dari `dart:convert`. Metode ini tidak memerlukan model kelas terlebih dahulu.
   
     Contoh:
     ```dart
     var jsonData = jsonDecode(response.body);
     ```

   - **Menggunakan Model Kelas:** Membuat model kelas untuk merepresentasikan data JSON dan menggunakan `jsonDecode` untuk menguraikan JSON ke dalam instance dari model tersebut. Ini memberikan keuntungan dari type safety dan mudah untuk dielola.

     Contoh model:
     ```dart
     class DataModel {
       final String id;
       final String name;
       // Konstruktor dan metode lainnya
     }
     ```

     Contoh penguraian:
     ```dart
     var dataModel = DataModel.fromJson(jsonDecode(response.body));
     ```

### 4. Menampilkan Data pada UI
Setelah data JSON berhasil diuraikan, langkah terakhir adalah menampilkannya dalam UI Flutter. Ini bisa dilakukan dengan menggunakan berbagai widget Flutter, seperti `Text`, `ListView`, `Card`, dll.

Contoh:
```dart
ListView.builder(
  itemCount: data.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(data[index].name),
      // Widget lainnya
    );
  },
)
```

### Kesimpulan
Proses pengambilan data dari JSON hingga ditampilkan pada Flutter melibatkan beberapa langkah penting, mulai dari mengirim request, menguraikan JSON, dan akhirnya menampilkan data dalam UI. Dengan menggunakan paket `http` untuk request dan `dart:convert` untuk penguraian JSON, Flutter menyediakan cara yang efisien dan fleksibel untuk menangani data JSON.

</details>

<br />

<details>
<summary> 4.  Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
</summary>

<br/>

Mekanisme autentikasi dari input data akun pada Flutter hingga proses autentikasi oleh Django dan tampilnya menu pada Flutter melibatkan beberapa langkah penting yang saling terintegrasi. Berikut adalah langkah-langkah tersebut:

### 1. Input Data Akun pada Flutter
Pertama, pengguna memasukkan data akun (biasanya username dan password) melalui antarmuka pengguna (UI) Flutter. Ini biasanya dilakukan menggunakan `TextFormField` atau widget input serupa.

### 2. Mengirim Data ke Server Django
Setelah pengguna menekan tombol login, aplikasi Flutter akan mengirimkan data tersebut ke server Django. Ini biasanya dilakukan dengan membuat request HTTP POST menggunakan paket seperti `http` di Flutter.

Contoh kode untuk mengirim data:
```dart
var url = Uri.parse('http://yourdjangoapp.com/api/login/');
var response = await http.post(
  url,
  body: {'username': 'user', 'password': 'pass'}
);
```

### 3. Proses Autentikasi di Django
Di sisi server Django, data yang diterima akan diproses. Django akan memeriksa apakah kombinasi username dan password cocok dengan yang ada di database.

- Jika valid, Django akan menghasilkan token (misalnya menggunakan Django Rest Framework Token Authentication) dan mengirimkannya kembali sebagai response.
- Jika tidak valid, Django akan mengirimkan response error.

### 4. Menerima Response di Flutter
Aplikasi Flutter kemudian akan menerima response dari Django.

- Jika autentikasi berhasil (token diterima), aplikasi menyimpan token tersebut (misalnya di `SharedPreferences` untuk penggunaan selanjutnya).
- Jika gagal, aplikasi dapat menampilkan pesan kesalahan.

### 5. Menampilkan Menu di Flutter
Setelah autentikasi berhasil, aplikasi Flutter kemudian dapat menavigasikan pengguna ke halaman utama atau menu utama aplikasi. Ini biasanya dilakukan dengan menggunakan Navigator untuk mengubah halaman.

```dart
if (authSuccess) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => MainMenu()),
  );
}
```

### 6. Penggunaan Token untuk Request Berikutnya
Token yang disimpan digunakan untuk autentikasi pada request-request berikutnya ke server Django. Header `Authorization` dengan token biasanya ditambahkan pada setiap request yang memerlukan autentikasi.

```dart
var response = await http.get(
  protectedUrl,
  headers: {'Authorization': 'Token $yourToken'},
);
```

### Kesimpulan
Proses autentikasi antara aplikasi Flutter dan server Django melibatkan pertukaran data antara klien dan server, validasi kredensial oleh Django, dan penggunaan token untuk sesi yang terautentikasi. Flutter bertanggung jawab untuk mengumpulkan data pengguna dan menampilkan UI sesuai dengan status autentikasi, sementara Django menangani verifikasi kredensial dan mengeluarkan token.

</details>

<br />

<details>
<summary> 5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
</summary>

<br/>

| Widget       | Fungsi                                                                                   |
|--------------|------------------------------------------------------------------------------------------|
| `MaterialApp` | Titik awal aplikasi yang menggunakan Material Design, mengatur tema dan navigasi.       |
| `Scaffold`    | Menyediakan struktur dasar layout Material, termasuk app bar, body, dan lainnya.         |
| `AppBar`      | Menampilkan bar aplikasi di bagian atas layar, biasanya berisi judul dan aksi.           |
| `TextFormField` | Widget input teks yang memungkinkan pengguna memasukkan data, seperti username dan password. |
| `ListView`    | Widget scrollable yang menampilkan daftar item dalam bentuk linear.                       |
| `Text`        | Menampilkan string teks sederhana pada UI.                                              |
| `Image`       | Menampilkan gambar dari berbagai sumber, seperti jaringan atau aset lokal.              |
| `Navigator`   | Mengatur rute halaman di aplikasi, seperti navigasi ke halaman baru.                    |
| `FutureBuilder` | Membangun widget berdasarkan hasil terakhir dari interaksi Future, seperti request HTTP. |
| `Card`        | Widget Material dengan sudut melengkung dan bayangan, sering digunakan untuk menampilkan konten secara terorganisir. |
| `Padding`     | Menambahkan padding di sekeliling widget anaknya.                                      |
| `Column`/`Row` | Menata widget anaknya secara vertikal (`Column`) atau horizontal (`Row`).              |
| `Icon`        | Menampilkan ikon dari set Material Icons.                                              |
| `IconButton`  | Tombol dengan area tekan yang menampilkan ikon, sering digunakan di AppBar.             |
| `CircularProgressIndicator` | Menampilkan indikator loading berputar.                               |
| `SharedPreferences` | Bukan widget, tapi digunakan untuk menyimpan data secara lokal di perangkat.      |

</details>

<br />

<details>
<summary> 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
</summary>

<br/>

Untuk mengimplementasikan checklist yang meliputi pembuatan antarmuka pengguna (UI) untuk autentikasi menggunakan Flutter dan integrasi dengan backend Django, Anda bisa mengikuti langkah-langkah berikut. Langkah-langkah ini lebih berfokus pada proses pengembangan yang berdasarkan pemahaman konsep:

### 1. Persiapan dan Perencanaan
- **Tentukan Fitur:** Tentukan fitur-fitur yang Anda ingin implementasikan, seperti form login, tampilan detail produk, dan navigasi.
- **Rancang UI:** Buat rancangan UI kasar dengan alat seperti Figma atau sketsa tangan untuk mendapatkan gambaran visual.
- **Setup Proyek:** Buat proyek Flutter baru dan siapkan lingkungan pengembangan Django.

### 2. Membuat UI Login di Flutter
- **Struktur Dasar:** Gunakan `MaterialApp` dan `Scaffold` untuk membuat struktur dasar halaman.
- **Form Input:** Gunakan `TextFormField` untuk input username dan password.
- **Tombol Login:** Tambahkan `ElevatedButton` untuk mengirim data form.
- **Validasi Input:** Implementasikan validasi sederhana untuk input form menggunakan `Form` dan `GlobalKey<FormState>`.

### 3. Implementasi Autentikasi di Django
- **Model Pengguna:** Pastikan model pengguna Django siap digunakan.
- **Endpoint API:** Buat endpoint API untuk autentikasi menggunakan Django Rest Framework.
- **Autentikasi Token:** Gunakan sistem token (misalnya TokenAuthentication di DRF) untuk mengelola sesi pengguna.

### 4. Integrasi API dengan Flutter
- **HTTP Request:** Gunakan paket `http` di Flutter untuk mengirimkan data login ke endpoint Django.
- **Pengelolaan State:** Gunakan `setState` atau state management lain (seperti Provider) untuk mengelola state autentikasi.
- **Pengelolaan Respons:** Tangani response dari server (token atau pesan error) dan simpan token di `SharedPreferences` jika login berhasil.

### 5. Navigasi dan Tampilan Menu
- **Halaman Menu:** Buat halaman menu baru di Flutter.
- **Navigasi:** Setelah login berhasil, gunakan `Navigator` untuk beralih ke halaman menu.
- **Menampilkan Data:** Jika perlu, buat request ke Django untuk mengambil data yang ditampilkan di menu.

### 6. Implementasi Fitur Tambahan
- **Daftar Produk:** Implementasikan `ListView.builder` untuk menampilkan produk.
- **Halaman Detail Produk:** Buat halaman baru untuk detail produk. Gunakan `Navigator` untuk transisi ke halaman ini ketika produk dipilih.
- **Autentikasi di Request Lain:** Sertakan token autentikasi di header untuk request lain yang memerlukan autentikasi.

### 7. Pengujian dan Debugging
- **Uji Fungsionalitas:** Lakukan pengujian manual untuk memastikan semua fitur berfungsi seperti yang diharapkan.
- **Debugging:** Gunakan tools debugging di Flutter dan Django untuk menyelesaikan masalah yang muncul.

### 8. Refinement dan Refactoring
- **Perbaiki UI:** Sesuaikan UI berdasarkan feedback atau kebutuhan pengguna.
- **Refactoring Kode:** Refactor kode untuk meningkatkan efisiensi dan keterbacaan.

### 9. Dokumentasi dan Penyelesaian
- **Dokumentasi:** Tulis dokumentasi yang diperlukan untuk proyek.
- **Penyelesaian:** Lakukan penyesuaian akhir dan persiapkan aplikasi untuk deployment atau penggunaan lebih lanjut.


</details>










