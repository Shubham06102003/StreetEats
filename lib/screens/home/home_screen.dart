import 'package:flutter/material.dart';
import 'package:strtet/config/colors.dart';
import 'package:strtet/screens/home/drawer_side.dart';
import 'package:strtet/screens/home/single_vendor.dart';
import 'package:strtet/screens/vendor_overview/vendor_overview.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildNearbyStreetfood(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Nearby Street Food'),
              TextButton(
                child: Text(
                  'See more',
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/near-food');
                },
              ),
            ],
          ),
        ),
        Container(
          width: 400,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [

                singleVendor(
                    vendorImage: "https://shrturl.app/pfp_21",
                    vendorName: "Sai Pani Puri",
                    onTap: (){}),
                singleVendor(
                    vendorImage: "https://shrturl.app/pfp_21",
                    vendorName: "Sai Pani Puri",
                    onTap: () {}),
                singleVendor(
                    vendorImage: "https://shrturl.app/pfp_21",
                    vendorName: "Sai Pani Puri",
                    onTap: () {}),
                singleVendor(
                    vendorImage: "https://shrturl.app/pfp_21",
                    vendorName: "Sai Pani Puri",
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNearbyMess(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              singleVendor(
                  vendorImage: "https://shrturl.app/l6DfQn",
                  vendorName: "Omkar Dining Hall",
                  onTap: () {}),
              singleVendor(
                  vendorImage: "https://shrturl.app/l6DfQn",
                  vendorName: "Omkar Dining Hall",
                  onTap: () {}),
              singleVendor(
                  vendorImage: "https://shrturl.app/l6DfQn",
                  vendorName: "Omkar Dining Hall",
                  onTap: () {}),
              singleVendor(
                  vendorImage: "https://shrturl.app/l6DfQn",
                  vendorName: "Omkar Dining Hall",
                  onTap: () {}),
              singleVendor(
                  vendorImage: "https://shrturl.app/l6DfQn",
                  vendorName: "Omkar Dining Hall",
                  onTap: () {})
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBestStreetfood(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Best Street Food'),
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
              singleVendor(
                  vendorImage: "https://shrturl.app/EcJl73",
                  vendorName: "chai sutta bar",
                  onTap: () {}),
              singleVendor(
                  vendorImage: "https://shrturl.app/EcJl73",
                  vendorName: "chai sutta bar",
                  onTap: () {}),
              singleVendor(
                  vendorImage: "https://shrturl.app/EcJl73",
                  vendorName: "chai sutta bar",
                  onTap: () {}),
              singleVendor(
                  vendorImage: "https://shrturl.app/EcJl73",
                  vendorName: "chai sutta bar",
                  onTap: () {}),
              singleVendor(
                  vendorImage: "https://shrturl.app/EcJl73",
                  vendorName: "chai sutta bar",
                  onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerSide(),
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: primaryColor,
            child: Icon(Icons.search, size: 17, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              radius: 12,
            ),
          )
        ],
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              _buildNearbyStreetfood(context),
              _buildNearbyMess(context),
              _buildBestStreetfood(context),
            ],
          ),
        ),
      ),
    );
  }
}
