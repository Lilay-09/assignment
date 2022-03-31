// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          buildContain(context),
          // buildPofile(context),
          // buildProfileDetail(context),
        ],
      ),
    );
  }
}

SliverToBoxAdapter buildContain(BuildContext context) {
  return SliverToBoxAdapter(
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .5,
              color: Colors.blue,
              child: Image.network(
                'https://i.pinimg.com/originals/27/c4/ab/27c4abbe466cdf63ef6d2338d7106566.jpg',
                fit: BoxFit.cover,
              ),
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height * .35,
            //   color: Color.fromARGB(255, 255, 255, 255),
            // ),
          ],
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .40,
            right: 20.0,
            left: 20.0,
          ),
          child: Container(
            height: 330.0,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Color.fromARGB(255, 255, 255, 255),
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Text(
                      'Set Your Name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Text(
                    'Set Your Email',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(250, 0, 0, 0),
                    child: Icon(
                      Icons.edit_location_alt_outlined,
                      color: Colors.amber,
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 180, 0),
                    child: Text(
                      'Mobile Number',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 8, 65, 5),
                    child: Text(
                      'Set your mobile number',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 220, 0),
                    child: Text(
                      'Address',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 8, 65, 5),
                    child: Text(
                      'Set Your Email Address',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(145, 0, 0, 30),
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .30,
          ),
          child: CircleAvatar(
            radius: 60,
            backgroundImage:
                NetworkImage('https://i.stack.imgur.com/l60Hf.png'),
          ),
        ),
      ],
    ),
  );
}

// SliverToBoxAdapter buildProfileDetail(BuildContext context) {
//   return SliverToBoxAdapter(
//     child: Container(
//       alignment: Alignment.topCenter,
//       padding: EdgeInsets.only(
//         top: MediaQuery.of(context).size.height * .00,
//         right: 20.0,
//         left: 20.0,
//       ),
//       child: Container(
//         height: 360.0,
//         width: MediaQuery.of(context).size.width,
//         child: Card(
//           color: Color.fromARGB(255, 207, 50, 50),
//           elevation: 10.0,
//         ),
//       ),
//     ),
//   );
// }

// SliverToBoxAdapter buildPofile(BuildContext context) {
//   return SliverToBoxAdapter(
//     child: Container(
//       height: MediaQuery.of(context).size.height * .25,
//       padding: EdgeInsets.only(
//         top: MediaQuery.of(context).size.height * .00,
//         right: 20.0,
//         left: 20.0,
//       ),
//       child: CircleAvatar(
//         child: DecoratedBox(
//           decoration: BoxDecoration(),
//         ),
//       ),
//     ),
//   );
// }
