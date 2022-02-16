import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/custom_buttom_drawer.dart';

class ListDrawer extends StatelessWidget {
  const ListDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(defaultPadding / 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 50,
                    child: ClipRRect(
                      child: Image.asset('assets/images/ahmed.jpg'),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ahmed Khalid',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ahmedokab2411@gamil.com',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              )),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButtomDrawer(
          pressed: () {},
          text: 'My Favorite',
          icon: const Icon(Icons.favorite),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButtomDrawer(
          pressed: () {},
          text: ' Wallets',
          icon: const Icon(Icons.wallet_giftcard),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButtomDrawer(
          pressed: () {},
          text: 'My Carts',
          icon: const Icon(Icons.shopping_cart),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButtomDrawer(
          pressed: () {},
          text: 'About us',
          icon: const Icon(Icons.book_sharp),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButtomDrawer(
          pressed: () {},
          text: 'privacy policy ',
          icon: const Icon(Icons.privacy_tip),
        ),
        CustomButtomDrawer(
          pressed: () {},
          text: 'settings',
          icon: const Icon(Icons.settings),
        ),
        const SizedBox(
          height: 70,
        ),
        CustomButtomDrawer(
          pressed: () {},
          text: 'settings',
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }
}
