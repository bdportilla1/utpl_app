import 'package:flutter/material.dart';

class ItemMenuScrollWidget extends StatelessWidget {
  final String titulo;
  final IconData icono;
  final Color color;
   
  const ItemMenuScrollWidget({
    Key? key, 
    required this.titulo, 
    required this.icono, 
    required this.color}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
          height: 80,
          //width: MediaQuery.of(context).size.width *0.6,
          child: Card(
            color: color,
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              title: Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          titulo,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          textAlign: TextAlign.end,
                          style: const TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ], 
              ),
              tileColor: color, //#DD314E
              leading: Icon(
                icono,// icono 
                size: 35,
                color: Colors.white,
              ),     
            ),
          ),
        ),
      );
  }
}