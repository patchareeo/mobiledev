import 'package:flutter/material.dart';
import 'like.dart';

class MaleActor extends StatelessWidget {
  final Pokemon pokemon;

  MaleActor({this.pokemon});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 25,
            left: 12.0,
            top: MediaQuery.of(context).size.height * 0.15,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 70.0,
                  ),
                  Text(
                    pokemon.name,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Text("👉 ${pokemon.height}"),
                  Text("....${pokemon.weight}...."),
                  Text(
                    "☆",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.type
                        .map((t) => FilterChip(
                            backgroundColor: Colors.white,
                            label: Text(t),
                            onSelected: (b) {}))
                        .toList(),
                  ),
                  Text("☆", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.nextEvolution == null
                        ? <Widget>[Text("This is the final form")]
                        : pokemon.nextEvolution
                            .map((n) => FilterChip(
                                  backgroundColor: Colors.white,
                                  label: Text(
                                    n.name,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  onSelected: (b) {},
                                ))
                            .toList(),
                  ),
                  Text("☆", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: pokemon.weaknesses
                        .map((n) => FilterChip(
                              backgroundColor: Colors.white,
                              label: Text(
                                n,
                                style: TextStyle(color: Colors.black),
                              ),
                              onSelected: (b) {},
                            ))
                        .toList(),
                  )
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
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orangeAccent,
        title: Text(pokemon.name),
      ),
      body: bodyWidget(context),
    );
  }
}
