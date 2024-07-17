
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Contact_Provider.dart';

class Contactpage extends StatelessWidget {
  const Contactpage({super.key});

  @override
  Widget build(BuildContext context) {
    Contactprovider contactprovider = Provider.of<Contactprovider>(context,listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Contact Us',
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
          size: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'If you have any queries, get in touch with \n us. We will be happy to help you!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              SizedBox(
                height: height*0.04,
              ),
              GestureDetector(
                onTap: () {
                  contactprovider.launchCall();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: height *0.07,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                      border: Border.all( color: Colors.blue.shade100,),
                      borderRadius: BorderRadius.circular(7)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      const Text(
                        '+91 9313381084',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  contactprovider.launchMsg();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: height * 0.07,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                      border: Border.all( color: Colors.blue.shade100,),
                      borderRadius: BorderRadius.circular(7)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.sms,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      const Text(
                        '+91 9313381084',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  contactprovider.launchMail();
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: height * 0.07,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                      border: Border.all( color: Colors.blue.shade100,),
                      borderRadius: BorderRadius.circular(7)),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.mail_sharp,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: width *0.06,
                      ),
                      const Text(
                        'durga@gmail.com',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: height * 0.38,
                width: width * 0.9,
                decoration: BoxDecoration(
                    border: Border.all( color: Colors.blue.shade100,),
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 10),
                      child: Text('Social Media',style: TextStyle(color: Colors.blue,fontSize: 22,fontWeight: FontWeight.w500),),
                    ),
                    SizedBox(height: height*0.01,),
                    Divider(
                      color: Colors.blue.shade100,
                    ),
                    SizedBox(height: height*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/Githud.jpeg',height: height*0.05,),
                        SizedBox(width: width*0.1,),
                        GestureDetector(
                            onTap: () {
                              contactprovider.launchGithub();
                            },
                            child: Text('Github',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),))
                      ],
                    ),
                    Divider(
                      color: Colors.blue.shade100,
                      indent: 15,
                      endIndent: 15,
                    ),
                    SizedBox(height: height*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/Linkedin.jpeg',height: height * 0.05,),
                        SizedBox(width: width*0.22,),
                        GestureDetector(
                            onTap: () {
                              contactprovider.launchLinkedin();
                            },
                            child: Text('Linkedin',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),))
                      ],
                    ),
                    Divider(
                      color: Colors.blue.shade100,
                      indent: 15,
                      endIndent: 15,
                    ),

                    SizedBox(height: height*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/Insta.jpeg',height: height * 0.05,),
                        SizedBox(width: width*0.1,),
                        GestureDetector(
                            onTap: () {
                              contactprovider.launchInsta();
                            },
                            child: Text('Instagram',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),))
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}