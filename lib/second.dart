// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            SizedBox(height: 18),
            ListView.separated(
              itemCount: 3,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  child: ListTile(
                    leading: SizedBox(
                      height: 72,
                      width: 72,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/Rectangle 26.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'مشويات البخاري',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 10,
                            ),
                            Text(
                              'البخاري',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 15,
                              ),
                              Text(
                                '5.0',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                size: 14,
                              ),
                              Text(
                                '30-25 دقيقة',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    trailing: Container(
                      width: 54.03,
                      height: 46.10,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFC806),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: SizedBox(
                        width: 35.82,
                        child: Column(
                          children: [
                            Text(
                              '140',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'ليرة',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                );
              },
            ),
            Divider(endIndent: 20, indent: 20),
            Container(
              margin: EdgeInsets.only(top: 280, right: 318),
              child: Text(
                'الإجمالي',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 320),
              child: Text(
                '213.00 ليرة',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 100, left: 16, right: 16),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'تأكيد الطلب',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xffFFC806),
                    ),
                    elevation: MaterialStateProperty.all(0),
                    minimumSize:
                        MaterialStateProperty.all(Size(double.infinity, 50))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
