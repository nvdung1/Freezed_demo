
import 'package:film_demo_app/models/actor_model.dart';
import 'package:film_demo_app/models/movie_model.dart';
import 'package:film_demo_app/providers/actor_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const routerName ='/DetailMovie';

  @override
  Widget build(BuildContext context) {
    final movie= ModalRoute.of(context)!.settings.arguments as MovieModel;
    Future<List<ActorModel>> futureListData= Provider.of<ActorProvider>(context,listen: false).actors;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.network("https://image.tmdb.org/t/p/original" + movie.backdrop_path!,
          fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white.withOpacity(0.8),
          ),
          _body(context, movie, futureListData)
        ],
      ),
    );
  }
  Widget _body(BuildContext context, MovieModel movie, Future<List<ActorModel>> futureListData){
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children:  [
        const SizedBox(
          height: 20,
        ),
        _header(movie),
        const SizedBox(
          height: 20,
        ),
        _cast(futureListData),
        const SizedBox(
          height: 20,
        ),
        _overview(movie)
      ],
    );
  }
  Widget _header(MovieModel movie){

    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
                width: 100,
                height: 150,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image:  DecorationImage(
                    image: NetworkImage(
                        "https://image.tmdb.org/t/p/w500" + movie.poster_path!),fit: BoxFit.cover
                  )
                ),
              ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(
                        movie.original_title!,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text("Xuất bản: "),
                          Expanded(
                              child: Text(movie.release_date!))
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Thể loại: "),
                          Expanded(
                              child: Text(
                                  "Phim hoạt hình, Phim phiêu lưu, Phim giả tưởng, Phim gia đình"))
                        ],
                      )
                    ],
                  ),
                )
            )
          ],
        ),
    );
  }

  Widget _cast(Future<List<ActorModel>> actorList){

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:   [
              const Text(
                "Cast",
                style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
               height: 10,
              ),
              SizedBox(
                  height: 180,
                  child: FutureBuilder<List<ActorModel>>(
                    future: actorList,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return const Center(
                          child: Text("Load du lieu loi"),
                        );
                      }
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      List<ActorModel> listCast = snapshot.data!;
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: listCast.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return _itemCast(listCast[index]);
                          });
                    },
                  ),
          )
        ],
      ),
    );
  }

  Widget _itemCast( ActorModel actor){

    return Container(
      margin: const EdgeInsets.only( right:  12),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 100,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      image: (actor.profile_path!=null)? NetworkImage("https://image.tmdb.org/t/p/w500" +
                          actor.profile_path!):const AssetImage("assets/images/ATB3o.gif") as ImageProvider , fit: BoxFit.cover)),
            ),
          ),
          Text(
            actor.name??" ",
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(
            actor.character??" ",
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _overview(MovieModel movie){

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: Column(
            children:  [
              const Text(
                "Overview",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(movie.overview??" ", style: const TextStyle(fontSize: 16),)
      ],
    ),
    );
  }
}
