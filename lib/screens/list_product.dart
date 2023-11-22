import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:rumah_kaos/models/product.dart';
import 'package:rumah_kaos/screens/detail_item_page.dart';
import 'package:rumah_kaos/widgets/left_drawer.dart';

class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Product>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse(
        'http://127.0.0.1:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Product> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Product.fromJson(d));
        }
    }
    return list_product;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Product'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                } else if (!snapshot.hasData || snapshot.data.isEmpty) {
                    return const Center(
                        child: Text(
                            "Tidak ada data produk.",
                            style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                        ),
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) => 
                        GestureDetector(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ItemDetailPage(product: snapshot.data![index]),
                              ),
                        ),
                        child: Card(
                            margin: const EdgeInsets.all(10),
                            elevation: 5,
                            child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Image.network(
                                            "${snapshot.data![index].fields.linkImage}",
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                                            child: Text(
                                                "${snapshot.data![index].fields.name}",
                                                style: const TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                ),
                                            ),
                                        ),
                                        Text("Price: ${snapshot.data![index].fields.price}"),
                                        Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                                            child: Text("${snapshot.data![index].fields.description}"),
                                        ),
                                        Text("Available Amounts: ${snapshot.data![index].fields.amounts}")
                                    ],
                                ),
                            ),
                        ),
                        )
                    );
                }
            },
        ),
    );
}

}