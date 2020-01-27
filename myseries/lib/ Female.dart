import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import ' femaleactor.dart';
import 'like.dart';
import 'femaleactor.dart';

class FemalePage extends StatefulWidget {
  @override
  FemalePageState createState() {
    return new FemalePageState();
  }
}

class FemalePageState extends State<FemalePage> {
  var url =
      "https://raw.githubusercontent.com/patchareeo/mobiledev/master/myseries/assets/icons/female.json";

  PokeHub pokeHub;

  @override
  void initState() {
    super.initState();

    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    pokeHub = PokeHub.fromJson(decodedJson);
    print(pokeHub.toJson());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text("ดาราหญิงที่ชื่นชอบ"),
        backgroundColor: Colors.redAccent[100],
      ),
      body: pokeHub == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.count(
              crossAxisCount: 1,
              children: pokeHub.pokemon
                  .map((poke) => Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FemalActor(
                                          pokemon: poke,
                                        )));
                          },
                          child: Hero(
                            tag: poke.img,
                            child: Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.40,
                                    width: MediaQuery.of(context).size.width *
                                        0.60,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(poke.img))),
                                  ),
                                  Text(
                                    poke.name,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              color: Colors.pink[50],
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
    );
  }
}
