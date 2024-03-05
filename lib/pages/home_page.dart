import 'package:first_app/constants.dart';
import 'package:first_app/pages/cart_page.dart';
import 'package:first_app/pages/pet_list_page.dart';
import 'package:first_app/pages/product_details_page.dart';
import 'package:first_app/utils/colors.dart';
import 'package:first_app/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  List<Widget> pages = [PetListPage(), CartPage(), CartPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          setState(() {
            _page = i;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: yellowColor,
        showUnselectedLabels: true,
        currentIndex: _page,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              height: 28,
              colorFilter: ColorFilter.mode(
                _page == 0 ? yellowColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/catalog.svg',
              height: 28,
              colorFilter: ColorFilter.mode(
                _page == 1 ? yellowColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/cart.svg',
              height: 28,
              colorFilter: ColorFilter.mode(
                _page == 2 ? yellowColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/profile.svg',
              height: 28,
              colorFilter: ColorFilter.mode(
                _page == 3 ? yellowColor : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
