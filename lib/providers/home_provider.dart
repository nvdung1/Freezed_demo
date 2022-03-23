
import 'package:film_demo_app/models/actor_model.dart';
import 'package:film_demo_app/models/movie_model.dart';
import 'package:film_demo_app/services/api_services.dart';
import 'package:state_notifier/state_notifier.dart';

class HomeProvider extends StateNotifier<int>{
  HomeProvider() : super(0);
  late Future<List<MovieModel>> movies;
  late Future<List<ActorModel>> actors;

  void currentIndex(int index) {
    state= index;
  }

  getDataMovie (){
    return movies = ApiServices().fetchMovieList();
  }

  getDataActor (int id){
    return actors = ApiServices().fetchActorList(id);
  }

}