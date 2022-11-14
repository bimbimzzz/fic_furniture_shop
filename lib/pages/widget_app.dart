import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:furniture_shop/app_style/app_color.dart';

class WidgetApp extends StatelessWidget {
  final String harga;
  final String judul;
  final AssetImage gambar;

  const WidgetApp({
    Key? key,
    required this.harga,
    required this.judul,
    required this.gambar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: MediaQuery.of(context).size.width / 2.5,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: colorEmpat,
            image: DecorationImage(
              image: gambar,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.5,
          child: Text(
            judul,
            style: GoogleFonts.poppins(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          children: [
            Text(
              harga,
              style: GoogleFonts.poppins(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 50.0,
            ),
            const Icon(
              Icons.star,
              size: 15.0,
              color: Color(0xffEEA427),
            ),
            Text(
              "4.8",
              style: GoogleFonts.poppins(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
