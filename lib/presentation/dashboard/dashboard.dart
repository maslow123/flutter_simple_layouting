import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class Dashboard extends StatelessWidget {
  Dashboard({
    this.title, 
    this.buttonText
  });
  final String? title;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title == null ? 'Dashboard Page' : '${title}'
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Text('List 1'),
            Text('List 2'),
            Text('List 3'),
          ],
        ),
      ),
    );
  }
}
