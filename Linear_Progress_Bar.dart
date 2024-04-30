import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
    body: Center(
      child: LinearProgressIndicator(
        color: Colors.amber,
        minHeight: 10,
        backgroundColor: Colors.blue,
      )
    )
    );
  }
}
