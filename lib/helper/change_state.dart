import 'package:flutter/material.dart';

class ChangeState extends StatefulWidget {
  @override
  State<ChangeState> createState() => _ChangeStateState();
}

class _ChangeStateState extends State<ChangeState> {
  /// const MyApp({ Key? key }) : super(key: key);
  ///

  setStatehere() {
    setState(() {
      hasBeenPressed = !hasBeenPressed;
    });
  }

  bool hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('first screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_downward_outlined),
                  Text('Press on man'),
                  Icon(Icons.arrow_downward_outlined),
                ],
              ),
              IconButton(
                onPressed: () => setStatehere(),
                color: hasBeenPressed ? Colors.black : Colors.red,
                icon: hasBeenPressed
                    ? Icon(Icons.hail)
                    : Icon(Icons.hiking_sharp),
                iconSize: 30,
              ),
              hasBeenPressed
                  ? Container(
                      margin: EdgeInsets.all(50),
                      height: 50,
                      width: 50,
                      color: Colors.yellow,
                      child: Image.network(
                          'https://i.pinimg.com/originals/00/ec/49/00ec491f653b2b0e1df18f980a45049d.jpg'))
                  : Container(
                      margin: EdgeInsets.all(50),
                      height: 50,
                      width: 50,
                      color: Colors.blue,
                      child: Center(child: Text('OK')),
                    ),
            ],
          ),
        ));
  }
}
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   var i = 0;
//   List<Color> colors = [
//     Colors.red,
//     Colors.yellow,
//     Colors.black,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('stres merac'),
//             bottom: TabBar(
//               tabs: [Icon(Icons.face), Icon(Icons.face_retouching_natural)],
//             ),
//           ),
//           drawer: Drawer(
//             backgroundColor: Colors.white,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.flourescent_outlined),
//                 Text('$i'),
//               ],
//             ),
//           ),

//           // icon: Icon(Icons.more_vert),

//           body: Column(
//             children: [
//               Center(
//                 heightFactor: 5,
//                 child: Text('Ovde da pise koliko je puta kliknuto plus'),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               // CircleAvatar(
//               //   child: Text('tu'),
//               //   //backgroundColor: Colors.amber,
//               //   radius: 50,
//               // ),
//               Column(
//                 children: [
//                   Center(heightFactor: 10, child: Text('Pritiskaj nasumicno')),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                         iconSize: 50,
//                         onPressed: () {
//                           setState(() {
//                             CircleAvatar(
//                               backgroundColor: colors[0],

//                             );
//                           });
//                         },
//                         icon: Icon(Icons.arrow_circle_up),
//                         color: Colors.black,
//                         splashColor: Colors.yellow,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       IconButton(
//                         iconSize: 50,
//                         onPressed: () {
//                           setState(() {
//                             CircleAvatar(
//                               backgroundColor: colors[0]

//                           });
//                         },
//                         icon: Icon(Icons.arrow_circle_down),
//                         color: Colors.red,
//                         splashColor: Colors.red,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // void submit() {
//   //   print('tu si');

//   //   setState(() {
//   //     i++;
//   //   });
//   // }

//   // void outmit() {
//   //   print('tu si');

//   //   setState(() {
//   //     i--;
//   //   });
// }
