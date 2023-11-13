import 'package:flutter/material.dart';
import 'package:rumah_kaos/items.dart';
import 'package:rumah_kaos/screens/daftar_item.dart';
import 'package:rumah_kaos/screens/shoplist_form.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color;  // Bonus Poin Tugas 7 Individu PBP (Add Different Color for button)
  final int id;

  ShopItem(this.name, this.icon, this.color, this.id); // Tambahkan Color pada constructor
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15), 
      ),
      color: item.color, // Passed Color di sini
      elevation: 4.0,
      child: InkWell(
        // Area responsif terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)

          // Navigate ke Tambah Item
          if (item.name == "Tambah Item") {
            // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopFormPage(),
                ),
            );
          }

          // Navigate ke Lihat Item
          if (item.name == "Lihat Item") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductListPage(items: globalShopItems),
              ),
            );
          }

        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                item.id.toString(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color:  Colors.white,
                ),
              ),

              Icon(
                item.icon,
                color: Colors.white, 
                size: 48.0,
              ),
              const SizedBox(height: 10),

              Text(
                item.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white, 
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}