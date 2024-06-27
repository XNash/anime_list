import 'package:anime_list/src/anime/presentation/pages/list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 480,
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.height,
              child: Image.asset("assets/images/4.jpg", fit: BoxFit.cover,),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Card(
                  color: const Color(0xfffce2e3).withOpacity(0.6),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 260,
                      width: 360,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Welcome!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "This app was created to grant you access to Nash's favorite animes list.\n\n Wanna see them? Just hit the button bellow",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ListPage()));
                            },
                            child: Card(
                              color: const Color(0xff7d6e53),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(color: Color(0xff02198a), width: 2)),
                              child: const SizedBox(
                                height: 40,
                                width: 140,
                                child: Center(
                                  child: Text(
                                    "Get started",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                    ),
                  )
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
