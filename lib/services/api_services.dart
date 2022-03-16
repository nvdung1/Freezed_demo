// ignore_for_file: non_constant_identifier_names, prefer_function_declarations_over_variables, avoid_print
import 'dart:convert'as json;
import 'package:film_demo_app/models/actor_model.dart';
import 'package:film_demo_app/models/movie_model.dart';
import 'package:http/http.dart'as http;

final POPULAR_MOVIE_URL = Uri.parse("https://api.themoviedb.org/3/movie/popular?api_key=9bb89316d8693b06d7a84980b29c011f&language=vi-VN");
final LIST_ACTOR_URL =(idMovie) =>Uri.parse("https://api.themoviedb.org/3/movie/$idMovie/credits?api_key=9bb89316d8693b06d7a84980b29c011f&language=vi- VN");

class ApiServices{
  Future<List<MovieModel>> fetchMovieList() async{
    List<MovieModel> movieList=[];
    var response;

    try{
      response= await http.get(POPULAR_MOVIE_URL);

    }catch(e){
      print("Error video loading " + e.toString());
    }

    var jsonBody = json.jsonDecode(response.body);
    List jsonList = jsonBody['results'];

    for(var json in jsonList){
      MovieModel movieModel= MovieModel.fromJson(json);
      movieList.add(movieModel);
    }

    return movieList;
  }
  Future<List<ActorModel>> fetchActorList(int id) async{
    List<ActorModel> actorList=[];
    var response;

    try{
      response= await http.get(LIST_ACTOR_URL(id));
    }catch(e){
      print("Error video loading " + e.toString());
    }

    var jsonBody = json.jsonDecode(response.body);
    List jsonList = jsonBody['cast'];

    for(var json in jsonList){
      ActorModel actorModel= ActorModel.fromJson(json);
      actorList.add(actorModel);
    }

    return actorList;
  }
}