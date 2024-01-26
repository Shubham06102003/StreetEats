import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:strtet/config/colors.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      print("User signed out");

    } catch (e) {
      print("Error signing out: $e");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          width: 100,
          color: primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: primaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome Guest"),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () {
                              signOut();
                              Navigator.pushReplacementNamed(context, '/sign-in');
                              },
                            child: Text("Logout"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              listTile(icon: Icons.home_outlined, title: "Home"),
              listTile(icon: Icons.favorite_outline, title: "Favourites"),
              listTile(icon: Icons.map_outlined, title: "Nearby"),
              listTile(icon: Icons.person_outline, title: "Profile"),
              Container(
                height: 350,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact Support"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Call us:"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("1234567890")
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text("Mail us:"),
                          SizedBox(
                            height: 10,
                          ),
                          Text("streeteats@gmail.com")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
