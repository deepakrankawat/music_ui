import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/MVVM/service_card.dart';
import 'package:music/MVVM/service_viewmodel.dart';
import 'package:music/Service_page/lyrics_writing_page.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final services = ref.read(serviceProvider).services;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h / 2.4,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(169, 1, 64, 1),
                    Color.fromRGBO(85, 1, 32, 1),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                    child: SizedBox(
                      // 👈 This wrapper fixes the issue
                      width: double.infinity,
        
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 👇 Search Bar
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(47, 47, 57, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Row(
                                children: [
                                  const Icon(Icons.search, color: Colors.white70),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: TextField(
                                      style: const TextStyle(color: Colors.white),
                                      cursorColor: Colors.white70,
                                      decoration: const InputDecoration(
                                        hintText: 'Search "Punjabi Lyrics"',
                                        hintStyle: TextStyle(
                                          color: Colors.white54,
                                        ),
                                        border: InputBorder.none,
                                        isCollapsed: true,
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.mic, color: Colors.white70),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ), // spacing between search bar and avatar
                          const CircleAvatar(
                            radius: 17,
                            child: Icon(Icons.person_2_outlined, size: 34),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: h / 4,
        
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 30, // Move it partially out of screen
                          right: -40,
                          child: SizedBox(
                            height: 120,
                            width: 120,
                            child: OverflowBox(
                              maxWidth: 135,
                              maxHeight: 135,
                              child: Image.asset('images/keyboard.png'),
                            ),
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "Claim your",
                                style: GoogleFonts.syne(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                ),
                              ),
                              Text(
                                "Free Demo",
                                style: GoogleFonts.lobster(
                                  fontSize: 45,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "for custom Music Production",
                                style: GoogleFonts.syne(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Book Now"),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 25,
                          left: -20,
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: OverflowBox(
                              maxWidth: 120,
                              maxHeight: 120,
                              child: Image.asset('images/disk.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Hire hand-picked Pros for popular music services",
              style: GoogleFonts.syne(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
         
        
           SizedBox(height: services.length * 100
           ,
             child: ListView.builder(
                       itemCount: services.length,
                       itemBuilder: (context, index) {
              final item = services[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailScreen(service: item),
                    ),
                  );
                },
                child: ServiceCard(service: item),
              );
                       },
                     ),
           ),
            
          ],
        ),
      ),
    );
  }
}
