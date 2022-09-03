// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.photo))],
//         elevation: 0,
//         shadowColor: Colors.white70,
//         iconTheme: const IconThemeData(
//           color: Colors.black,
//         ),
//         centerTitle: true,
//         title: const Text(
//           'Navigation Drawer',
//         ),
//         backgroundColor: Colors.white,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.home,
//               ),
//               title: const Text('Page 1'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               leading: Icon(
//                 Icons.train,
//               ),
//               title: const Text('Page 2'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         margin: EdgeInsets.only(left: 31.0, top: 30.0, right: 31.0),
//         child: Column(
//           children: [
//             Text(
//               'Namaste, User!',
//               style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700),
//             ),
//             ReusableCard(
//                 colour: Colors.white,
//                 cardChild: Column(
//                   children: [Container(height: ,)],
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ReusableCard extends StatelessWidget {
//   ReusableCard({required this.colour, required this.cardChild});
//   final Color colour;
//   final Widget cardChild;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Container(
//         child: cardChild,
//         margin: EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, 3), // changes position of shadow
//             ),
//           ],
//           color: colour,
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//       ),
//     );
//   }
// }
