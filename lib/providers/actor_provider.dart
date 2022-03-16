import 'package:film_demo_app/models/actor_model.dart';
import 'package:film_demo_app/services/api_services.dart';
import 'package:flutter/material.dart';

class ActorProvider extends ChangeNotifier{
  late Future<List<ActorModel>> actors;

  getDataActor (int id){
    return actors = ApiServices().fetchActorList(id);
  }
}