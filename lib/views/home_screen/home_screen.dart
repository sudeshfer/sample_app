import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Stack(
              children: [
                Container(
                  width: screenwidth,
                  height: screenheight / 2.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.softLight),
                          image: AssetImage('assets/images/homebg3.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 22,
                  child: Container(
                    width: screenwidth,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 40,
                          ),
                          Icon(
                            Icons.more_vert_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  // height: screenheight / 3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
