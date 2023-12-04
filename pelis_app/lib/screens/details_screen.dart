
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'No se encontro la pelicula';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppbar(),

          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(),
              _Overview(),
              CastingCards(),
            ])
            )
        ],
      )
    );
  }
}

class _CustomAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          padding: const EdgeInsets.only(bottom: 10),
          child: const Text("movie.title", style: TextStyle(fontSize: 16),),
        ),
        background: const FadeInImage(
          placeholder: AssetImage("assets/loading.gif"),
          image: NetworkImage('https://via.placeholder.com/500x300'),
          fit: BoxFit.cover,
           
           ) ,
      ),
    );
  }
}


class _PosterAndTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/300x400'),
              height: 150,
              ),
          ),
          const SizedBox(width: 20,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('movie.title' , style: Theme.of(context).textTheme.headlineSmall, overflow: TextOverflow.ellipsis , maxLines: 2,),
              Text('movie.originaltitle' , style: Theme.of(context).textTheme.headlineSmall, overflow: TextOverflow.ellipsis , maxLines: 2,),

              Row(
                children: [
                  const Icon(Icons.star_outlined, size: 15, color: Colors.grey,),
                  const SizedBox(width: 5,),
                  Text('movie.rating', style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
            ],
          ),
        ],
      ),

    );
  }
}

class _Overview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text('Nisi in ullamco dolore nostrud dolor nostrud ullamco id sunt. Reprehenderit dolore aliqua cillum sit excepteur. Anim elit ut non incididunt cupidatat. Tempor laborum aliquip nostrud sit. Voluptate deserunt ipsum eu excepteur aliquip sunt tempor cillum magna occaecat quis laboris occaecat. Magna nisi voluptate exercitation aliquip eu amet velit in qui consectetur. Ad consectetur aute quis enim esse anim excepteur. Voluptate sint et elit nisi esse ullamco ad non irure laboris aliquip ea voluptate. Deserunt qui quis esse qui amet amet consequat sint excepteur ullamco. Cupidatat consequat dolor anim exercitation dolore laborum dolore et labore cupidatat. Incididunt aliqua excepteur labore irure officia reprehenderit nisi magna laborum in irure nostrud deserunt.', 
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.titleMedium,
      ),


    );
  }
}

