import 'package:flutter/material.dart';

import 'main.dart';
import 'shoe_screen (1).dart';
import 'shoe_screen (2).dart';

class Sneakers extends StatefulWidget {
  const Sneakers({Key? key}) : super(key: key);

  @override
  State<Sneakers> createState() => _JordanState();
}

class _JordanState extends State<Sneakers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('𝕎𝕒𝕝𝕜 𝕀𝕟 𝕗𝕒𝕤𝕙𝕚𝕠𝕟'),
        backgroundColor: Color(0xFF405AB0),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {

            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 25,
                        spreadRadius: 0,
                        offset: Offset(10, 10),
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 180,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.asset('assets/shoes_/sneaker1.jpg').image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Blue Sneaker",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                Text("Price : \$77.95",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                //decoration: TextDecoration.lineThrough,
                                Text("★ ★ ★ ★ ★",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          )
                      ),
                    ),
                    onPressed: () {
                      shoe1(context);
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 25,
                        spreadRadius: 0,
                        offset: Offset(10, 10),
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                          width: 180,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.asset('assets/shoes_/sneaker2.jpg').image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Reebok Classic",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                Text("Price : \$59.95",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("★ ★ ★ ★ ★",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          )
                      ),
                    ),
                    onPressed: () {
                      shoe2(context);
                    },
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      bottomSheet: Positioned(
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 25,
                spreadRadius: 0,
                offset: Offset(10, 10),
              ),
            ],
          ),
          // Adjust the width as needed
          height: 50.0, // Adjust the height as needed
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 4.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: const Icon(Icons.home), onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MaterialApp(
                      // title of the application
                      title: '𝕎𝕒𝕝𝕜 𝕀𝕟 𝕗𝕒𝕤𝕙𝕚𝕠𝕟',
                      debugShowCheckedModeBanner: false,  //for remove line
                      // theme of the widget
                      theme: ThemeData(
                          appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent)

                      ),
                      // Inner UI of the application
                      home: const MyHomePage(title: '𝕎𝕒𝕝𝕜 𝕀𝕟 𝕗𝕒𝕤𝕙𝕚𝕠𝕟'),
                    )),
                  );
                }),
                IconButton(
                  icon: const Icon(Icons.explore),
                  onPressed: () {

                  },
                ),
                IconButton(
                  icon: Icon(Icons.category),
                  onPressed: () {
                    categoties(context);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void shoe1(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Shoe1()));
}

void shoe2(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Shoe2()));
}