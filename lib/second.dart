// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:goldenhouse_multipage_task/firstPage.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFFC806),
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
          borderSide: BorderSide.none,
        ),
        actions: [
          Row(
            children: [
              Container(margin: EdgeInsets.only(right: 5), child: Text('رجوع')),
              Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )),
            ],
          )
        ],
      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stack(
            children: [
              ListView(
                children: [
                  SizedBox(
                    height: 650,
                    child: ListView.builder(
                        shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 17),
                            child: SizedBox(
                              height: 100,
                              child: Row(
                                children: [
                                  Container(
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                        // color: Colors.green,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Image.asset(
                                      'assets/images/Ellipse 10.png',
                                      fit: BoxFit.fill,
                                      height: 72,
                                      width: 72,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 7, top: 3),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'وجبة فتة شاورما تكفي 3 أفراد',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.start
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              'شاورما الريم',
                                              style: TextStyle(fontSize: 10),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.yellow,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '5.0',
                                              style: TextStyle(fontSize: 9),
                                            ),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            Icon(
                                              Icons.access_time_filled,
                                              size: 15,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              'يصلك خلال 30 دقيقة',
                                              style: TextStyle(fontSize: 9),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFC806),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Column(
                                            children: [
                                              Text(
                                                '140',
                                                style: TextStyle(
                                                    fontSize: 23,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              //SizedBox(height: 2,),
                                              Text(
                                                'ليرة',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.delete,
                                            size: 15,
                                            color: Color(0xffC0C0C0),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            'حذف الطلب',
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Color(0xffC0C0C0),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Positioned(
                bottom: 10,
                right: 3,
                left: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          'الإجمالي',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '213.00 ليرة',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => First()),
                          );
                      },
                      child: Text(
                        'تأكيد الطلب',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFFC806),
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
