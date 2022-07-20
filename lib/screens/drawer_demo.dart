import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 10),
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80"),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Google er model",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "example@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.89,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Text(
                          "SIGN OUT",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    )
                  ]),
            ),
            Row(
              children: [
                Icon(Icons.edit, color: Colors.white),
                SizedBox(width: 30.0),
                Text("Add Leads", style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.star_border_purple500_rounded, color: Colors.white),
                SizedBox(width: 30.0),
                Text("Points Redemption",
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.plus_one, color: Colors.white),
                SizedBox(width: 30.0),
                Text("Points", style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.person, color: Colors.white),
                SizedBox(width: 30.0),
                Text("Profile", style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.bar_chart_outlined, color: Colors.white),
                SizedBox(width: 30.0),
                Text("Dashboard", style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.home, color: Colors.white),
                SizedBox(width: 30.0),
                Text("Home", style: TextStyle(color: Colors.white)),
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 1.0,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Communication",
                    style: TextStyle(color: Colors.white))),
            Row(
              children: [
                Icon(Icons.lock, color: Colors.white),
                SizedBox(width: 30.0),
                Text("Privacy Policy", style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.white),
                SizedBox(width: 30.0),
                Text("Contact Us", style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.info, color: Colors.white),
                SizedBox(width: 30.0),
                Text("About App", style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
