import 'package:flutter/material.dart';


import 'package:utpl_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const AppBarWidget(titulo: 'UTPL App'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: const [
          SizedBox(height: 5,),
          HomeSliderWidget(),
          SizedBox(height: 10,),

          //Empieza el menu
          ItemMenuWidget(
              tituloMenu: 'Hola Bryant', 
              color: Color.fromRGBO(52, 151, 219, 1), //#3497DB
              icono: Icons.account_box_rounded,
              ruta: 'home_screen',
          ),
          SizedBox(height: 5,),
          ItemMenuWidget(
              tituloMenu: 'Carnet Digital', 
              color: Color.fromRGBO(155, 88, 182, 1), //#9B58B6
              icono: Icons.branding_watermark_outlined,
              ruta: 'home_screen',
          ),





          Text('Home Screen')
        ],
      ),
    );
  }
}