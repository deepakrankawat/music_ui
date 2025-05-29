import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/tab_page/home_screen.dart';
import 'package:music/tab_page/news_screen.dart';
import 'package:music/tab_page/project_screen.dart';
import 'package:music/tab_page/trackbox_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedIndex = 0;

  List<String> labels = ['Home', 'News', 'TrackBox', 'Projects'];
  List<String> icons = [
    'images/i1.png',
    'images/i2.png',
    'images/i3.png',
    'images/i4.png',
  ];

  final List<Widget> _pages = [
    HomeScreen(),
    NewsScreen(),
    TrackboxScreen(),
    ProjectScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF121212),
          // borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: EdgeInsets.symmetric(vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(labels.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Column(
                
                mainAxisSize: MainAxisSize.min,
                children: [
                  _selectedIndex == index
                      ? Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      )
                      : SizedBox(),
                      SizedBox(height:10 ,),
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == index
                          ? Colors.white
                          : Colors.grey.shade600,
                      BlendMode.srcIn,
                    ),
                    child: Column(
                      children: [
                        Image.asset(icons[index], width: 23, height: 23),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    labels[index],
                    style: GoogleFonts.syne(
                      color:
                          _selectedIndex == index
                              ? Colors.white
                              : Colors.grey[600],
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
