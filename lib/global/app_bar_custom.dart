import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

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
            const Text(
              "Ernakulam",
              style: TextStyle(color: Colors.black),
            ),
            IconButton(
                onPressed: () {},
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
