import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Shoe3 extends StatefulWidget {
  const Shoe3({Key? key}) : super(key: key);

  @override
  State<Shoe3> createState() => _Shoe3State();
}

class _Shoe3State extends State<Shoe3> {
  InAppWebViewController? inAppWebViewController;
  double _progress = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('𝕎𝕒𝕝𝕜 𝕀𝕟 𝕗𝕒𝕤𝕙𝕚𝕠𝕟'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(value: _progress),
            Container(
              width: double.maxFinite,
              height: 400,
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse("https://sketchfab.com/models/1d901fe343a4479badbb8465b5418826/embed"),
                ),
                onWebViewCreated: (InAppWebViewController controller) {
                  inAppWebViewController = controller;
                },
                onProgressChanged: (InAppWebViewController controller, int progress) {
                  setState(() {
                    _progress = progress / 100;
                  });
                },
              ),
            ),
            const SizedBox(height: 16),
            // Display shoe details
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Liberty Mens Ronald Platform',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '★ ★ ★ ★ ★',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    '\$124.90',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 13),
                  const Text(
                    'Available Sizes: ',
                    style: TextStyle(fontSize: 16),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {
                            // Handle button click
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Background color
                            onPrimary: Colors.lightBlue, // Text color
                            side: const BorderSide(color: Colors.lightBlue), // Border color
                          ),
                          child: const Text('6'),
                        ),
                        const SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {
                            // Handle button click
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Background color
                            onPrimary: Colors.lightBlue, // Text color
                            side: const BorderSide(color: Colors.lightBlue), // Border color
                          ),
                          child: const Text('6.5'),
                        ),
                        const SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {
                            // Handle button click
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Background color
                            onPrimary: Colors.lightBlue, // Text color
                            side: const BorderSide(color: Colors.lightBlue), // Border color
                          ),
                          child: const Text('7'),
                        ),
                        const SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {
                            // Handle button click
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Background color
                            onPrimary: Colors.lightBlue, // Text color
                            side: const BorderSide(color: Colors.lightBlue), // Border color
                          ),
                          child: const Text('7.5'),
                        ),
                        const SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {
                            // Handle button click
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Background color
                            onPrimary: Colors.lightBlue, // Text color
                            side: const BorderSide(color: Colors.lightBlue), // Border color
                          ),
                          child: const Text('8'),
                        ),
                        const SizedBox(width: 10,),
                        ElevatedButton(
                          onPressed: () {
                            // Handle button click
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Background color
                            onPrimary: Colors.lightBlue, // Text color
                            side: const BorderSide(color: Colors.lightBlue), // Border color
                          ),
                          child: const Text('9'),
                        ),
                        const SizedBox(width: 10,),

                      ],
                    ),
                  ),
                  const SizedBox(height: 16,),
                  const Text(
                    'Material type - Mesh \nClosure type - Lace-Up\nHeel type - Platform Heel\nWater resistance level - Not Water Resistant',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    _showBuyNowForm(context);
                  },
                  child: const Text('By Now'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showBuyNowForm(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Buy Now Form',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // Add form fields for the user to fill in
            TextFormField(
              decoration: const InputDecoration(labelText: 'Full Name'),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Payment Method'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle form submission
                Navigator.pop(context); // Close the modal
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      );
    },
  );
}

