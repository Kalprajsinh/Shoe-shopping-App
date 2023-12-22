import 'package:flutter/material.dart';
import 'main.dart';

class Categoties extends StatefulWidget {
  const Categoties({Key? key}) : super(key: key);

  @override
  State<Categoties> createState() => _cateState();
}

class _cateState extends State<Categoties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOES"),
        backgroundColor: Color(0xFF405AB0),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart icon tap
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    padding: EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      // Handle button tap
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 181,
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Image.asset('assets/images/col (3).jpg').image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Sneakers",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                    padding: EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      // Handle button tap
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 181,
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Image.asset('assets/images/col (2).jpg').image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Sports",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    padding: EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      // Handle button tap
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 181,
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Image.asset('assets/images/col (7).jpg').image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Loafers",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                    padding: EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      // Handle button tap
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 181,
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Image.asset('assets/images/col (4).jpg').image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Jordan",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    padding: EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      // Handle button tap
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 181,
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Image.asset('assets/images/col (5).jpg').image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Leather",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                    padding: EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      // Handle button tap
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        width: 181,
                        height: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Image.asset('assets/images/col (6).jpg').image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Oxfords",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
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
                padding: EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  // Handle button tap
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    width: 181,
                    height: 90,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: Image.asset('assets/images/col (1).jpg').image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Classic",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
            ),
            Center(
              child: Container(
                width: 400,
                child: Image.asset('assets/images/sho4.gif'),
              ),
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

                }),
                IconButton(
                  icon: const Icon(Icons.explore),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MaterialApp(
                        // title of the application
                        title: 'Yoga',
                        debugShowCheckedModeBanner: false,  //for remove line
                        // theme of the widget
                        theme: ThemeData(
                            appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent)

                        ),
                        // Inner UI of the application
                        home: const MyHomePage(title: 'Yoga'),
                      )),
                    );
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
