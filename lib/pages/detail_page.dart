import 'package:flutter/material.dart';
import 'package:furniture_shop/app_style/app_color.dart';
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xff9A9390),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xffEEA427),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xffE3E3E3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xff80450A),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ],
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
                    "Select Quality :",
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove,
                          size: 24.0,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 149, 230, 230),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Text(
                          "10",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 24.0,
                        ),
                      ),
                    ],
                  )
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
              Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                // ignore: sort_child_properties_last
                child: Text(
                  "Add To Cart",
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Color(0xff979797),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
