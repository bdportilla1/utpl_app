import 'package:flutter/material.dart';

class HomeSliderWidget extends StatelessWidget {
   
  const HomeSliderWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        color: Colors.indigo,
        height: 200,
        width: 320,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: const Text('AQUI VA EL HOME SLIDER INICIAL'),
        
      ),
    );
  }
}