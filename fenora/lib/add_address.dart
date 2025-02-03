import 'package:fenora/address.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    const paddLeftRight = EdgeInsets.only(left: 20, right: 20);
    return Scaffold(
      extendBodyBehindAppBar:
          true, // If you want the gradient behind the app bar
      extendBody:
          true, // If you want the gradient behind the floating action button
      backgroundColor:
          Colors.transparent, // Make Scaffold background transparent

      body: Container(
        // The SINGLE body widget
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFB0B0),
              Color(0xFFC7C5C5),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdressSelection()));
                },
                icon: const Icon(Icons.arrow_back_outlined),
              ),
              title: const Text(
                "Add Address",
                style: TextStyle(fontFamily: 'Lexend', fontSize: 20),
              ),
              backgroundColor: Colors.transparent,
            ),
            Padding(
              padding: paddLeftRight,
              child: const Text(
                "ADD NEW ADDRESS",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: paddLeftRight,
              child: const Divider(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return SingleChildScrollView(
                    child: Form(
                      child: Padding(
                        padding: paddLeftRight,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Name",
                                  labelStyle: const TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                              cursorColor: Colors.black,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Mobile",
                                  labelStyle: const TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                              cursorColor: Colors.black,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: "Pincode",
                                        labelStyle: const TextStyle(
                                          fontFamily: 'Lexend',
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black))),
                                    cursorColor: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Locality",
                                        labelStyle: const TextStyle(
                                          fontFamily: 'Lexend',
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black))),
                                    cursorColor: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText:
                                      "Address(House No, Building, Street, Area)",
                                  hintStyle: const TextStyle(fontSize: 10),
                                  labelText: "Address",
                                  labelStyle: const TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                              cursorColor: Colors.black,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "Locality/Town",
                                  labelStyle: TextStyle(
                                      fontFamily: 'Lexend',
                                      fontSize: 15,
                                      color: Colors.black),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                              cursorColor: Colors.black,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  labelText: "City/District",
                                  labelStyle: TextStyle(
                                      fontFamily: 'Lexend',
                                      fontSize: 15,
                                      color: Colors.black),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black))),
                              cursorColor: Colors.black,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: constraints.maxWidth,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFD75F5F),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                child: Text(
                                  "SAVE ADDRESS",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Lexend'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
