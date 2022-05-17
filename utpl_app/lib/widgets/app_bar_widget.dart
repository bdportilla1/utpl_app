import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget{
  final String titulo;

  const AppBarWidget({Key? key, required this.titulo}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Center(
          child:  Text(titulo)
        ),
        leading: const Icon(Icons.info_outline),
        actions: [
          Container(
            margin:  const EdgeInsets.only(right: 10),
            child:  const Icon(Icons.logout_outlined,
            ),
          )
        ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}