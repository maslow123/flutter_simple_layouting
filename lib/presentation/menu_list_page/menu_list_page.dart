import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:udemy_course/router/router.gr.dart' as app_router;

class MenuListPage extends StatelessWidget {
  
  List<String> _imageList = [
    'assets/images/food_1.jpg',
    'assets/images/food_2.jpeg',
    'assets/images/food_3.jpeg',
    'assets/images/food_4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu List'
        ),
      ),
      body: GridView.builder(
        itemCount: _imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 4,
           childAspectRatio: 1,
           crossAxisSpacing: 10.0,
           mainAxisSpacing: 10
        ), 
         itemBuilder: (context, i) {
          return InkWell(
            onTap: (){ 
              context.router.push(app_router.ItemDetailRoute(image: _imageList[i]));
            },
            child: ListImageItem(image: _imageList[i])
          );
        },
      )
    );
  }
}

class ListImageItem extends StatelessWidget {
  const ListImageItem({
    Key? key,
    required String image,
  }) : _image = image, super(key: key);

  final String _image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Image.asset(_image, fit: BoxFit.cover)
    );
  }
}
