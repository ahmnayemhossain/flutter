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
    body: Container(
      width: double.infinity,
      height: 300,
      color: Colors.amber,
      alignment: Alignment.center,
      child: AspectRatio(
        aspectRatio: 16/9,
        child: Container(
          color: Colors.red,

        ),
      )
    )
    );
  }
}
