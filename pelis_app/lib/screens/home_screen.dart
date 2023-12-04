import 'package:flutter/material.dart';
import 'package:pelis_app/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cine'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search_outlined)
            )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
      
            //tarjetas principales
            CardSwiper(),
      
            //slider de peliculas
            MovieSlider(),
          ],
        ),
      )
    );
  }
}
