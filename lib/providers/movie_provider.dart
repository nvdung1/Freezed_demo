import 'package:film_demo_app/models/movie_model.dart';
import 'package:film_demo_app/services/api_services.dart';
import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier{
  late Future<List<MovieModel>> movies;

  getDataMovie (){
    return movies = ApiServices().fetchMovieList();
  }
}