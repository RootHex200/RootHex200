// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master_class/pages/Details.dart';
import 'package:flutter_master_class/widgets/Apptxt.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home_pages extends StatefulWidget {
  const Home_pages({Key? key}) : super(key: key);

  @override
  State<Home_pages> createState() => _Home_pagesState();
}

class _Home_pagesState extends State<Home_pages> with TickerProviderStateMixin {
    List images = [
    ["kayaking", "kayaking.png"],
    ["hiking", "hiking.png"],
    ["balloning", "balloning.png"],
    ["snorkling","snorkling.png"],
    ["balloning", "balloning.png"],
    ["snorkling","snorkling.png"],
    ["kayaking", "kayaking.png"],
    ["hiking", "hiking.png"],
    ["balloning", "balloning.png"],
    ["snorkling","snorkling.png"],
    ["balloning", "balloning.png"],
    ["snorkling","snorkling.png"],

  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Material(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50.h, left: 20.w),
                  child: Row(
                    children: [
                      const Icon(Icons.menu),
                      Expanded(child: Container()),
                      Container(
                        width: 50.w,
                        height: 50.h,
                        margin: EdgeInsets.only(right: 20.w),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/carts.png")),
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.white.withOpacity(0.5)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height:30.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w),
                  child: Apptxt(
                    text: "Descover",
                    size: 30.sp,
                    fontWeights: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height:30.h,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        controller: _tabController,
                        labelColor: Colors.black,
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 20.w, right: 20.w),
                        indicatorSize: TabBarIndicatorSize.label,
                        unselectedLabelColor: Colors.grey.withOpacity(0.5),
                        tabs: [
                          Tab(
                            text: "Places",
                          ),
                          Tab(
                            text: "Inspiration",
                          ),
                          Tab(
                            text: "Emotions",
                          )
                        ]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.w),
                  height: 250.h,
                  width: double.maxFinite.w,
                  child: TabBarView(controller: _tabController, children: [
                    ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                           onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Details_Pages()));
                            },
                            child: Container(
                              width: 200.w,
                              height: 300.h,
                              margin: EdgeInsets.only(right: 10.w, top: 20.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: Color.fromARGB(255, 80, 123, 158),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/mountain.jpeg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          );
                        }),
                    Text("hello"),
                    Text("my name is saituyr")
                  ]),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.w, right: 10.w),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Apptxt(
                          text: "Explore more",
                          size: 20.sp,
                          fontWeights: FontWeight.bold,
                        ),
                        Apptxt(
                          text: "sell all",
                          size: 20.sp,
                          colors: Colors.blue,
                        )
                      ]),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width:double.maxFinite.w,
                  height:120.h,
                  margin: EdgeInsets.only(left: 20.w),
                  child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          
                          margin: EdgeInsets.only(right: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 90.w,
                                height: 80.h,
                              
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/"+images[index][1]),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                child: Apptxt(text: images[index][0]),
                              ),
                              
          
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
