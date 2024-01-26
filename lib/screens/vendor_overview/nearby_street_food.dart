import 'package:flutter/material.dart';
import 'package:strtet/config/colors.dart';
import 'package:strtet/screens/home/single_vendor.dart';

class NearbyStreetFood extends StatefulWidget{
  @override
  State<NearbyStreetFood> createState() => _NearbyStreetFoodState();
}

class _NearbyStreetFoodState extends State<NearbyStreetFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Near by Street Food",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
          child: Container(
            // height: 400,
              child: GridView.builder(
                shrinkWrap: true,
                // crossAxisSpacing: 6,
                // mainAxisSpacing: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 9/11,
                ),
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return singleVendor(
                      vendorImage: "https://shrturl.app/pfp_21",
                      vendorName: "Sai Pani Puri",
                      onTap: (){}
                  );
                },
                // children: [
                //   singleVendor(
                //       vendorImage: "https://shrturl.app/pfp_21",
                //       vendorName: "Sai Pani Puri",
                //       onTap: (){}),
                //   singleVendor(
                //       vendorImage: "https://shrturl.app/pfp_21",
                //       vendorName: "Sai Pani Puri",
                //       onTap: () {}),
                //   singleVendor(
                //       vendorImage: "https://shrturl.app/pfp_21",
                //       vendorName: "Sai Pani Puri",
                //       onTap: () {}),
                //   singleVendor(
                //       vendorImage: "https://shrturl.app/pfp_21",
                //       vendorName: "Sai Pani Puri",
                //       onTap: () {}),
                //   singleVendor(
                //       vendorImage: "https://shrturl.app/pfp_21",
                //       vendorName: "Sai Pani Puri",
                //       onTap: (){}),
                //   singleVendor(
                //       vendorImage: "https://shrturl.app/pfp_21",
                //       vendorName: "Sai Pani Puri",
                //       onTap: () {}),
                //   singleVendor(
                //       vendorImage: "https://shrturl.app/pfp_21",
                //       vendorName: "Sai Pani Puri",
                //       onTap: () {}),
                //   singleVendor(
                //       vendorImage: "https://shrturl.app/pfp_21",
                //       vendorName: "Sai Pani Puri",
                //       onTap: () {}),
                // ],
              ),
            ),
        ),
    );
  }
}