import 'package:flutter/material.dart';
import 'package:udemy_course/widgets/icon_with_label.dart';
import 'package:auto_route/auto_route.dart';
import 'package:udemy_course/router/router.gr.dart' as app_router;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Online Course',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Icon(Icons.account_circle),
          Icon(Icons.group),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: TextButton(              
              child: Text('Go To Dashboard'),
              onPressed: (){              
                context.router.push(
                  app_router.Dashboard(title: 'Dashboard Page', buttonText: 'Back to previous page')
                );
              },
            ),
          ),
          Container(
              height: 100,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconWithLabel(
                      icon: Icons.call,
                      text: 'Call',
                      textColor: Colors.blue,
                      iconColor: Colors.blue),
                  IconWithLabel(
                      icon: Icons.navigation_rounded,
                      text: 'Route',
                      textColor: Colors.blue,
                      iconColor: Colors.blue),
                  IconWithLabel(
                      icon: Icons.share,
                      text: 'Share',
                      textColor: Colors.blue,
                      iconColor: Colors.blue),
                ],
              )),
        ],
      ),
    );
  }
}
