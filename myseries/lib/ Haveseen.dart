import 'package:flutter/material.dart';
import 'like.dart';

class HaveSeen extends StatelessWidget {
  final Pokemon pokemon;

  HaveSeen({this.pokemon});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 15,
            left: 10.0,
            top: MediaQuery.of(context).size.height * 0.15,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 80.0,
                  ),
                  Text(
                    pokemon.name,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.w200),
                  ),
                  Text("เรื่องย่อ  ${pokemon.height}"),
                  Text("....${pokemon.weight}...."),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: pokemon.img,
                child: Container(
                  height: 190.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(pokemon.img))),
                )),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[200],
        title: Text(pokemon.name),
      ),
      body: bodyWidget(context),
    );
  }
}
