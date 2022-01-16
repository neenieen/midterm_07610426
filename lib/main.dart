import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         constraints: const BoxConstraints.expand(),
           decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/images/bg.jpg'),
             fit: BoxFit.cover,
           ),
         ),
         child: Center(
           child: Column(

             mainAxisSize: MainAxisSize.max,
             children: [
               Container(height: 50.0,),
               Text('PIG WIGHT',
                     style: TextStyle(fontSize: 50.0, color: Colors.pink,) ,
                   ),
                   Text("CALCULATOR",
                     style: TextStyle(fontSize: 30.0, color: Colors.pink,) ,
                   ),
               Container(height: 30.0,),
               Image.asset('assets/images/pig.png',width: 350.0,),
               Container(height: 20.0,),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.pink.shade50,
                             boxShadow: [
                               BoxShadow(
                                 offset: const Offset(3.0, 5.0),
                                 blurRadius: 5.0,
                                 color: Colors.pinkAccent
                               ),
                             ]

                             ),
                               child: Column(
                                 children: [
                                   Text('LENGHT'),
                                   Text('(cm)'),
                                   TextField(
                                     textAlign: TextAlign.center,

                                   ),
                                   Container(height: 20.0,)
                                 ],
                               ),
                           ),
                         ),
                     Container(width: 20.0,),
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.pink.shade50,
                             boxShadow: [
                               BoxShadow(
                                   offset: const Offset(3.0, 5.0),
                                   blurRadius: 5.0,
                                   color: Colors.pinkAccent
                               ),
                             ]

                         ),
                         child: Column(
                           children: [
                             Text('GIRTH'),
                             Text('(cm)'),
                             TextField(
                               textAlign: TextAlign.center,
                             ),
                             Container(height: 20.0,)
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               Container(height: 20,),
               ElevatedButton(
                   onPressed: () {},
                   child: Text('CALCULATE'))
             ],
           ),

         ),

       ),
    );
  }
}
