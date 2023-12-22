import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'webview.dart';
import 'splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'SHOES';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: SplashScreen(), // Use SplashScreen as the initial screen
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the circular border radius as needed
                    border: Border.all(
                      color: Colors.grey, // Adjust the border color as needed
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(onPressed: () {
                      shoe1(context);
                    }, child: const Text("See All")),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        // Your onPressed function
                        shoe1(context);
                      },
                      child: SizedBox(
                        width: 200,
                        height: 80,
                        child: Container(

                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 25,
                                  spreadRadius: 0,
                                  offset: Offset(10, 10),
                                ),
                              ],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/col (1).jpg'), // Replace with the actual image asset path
                              fit: BoxFit.cover, // Adjust the BoxFit property as needed
                            ),
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Shoe1", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                              ),
                            ),],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    MaterialButton(
                      onPressed: () {
                        // Your onPressed function
                        shoe1(context);
                      },
                      child: SizedBox(
                        width: 200,
                        height: 80,
                        child: Container(

                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 25,
                                spreadRadius: 0,
                                offset: Offset(10, 10),
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/col (4).jpg'), // Replace with the actual image asset path
                              fit: BoxFit.cover, // Adjust the BoxFit property as needed
                            ),
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Shoe1", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                              ),
                            ),],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    MaterialButton(
                      onPressed: () {
                        // Your onPressed function
                        shoe1(context);
                      },
                      child: SizedBox(
                        width: 200,
                        height: 80,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 25,
                                spreadRadius: 0,
                                offset: Offset(10, 10),
                              ),
                            ],
                            image: const DecorationImage(
                              image: AssetImage('assets/images/col (7).jpg'), // Replace with the actual image asset path
                              fit: BoxFit.cover, // Adjust the BoxFit property as needed
                            ),
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Shoe1", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                              ),
                            ),],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                      height: 100,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("New Collections..",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(
                    0xBDBB3838)),),
              ),
              MaterialButton(
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: 400,
                      child: Image.asset('assets/images/sho6.gif'),
                  ),
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                          width: 170,
                          height: 360,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.asset('assets/images/11.jpg').image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Column(
                            children: [
                              SizedBox(
                                height: 200,
                              ),
                              Text("shoes name\nother text")
                            ],
                          )
                        ),
                      ),
                      onPressed: () {

                      },
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
                    child: Column(
                      children: [
                        MaterialButton(
                          padding: const EdgeInsets.all(12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: Image.asset('assets/images/22.jpg').image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Pranayama", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 29,
                                ),
                                ),
                              ),

                            ),
                          ),
                          onPressed: () {

                          },
                        ),
                        MaterialButton(
                          padding: const EdgeInsets.all(12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: Image.asset('assets/images/col (3).jpg').image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Pranayama", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 29,
                                ),
                                ),
                              ),

                            ),
                          ),
                          onPressed: () {

                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: 400,
                  child: Image.asset('assets/images/sho1.gif'),
                ),
              ),
              const SizedBox(
                height: 55,
              )
            ],
          ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF405AB0),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF405AB0)),
                accountName: Text(
                  "abc",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("abc@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0xFF9DB0FA),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.black),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
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
                      title: 'SHOES',
                      debugShowCheckedModeBanner: false,  //for remove line
                      // theme of the widget
                      theme: ThemeData(
                          appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent)

                      ),
                      // Inner UI of the application
                      home: const MyHomePage(title: 'SHOES'),
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
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NextPage()));
}
void categoties(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Categoties()));
}


