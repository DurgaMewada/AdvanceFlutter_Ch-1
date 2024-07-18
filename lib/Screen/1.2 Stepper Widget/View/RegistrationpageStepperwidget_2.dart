import 'package:flutter/material.dart';

class RegistrationpageStepper2 extends StatefulWidget {
  const RegistrationpageStepper2({super.key});

  @override
  State<RegistrationpageStepper2> createState() => _RegistrationpageStepper2State();
}

class _RegistrationpageStepper2State extends State<RegistrationpageStepper2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Flutter Stepper Demo',style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),),
      ),
      body: Theme(
        data: ThemeData(
            colorScheme: ColorScheme.light().copyWith(primary: Colors.blueAccent)
        ),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: stepFirst,
          physics: BouncingScrollPhysics(),
          onStepCancel: () {
            setState(() {
              if (stepFirst > 0) {
                stepFirst--;
              } else {
                stepFirst = 2;
              }
            });
          },
          onStepContinue: () {
            setState(() {
              if (stepFirst != 2) {
                stepFirst++;
              } else {
                stepFirst = 0;
              }
            });
          },
          onStepTapped: (int _Index) {
            setState(() {
              stepFirst = _Index;
            });
          },
          steps: [
            Step(title: Text('Person',style: TextStyle(fontSize: 15),),content: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      label: Row(
                        children: [
                          Icon(
                            Icons.draw_outlined,
                            color: Colors.black45,
                            size: 20,
                          ),
                          Text(
                            '   Name',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.black45),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      label: Row(
                        children: [
                          Icon(
                            Icons.bookmarks_outlined,
                            color: Colors.black45,
                            size: 25,
                          ),
                          Text(
                            '    Surname',
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(color: Colors.black45),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

              ],
            ),isActive: stepFirst>=0,),
            Step(title: Text('Contact',style: TextStyle(fontSize: 15)),content:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.black45,
                              size: 20,
                            ),
                            Text(
                              '   Email',
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black45, width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: TextStyle(color: Colors.black45),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.black45,
                              size: 25,
                            ),
                            Text(
                              '    Address',
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: TextStyle(color: Colors.black45),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.black45,
                              size: 20,
                            ),
                            Text(
                              '    Mobile No',
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                            // iconColor: ,
                          ],
                        ),
                        // hintText: 'Email',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintStyle: TextStyle(color: Colors.black45),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),isActive: stepFirst>=1,
            ),
            Step(title: Text('Upload',style: TextStyle(fontSize: 15)),content: Text('Upload'),isActive: stepFirst>=2,),
          ],
        ),
      ),
    );
  }
}

int stepFirst =0;
