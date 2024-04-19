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

  var MyItems=[
    {"img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgp3ionJs4Jhl4awzYaX9JO7gUEr_fXM09TiQdunW3f13yIpWMn1jVNzfvJ2pv9fPRoTaulTLA6fguRsA8YkRsk7q9nqHBJ8PFz1f2twgKSFgstX3sPSKx3v-nqHxbOwqps9Iph0kp5_YnAGLtyUfa_MGymguyDpp88cwYc2NzcttTj6LjOqSOcQif_P-Ds/w640-h334/Simple%20Flutter%20Form.png","title":"Rabbil"},
    {"img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgp3ionJs4Jhl4awzYaX9JO7gUEr_fXM09TiQdunW3f13yIpWMn1jVNzfvJ2pv9fPRoTaulTLA6fguRsA8YkRsk7q9nqHBJ8PFz1f2twgKSFgstX3sPSKx3v-nqHxbOwqps9Iph0kp5_YnAGLtyUfa_MGymguyDpp88cwYc2NzcttTj6LjOqSOcQif_P-Ds/w640-h334/Simple%20Flutter%20Form.png","title":"Bayat"},
    {"img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgp3ionJs4Jhl4awzYaX9JO7gUEr_fXM09TiQdunW3f13yIpWMn1jVNzfvJ2pv9fPRoTaulTLA6fguRsA8YkRsk7q9nqHBJ8PFz1f2twgKSFgstX3sPSKx3v-nqHxbOwqps9Iph0kp5_YnAGLtyUfa_MGymguyDpp88cwYc2NzcttTj6LjOqSOcQif_P-Ds/w640-h334/Simple%20Flutter%20Form.png","title":"Sadik"},
    {"img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgp3ionJs4Jhl4awzYaX9JO7gUEr_fXM09TiQdunW3f13yIpWMn1jVNzfvJ2pv9fPRoTaulTLA6fguRsA8YkRsk7q9nqHBJ8PFz1f2twgKSFgstX3sPSKx3v-nqHxbOwqps9Iph0kp5_YnAGLtyUfa_MGymguyDpp88cwYc2NzcttTj6LjOqSOcQif_P-Ds/w640-h334/Simple%20Flutter%20Form.png","title":"Nazmin"},
    {"img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgp3ionJs4Jhl4awzYaX9JO7gUEr_fXM09TiQdunW3f13yIpWMn1jVNzfvJ2pv9fPRoTaulTLA6fguRsA8YkRsk7q9nqHBJ8PFz1f2twgKSFgstX3sPSKx3v-nqHxbOwqps9Iph0kp5_YnAGLtyUfa_MGymguyDpp88cwYc2NzcttTj6LjOqSOcQif_P-Ds/w640-h334/Simple%20Flutter%20Form.png","title":"Rabbil"},
    {"img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgp3ionJs4Jhl4awzYaX9JO7gUEr_fXM09TiQdunW3f13yIpWMn1jVNzfvJ2pv9fPRoTaulTLA6fguRsA8YkRsk7q9nqHBJ8PFz1f2twgKSFgstX3sPSKx3v-nqHxbOwqps9Iph0kp5_YnAGLtyUfa_MGymguyDpp88cwYc2NzcttTj6LjOqSOcQif_P-Ds/w640-h334/Simple%20Flutter%20Form.png","title":"Bayat"},
    {"img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgp3ionJs4Jhl4awzYaX9JO7gUEr_fXM09TiQdunW3f13yIpWMn1jVNzfvJ2pv9fPRoTaulTLA6fguRsA8YkRsk7q9nqHBJ8PFz1f2twgKSFgstX3sPSKx3v-nqHxbOwqps9Iph0kp5_YnAGLtyUfa_MGymguyDpp88cwYc2NzcttTj6LjOqSOcQif_P-Ds/w640-h334/Simple%20Flutter%20Form.png","title":"Sadik"},
    {"img":"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgp3ionJs4Jhl4awzYaX9JO7gUEr_fXM09TiQdunW3f13yIpWMn1jVNzfvJ2pv9fPRoTaulTLA6fguRsA8YkRsk7q9nqHBJ8PFz1f2twgKSFgstX3sPSKx3v-nqHxbOwqps9Iph0kp5_YnAGLtyUfa_MGymguyDpp88cwYc2NzcttTj6LjOqSOcQif_P-Ds/w640-h334/Simple%20Flutter%20Form.png","title":"Nazmin"},

  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
     appBar: AppBar(
       title: Text('My App'),
     ),
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){MySnacBar(MyItems[index]['title']!, context);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),
            ),
          );
        },
      )
    );
  }
}
