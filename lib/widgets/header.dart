import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 440,
      height: 100,
      child: Stack(
        children: [
          // Fundo azul
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 440,
              height: 100,
              decoration: const BoxDecoration(color: AppTheme.primaryColor),
            ),
          ),

          // Logo
          const Positioned(
            left: 15,
            top: 12,
            child: SizedBox(
              width: 75,
              height: 75,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("../src/assets/imgs/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),

          // Título
          Positioned(
            left: 120,
            top: 18,
            child: Text(
              title,
              style: AppTheme.titleStyle,
            ),
          ),

          // Menu (três traços)
          for (int i = 0; i < 3; i++)
            Positioned(
              left: 380,
              top: 40 + (i * 10),
              child: Container(
                width: 40,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 3,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

