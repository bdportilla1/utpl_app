import 'package:flutter/material.dart';
import 'package:utpl_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: const AppBarWidget(titulo: 'UTPL App'),
      backgroundColor: const Color.fromRGBO(49, 60, 72, 1), //#313c48
      //resizeToAvoidBottomInset: true,
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          const SizedBox(height: 5,),
          const HomeSliderWidget(),
          const SizedBox(height: 10,),

          //Empieza el menu
          const ItemMenuWidget(
              tituloMenu: 'Hola Bryant', 
              color: Color.fromRGBO(52, 151, 219, 1), //#3497DB
              icono: Icons.account_box_rounded,
              ruta: 'home_screen',
          ),
          const SizedBox(height: 5,),
          const ItemMenuWidget(
              tituloMenu: 'Carnet Digital', 
              color: Color.fromRGBO(155, 88, 182, 1), //#9B58B6
              icono: Icons.branding_watermark_outlined,
              ruta: 'pruebas_screen',
          ),
          const SizedBox(height: 5,),
          // Menu con scroll
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        // SUBMENU 1
                        ItemMenuScrollWidget(
                          titulo: 'Oferta Académica',
                          icono: Icons.document_scanner,
                          color: Color.fromRGBO(240, 196, 15, 1), //#f0c40f
                        ),
                        // SUBMENU 2
                        ItemMenuScrollWidget(
                          titulo: 'Requisitos y Admisiones',
                          icono: Icons.edit,
                          color: Color.fromRGBO(221, 49, 78, 1), //
                        ),
                      ],
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        // SUBMENU 1
                        ItemMenuScrollWidget(
                          titulo: 'Noticias',
                          icono: Icons.newspaper,
                          color: Color.fromRGBO(16, 160, 179, 1), //#10a0b3
                        ),
                        // SUBMENU 2
                        ItemMenuScrollWidget(
                          titulo: 'Calendario Académico',
                          icono: Icons.calendar_month,
                          color: Color.fromRGBO(168, 204, 67, 1), //#a8cc43
                        ),
                      ],
                    ),
                  ),
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        // SUBMENU 1
                        ItemMenuScrollWidget(
                          titulo: 'Eventos Académicos',
                          icono: Icons.event_available_rounded,
                          color: Color.fromRGBO(155, 88, 182, 1),
                        ),
                        // SUBMENU 2
                        ItemMenuScrollWidget(
                          titulo: 'Centros UTPL',
                          icono: Icons.location_on,
                          color: Color.fromRGBO(26, 187, 156, 1), //#1abb9c
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        // SUBMENU 1
                        ItemMenuScrollWidget(
                          titulo: 'Oferta Académica',
                          icono: Icons.document_scanner,
                          color: Color.fromRGBO(240, 196, 15, 1), //#f0c40f
                        ),
                        // SUBMENU 2
                        ItemMenuScrollWidget(
                          titulo: 'Requisitos y Admisiones',
                          icono: Icons.edit,
                          color: Color.fromRGBO(221, 49, 78, 1), //
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

