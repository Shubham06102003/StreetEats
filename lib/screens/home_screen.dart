import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget singleVendor() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.network(
                'https://lh5.googleusercontent.com/p/AF1QipMxSwphEe6iCMDtNyXZtGo6qdbXQu8FVxB7yA6L=w408-h306-k-no'),
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  "Omkar Dining Hall",
                  style: TextStyle(color: Colors.black),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: const [
                        Text(
                          "4.5",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text('Home'),
          actions: const [
            CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.search, size: 17, color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                backgroundColor: Color(0xffd4d181),
                radius: 12,
              ),
            )
          ],
          backgroundColor: const Color(0xffd6b738),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: ListView(children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://cdn1.matadornetwork.com/blogs/1/2021/02/vendor-selling-food-1200x853.jpg')),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Nearby Street Food'),
                  Text(
                    'See more',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleVendor(),
                  singleVendor(),
                  singleVendor(),
                  singleVendor(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Nearby Mess'),
                  Text(
                    'See more',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleVendor(),
                  singleVendor(),
                  singleVendor(),
                  singleVendor(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Nearby Mess'),
                  Text(
                    'See more',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleVendor(),
                  singleVendor(),
                  singleVendor(),
                  singleVendor(),
                ],
              ),
            ),
          ]),
        ));
  }
}
