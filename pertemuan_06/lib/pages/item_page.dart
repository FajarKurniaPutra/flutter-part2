import 'package:flutter/material.dart';
import '../models/item.dart'; 

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Page'),
      ),
      body: Center(
        child: Text(
          'Nama Item: ${itemArgs.name}\nHarga: Rp${itemArgs.price}',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}