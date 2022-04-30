import 'package:flutter/material.dart';
import 'package:pm_tugas_2/utils/colors.dart';
import 'package:pm_tugas_2/widgets/expandable_text_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/VivoV23e.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white54,
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                InkWell(
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white54,
                    ),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 280,
            child: Container(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vivo V23e",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 26.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Icon(
                        Icons.branding_watermark_outlined,
                        color: AppColors.accentColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Vivo",
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(width: 15),
                      Icon(
                        Icons.merge_type_outlined,
                        color: AppColors.accentColor,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Smartphone",
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        color: AppColors.accentColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Rp4.000.000,00",
                        style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "Deskripsi",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "vivo V23e adalah produk unggulan terbaru dari vivo Indonesia yang bisa menjawab kebutuhan kita baik dari segi fungsional maupun estetika! Mengusung  50MP Ultra HD pada kamera depan yang dapat menghadirkan hasil foto yang jernih tanpa menghilangkan detail lainnya. Dapatkan detail yang jelas dan hasil yang natural pada saat pengambilan gambar, bahkan saat hasil gambar diperbesar sekalipun. Percayakan fitur Autofocus pada kamera depan untuk hasil foto yang fokus dan tajam sepanjang waktu. Serta dapatkan hasil foto yang natural dan tetap jernih dalam jarak dekat maupun jauh."),
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120.0,
        padding: EdgeInsets.only(
          top: 30.0,
          bottom: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 15.0,
                bottom: 15.0,
                left: 20.0,
                right: 20.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: AppColors.mainColor,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.accentColor),
                  SizedBox(width: 5),
                  Text("0"),
                  SizedBox(width: 5),
                  Icon(Icons.add, color: AppColors.accentColor),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 20.0,
                bottom: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.accentColor,
              ),
              child: Text(
                "Add To Chart",
                style: TextStyle(
                  color: AppColors.mainColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
