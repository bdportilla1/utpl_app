import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';


class HomeSliderWidget extends StatelessWidget {
   
  const HomeSliderWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  SizedBox(
        height: 200,
        width: double.infinity,
        child: Swiper(
          itemCount: 3,
          viewportFraction: 0.8,
          pagination: const SwiperPagination(),
          //control: SwiperControl(),
          autoplay: true,
          scale: 0.9,
          duration: 2,
          itemBuilder: (BuildContext context,int index){
            return Image.network("https://via.placeholder.com/350x150",fit: BoxFit.fill,);
          },
      ),
      ),
    );
  }
}