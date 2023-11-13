// File: product_list_page.dart
import 'package:flutter/material.dart';
import 'package:rumah_kaos/items.dart';
import 'package:rumah_kaos/screens/item_card.dart';

class ProductListPage extends StatelessWidget {
  final List<ShopItem> items;

  const ProductListPage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ProductCard(item: items[index]);
          // return ListTile(
          //   title: Text(items[index].name),
          //   subtitle: Text(
          //       'Jumlah: ${items[index].amount}, Harga: ${items[index].price}\nDeskripsi: ${items[index].description}'),
          // );
        },
      ),
    );
  }
}
