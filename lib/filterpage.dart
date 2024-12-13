import 'package:flutter/material.dart';
import 'filterpage2.dart';


class FilterPage extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffB7E0F2),
        title: Text('Travel Go'),
      ),
      endDrawer: Drawer(
      ),
      backgroundColor: Color(0xffB7E0F2),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20), // Add padding around the page
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Input field
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios_sharp, color: Colors.black),
                SizedBox( width: 12,),
                Container(
                  width: screenWidth * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: TextField(
                    controller:searchController ,
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(14), // Add padding inside the text field
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Container(
                  // Filters button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push (context ,
                          MaterialPageRoute(builder: (context) => FilterScreen())); ;
                      // Code for the button action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff68B0E2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // Rounded button corners
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text(
                      "Filters",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            // Destination card
            Container(
              width: screenWidth * 0.9, // Card width
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: Offset(0, 3), // Light shadow effect
                  ),
                ],
              ),
              padding: EdgeInsets.all(10), // Add padding inside the card
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text details on the left side
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                      mainAxisAlignment: MainAxisAlignment.center, // Center text vertically
                      children: [
                        Text(
                          'Dahab',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Start Date: 12/10/2024',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'End Date: 15/10/2024',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 9),
                        Text(
                          'Price: 3000LE',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Image on the right side
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6), // Round image corners
                    child: Image.asset(
                      'assets/dahab1.jpg', // Path to the local asset image
                      width: 145, // Image width
                      height: 95, // Image height
                      fit: BoxFit.cover, // Ensure the image fits the container
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: screenWidth * 0.9, // Card width
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: Offset(0, 3), // Light shadow effect
                  ),
                ],
              ),
              padding: EdgeInsets.all(10), // Add padding inside the card
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text details on the left side
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                      mainAxisAlignment: MainAxisAlignment.center, // Center text vertically
                      children: [
                        Text(
                          'Dahab',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Start Date: 16/10/2024',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'End Date: 19/10/2024',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 9),
                        Text(
                          'Price: 4000LE',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Image on the right side
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6), // Round image corners
                    child: Image.asset(
                      'assets/dahab3.jpg', // Path to the local asset image
                      width: 145, // Image width
                      height: 95, // Image height
                      fit: BoxFit.cover, // Ensure the image fits the container
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: screenWidth * 0.9, // Card width
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: Offset(0, 3), // Light shadow effect
                  ),
                ],
              ),
              padding: EdgeInsets.all(10), // Add padding inside the card
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text details on the left side
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                      mainAxisAlignment: MainAxisAlignment.center, // Center text vertically
                      children: [
                        Text(
                          'Dahab',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Start Date: 20/10/2024',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'End Date: 23/10/2024',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 9),
                        Text(
                          'Price: 4500LE',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Image on the right side
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6), // Round image corners
                    child: Image.asset(
                      'assets/dahab6.jpg', // Path to the local asset image
                      width: 145, // Image width
                      height: 95, // Image height
                      fit: BoxFit.cover, // Ensure the image fits the container
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
