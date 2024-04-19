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
      home: MyActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyActivity extends StatelessWidget{

  MySnacBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  MyAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text('Alert !'),
                content: Text('Do you want to delete?'),
                actions: [
                  TextButton(onPressed: (){
                    MySnacBar('This item has been deleted', context);
                    Navigator.of(context).pop();
                  }, child: Text('Yes')),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('No'))
                ],
              )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
  
    // Define a button style for the submit button
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60) // Set minimum button size
    );
  
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'), // Set app bar title
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Text field for first name
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
              ),
            ),
          ),
          // Text field for last name
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
              ),
            ),
          ),
          // Text field for email address
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email Address',
              ),
            ),
          ),
          // Submit button
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                // Handle submit button press
              },
              child: Text('Submit'),
              style: buttonStyle,
            ),
          )
        ],
      ),
    );
  }
}
