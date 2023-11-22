import 'package:flutter/material.dart';
import 'package:rumah_kaos/models/product.dart';

class ItemDetailPage extends StatelessWidget {
  final Product product;

  const ItemDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(product.fields.linkImage, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text('Price: ${product.fields.price}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Description: ${product.fields.description}'),
            SizedBox(height: 10),
            Text('Available Amounts: ${product.fields.amounts}'),
          ],
        ),
      ),
    );
  }
}
