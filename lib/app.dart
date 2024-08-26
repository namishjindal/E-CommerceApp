import 'package:flutter/material.dart';
import 'package:my_app/utils/constants/text_strings.dart';
import 'package:my_app/utils/theme/theme.dart';
import 'package:my_app/navigation_menu.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0), // Add horizontal padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 150.0), // Adds some padding from the top
                child: Text(
                  'Welcome to PixelFit! Discover a wide range of clothing styles and enjoy a seamless shopping experience.',
                  textAlign: TextAlign.justify, // Align text to justify
                  style: TextStyle(
                    fontSize: 30.0, // Adjust this value as needed for readability
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600, // Optional: Adjust weight if needed
                  ),
                ),
              ),
              const Spacer(), // Creates flexible space between text and logo
              Padding(
                padding: const EdgeInsets.only(bottom: 150.0), // Adds padding at the bottom of the screen
                child: Image.asset(
                  'assets/logos/Two_Black.png',  // Default logo for light theme
                  width: 400, // Adjust the width of the logo as needed
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle sign-up logic here
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue, // Change color to indicate a link
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0), // Add right padding to the button
              child: FloatingActionButton(
                onPressed: () {
                  Get.to(() => NavigationMenu());  // Using Get.to for navigation
                },
                child: const Icon(Icons.arrow_forward), // Use an arrow icon for the button
                backgroundColor: Theme.of(context).primaryColor, // Use the theme's primary color
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Keep the FAB at the bottom center
      ),
    );
  }
}
