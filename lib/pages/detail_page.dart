import 'package:flutter/material.dart';
import 'package:furniture_shop/app_style/app_color.dart';
import 'package:furniture_shop/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(387.0),
          child: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 24.0,
                color: colorLima,
              ),
            ),
            flexibleSpace: Container(
              height: 467.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: colorEmpat,
                image: DecorationImage(
                  image: AssetImage('assets/image/wooden_coff.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            centerTitle: true,
            title: Text(
              "Detaily",
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            actions: [
              const ImageIcon(
                AssetImage(
                  "assets/icon/icon.png",
                ),
                size: 36.0,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Wooden Coff",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xff4A4543),
                      ),
                    ),
                    Text(
                      "\$240",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xff9A9390),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Color(0xffEEA427),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffEEA427),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffEEA427),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffEEA427),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffDDDDDD),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose a color :",
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Image.asset('assets/image/colordetail.png'),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select Quality :",
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Image.asset('assets/image/value.png'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Image.asset('assets/image/addtocart.png'),
            ],
          ),
        ),
      ),
    );
  }
}
