import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String filterList = "List1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffFFFFFF),
      backgroundColor: Color(0xffFE9F2F),
      appBar: AppBar(
        backgroundColor: Color(0xffFE9F2F),
        centerTitle: true,
        elevation: 10,
        title: Text(
          "SetSate Cards Assets App",
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10.0),
            alignment: Alignment.center,
            child: Text(
              "Selecciona tu mejor elección",
              style: TextStyle(
                fontSize: 18.0,
                //fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                fontFamily: "Lobster",
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: filterList == "List1" ? Colors.amber : Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff3D4584).withOpacity(0.11),
                    blurRadius: 15.0,
                    offset: const Offset(0, 7.0)),
              ],
            ),
            child: ListTile(
              onTap: () {
                filterList = "List1";
                print("1");
                setState(() {});
              },
              leading: Container(
                height: 400,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.peru.travel/Contenido/General/Imagen/pe/256/1.1/pollo-a-la-brasa.jpg"),
                  ),
                ),
              ),
              title: Text(
                "Menú 1",
                style: TextStyle(
                  color: filterList == "List1" ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Lun - Mier - Vier",
                        style: TextStyle(
                          color: filterList == "List1"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "S/.5",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: filterList == "List1"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: filterList == "List2" ? Colors.amber : Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff3D4584).withOpacity(0.11),
                    blurRadius: 15.0,
                    offset: const Offset(0, 7.0)),
              ],
            ),
            child: ListTile(
              onTap: () {
                filterList = "List2";
                print("2");
                setState(() {});
              },
              leading: Container(
                height: 400,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.howlanders.com/blog/wp-content/uploads/2021/04/comida-boliviana.jpg",
                    ),
                  ),
                ),
              ),
              title: Text(
                "Menú 2",
                style: TextStyle(
                  color: filterList == "List2" ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Lun - Mier - Vier",
                        style: TextStyle(
                          color: filterList == "List2"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "S/.6",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: filterList == "List2"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: filterList == "List3" ? Colors.amber : Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff3D4584).withOpacity(0.11),
                    blurRadius: 15.0,
                    offset: const Offset(0, 7.0)),
              ],
            ),
            child: ListTile(
              onTap: () {
                filterList = "List3";
                print("3");
                setState(() {});
              },
              leading:  Container(
                height: 400,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.lima2019.pe/sites/default/files/inline-images/preview-gallery-004_0.jpg",
                    ),
                  ),
                ),
              ),
              title: Text(
                "Menú 3",
                style: TextStyle(
                  color: filterList == "List3" ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Lun - Mier - Vier",
                        style: TextStyle(
                          color: filterList == "List3"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "S/.7",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: filterList == "List3"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: filterList == "List4" ? Colors.amber : Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff3D4584).withOpacity(0.11),
                    blurRadius: 15.0,
                    offset: const Offset(0, 7.0)),
              ],
            ),
            child: ListTile(
              onTap: () {
                filterList = "List4";
                print("4");
                setState(() {});
              },
              leading:  Container(
                height: 400,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://content.skyscnr.com/m/2dcd7d0e6f086057/original/GettyImages-186142785.jpg",
                    ),
                  ),
                ),
              ),

              title: Text(
                "Menú 4",
                style: TextStyle(
                  color: filterList == "List4" ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Lun - Mier - Vier",
                        style: TextStyle(
                          color: filterList == "List4"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "S/.8",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: filterList == "List4"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: filterList == "List5" ? Colors.amber : Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff3D4584).withOpacity(0.11),
                    blurRadius: 15.0,
                    offset: const Offset(0, 7.0)),
              ],
            ),
            child: ListTile(
              onTap: () {
                filterList = "List5";
                print("5");
                setState(() {});
              },
              leading: Container(
                height: 400,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://cocina-casera.com/wp-content/uploads/2020/07/rougail-saucisse-770x485.jpg",
                    ),
                  ),
                ),
              ),
              title: Text(
                "Menú 5",
                style: TextStyle(
                  color: filterList == "List5" ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Lun - Mier - Vier",
                        style: TextStyle(
                          color: filterList == "List5"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "S/.9",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: filterList == "List5"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: filterList == "List6" ? Colors.amber : Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xff3D4584).withOpacity(0.11),
                    blurRadius: 15.0,
                    offset: const Offset(0, 7.0)),
              ],
            ),
            child: ListTile(
              onTap: () {
                filterList = "List6";
                print("6");
                setState(() {});
              },
              leading:  Container(
                height: 400,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://www.lifeder.com/wp-content/uploads/2017/10/platos-tipicos-de-Colombia-bandeja-paisa-min-1024x683.jpg",
                    ),
                  ),
                ),
              ),
              title: Text(
                "Menú 6",
                style: TextStyle(
                  color: filterList == "List6" ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Lun - Mier - Vier",
                        style: TextStyle(
                          color: filterList == "List6"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "S/.10",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: filterList == "List6"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
