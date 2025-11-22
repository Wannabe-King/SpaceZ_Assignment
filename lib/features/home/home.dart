import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:spacez_assignment/core/utils/contants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorX.whiteColor,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0.2), // move downward
                  blurRadius: 0.1, // soft blur
                  spreadRadius: 0.1,
                ),
              ],
              color: ColorX.whiteColor,
            ),
            height: 70,
            child: Row(
              children: [
                IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back)),
                Text(
                  "Coupons",
                  style: TextStyle(
                    color: ColorX.titleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        title: Text(
          'SPACEZ',
          style: TextStyle(
            color: ColorX.primaryColor,
            fontWeight: FontWeight.w300,
          ),
        ),
        leading: Transform.scale(
          scale: 0.5,
          child: Image.asset('assets/logo.png'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: ColorX.primaryColor),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    offerBuilder(),
                    offerBuilder(),
                    Container(
                      padding: EdgeInsets.only(top: 30, bottom: 10),

                      child: Text(
                        "Payment Offer:",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorX.titleColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    offerBuilder(),
                    offerBuilder(),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 35,
                  decoration: BoxDecoration(color: ColorX.bannerColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Icon(
                        Icons.stars_sharp,
                        color: ColorX.whiteColor,
                        size: 20,
                      ),
                      Text(
                        'Book now & Unlock exclusive rewards!',
                        style: TextStyle(color: ColorX.whiteColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: ColorX.whiteColor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              Text(
                                '₹ 19,500',
                                style: TextStyle(
                                  color: ColorX.priceTextColor,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: ColorX.priceTextColor,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '₹16,000',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'for 2 nights',
                                style: TextStyle(
                                  color: ColorX.subtitleColor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '24 Apr - 26 Apr | 8 guests',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.edit_square,
                                size: 16,
                                color: ColorX.subtitleColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Reservervation Successful'),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 26,
                          ),
                          decoration: BoxDecoration(color: ColorX.primaryColor),
                          child: Text(
                            'Reserve',
                            style: TextStyle(
                              color: ColorX.whiteColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget offerBuilder() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 185,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 185,

              decoration: BoxDecoration(
                color: ColorX.primaryColor,
                border: Border(right: BorderSide(color: ColorX.primaryColor)),
              ),
              child: RotatedBox(
                quarterTurns: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    '₹ 6,900',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: ColorX.whiteColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(color: ColorX.secondaryColor),
              height: 185,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "LONGWAY",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorX.titleColor,
                        ),
                      ),

                      Row(
                        children: [
                          Transform.rotate(
                            angle: math.pi / 2, // 180 degrees in radians
                            child: Icon(
                              size: 20,
                              Icons.local_offer_outlined,
                              color: ColorX.tagColor,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Apply',
                            style: TextStyle(
                              color: ColorX.tagColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 8),
                    child: Text(
                      '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
                      style: TextStyle(
                        color: ColorX.subtitleColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Divider(),
                  Text(
                    'Read More',
                    style: TextStyle(
                      color: ColorX.subtitleColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
