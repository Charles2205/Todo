import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class HomeView extends StatelessWidget   {
  const HomeView({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(   
      backgroundColor:const Color.fromRGBO(249, 250, 255, 1),
  appBar: AppBar(
  
   backgroundColor:const Color.fromRGBO(249, 250, 255, 1),
    elevation: 0,
    leading:  IconButton(
      onPressed:(){},
      // ignore: prefer_const_constructors
      icon:Icon(Icons.menu),color:Colors.black,
      tooltip:'Menu'
    ), 
  actions:[
    IconButton(
      tooltip:'Search',
      onPressed: () {},
     // ignore: prefer_const_constructors
     icon:  Icon(Icons.search,
     size:30, 
     color:Colors.black,),),
      IconButton(
        tooltip:'Notifications',
        onPressed: () {},
     // ignore: prefer_const_constructors
     icon:  Icon(Icons.notifications_outlined,
     size:30, 
     color:Colors.black,),)
     ,
  ],
    
    
   
  ),
  body:Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children :[
      const Padding(
        padding: EdgeInsets.all(18),
        child: Text("What's up,Charles",style:TextStyle(
          fontSize:28,
          fontWeight:FontWeight.bold,
          color:Color.fromRGBO(34, 45, 87, 1),
        )),
      ),
     const Padding(
        padding: EdgeInsets.only(left:18),
        child: Text("CATERGORIES", 
        style:TextStyle(
          fontSize:12,
          color:Color.fromRGBO(161,167,200,1),
          
        )),
      ),
      Row(
        children:[
          SizedBox(
            width:MediaQuery.of(context).size.width*0.35,
            height:MediaQuery.of(context).size.height*0.12,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(20),
              child: Card(
                elevation: 0,
                color:Colors.blue[100],
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("40 Tasks",
                    style:TextStyle(
                      fontSize:12,
                    fontWeight:FontWeight.w400,
                    color: Color.fromRGBO(164,169,199,1)
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10.0),
                    child: Text("Business",
                    style:TextStyle(
                    fontSize:18,
                    color:Colors.black,
                    fontWeight:FontWeight.bold,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:6.0),
                    child: LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width*0.20,
                       lineHeight: 3.0,
                       percent: 0.5,
                        progressColor: Colors.pink,),
                  )
                  ],
                
              ) ,
              ),
            ),
          ),
          SizedBox(
            width:MediaQuery.of(context).size.width*0.35,
            height:MediaQuery.of(context).size.height*0.12,
            child: ClipRRect(
              borderRadius:BorderRadius.circular(20),
              child: Card(
                elevation: 0,
                color:Colors.blue[100],
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("18 Tasks",
                    style:TextStyle(
                      fontSize:12,
                    fontWeight:FontWeight.w400,
                    color: Color.fromRGBO(164,169,199,1)
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10.0),
                    child: Text("Personal",
                    style:TextStyle(
                    fontSize:18,
                    color:Colors.black,
                    fontWeight:FontWeight.bold,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:6.0),
                    child: LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width*0.20,
                       lineHeight: 3.0,
                       percent: 0.5,
                        progressColor: Colors.blue,),
                  )
                  ],
                
              ) ,
              ),
            ),
          )
        ]
        )
    ],
  )
  );
  }
  }

