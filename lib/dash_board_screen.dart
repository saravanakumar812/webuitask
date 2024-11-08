import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<GridItem> gridItems = [
    GridItem(
      title: "French",
      lessons: "35 lessons",
      imagePath: "assets/images/French.png",
      color: Colors.blue,
      progress: 0.75,
    ),
    GridItem(
      title: "Portugese",
      lessons: "40 lessons",
      imagePath: "assets/images/Portugesean.png",
      color: Colors.red,
      progress: 0.5,
    ),
    GridItem(
      title: "Italian",
      lessons: "20 lessons",
      imagePath: "assets/images/Itali.png",
      color: Colors.green,
      progress: 0.25,
    ),
    GridItem(
      title: "German",
      lessons: "30 lessons",
      imagePath: "assets/images/German.png",
      color: Colors.yellow.shade400,
      progress: 0.75,
    ),
    // Add more items as needed
  ];
  final List<GridNumber> gridNumbers = [
    GridNumber(title: "Courses Completed", Number: "02"),
    GridNumber(title: "Total Points Gained", Number: "250"),
    GridNumber(title: "Courses In Progress", Number: "03"),
    GridNumber(title: "Tasks Finished", Number: "05"),

    // Add more items as needed
  ];
  final List<GridData> gridData = [
    GridData(
      title: "Reading - Beginner Topic 1",
      subtitle: "8:00 AM - 10:00 AM",
      imagePath: "assets/images/book 1.png",
      color: Colors.blue.shade100,
    ),
    GridData(
      title: "Reading - Beginner Topic 1",
      subtitle: "01:00 AM - 02:00 PM",
      imagePath: "assets/images/book 1.png",
      color: Colors.red.shade100,
    ),
    GridData(
      title: "Listening - Intermediate Topic 1",
      subtitle: "3:00 PM - 4:00 PM",
      imagePath: "assets/images/headphones 1.png",
      color: Colors.green.shade100,
    ),
    GridData(
      title: "Speaking - Advanced Topic 1",
      subtitle: "7:00 PM - 8:00 PM",
      imagePath: "assets/images/volume-1 1.png",
      color: Colors.yellow.shade100,
    ),
    GridData(
      title: "Speaking - Beginner Topic 1",
      subtitle: "8:00 AM - 12:00 PM",
      imagePath: "assets/images/volume-1 1.png",
      color: Colors.yellow.shade100,
    ),
    GridData(
      title: "Listening - Beginner Topic 1",
      subtitle: "8:00 AM - 12:00 AM",
      imagePath: "assets/images/headphones 1.png",
      color: Colors.green.shade100,
    ),
    GridData(
      title: "Grammar - Intermediate Topic 2",
      subtitle: "8:00 PM - 12:00 PM",
      imagePath: "assets/images/book 1.png",
      color: Colors.red.shade100,
    ),
    GridData(
      title: "Reading - Advanced Topic 1",
      subtitle: "8:00 PM - 12:00 PM",
      imagePath: "assets/images/book 1.png",
      color: Colors.blue.shade100,
    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  "assets/images/Group 45.png",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              buildMenuItem("assets/images/Home.png", "Overview", firstItem: true),
              buildMenuItem("assets/images/Category.png", "Course"),
              buildMenuItem("assets/images/Folder.png", "Resources"),
              buildMenuItem("assets/images/Chat.png", "Message"),
              buildMenuItem("assets/images/setting.png", "Settings"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Image.asset("assets/images/Group.png")),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.12,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Text("Upgrade your plan"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Go to PRO"),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.02,
                              height: MediaQuery.of(context).size.height * 0.04,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Image.asset(
                                    "assets/images/right_arrow.png"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          VerticalDivider(
            color: Colors.grey.shade300,
            thickness: 2,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.48,
            // height: MediaQuery.of(context).size.height ,
            // color: Colors.grey,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text("Hello BRUNO, welcome back!", style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 14, color: Colors.blue),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "My Courses",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 30),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/search 1.png"),
                        Text("Search...")
                      ],
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in grid
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 2.3,
                    ),
                    itemCount: gridItems.length,
                    itemBuilder: (context, index) {
                      final item = gridItems[index];
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.20,
                        height: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                          color: item.color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    item.lessons,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  CircularPercentIndicator(
                                    radius: 30,
                                    lineWidth: 7,
                                    backgroundColor: Colors.grey,
                                    progressColor: Colors.white,
                                    percent: item.progress,
                                    center: Text(
                                      "${(item.progress * 100).toInt()}%",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                                item.imagePath,
                                width: 50,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Planning",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 30),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/calendar-alt.png"),
                        Text("20 March 2020", style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14, color: Colors.blue),)
                      ],
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 5,
                    ),
                    itemCount: gridData.length,
                    itemBuilder: (context, index) {
                      final item = gridData[index];
                      return Container(
                        decoration: BoxDecoration(
                          // color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: Container(
                            width: MediaQuery.of(context).size.width * 0.03,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              color: item.color,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Image.asset(item.imagePath),
                            ),
                          ),
                          title: Text(
                            item.title,
                            style: TextStyle(fontSize: 13),
                          ),
                          subtitle: Text(
                            item.subtitle,
                            style: TextStyle(fontSize: 10),
                          ),
                          trailing: Icon(Icons.more_vert),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.grey.shade300,
            thickness: 2,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/Notification.png"),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.18,
                        // height: MediaQuery.of(context).size.height * 0.09,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          leading: Container(
                            width: MediaQuery.of(context).size.width * 0.03,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/profile_image.png")),
                                // border: Border.all(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          title: Text(
                            "Bruno Fernandes",
                            style: TextStyle(fontSize: 13),
                          ),
                          subtitle: Text("Basic Plan",
                              style: TextStyle(fontSize: 10)),
                          trailing:
                              Image.asset("assets/images/chevron-down.png"),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in grid
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: gridNumbers.length,
                    itemBuilder: (context, index) {
                      final item = gridNumbers[index];
                      return Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.18,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Text(
                                  item.title,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 15, left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      child: Center(
                                        child: Image.asset(
                                            "assets/images/Rectangle.png"),
                                      ),
                                    ),
                                    Text(
                                      item.Number,
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blue),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Activity",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 30),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Day"),
                          Text("Week") ,
                          Text("Month")

                        ],),
                      )
                    ],
                  ),
                ),
                

              Image.asset("assets/images/Group 31.png", width: MediaQuery.of(context).size.width * 0.4, height: MediaQuery.of(context).size.height * 0.31,),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildMenuItem(String iconPath, String label, {bool firstItem = false}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      margin: EdgeInsets.only(left: 30),
      child: ListTile(
        leading: Image.asset(
          iconPath,
          width: 20,
          height: 20,
        ),
        title: Text(
          label,
          style: TextStyle(color: firstItem ? Colors.blue : Colors.grey, fontSize: 15),
        ),
        // trailing: firstItem ?  Image.asset("assets/images/Ellipse 4.png") : Container(),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        horizontalTitleGap: 10.0, // Adjust spacing between icon and text
      ),
    );
  }
}

class GridItem {
  final String title;
  final String lessons;
  final String imagePath;
  final Color color;
  final double progress;

  GridItem({
    required this.title,
    required this.lessons,
    required this.imagePath,
    required this.color,
    required this.progress,
  });
}

class GridData {
  final String title;
  final String subtitle;
  final String imagePath;
  final Color color;

  GridData({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.color,
  });
}

class GridNumber {
  final String title;
  final String Number;

  GridNumber({
    required this.title,
    required this.Number,
  });
}
