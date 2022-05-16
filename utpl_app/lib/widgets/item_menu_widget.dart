import 'package:flutter/material.dart';

class ItemMenuWidget extends StatelessWidget {
  final String tituloMenu;
  final IconData icono;
  final Color color;
  final String ruta;

  const ItemMenuWidget({
    Key? key, 
    required this.tituloMenu, 
    required this.icono, 
    required this.color, 
    required this.ruta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12) ,
      child: ListTile(
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            Text(
              tituloMenu,
              textAlign: TextAlign.end,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
     
          ], 
        ),
        leading: Icon(
          icono,
          size: 70,
          color: Colors.white,
        ),
        trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
              size: 35,
              color: Colors.white,
            ),
        onTap: (){
          Navigator.pushNamed(context, ruta);              
        },
        tileColor: color, 
      ),
    );
  }
}