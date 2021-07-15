import 'package:flutter/material.dart';
import 'package:udemy_course/router/router.gr.dart' as app_router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = app_router.AppRoutes(); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MaterialApp.router(
          routerDelegate: _appRouter.delegate(), 
          routeInformationParser: _appRouter.defaultRouteParser()
        )
    ); 
  }
}