import 'package:anime_list/src/anime/data/model/Anime.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Anime> animes = [
      Anime(name: "Jujutsu Kaisen", seasons: 2, episodes: 24),
      Anime(name: "My Hero Academia", seasons: 7, episodes: 24),
      Anime(name: "Kimetsu no yaiba", seasons: 4, episodes: 24),
      Anime(name: "Berzerk of gluttony", seasons: 1, episodes: 12),
      Anime(name: "Horimiya", seasons: 2, episodes: 12),
      Anime(name: "Dark Gathering", seasons: 1, episodes: 28),
      Anime(name: "Fuufu Ijou Koibito Miman", seasons: 1, episodes: 12),
      Anime(name: "Jaku-Chara Tomozaki-kun", seasons: 2, episodes: 12),
      Anime(name: "Jigokuraku", seasons: 1, episodes: 13),
      Anime(name: "Itsudatte Bokura no Koi wa 10cm datta", seasons: 1, episodes: 6)
    ];
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 480,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/38.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.white.withOpacity(0.5),
                title: const Text(
                  "Nasshu's Anime List",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                actions: [
                  IconButton(onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("This app was developped by Nash for the cross-platform mobile development course.")));
                  }, icon: const Icon(Icons.info)),
                ],
              ),
              body: SizedBox(
                width: 500,
                child: ListView.builder(
                  itemCount: animes.length,
                  itemBuilder: (context, i) {
                    final anime = animes[i];
                    return Card(
                      color: Colors.white.withOpacity(0.5),
                      child: ListTile(
                        leading: const Icon(Icons.video_library_outlined),
                        title: Text(
                          anime.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            "${anime.seasons} seasons, ${anime.episodes}x${anime.seasons} episodes"),
                        trailing: const Icon(Icons.more_vert),
                      ),
                    );
                  },
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Color(0xffdbccf2).withOpacity(0.5),
                child: const Text(
                  "+",
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Row(
                        children: [
                          SizedBox(
                            height: 18,
                            width: 18,
                            child:
                            CircularProgressIndicator(color: Colors.white,),
                          ),
                          SizedBox(width: 10,),
                          Text("Nash is developping this feature...")
                        ],
                      )));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
