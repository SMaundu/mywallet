import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_pocket_wallet/classes/homecontent.dart';
import 'package:my_pocket_wallet/firebase_options.dart';
import 'package:my_pocket_wallet/screens/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ This is REQUIRED
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyPocketWallet());
}

class MyPocketWallet extends StatelessWidget {
  const MyPocketWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Pocket Wallet',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const Splashscreen(),
        '/home': (context) => const Homecontent(),
      },
    );
  }
}
