import 'package:drawer_demo/screens/drawer_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black87,
      key: _scaffoldKey,
      drawer: const DrawerDemo(),
      body: InkWell(
        onTap: () => _scaffoldKey.currentState!.openDrawer(),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://wallpaperaccess.com/full/1586538.jpg"),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 255, 255, 255),
                  // borderRadius: BorderRadius.circular(30.00),
                ),
                child: const Center(
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(left: 1),
                      child: Text(
                        "Expand",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
