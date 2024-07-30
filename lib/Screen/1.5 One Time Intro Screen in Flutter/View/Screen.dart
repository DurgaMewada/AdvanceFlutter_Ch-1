import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Provider/OneTimeScreenProvider.dart';

class Screen extends StatelessWidget {
  Screen({super.key});

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    IntroScreen introScreentrue = Provider.of<IntroScreen>(context, listen: true);
    IntroScreen introScreenfalse = Provider.of<IntroScreen>(context, listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView(
        onPageChanged: (int page){
          context.read<IntroScreen>().setCurrentPage(page);
        },
        controller: pageController,
        children: [
          Column(
            children: [
              Container(
                height: height * 0.5,
                width: width * 1,
                decoration: const BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/Photos/img1-removebg-preview.png'),
                    )),
              ),
              Stack(
                children: [
                  Container(
                    height: height * 0.5,
                    width: width * 1,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                    ),
                  ),
                  Container(
                    height: height * 0.5,
                    width: width * 1,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(90)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        const Text(
                          'Hmmm, Healthy food',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        SizedBox(
                          width: width * 0.8,
                          child: const Text(
                            textAlign: TextAlign.center,
                            'A vareity of foods made by the best chef. Ingredients are easy to find, all delicious flavours can only be found at coolbunda',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {
                                  pageController.jumpToPage(2);
                                },
                                child: const Text(
                                  'Skip Now',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 20),
                                )),
                            SizedBox(
                              width: width * 0.25,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xffFFE14C),
                              radius: 35,
                              child: IconButton(
                                  onPressed: () {
                                    pageController.nextPage(
                                        duration: const Duration(milliseconds: 500),
                                        curve: Curves.easeInOut);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: Colors.white,
                                    size: 40,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: height * 0.5,
                width: width * 1,
                decoration: const BoxDecoration(
                    color: Color(0xffA1E2EF),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(
                          'assets/images/Photos/img2-removebg-preview.png'),
                    )),
              ),
              Stack(
                children: [
                  Container(
                    height: height * 0.5,
                    width: width * 1,
                    decoration: const BoxDecoration(
                      color: Color(0xffA1E2EF),
                    ),
                  ),
                  Container(
                    height: height * 0.5,
                    width: width * 1,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(90)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        const Text(
                          'Fresh Drinks, Stay Fresh',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        SizedBox(
                          width: width * 0.8,
                          child: const Text(
                            textAlign: TextAlign.center,
                            'Not all food, we provide clear healthy drink options for you. Fresh taste alaways accompanies you',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.08,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {
                                  pageController.jumpToPage(2);
                                },
                                child: const Text(
                                  'Skip Now',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 20),
                                )),
                            SizedBox(
                              width: width * 0.25,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xffA1E2EF),
                              radius: 35,
                              child: IconButton(
                                  onPressed: () {
                                    pageController.nextPage(
                                        duration: const Duration(milliseconds: 500),
                                        curve: Curves.easeInOut);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: Colors.white,
                                    size: 40,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: height * 0.5,
                width: width * 1,
                decoration: const BoxDecoration(
                    color: Color(0xff33B679),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/Photos/img3-removebg-preview.png'),
                    )),
              ),
              Stack(
                children: [
                  Container(
                    height: height * 0.5,
                    width: width * 1,
                    decoration: const BoxDecoration(
                      color: Color(0xff33B679),
                    ),
                  ),
                  Container(
                    height: height * 0.5,
                    width: width * 1,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(90)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.04,
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        const Text(
                          "Let's Cooking",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        SizedBox(
                          width: width * 0.8,
                          child: const Text(
                            textAlign: TextAlign.center,
                            'Are you ready to make a dish for your friends or family? create an account and cooks',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.13,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Container(
                            height: height * 0.075,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                                color: const Color(0xff32B77A),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
