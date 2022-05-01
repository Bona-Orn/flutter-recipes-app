import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes/components/my_bottom_navigation_bar.dart';
import 'package:recipes/components/popular_recipe_list.dart';

import '../components/pageview_recipe_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe7eefb),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.5,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recipes',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0e0e2d),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    child: SvgPicture.asset('assets/svg/icon-nav.svg'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16.53,
            ),
            const PageViewRecipeList(),
            const SizedBox(
              height: 42.52,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: Row(children: [
                SvgPicture.asset('assets/svg/icon-popular.svg'),
                const SizedBox(
                  width: 4.26,
                ),
                const Text(
                  'Popular',
                  style: TextStyle(fontSize: 20, color: Color(0xfff9ae89)),
                )
              ]),
            ),
            const SizedBox(
              height: 16,
            ),
            const PopularRecipeList(),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
