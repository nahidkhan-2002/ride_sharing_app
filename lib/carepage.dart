import 'package:flutter/material.dart';
import 'package:ride_sharing_app/style.dart';
import 'package:ride_sharing_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Carepage extends StatefulWidget {
  const Carepage({super.key});

  @override
  State<Carepage> createState() => _CarepageState();
}

class _CarepageState extends State<Carepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barstyle("Care"),
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
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final double screenWidth = constraints.maxWidth;
                final double screenHeight = constraints.maxHeight;
                final double horizontalPadding = screenWidth * 0.02;
                final double verticalPadding = screenHeight * 0.01;
                final double containerHeight = screenHeight * 0.12;
                final double containerWidth = screenWidth * 0.35;

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
                        // Bike Name
                        Row(
                          children: [
                            Text(
                              "Bike Name",
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
                              "Change",
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

                        SizedBox(height: 30),

                        //Horizontal Line
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: const Color.fromARGB(73, 158, 158, 158),
                        ),
                        
                        SizedBox(height: 50),
                        
                        // Care Recommendations
                        Row(
                          children: [
                            Text(
                              "Care Recommendations",
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
                        SizedBox(height: 20),
                       
                        SizedBox(
                          height: containerHeight + 30,
                          
                          //care recommendations slides
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: containerHeight,
                                      width: containerWidth - 21,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          "assets/images_pro/careservice1.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "Spark Plug",
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
                                SizedBox(width: screenWidth * 0.02),
                                Column(
                                  children: [
                                    Container(
                                      height: containerHeight,
                                      width: containerWidth - 21,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          "assets/images_pro/careservice2.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "Clutch Shoe",
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
                                SizedBox(width: screenWidth * 0.02),
                                Column(
                                  children: [
                                    Container(
                                      height: containerHeight,
                                      width: containerWidth - 21,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          "assets/images_pro/careservice3.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "Hose Fuel",
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

                        SizedBox(height: 30),
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
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),
                       
                        SizedBox(
                          height: containerHeight + 300,
                          
                          //service package grid
                          child: GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 2,
                                  crossAxisSpacing: 2,
                                  childAspectRatio: 1,
                                ),
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: containerHeight + 25,
                                    width: containerWidth + 40,
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
                                  SizedBox(height: 5),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "  Annual Maintenance",
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
                                  SizedBox(height: 3),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          " ₹ 900",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                0,
                                                0,
                                                0,
                                              ),
                                              fontSize: screenWidth * 0.04,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "₹ 1,000",
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
                                          "10% off",
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
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: containerHeight + 25,
                                    width: containerWidth + 40,
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
                                  SizedBox(height: 5),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "  Teflon Coating",
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
                                  SizedBox(height: 3),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          " ₹ 1,350",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                0,
                                                0,
                                                0,
                                              ),
                                              fontSize: screenWidth * 0.04,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "₹ 1,500",
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
                                          "10% off",
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
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: containerHeight + 20,
                                    width: containerWidth + 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        "assets/images_pro/service3.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "  Annual Maintenance",
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
                                  SizedBox(height: 3),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          " ₹ 900",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                0,
                                                0,
                                                0,
                                              ),
                                              fontSize: screenWidth * 0.04,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "₹ 1,000",
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
                                          "10% off",
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
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: containerHeight + 20,
                                    width: containerWidth + 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        "assets/images_pro/service4.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "  Teflon Coating",
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
                                  SizedBox(height: 3),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        Text(
                                          " ₹ 1,350",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                0,
                                                0,
                                                0,
                                              ),
                                              fontSize: screenWidth * 0.04,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "₹ 1,500",
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
                                          "10% off",
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
                                ],
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
        },
      ),
    );
  }
}
