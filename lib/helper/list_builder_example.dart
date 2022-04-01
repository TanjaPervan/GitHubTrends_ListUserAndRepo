import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,

      title: 'Kindacode.com',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  // Generate a dummy list
  final myProducts = List<String>.generate(1000, (i) => 'Product $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product List'),
        ),
        body: Container(
          // Use ListView.builder
          child: ListView.builder(
              // the number of items in the list
              itemCount: myProducts.length,

              // display each item of the product list
              itemBuilder: (context, index) {
                return Card(
                  // In many cases, the key isn't mandatory
                  key: UniqueKey(),

                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(myProducts[index])),
                );
              }),
        ));
  }
}
//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('List of repos'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: ListView.builder(
//           itemCount: 16,
//           itemBuilder: (context, index) {
//             return Card(
//               child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Text((index + 1).toString() + '. ime repoa'),
//               ),
//             );