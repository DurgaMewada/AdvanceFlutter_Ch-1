import 'package:adv_flutter_ch1/Screen/1.7%20Biometric%20Authentication/View/SafeGallery.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/1.2 Stepper Widget/View/RegistrationPage_StepperWidget.dart';
import 'Screen/1.2 Stepper Widget/View/RegistrationpageStepperwidget_2.dart';
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
      create: (context)=> GalleryProvider(),
      builder: (context,child)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        home:RegistrationpageStepper2(),
      ),
    );
  }
}
