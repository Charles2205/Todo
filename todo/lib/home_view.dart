import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
  appBar: AppBar(
    centerTitle:true,
    backgroundColor: Colors.indigo,
    title: const Text(
      'ToDo App',
      textAlign: TextAlign.center,
     style: TextStyle(
       fontSize:25.58,
       fontWeight:FontWeight.bold,
       color:Colors.white,
      //  fontStyle:FontStyle.normal,
      //  backgroundColor:Colors.black,
      // letterSpacing:12.3,
      // wordSpacing:100,
     ), 
      ),
     
  )
 
    );
}
}
