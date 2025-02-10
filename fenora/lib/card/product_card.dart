import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  // final String productName;
  // final String productDescription;
  // final double productPrice;
  // final List<String> imageUrls;
  const ProductCard({super.key});

  // const ProductCard(
  //     {required this.productName,
  //     required this.productDescription,
  //     required this.productPrice,
  //     required this.imageUrls,
  //     super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  List<String> imagePaths = [
    'assets/mackerel-bangda.jpg',
    'assets/sliced-bangda.jpg',
  ];

  int _currentPage = 0;
  final _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: SizedBox(
        // Fixed height for the Card
        height: 500,
        width: MediaQuery.sizeOf(context)
            .width, //use constraints to occupy the entire width
        child: Card(
          color: Colors.grey.shade200,
          elevation: 8,
          clipBehavior: Clip.antiAlias,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              // Fixed image height
              height: 300,
              child: Stack(children: [
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    // Use context here
                    return Ink.image(
                      image: AssetImage(imagePaths[index]),
                      fit: BoxFit.cover,
                    );
                  },
                ),
                Positioned(
                  // Position the indicator
                  bottom: 10, // Adjust position as needed
                  left: 0,
                  right: 0,
                  child: DotsIndicator(
                    dotsCount: imagePaths.length,
                    position:
                        _currentPage.toDouble(), // Use the current page index
                    decorator: DotsDecorator(
                      color: Colors.grey, // Customize colors, sizes, etc.
                      activeColor: Colors.white,
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            // Text content below the images
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: RichText(
                text:
                    TextSpan(style: TextStyle(fontFamily: 'Lexend'), children: [
                  TextSpan(
                    text: "Bangda (Indian Mackerel)",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '\n'),
                  WidgetSpan(
                    child: Text(
                      "Savory and succulent, Bangda (Indian Mackerel) is a flavorful fish packed with nutrients, perfect for grilling, frying, or curries.",
                      style: TextStyle(
                          color: Colors.black.withAlpha(100),
                          fontFamily: 'Lexend',
                          fontSize: 10),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  TextSpan(text: '\n'),
                  TextSpan(text: '\n'),
                  TextSpan(
                      text: "Available in",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  TextSpan(text: '\n'),
                  TextSpan(
                    text: "1KG / 2KG / 3KG",
                    style: TextStyle(
                      color: Colors.black.withAlpha(100),
                    ),
                  ),
                  TextSpan(text: '\n'),
                  WidgetSpan(
                      child: ListTile(
                    horizontalTitleGap: 1,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.currency_rupee),
                    title: Text("500 Kg"),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor: Color(0xFFD75F5F)),
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                            fontFamily: 'Lexend',
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
                ]),
                // maxLines: 10,
                // overflow: TextOverflow.ellipsis,
              ),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
