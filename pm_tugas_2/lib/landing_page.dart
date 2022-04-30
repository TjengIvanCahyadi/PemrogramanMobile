import 'package:flutter/material.dart';
import 'package:pm_tugas_2/utils/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 548.0,
              height: 107.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/logowithbg1.png"),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Akilektronika",
              style: TextStyle(
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Toko Elektronik",
              style: TextStyle(
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/dua',
                );
              },
              child: Text(
                "Get Started",
                style: TextStyle(color: AppColors.mainColor),
              ),
              style: ElevatedButton.styleFrom(primary: AppColors.accentColor),
            ),
          ],
        ),
      ),
    );
  }
}
