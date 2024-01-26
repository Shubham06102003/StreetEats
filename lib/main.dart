import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:strtet/config/colors.dart';
import 'package:strtet/screens/home/home_screen.dart';
import 'package:strtet/screens/signin_screen.dart';
import 'package:strtet/screens/vendor_overview/nearby_street_food.dart';
import 'package:strtet/screens/vendor_overview/vendor_overview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: scaffoldBackgroundColor),
      // home: const SignInScreen(),
      routes: {
        '/': (context) => Root(),
        '/home': (context) => HomeScreen(),
        '/sign-in': (context) => SignInScreen(),
        '/vendor-overview': (context) => VendorOverview(),
        '/near-food': (context) => NearbyStreetFood(),
      },
    );
  }
}

class Root extends StatelessWidget{
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    if (user!=null){
      return HomeScreen();
    } else {
      return SignInScreen();
    }
  }


}
