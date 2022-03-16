import 'package:film_demo_app/providers/movie_provider.dart';
import 'package:film_demo_app/screens/widgets/list_movie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routerName ='/MoviePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> tabBarItem = ["Popular", "NowPlaying", "Up Coming", "Top Rate"];
  int _currentIndex =0;
  Future getData ()async{
    await Provider.of<MovieProvider>(context,listen: false).getDataMovie();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<MovieProvider>(context,listen: false).getDataMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 30, left: 25),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tabBarItem.length,
                    itemBuilder: (context, index) => buildTabBarItem(index)),
              ),
            ),
            const Expanded(child: ListMovie())
          ],
        ),
      ),
    );
  }
  Widget buildTabBarItem(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
            _currentIndex= index;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 3),
              child: Text(
                  tabBarItem[index], style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: _currentIndex==index? Colors.black : Colors.black12,
                      fontSize: 20
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 3),
               child: Container(
                 height: 3,
                 width: 70,
                 color: _currentIndex == index ? Colors.black : Colors.transparent,
               ),
          )
        ],
      ),
    );
  }

}

