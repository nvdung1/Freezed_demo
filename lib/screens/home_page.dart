// ignore_for_file: must_be_immutable

import 'package:film_demo_app/providers/home_provider.dart';
import 'package:film_demo_app/screens/widgets/list_movie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  static const routerName ='/HomePage';
  List<String> tabBarItem = ["Popular", "NowPlaying", "Up Coming", "Top Rate"];

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeProvider>(context,listen: false).getDataMovie();
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
                    itemBuilder: (context, index) => buildTabBarItem(index,context)),
              ),
            ),
             Expanded(
                child:  buildBody(context)
             )
          ],
        ),
      ),
    );
  }
  Widget buildBody(BuildContext context){
    if(context.watch<int>()== 0){
      return const ListMovie();
    }
    else if(context.watch<int>()== 1){return const Center( child: Text("NowPlaying"),);}
    else if(context.watch<int>()== 2){return const Center( child: Text("Up Coming"),);}
    else{ return const Center( child: Text("Top Rate"),);}
    
  }
  Widget buildTabBarItem(int index, BuildContext context){
    return GestureDetector(
      onTap: (){
        context.read<HomeProvider>().currentIndex(index);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 3),
              child: Text(
                tabBarItem[index], style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: context.watch<int>()==index? Colors.black : Colors.black12,
                  fontSize: 20
              ),
              )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 3),
            child: Container(
              height: 3,
              width: 70,
              color: context.watch<int>() == index ? Colors.black : Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}

