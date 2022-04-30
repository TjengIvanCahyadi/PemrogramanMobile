import 'package:flutter/material.dart';
import 'package:pm_tugas_2/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        child: Center(
          child: InkWell(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/VivoV23eWithBackground.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Vivo V23e",
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.branding_watermark_outlined,
                              color: AppColors.accentColor,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Vivo",
                              style: TextStyle(
                                color: AppColors.mainColor,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 14.0,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Icon(
                              Icons.merge_type_outlined,
                              color: AppColors.accentColor,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Smartphone",
                              style: TextStyle(
                                color: AppColors.mainColor,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.monetization_on_outlined,
                              color: AppColors.accentColor,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "Rp4.000.000,00",
                              style: TextStyle(
                                color: AppColors.mainColor,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 14.0,
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
            onTap: () {
              Navigator.pushNamed(
                context,
                '/tiga',
              );
            },
          ),
        ),
      ),
    );
  }
}
