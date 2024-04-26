import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobify/searchPage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
class IntroPage extends StatefulWidget{
  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  bool _passwordVisible = true;
  bool?isChecked = false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
       child: Center(
         child: Container(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(height: 200,),
               Center(
                 child: Container(
                   width:280,
                   height: 50,
                   child: TextField(
                     keyboardType: TextInputType.emailAddress,
                     controller: emailText,
                     decoration:InputDecoration(
                         hintText: 'Enter your email',
                         prefixIcon: Icon(Icons.email,color: Colors.blue,),
                         focusedBorder:OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.blue),
                           borderRadius: BorderRadius.circular(20),
                         ),
                         border:OutlineInputBorder(
                           borderRadius:BorderRadius.circular(20),
                         )
                     ),
                   ),
                 ),
               ),
               Container(height: 40,),
               Container(
                 width: 280,
                 height: 50,
                 child: TextField(
                   controller: passText,
                   keyboardType: TextInputType.phone,
                   obscureText: _passwordVisible,
                   decoration:InputDecoration(
                       hintText: 'Enter password here',
                       suffixIcon: IconButton(
                         icon: Icon(
                           _passwordVisible ? Icons.visibility_off : Icons.visibility,color: Colors.blue,
                         ),
                         onPressed: () {
                           setState(() {
                             _passwordVisible = !_passwordVisible;
                           });
                         },
                       ),
                       focusedBorder:OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.blue),
                         borderRadius: BorderRadius.circular(20),
                       ),
                       border:OutlineInputBorder(
                         borderRadius:BorderRadius.circular(20),

                       )
                   ),
                 ),
               ),
               Container(height: 20,),
               ElevatedButton(onPressed:(){
                 String UserEmail = emailText.text.toString();
                 String UserPass = passText.text;
                 print("Email:$UserEmail, Password:$UserPass ");
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchPage()),);
               }, child:Text('Login',style: TextStyle(color: Colors.black,fontSize:15),)
                 ,style: ElevatedButton.styleFrom(
                   backgroundColor:Colors.lightBlue, // Set background color
                   minimumSize: Size(150, 15), // Set minimum width and height
                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Adjust padding
                 ),
               ),
           // SizedBox(height: 20,),
               // Row(
               //   children: [
               //     Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F7123025%2Flogo_google_g_icon&psig=AOvVaw391RM_O4C-dphDCYdVJHBY&ust=1714226023741000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCKD0oNqD4IUDFQAAAAAdAAAAABAE')
               //   ],
               // )
             ],
           ),
         ),
       ),
     ),
   );
  }
}