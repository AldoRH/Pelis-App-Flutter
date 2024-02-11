import 'package:flutter/material.dart';
import 'package:pelis_app/providers/movies_provider.dart';
import 'package:pelis_app/search/search_delegate.dart';
import 'package:pelis_app/widgets/widgets.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cine'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate()), 
            icon: const Icon(Icons.search_outlined)
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
      
            //tarjetas principales
            CardSwiper(movies: moviesProvider.onDisplayMovies),
      
            //slider de peliculas
            MovieSlider( 
              movies: moviesProvider.popularMovies,
              title: "Populares", 
              onNextPage: () => moviesProvider.getPopularMovies(),
            ),
          ],
        ),
      )
    );
  }
}

