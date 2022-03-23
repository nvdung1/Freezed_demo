// ignore_for_file: must_be_immutable
import 'package:film_demo_app/models/movie_model.dart';
import 'package:film_demo_app/providers/home_provider.dart';
import 'package:film_demo_app/screens/detail_movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieItem extends StatelessWidget {
  MovieModel movie;
  MovieItem({Key? key, required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Provider.of<HomeProvider>(context,listen: false).getDataActor(movie.id!);
        Navigator.of(context).pushNamed( DetailScreen.routerName ,arguments: movie);
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 230,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: (movie.poster_path==null)? const AssetImage("assets/images/actor/depp.jpg") as ImageProvider:
                        NetworkImage("https://image.tmdb.org/t/p/w500" +movie.poster_path!))),
              ),
              Positioned(
                right: 5,
                bottom: 5,
                child: Text(
                  movie.release_date??" ",
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                )
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              movie.title??" ",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          )
        ],
      )
    );
  }
}
