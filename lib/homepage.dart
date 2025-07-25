import 'utils.dart';
import 'package:flutter/material.dart';
import 'package:ride_sharing_app/style.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _homeState();
}

class _homeState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barstyle("Home"),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF584CF4),
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: currentindexValue,
        onTap: (index) {
          setState(() {
            currentindexValue = index;
            if (currentindexValue == 0) {
              Navigator.pushReplacementNamed(context, 'homepage');
            }
            if (currentindexValue == 3) {
              Navigator.pushReplacementNamed(context, 'carepage');
            } else {
              currentindexValue = index;
            }
          });
        },
        items: navbarItems,
      ),

      drawer: drawerstyle(context),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double screenWidth = constraints.maxWidth;
          final double screenHeight = constraints.maxHeight;
          final double horizontalPadding = screenWidth * 0.06;
          final double verticalPadding = screenHeight * 0.02;
          final double containerHeight = screenHeight * 0.12;
          final double containerWidth = screenWidth * 0.35;
          final double circleSize = screenWidth * 0.14;

          return Padding(
            padding: EdgeInsets.only(
              top: verticalPadding,
              left: horizontalPadding,
              right: horizontalPadding,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nearby Users
                  Row(
                    children: [
                      Text(
                        "Nearby Users",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "View all>",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: const Color.fromARGB(255, 27, 55, 231),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: verticalPadding),
                  SizedBox(
                    height: circleSize + 50,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.015),
                          child: Column(
                            children: [
                              Container(
                                height: circleSize,
                                width: circleSize,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    229,
                                    102,
                                    102,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    imageLink[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              SizedBox(height: 6),
                              Text(
                                namelist[index],
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: verticalPadding),
                  // Deals Of the Day
                  Row(
                    children: [
                      Text(
                        "Deals Of the Day",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "View all>",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: const Color.fromARGB(255, 27, 55, 231),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: verticalPadding),
                  SizedBox(
                    height: containerHeight + 90,
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Container(
                                height: containerHeight + 10,
                                width: containerWidth + 28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Image.asset(
                                  "assets/images_pro/helmet1.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Racing Dual Visor Helmet",
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: screenWidth * 0.033,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 2),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      "₹ 4,079",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: screenWidth * 0.04,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "₹ 5,099",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Color(0xFF666666),
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: screenWidth * 0.03,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "20% off",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Color(0xFF584CF4),
                                          fontSize: screenWidth * 0.03,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 2),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFFFA000),
                                      size: screenWidth * 0.05,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "4.8 (212)",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: screenWidth * 0.03,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        Flexible(
                          child: Column(
                            children: [
                              Container(
                                height: containerHeight + 10,
                                width: containerWidth + 28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Image.asset(
                                  "assets/images_pro/helmet2.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Aerodynamic Helmet",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: screenWidth * 0.035,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 2),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Text(
                                      "₹ 2,799",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: screenWidth * 0.04,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "₹ 3,499",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Color(0xFF666666),
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontSize: screenWidth * 0.03,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "20% off",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Color(0xFF584CF4),
                                          fontSize: screenWidth * 0.03,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 2),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      color: Color(0xFFFFA000),
                                      size: screenWidth * 0.05,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "4.5 (154)",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Color(0xFF666666),
                                          fontSize: screenWidth * 0.03,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  // Upcoming Events
                  Row(
                    children: [
                      Text(
                        "Upcoming Events",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "View all>",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: const Color.fromARGB(255, 27, 55, 231),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: verticalPadding),
                  SizedBox(
                    height: containerHeight + 30,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: containerHeight,
                                width: containerWidth + 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    "assets/images_pro/scene1.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Shimla to Manali",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          Column(
                            children: [
                              Container(
                                height: containerHeight,
                                width: containerWidth + 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    "assets/images_pro/scene2.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Goa to Gujrat",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          Column(
                            children: [
                              Container(
                                height: containerHeight,
                                width: containerWidth + 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color.fromARGB(255, 239, 92, 29),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    "assets/images_pro/scene3.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Kashmir to Kanyakumari",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Buy Service Packages
                  Row(
                    children: [
                      Text(
                        "Buy Service Packages",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "View all>",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: const Color.fromARGB(255, 27, 55, 231),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: verticalPadding),
                  SizedBox(
                    height: containerHeight + 50,
                    child: Row(
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Container(
                                height: containerHeight + 10,
                                width: containerWidth + 28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    "assets/images_pro/service1.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Annual Maintenance",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        Flexible(
                          child: Column(
                            children: [
                              Container(
                                height: containerHeight + 10,
                                width: containerWidth + 28,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    "assets/images_pro/service2.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Teflon Coating",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: screenWidth * 0.035,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
