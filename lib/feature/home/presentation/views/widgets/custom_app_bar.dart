
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Image.asset(AssetsApp.logo,height: 20,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search),)
        ],
      ),
    );
  }
}