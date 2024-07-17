import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/1.6 Contact Us Page/Provider/Contact_Provider.dart';
import 'Screen/1.6 Contact Us Page/View/ContactPage.dart';
void main()
{
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Contactprovider(),
      builder: (context,child)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Contactpage(),
      ),
    );
  }
}
