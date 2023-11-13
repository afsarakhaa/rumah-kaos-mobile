import 'package:flutter/material.dart';
// Impor drawer widget
import 'package:rumah_kaos/widgets/left_drawer.dart';
import 'package:rumah_kaos/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Colors.green, 1), // Add Color di sini
    ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.blue, 2), // Add Color di sini
    ShopItem("Logout", Icons.logout, Colors.red, 3),  // Add Color di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rumah Kaos',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding:  EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  'Rumah Kaos Features',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ShopCard(items[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
