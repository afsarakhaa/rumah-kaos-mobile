import 'package:flutter/material.dart';
import 'package:rumah_kaos/items.dart'; 

class ProductCard extends StatelessWidget {
  final ShopItem item;

  const ProductCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("Jumlah: ${item.amount}"),
            const SizedBox(height: 8),
            Text("Harga: Rp ${item.price}"),
            const SizedBox(height: 8),
            Text("Deskripsi: ${item.description}"),
          ],
        ),
      ),
    );
  }
}
