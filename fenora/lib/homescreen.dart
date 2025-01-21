import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFFD75F5F),
          ),
          child: SafeArea(
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 0,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                      ],
                    ),
                    Text("data")
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
