// import 'package:flutter/cupertino.dart';
//
// void main(){
//   runApp(iOSStyleApp());
// }
//
// class iOSStyleApp extends StatelessWidget {
//   const iOSStyleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text('Home'),
//         trailing: CupertinoButton(
//             child: Icon(CupertinoIcons.add),
//             onPressed: (){},
//         ),
//       ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CupertinoActivityIndicator(
//                 radius: 25,
//               ),
//               CupertinoSwitch(value: true, onChanged: (value){},)
//             ],
//           ),
//         )
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)
              )
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red)
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber,
          elevation: 3,
        )
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.add),
            ElevatedButton(
                onPressed: (){}, child: Text('ElevatedButton')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: (){}, child: Text('ElevatedButton')),
            ElevatedButton(style: ButtonStyles.textButton, onPressed: (){}, child: Text('ElevatedButton')),
            ElevatedButton(onPressed: (){}, child: Text('ElevatedButton')),
            TextButton(onPressed: (){}, child: Text('Tap to Edite')),
            TextField()
          ],
        ),
      ),
    );
  }
}

class ButtonStyles {
  static ButtonStyle elevatedButton = ElevatedButton.styleFrom(
    backgroundColor: Colors.amber,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4)
    )
  );

  static ButtonStyle textButton = TextButton.styleFrom(
    backgroundColor: Colors.green,
    foregroundColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100)
    )
  );
}

