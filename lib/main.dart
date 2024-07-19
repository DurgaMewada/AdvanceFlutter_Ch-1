import 'package:adv_flutter_ch1/Screen/1.7%20Biometric%20Authentication/View/SafeGallery.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/1.2 Stepper Widget/View/Stepper_example.dart';
import 'Screen/1.2 Stepper Widget/View/Steppet_example2.dart';
import 'Screen/1.3 CounterApp_ThemeChange/Provider/CounterAppProvider.dart';
import 'Screen/1.3 CounterApp_ThemeChange/View/CounterApp.dart';
import 'Screen/1.4 Change Theme using Provider/Provider/ThemeProvider.dart';
import 'Screen/1.4 Change Theme using Provider/View/ThemeUsingProvider.dart';
import 'Screen/1.6 Contact Us Page/Provider/Contact_Provider.dart';
import 'Screen/1.6 Contact Us Page/View/ContactPage.dart';
import 'Screen/1.7 Biometric Authentication/Provider/Biometric_Provider.dart';
import 'Screen/1.7 Biometric Authentication/View/GalleryPage.dart';

void main()
{
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Counterappprovider(),
      builder: (context,child)=>MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.light(
            surface: Colors.white,
      brightness: Brightness.light,
            primary: Colors.purple,
            onPrimary: Colors.green,
            secondary: Colors.blue,
            onSecondary: Colors.orange,
          )
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
            brightness: Brightness.dark,
            surface: Colors.black,
            primary: Colors.amber,
            onPrimary: Colors.blue,
            secondary: Colors.redAccent,
            onSecondary: Colors.yellow,
          )
        ),
        themeMode: Provider.of<Counterappprovider>(context).isdarkTheme
        ?ThemeMode.dark
        :ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home:Counterapp(),
      ),
    );
  }
}
