import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatefulWidget{
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool?isChecked = false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:SingleChildScrollView(
       child: Center(
         child: Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(height: 200,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   FaIcon(FontAwesomeIcons.filter,size:25,color: Colors.lightBlue),
                   Container(width:8,),
                   Text('Filters',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,), ),
                 ],
               ),
               Container(height: 40,),
               Container(
                 width:280,
                 height: 50,
                 child: TextField(
                   decoration: InputDecoration(
                       hintText: 'e.g. Machine Learning',

                       focusedBorder:OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.blue),
                         // borderRadius: BorderRadius.circular(20),
                       ),
                       border:OutlineInputBorder(
                         // borderRadius:BorderRadius.circular(20),
                       )
                   ),
                 ),
               ),
               Container(height: 40,),
               Container(
                 width:280,
                 height: 50,
                 child: TextField(
                   decoration: InputDecoration(
                       hintText: 'e.g. Delhi',
                       focusedBorder:OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.blue),
                         // borderRadius: BorderRadius.circular(20),
                       ),
                       border:OutlineInputBorder(
                         // borderRadius:BorderRadius.circular(20),
                       )
                   ),
                 ),
               ),
               Container(height: 40,),
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(width: 40,),
                     Checkbox(
                       value: isChecked, // Set initial state
                       onChanged: (newBool){
                         setState(() {
                           isChecked = newBool;
                         });
                       },
                     ),
                     Text('Work from home',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
                   ],
                 ),
               ),
               Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(width: 40,),
                     Checkbox(
                       value: isChecked, // Set initial state
                       onChanged: (newBool){
                         setState(() {
                           isChecked = newBool;
                         });
                       },
                     ),
                     Text('Part-time',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                   ],
                 ),
               ),
               Container(height: 20,),
               ElevatedButton(onPressed:(){
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchPage()),);
               }, child:Text('Search',style: TextStyle(color: Colors.black,fontSize:15),)
                 ,style: ElevatedButton.styleFrom(
                   backgroundColor:Colors.lightBlue, // Set background color
                   minimumSize: Size(150, 15), // Set minimum width and height
                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust padding
                 ),
               ),
             ],
           ),

         ),
       ),
     ) ,
   );
  }
}