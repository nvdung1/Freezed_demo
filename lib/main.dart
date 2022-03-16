import 'package:film_demo_app/providers/actor_provider.dart';
import 'package:film_demo_app/providers/movie_provider.dart';
import 'package:film_demo_app/screens/detail_movie.dart';
import 'package:film_demo_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => MovieProvider()),
        ChangeNotifierProvider(create: (_) => ActorProvider())
      ],
        child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        HomePage.routerName: (context) => const HomePage(),
        DetailScreen.routerName: (context)=> const DetailScreen(),
      },
      home: const HomePage(),
    );
  }
}

