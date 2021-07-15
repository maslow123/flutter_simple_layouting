import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({Key? key, required this.image});

  final String? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Item'),
        ),
        body: Container(
          height: 300,
          width: double.infinity,
          child: Image.asset(
            '${image}',
            fit: BoxFit.cover,
          ),
        ));
  }
}
