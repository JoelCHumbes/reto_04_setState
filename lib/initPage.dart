import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyect_reto04/data/data.dart';
import 'package:proyect_reto04/fitgman.dart';
import 'package:proyect_reto04/sliderwidget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitPage extends StatefulWidget {
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  bool isLoading = true;

  Data data = Data();

  List<Map<String, dynamic>> listData = [];

  @override
  void initState() {
    super.initState();

    initData();
  }

  Future<void> initData() async {
    listData = await data.fetchData();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // print(data.fetchData());

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: height * 0.47,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(42.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://images.pexels.com/photos/1010657/pexels-photo-1010657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                ),
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi Joel",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                          const Text(
                            "Where do you want to go?",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 14.0),
                              hintText: "Where aye you going?",
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.90),
                                  fontSize: 14.0),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.44),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white.withOpacity(0.85),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 18.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.68),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(14.0),
                            bottomRight: Radius.circular(42.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Santorini, Greece",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Recommendation",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: List.generate(
                                    5,
                                    (index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffFEAA36),
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4.3",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      " (2323 reviews)",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot places",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff2E3033),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "SEE ALL",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff3681D8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: listData
                          .map(
                            (e) => SliderWidget(
                              place: e,
                              onMandarina: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FitgmanHome(
                                      data: e,
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  FutureBuilder(
                    future: data.fetchData(),
                    builder: (BuildContext context, AsyncSnapshot snap) {
                      if (snap.hasData) {
                        List<Map<String, dynamic>> list = snap.data;

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: list
                                .map(
                                  (e) => SliderWidget(
                                    place: e,
                                    onMandarina: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FitgmanHome(
                                            data: e,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                                .toList(),
                          ),
                        );
                      }
                      return CircularProgressIndicator();
                    },
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff2E3033),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "SEE ALL",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff3681D8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      const Color(0xff34383F).withOpacity(0.4),
                                      Colors.transparent,
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50.0,
                                      width: 150.0,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 14.0,
                                        vertical: 14.0,
                                      ),
                                      margin: EdgeInsets.only(right: 12.0),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 6.0,
                                          ),
                                          Text(
                                            "MAiydb gh",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50.0,
                                      width: 150.0,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 14.0,
                                        vertical: 14.0,
                                      ),
                                      margin: EdgeInsets.only(right: 12.0),
                                      decoration: BoxDecoration(
                                        color: Colors.cyan,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.more,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 6.0,
                                          ),
                                          Text(
                                            "Woyf gfygg",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50.0,
                                      width: 150.0,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 14.0,
                                        vertical: 14.0,
                                      ),
                                      margin: EdgeInsets.only(right: 12.0),
                                      decoration: BoxDecoration(
                                        color: Color(0xff5D6DFF),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 6.0,
                                          ),
                                          Text(
                                            "Art & Cultures",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 14.0,
                                        vertical: 14.0,
                                      ),
                                      margin: EdgeInsets.only(right: 12.0),
                                      decoration: BoxDecoration(
                                        color: Color(0xff5D6DFF),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.ac_unit_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 6.0,
                                          ),
                                          Text(
                                            "Art & Cultures",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async {

                SharedPreferences prefs = await SharedPreferences.getInstance();
                String name = prefs.getString("name")?? "-";
                int a = prefs.getInt("matasquita")?? 0;


                print(name);
                print(a);

              },
              child: Text("Data"),
            ),
          ],
        ),
      ),
    );
  }
}
