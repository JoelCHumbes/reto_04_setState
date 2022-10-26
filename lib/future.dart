import 'package:flutter/material.dart';

class FutureHome extends StatefulWidget {
  @override
  State<FutureHome> createState() => _FutureHomeState();
}

class _FutureHomeState extends State<FutureHome> {
  String name = "-";
  List<String> names = [];





  @override
  initState() {
    super.initState();
    //getName().then((value) {
    // name = value;
    //});
    //setState(() {});

    //getData().then((value){
    //  names = value;

    //setState(() {
    //});
    //});
    fetchDataFinal();
  }

  Future<void> fetchDataFinal() async {
    names = await getData();

    setState(() {});
  }

  Future<String> getName() async {
    return Future.delayed(Duration(seconds: 4), () {
      return "Joel Chumbes";
    });
  }

  Future<List<String>> getData() async {
    return Future.delayed(Duration(seconds: 3), () {
      return ["Juan", "Joel", "Gabriel", "Luis"];
    });
  }

  Future<List<Map<String, dynamic>>> getDataSuperheroe() async{
    return Future.delayed(const Duration(seconds: 2), (){
      return [
        {
          "name": "Molecule Man",
          "age": 29,
          "secretIdentity": "Dan Jukes",
          "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
        },
        {
          "name": "Madame Uppercut",
          "age": 39,
          "secretIdentity": "Jane Wilson",
          "powers": [
            "Million tonne punch",
            "Damage resistance",
            "Superhuman reflexes"
          ]
        },
        {
          "name": "Flash",
          "age": 22,
          "secretIdentity": "Barry Allen",
          "powers": [
            "Super fast ",
          ]
        },
        {
          "name": "Superman",
          "age": 30,
          "secretIdentity": "Clark Kent",
          "powers": [
            "Super fast",
            "Fly"
          ]
        },
      ];
    });
  }





  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Futures"),
      ),
      body: FutureBuilder(
          future: getData(),
           builder: (BuildContext context, AsyncSnapshot snapshot) {

             if (snapshot.hasData) {
                List<String> _names = snapshot.data;
                return ListView.builder(
                  itemCount: _names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.deepPurple,
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        title: Text(
                          _names[index],
                           style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },

                );
              }

             return const Center(child: CircularProgressIndicator());
            },
         ),


    );
  }
}
