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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Container(color: Colors.green,)
            ),
            Expanded(child: Container(color: Colors.red,)
            ),
            Expanded(child: Container(color: Colors.amber,)
            ),
            Expanded(child: Container(color: Colors.black,)
            ),
            Expanded(child: Container(color: Colors.blue,)
            ),
          ],
        )
    );
  }
}
