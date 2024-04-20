import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fragment/AlarmFragment.dart';
import 'fragment/EmailFragment.dart';
import 'fragment/GroupFragment.dart';
import 'fragment/HomeFragment.dart';
import 'fragment/ProfileFragment.dart';
import 'fragment/SearchFragment.dart';
import 'fragment/SettingFragment.dart';
import 'fragment/WalletFragment.dart';

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


    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: 'Home',),
                Tab(icon: Icon(Icons.person), text: 'Profile',),
                Tab(icon: Icon(Icons.search),text: 'Search',),
                Tab(icon: Icon(Icons.email),text: 'E-mail',),
                Tab(icon: Icon(Icons.settings), text: 'Settings',),
                Tab(icon: Icon(Icons.access_alarm), text: 'Alarm',),
                Tab(icon: Icon(Icons.group), text: 'Group',),
                Tab(icon: Icon(Icons.wallet), text: 'Wallet',)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment(),
              ProfileFragment(),
              SearchFragment(),
              EmailFragment(),
              SettingFragment(),
              AlarmFragment(),
              GroupFragment(),
              WalletFragment()
            ],
          ),
        )
    );
  }
}
