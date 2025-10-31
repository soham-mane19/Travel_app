import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/modules/chats/screens/message_screen.dart';
import 'package:travel_app/modules/home/screens/Intersted_screen.dart';
import 'package:travel_app/modules/home/screens/homeScreen.dart';
import 'package:travel_app/modules/home/screens/profile_screen.dart';
import 'package:travel_app/modules/home/screens/completed_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 17, right: 10, top: 10),
      height: 80,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(65),
          topRight: Radius.circular(65),
        ),
        color: Color.fromRGBO(255, 255, 255, 1),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(175, 184, 198, 0.12),
            offset: Offset(-6, 0),
            blurRadius: 16,
            spreadRadius: 16,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 🏠 Home
          _buildNavItem(
              icon: Icons.home,
              label: "Home",
              isSelected: currentIndex == 0,
              onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }))),

          const SizedBox(width: 25),

          // 📅 Calendar
          _buildNavItem(
            icon: Icons.interests,
            label: "Interested",
            isSelected: currentIndex == 1,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InterstedScreen()),
              );
            },
          ),

          const SizedBox(width: 25),

          _buildNavItem(
            icon: Icons.verified,
            label: "Completed",
            isSelected: currentIndex == 2,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CompletedScreen()),
              );
            },
          ),
          const SizedBox(width: 25),

          // 💬 Messages
          _buildNavItem(
            icon: Icons.message,
            label: "Messages",
            isSelected: currentIndex == 3,
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return MessageScreen();
            })),
          ),

          const SizedBox(width: 25),

          // 👤 Profile
          _buildNavItem(
            icon: Icons.person,
            label: "Profile",
            isSelected: currentIndex == 4,
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return Profile();
            })),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            color: isSelected
                ? const Color.fromRGBO(13, 110, 253, 1)
                : const Color.fromRGBO(125, 132, 141, 1),
          ),
        ),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: isSelected
                ? const Color.fromRGBO(13, 110, 253, 1)
                : const Color.fromRGBO(125, 132, 141, 1),
          ),
        ),
      ],
    );
  }
}
