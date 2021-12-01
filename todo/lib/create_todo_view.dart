import 'package:flutter/material.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color.fromRGBO(249, 250, 255, 1),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only (top:46,right:25),
            child:  Card(
              elevation: 0,
              shape: const CircleBorder(
                side:BorderSide(
                  color:Colors.grey,
                  width:1
                )
              ),
              child:IconButton(
                onPressed:(){Navigator.pop(context);},
                tooltip:'exit',
                icon: const Icon(
                  Icons.close,
                  size:32,
                ), 
              ),),
          ),
         
          Container (
            margin:const EdgeInsets.fromLTRB(20,150,20,10),
            child:   TextField(
              maxLines: null,
              cursorColor:Colors.blue,
              keyboardType: TextInputType.multiline,
              decoration:InputDecoration(
                fillColor:Colors.white,
                hintText: "Enter new todo",
                hintStyle:const TextStyle(
                  fontSize:26,color:Color.fromRGBO(148,156,202,1),
                  fontWeight:FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                     color:Colors.grey.shade300,
                     width:1,
                     ),
                     borderRadius:BorderRadius.circular(30)
                  )
                ), 
              ),
          ),
           Container(
             margin: const EdgeInsets.only (left:15),     
              child: SizedBox(
              // wrap card with a SizedBox to get width and height
              width: 120,
              height: 75,
              child: InkWell(
                onTap:() {},
                child: Card(
                  
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  child: Row(
                  children:const [
                    Padding(
                      padding: EdgeInsets.only(left:8.0),
                      child: Icon(
                        Icons.calendar_today,size: 24,),
                    ),
                      Padding(
                        padding: EdgeInsets.only(left:8.0),
                        child: Text('Today',
                        style:TextStyle(
                          fontSize:18,
                          fontWeight:FontWeight.w400,
                          color:Color.fromRGBO(139, 131, 141, 1)
                
                        )),
                      ),
                  ], 
                  ),
                ),
              ),
            ),
          ),             

        ],
        
      )
      
    );
  }
}
