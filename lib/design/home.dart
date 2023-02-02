import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.maxFinite,
        height: 50,
        color: Colors.blue,
        child: TextButton(
          onPressed: (){
            FirebaseAuth.instance.signOut();
          },
          child: Text('Logout',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      ),
      body: Center(
          child: Text('Hello',style: TextStyle(fontSize: 30),)),
    );
  }
}