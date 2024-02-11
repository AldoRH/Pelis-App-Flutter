import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pelis_app/providers/movies_provider.dart';

import '../models/credits_response.dart';

class CastingCards extends StatelessWidget {
  const CastingCards(this.movieId);

  final int movieId;

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: false);

    return FutureBuilder(
        future: moviesProvider.getMovieCast(movieId),
        builder: (_, AsyncSnapshot<List<Cast>> snapshot) {

          if(!snapshot.hasData){
            return Container(
              constraints: const BoxConstraints(maxWidth: 150),
              height: 190,
              child: const CupertinoActivityIndicator(),
            );
          }

          final List<Cast> cast = snapshot.data!;


          return Container(
            margin: const EdgeInsets.only(bottom: 30),
            width: double.infinity,
            height: 190,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, int index) => _CastCard(cast[index],),
            ),
          );
        });
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard(this.actor);

  final Cast actor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 110,
        width: 100,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage("assets/no-image.jpg"),
                image: NetworkImage(actor.fullProfilePath),
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              actor.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
