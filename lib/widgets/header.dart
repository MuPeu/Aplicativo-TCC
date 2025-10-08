import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.primaryColor,
      height: 100,
      child: Row(
        children: [
          const SizedBox(width: 15),
          Container(
            width: 75,
            height: 75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(""),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Container(
                margin: const EdgeInsets.symmetric(vertical: 2),
                width: 40,
                height: 2,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
