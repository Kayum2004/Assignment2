import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      home: const MyHomePage(title: 'Greeting App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  MySnackBar(messege,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(messege))
    );
  }


  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
        )
    );




    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

        title: Text(widget.title),
      ),
      body:

      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            margin: EdgeInsets.fromLTRB(0, 100, 0, 12),
            alignment: Alignment.center,
            child: Text('Hellow, World!',style:TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),

          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
            alignment: Alignment.center,
            child: Text('Welcome to Flutter!',),

          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
            alignment: Alignment.center,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh_NTCGkEt6OruhQ7n6nVsvF5dcb1BFNN7-Q&s"),
          ),
          Container(
            child: ElevatedButton(onPressed: () { MySnackBar("Button Pressed", context); }, child: Text('Press Mee'),style: buttonStyle,),
          )
        ],

      ),
    );
  }
}
