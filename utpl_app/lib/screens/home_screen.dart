import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child:  Text('UTPL App')
        ),
        //leading: const Icon(Icons.info_outline),
        actions: [
          Container(
            margin:  const EdgeInsets.only(right: 10),
            child:  const Icon(Icons.logout_outlined,
            ),
          )
        ],
      ),
      body: const Center(
         child: Text('Home Screen'),
      ),
    );
  }
}