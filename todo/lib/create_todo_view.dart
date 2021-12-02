import 'package:flutter/material.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color.fromRGBO(249, 250, 255, 1),
      body:SingleChildScrollView(
        child: Column(
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
             Row(
               children: [
                 Container(
                   margin: const EdgeInsets.only (left:15),     
                    child: SizedBox(
                    // wrap card with a SizedBox to get width and height
                    width: 120,
                    height: 75,
                    child: InkWell(
                      onTap:() {},
                      child: Card(
                        //  elevation:0,
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
            ),Container(
              margin:const EdgeInsets.only(left:30),
              child: const SizedBox(
                width:56,
                height:56,
                child:InkWell(
                  onTap:null,
                  child: Card(
                      elevation: 0,
                      shape: CircleBorder(
                        side:BorderSide(
                          color:Color.fromRGBO(196,196,196,1),
                          width:1
                        )
                      ),
                      child: Icon(
                          Icons.radio_button_checked,
                          
                          size:30,
                          color:Color.fromRGBO(22,106,237,1)
                        ), 
                      ),
                ),
              ),
            ),
           
               ],
             ),
         Container(
           //container:to set a margin
            margin:const EdgeInsets.only(top:70),
           child: Row 
           //CrossAxisAlignment:vertical & MainAxisAlignment:horizontal 
           //CrossAxisAlignment:horizontal & MainAxisAlignment:vertical 
           (mainAxisAlignment:MainAxisAlignment.center,
             children:const[
             IconButton(onPressed:null,
             icon:Icon(Icons.create_new_folder_outlined,
             size:30,
              color:Color.fromRGBO(139, 131, 141, 1) ),),
            IconButton(onPressed:null,
             icon:Icon(Icons.flag_outlined,
             size:30,
              color:Color.fromRGBO(139, 131, 141, 1) ),),
              IconButton(onPressed:null,
             icon:Icon(Icons.dark_mode_outlined,
             size:30,
              color:Color.fromRGBO(139, 131, 141, 1) ),)
            ],
           ),
         ),
         Container(
           alignment:Alignment.bottomRight,
           margin:const EdgeInsets.fromLTRB(0, 160, 10, 30),
           child: SizedBox(
             width: MediaQuery.of(context).size.width * 0.30,
             height: MediaQuery.of(context).size.height * 0.15,
             child: ClipRRect(
               borderRadius:BorderRadius.circular(50),
               child: ElevatedButton(
                 style:ButtonStyle(backgroundColor: MaterialStateProperty.all(
                   const Color.fromRGBO(22,106, 237, 1),),
                 ),
                 onPressed: null,
                child: Row(
                  children:const  [
                    Text("New Task",
                    style:TextStyle(
                    color:Colors.white,
                      fontSize:18),),
             
                      Icon(Icons.expand_less_outlined,
                      size:28,
                      color:Colors.white)
                  ],
                
                )
                ),
             ),
           ),
         )
        //  FloatingActionButton(onPressed: onPressed)
         ],
         
        ),
      ),
    
      
    );
  }
}
