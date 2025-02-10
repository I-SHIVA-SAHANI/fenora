import 'package:fenora/Screens/address.dart';
import 'package:fenora/card/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imagePaths = [
    'assets/mackerel-bangda.jpg',
    'assets/sliced-bangda.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFB0B0),
              Color(0xFFC7C5C5),
            ],
          ),
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(children: [
              // Header Section (No changes needed here)
              SizedBox(
                width: constraints.maxWidth,
                child: IntrinsicHeight(
                  child: Container(
                    decoration: const BoxDecoration(
                      // Use const where possible
                      color: Color(0xFFD75F5F),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: SafeArea(
                      child: Padding(
                        // Use Padding for the header content
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Fenora",
                                        style: TextStyle(
                                          fontFamily: 'Allura',
                                          fontSize: 30,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                  trailing: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.account_circle),
                                      iconSize: 35,
                                      color: Colors.black,
                                    ),
                                  )),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AdressSelection()));
                                },
                                child: RichText(
                                  text: TextSpan(children: [
                                    WidgetSpan(child: Icon(Icons.location_on)),
                                    WidgetSpan(
                                        child: Text("Delivery To Home",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Lexend',
                                                fontWeight: FontWeight.bold))),
                                    TextSpan(text: '\n'),
                                    WidgetSpan(
                                      child: SizedBox(
                                        width: 300,
                                        child: Text(
                                          textAlign: TextAlign.end,
                                          "25,Kodigehalli main Rd, Defence layout, sahakar nagar, bengaluru, karnataka,",
                                          style: TextStyle(
                                              fontFamily: 'Lexend',
                                              color:
                                                  Colors.black.withAlpha(150)),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.arrow_drop_down_sharp,
                                      size: 25,
                                    )),
                                    TextSpan(text: '\n'),
                                  ]),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Expanded(
                // Crucial: Use Expanded here
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return SingleChildScrollView(
                      // Wrap with SingleChildScrollView
                      child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ProductCard(),
                            ProductCard()
                          ]),
                    );
                  },
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
