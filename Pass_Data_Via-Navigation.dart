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
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1('this text from home Activity one')));
        }, child: Text('Go Activity 1')),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2('this text from Activity two')));
        }, child: Text('Go Activity 2'))
      ],
    )
    );
  }
}

class Activity1 extends StatelessWidget{

  final String msg;
  const Activity1(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2('This text form Activity two')));
        },child: Text('Go to Activity 2'),),
      ),
    );
  }
}

class Activity2 extends StatelessWidget{
  final String msg;
  const Activity2(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1('this text from activity one')));
        },child: Text('Go to Activity 1'),),
      ),
    );
  }
}
