// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/components/new_arrival_products.dart';
import 'package:shop_app/screens/components/papular_products.dart';
import 'package:shop_app/screens/components/title_section.dart';
import 'package:shop_app/screens/details/custom_buttom_drawer.dart';
import 'package:shop_app/screens/details/drawer_list.dart';
import 'components/categoryscrolling.dart';
import 'components/search_formfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListDrawer(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/Location.svg'),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              '16/2 Egypt',
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Notification.svg'))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const Text(
                'Best out fit For You',
                style: TextStyle(fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
                child: search_form(),
              ),
              const ScroolingRowHorizantal(),
              const SizedBox(
                height: 10,
              ),
              titleSection(
                pressed: () {},
                text: 'New Arrival',
              ),
              NewArrival_Products(),
              titleSection(
                pressed: () {},
                text: 'Popular',
              ),
              SizedBox(
                height: 10,
              ),
              papular_products(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, -5),
              blurRadius: 40,
              color: primaryColor,
            )
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: Colors.black,
          currentIndex: index,
          onTap: (int selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'My Cart',
              backgroundColor: Colors.greenAccent,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'favorite',
                backgroundColor: Colors.pinkAccent),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ' My Account',
              backgroundColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
