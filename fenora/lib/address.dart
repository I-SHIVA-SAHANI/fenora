import 'package:fenora/add_address.dart';
import 'package:fenora/homescreen.dart';
import 'package:flutter/material.dart';

class AdressSelection extends StatefulWidget {
  const AdressSelection({super.key});

  @override
  State<AdressSelection> createState() => _AdressSelectionState();
}

class _AdressSelectionState extends State<AdressSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFB0B0), // Top color
              Color(0xFFC7C5C5), // Bottom color
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                    ),
                    Text(
                      'Your Location',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 1.0,
                  color: Colors.black.withAlpha(50),
                ),

                // Rest of the UI elements...
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddAddress())),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_location_alt,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add Address",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lexend',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.my_location,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Current Location",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lexend',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Saved Locations",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Lexend',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
