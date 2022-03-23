
import 'package:film_demo_app/models/movie_model.dart';
import 'package:film_demo_app/providers/home_provider.dart';

import 'package:film_demo_app/screens/widgets/movie_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListMovie extends StatelessWidget {
  const ListMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<List<MovieModel>> futureListData= Provider.of<HomeProvider>(context,listen: false).movies;

    return FutureBuilder<List<MovieModel>>(
        future: futureListData,
        builder: (context,snapshot){
        if(snapshot.hasError){
          return const Center(
            child: Text("Error"),
          );
        }
        if(!snapshot.hasData){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        List<MovieModel> listMovie= snapshot.data!;
        return GridView(
          padding: const EdgeInsets.all(12),
          children: listMovie.map((e) => MovieItem(movie: e)).toList(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 2/3, //width / height
              crossAxisSpacing: 10,
              mainAxisSpacing: 5
          ),
        );
      }
    );
  }
}
