import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatelessWidget {
  final List<String> imageUrls;
  final List<String> entries = <String>[
    "Uppuma",
    "Sambaarum Choorum ",
    "Chicken Biriyani",
  ];
  HomePage(this.imageUrls);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(8),
            child: Text(
              "Todays Menu",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height * .365,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: MediaQuery.of(context).size.height * .11,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://lh3.googleusercontent.com/XZz_ZT-44k0J-JkxyIwrnMqm6q8EphyjEl7mROKEPQit23Yd9svvsDr85lrQAw57AKb6LraHR7U45wUKfImY3sjFMSc=w1000",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            entries[index],
                            style: TextStyle(
                              fontFamily: "Open Sans",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(26, 26, 26, 0.75),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(8),
            child: Text(
              "Tommorrows Menu",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height * .365,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: MediaQuery.of(context).size.height * .11,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://lh3.googleusercontent.com/XZz_ZT-44k0J-JkxyIwrnMqm6q8EphyjEl7mROKEPQit23Yd9svvsDr85lrQAw57AKb6LraHR7U45wUKfImY3sjFMSc=w1000",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            entries[index],
                            style: TextStyle(
                              fontFamily: "Open Sans",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(26, 26, 26, 0.75),
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        
      ],
      
    );
  }
}
