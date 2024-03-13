import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:train_food_app/data/delivery_location/delivery_location.dart';
import 'package:train_food_app/presentation/user/delivery_info_page/view/delivery_info_page.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leadingWidth: 160,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Text(
              DeliveryLocation.currentLocation,
              style: TextStyle(color: Colors.black),
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DeliveryInfoPage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      title: const Text(
        "LOGO",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        Row(
          children: [
            badges.Badge(
              badgeContent: Text("2"),
              position: badges.BadgePosition.topEnd(top: 0, end: 0),
              badgeStyle: badges.BadgeStyle(
                badgeColor: Colors.red,
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  )),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                ))
          ],
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
