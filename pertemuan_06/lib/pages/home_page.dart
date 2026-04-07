import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Gula Pasir', price: 15000, imageUrl: 'https://c.alfagift.id/product/1/1_A7753140002167_20220328182324989_base.jpg', stock: 25, rating: 4.8),
    Item(name: 'Garam Dapur', price: 5000, imageUrl: 'https://down-id.img.susercontent.com/file/2ccfe9abf401eacd1f49781dd3bdaef2', stock: 50, rating: 4.5),
    Item(name: 'Minyak Goreng', price: 35000, imageUrl: 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/MTA-8601358/filma_filma_minyak_goreng_pouch_-12_pcs_x_1_lt-_full03_sw49ncas.jpeg', stock: 10, rating: 4.9),
    Item(name: 'Beras Pulen', price: 65000, imageUrl: 'https://c.alfagift.id/product/1/1_A8269800002167_20250407113953603_base.jpg', stock: 15, rating: 4.7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 0.7, 
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              clipBehavior: Clip.antiAlias, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      item.imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name, 
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Rp${item.price}', 
                          style: TextStyle(color: Colors.orange[800], fontWeight: FontWeight.bold)
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(Icons.star, size: 14, color: Colors.amber),
                            Text(' ${item.rating}', style: const TextStyle(fontSize: 12)),
                            const Spacer(),
                            Text('Stok: ${item.stock}', style: const TextStyle(fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}