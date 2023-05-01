import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:teste/utils/colors.dart';

const appColors = AppColors();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: appColors.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bedroom', style: TextStyle(color: appColors.textWhite)),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: appColors.textWhite,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: appColors.textWhite,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            alignment: const AlignmentDirectional(0, 1.5),
            children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/images/bedroom.jpeg',
                  fit: BoxFit.contain,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 200,
                    width: 170,
                    child: Material(
                      color: appColors.backgroundCard,
                      borderRadius: BorderRadius.circular(25),
                      elevation: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 170,
                    child: Material(
                      color: appColors.backgroundCard,
                      borderRadius: BorderRadius.circular(25),
                      elevation: 2.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width * .91,
            child: Material(
              color: appColors.backgroundCard,
              borderRadius: BorderRadius.circular(25),
              elevation: 2.0,
            ),
          )
        ],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: appColors.background,
        activeColor: appColors.buttonOrange,
        gap: 8,
        padding: const EdgeInsets.all(20),
        onTabChange: (index) => {},
        tabs: [
          GButton(
            icon: Icons.home,
            iconColor: appColors.iconColor,
            text: 'Home',
          ),
          GButton(
            icon: Icons.search,
            iconColor: appColors.iconColor,
            text: 'Search',
          ),
          GButton(
            icon: Icons.menu_outlined,
            iconColor: appColors.iconColor,
            text: 'Menu',
          ),
          GButton(
            icon: Icons.person_outline,
            iconColor: appColors.iconColor,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
