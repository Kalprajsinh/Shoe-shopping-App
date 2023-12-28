import 'package:flutter/material.dart';
import 'Jordans.dart';
import 'categories.dart';
import 'loafers.dart';
import 'sneakers.dart';
import 'webview.dart';
import 'splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final appTitle = '𝕎𝕒𝕝𝕜 𝕀𝕟 𝕗𝕒𝕤𝕙𝕚𝕠𝕟';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: const SplashScreen(), // Use SplashScreen as the initial screen
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
              Padding(padding: EdgeInsets.only(top: 5)),
              SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text("𝐂𝐚𝐭𝐞𝐠𝐨𝐫𝐢𝐞𝐬..",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 23,color: Colors.black),),
                    ),
                    TextButton(onPressed: () {
                      categoties(context);
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
                        jordan(context);
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
                              child: Text("Jordan", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
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
                        sneakers(context);
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
                              image: AssetImage('assets/images/col (3).jpg'), // Replace with the actual image asset path
                              fit: BoxFit.cover, // Adjust the BoxFit property as needed
                            ),
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Sneakers", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
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
                        loafers(context);
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
                              child: Text("Loafers", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
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

              MaterialButton(
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {

                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: 400,
                      child: Image.asset('assets/images/sho6.gif'),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(7.0),
                child: Text("𝐁𝐞𝐬𝐭 𝐨𝐟𝐟𝐞𝐫𝐬..",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 23,color: Colors.black)),
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
                            width: 180,
                            height: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: Image.asset('assets/shoes_/sport1.jpg').image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("LEAP7X Black",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                  Text("Price : \$124.90",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  Text("★ ★ ★ ★ ★",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                ],
                              ),
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
                                image: Image.asset('assets/shoes_/jordan1.jpg').image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Air Jordan",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                  Text("Price : \$85.45",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  Text("★ ★ ★ ★ ★",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )
                        ),
                      ),
                      onPressed: () {
                        // shoe1(context);
                      },
                    ),
                  ),
                ],
              ),
              MaterialButton(
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {

                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: 400,
                    child: Image.asset('assets/images/sho8.gif'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                padding: const EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {

                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: 400,
                    child: Image.asset('assets/images/sho1.gif'),
                  ),
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


void web(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NextPage()));
}
void categoties(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Categories()));
}

void jordan(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Jordan()));
}

void sneakers(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Sneakers()));
}

void loafers(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Loafers()));
}

// void shoe_screen(BuildContext context) {
//   Navigator.of(context).push(MaterialPageRoute(builder: (context) => jordan()));
// }
// void shoe_screen(BuildContext context) {
//   Navigator.of(context).push(MaterialPageRoute(builder: (context) => jordan()));
// }
// void shoe_screen(BuildContext context) {
//   Navigator.of(context).push(MaterialPageRoute(builder: (context) => jordan()));
// }



