import 'package:flutter/material.dart';

class singleVendor extends StatefulWidget {
  final String vendorImage;
  final String vendorName;
  final Function onTap;

  singleVendor(
      {required this.vendorImage,
      required this.vendorName,
      required this.onTap});

  @override
  State<singleVendor> createState() => _singleVendorState();
}

class _singleVendorState extends State<singleVendor> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/vendor-overview');
                  },
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    child: Image.network(widget.vendorImage),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        widget.vendorName,
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
          ),
        ],
      ),
    );
  }
}
