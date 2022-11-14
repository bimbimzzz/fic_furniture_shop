import 'package:flutter/material.dart';
import 'package:furniture_shop/app_style/app_color.dart';
import 'package:furniture_shop/pages/widget_app.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(
            170.0,
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icon/ison_menu.png'),
                color: colorLima,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            title: Text(
              'Home',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: colorLima,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage('assets/icon/icon_search.png'),
                  color: colorLima,
                ),
              ),
            ],
            bottom: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "All",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: colorLima,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Living Room",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: colorLima,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Bed Room",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: colorLima,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Dining Room",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: colorLima,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Kitchen Set",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: colorLima,
                    ),
                  ),
                ),
              ],
            ),
            flexibleSpace: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.bottomLeft,
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              child: Text(
                "Discover the most\nmodern furniture",
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 37.0,
                      ),
                      Text(
                        "Recommended Furnitures",
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 37.0,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              WidgetApp(
                                harga: '\$170',
                                judul: 'Stylish Chair',
                                gambar: AssetImage(
                                    'assets/image/stylish_chair.png'),
                              ),
                              WidgetApp(
                                harga: '\$75',
                                judul: 'Modern Table',
                                gambar:
                                    AssetImage('assets/image/modern_table.png'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              WidgetApp(
                                harga: '\$240',
                                judul: 'Brown Armchair',
                                gambar: AssetImage(
                                    'assets/image/brown_armchair.png'),
                              ),
                              WidgetApp(
                                harga: '\$210',
                                judul: 'Wooden Console',
                                gambar: AssetImage(
                                    'assets/image/wooden_console.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: colorSatu,
            ),
            Container(
              color: colorTiga,
            ),
            Container(
              color: colorEmpat,
            ),
            Container(
              color: colorLima,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home_outlined,
                color: colorEmpat,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: colorEmpat,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.star_outline,
                color: colorEmpat,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.person_outline,
                color: colorEmpat,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
