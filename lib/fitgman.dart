import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FitgmanHome extends StatelessWidget {


  Map<String,dynamic> data;

  FitgmanHome({required this.data});



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.56,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(42.0),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                     data["image"],
                  ),
                  fit: BoxFit.cover,
                ),
              ),

              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(42.0),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.yellow.withOpacity(0.6),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  data["place"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            Text(
                              "Egipto, Grecia",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Divider(
                          thickness: 2.0,
                          color: Colors.black,
                          indent: 40,
                          endIndent: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Worfre",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Divider(
                          thickness: 2.0,
                          color: Colors.white,
                          indent: 40,
                          endIndent: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Virgse",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Divider(
                          thickness: 2.0,
                          color: Colors.white,
                          indent: 40,
                          endIndent: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: List.generate(
                      4,
                      (index) => const Icon(
                        Icons.star,
                        color: Color(0xffFEAA36),
                        size: 22.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "4.4",
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
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Row(
                children: [
                  Text(
                    "WHY 60 NOW :",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Climb thourging a sea af clouds",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Text(
                    "There are many variations  available, but form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Row(
                children: [
                  Text(
                    "\$520",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "15 Yeard",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(
                    width: 150.0,
                  ),

                  ElevatedButton(
                    onPressed: () async{

                      SharedPreferences prefs = await SharedPreferences.getInstance();

                      prefs.setString("name", "Juan Luis Reta");
                      prefs.setString("address", "Av.Centenario");
                      prefs.setInt("matasquita", 100);

                      print("Guardado....");

                    },
                    child: Text("Back New"),
                  ),
                ],
              ),
            ),


            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                thickness:5.0,
                color: Colors.grey,
                indent: 40,
                endIndent: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
