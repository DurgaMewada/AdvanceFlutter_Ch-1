import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationpageStepper extends StatefulWidget {
  const RegistrationpageStepper({super.key});

  @override
  State<RegistrationpageStepper> createState() =>
      _RegistrationpageStepperState();
}

class _RegistrationpageStepperState
    extends State<RegistrationpageStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          'Flutter Stepper Demo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light().copyWith(primary: Colors.blueAccent)
        ),
        child: Stepper(
          type: StepperType.vertical,
          physics: BouncingScrollPhysics(),
          currentStep: step,
          onStepCancel: () {
            setState(() {
              if (step > 0) {
                step--;
              } else {
                step = 2;
              }
            });
          },
          onStepContinue: () {
            setState(() {
              if (step != 2) {
                step++;
              } else {
                step = 0;
              }
            });
          },
          onStepTapped: (int Index) {
            setState(() {
              step = Index;
            });
          },
          steps: <Step>[
            Step(
              title: Text(
                'Account',
                style: TextStyle(),
              ),
              content: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Account',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    )),
              ),
              isActive: step>=0,
            ),
            Step(title: Text(
              'Address',
              style: TextStyle(),
            ),
              content: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Address',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    )),
              ),
              isActive: step>=1,),
            Step(title: Text(
              'Mobile Number',
              style: TextStyle(),
            ),
              content: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter Your Mobile Number',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    ),),
              ),
              isActive: step>=2,),
          ],
        ),
      ),
    );
  }
}

int step = 1;
