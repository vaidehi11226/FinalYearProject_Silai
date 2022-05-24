import 'package:flutter/material.dart';
import 'package:silaiproject/screen_user/Appoitment.dart';
import 'package:silaiproject/screen_user/ContactStatus.dart';
import 'package:silaiproject/screen_user/Favrouties.dart';
import 'package:silaiproject/screen_user/HomePage1.dart';
import 'package:silaiproject/screen_user/Loginscreen.dart';
import 'package:silaiproject/screen_user/Navigation_item.dart';
import 'package:silaiproject/screen_user/OrderStatus.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              SizedBox(
                height: 30,
              ),
              Divider(
                thickness: 1,
                height: 10,
                color: Colors.blueGrey,
              ),
              DrawerItem(
                name: 'Home',
                icon: Icons.home,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              SizedBox(height: 20),
              DrawerItem(
                name: 'Favrouties',
                icon: Icons.favorite,
                onPressed: () => onItemPressed(context, index: 1),
              ),
              SizedBox(height: 20),
              DrawerItem(
                name: 'Appointment Status',
                icon: Icons.calendar_month_rounded,
                onPressed: () => onItemPressed(context, index: 2),
              ),
              SizedBox(height: 20),
              DrawerItem(
                name: 'Order Status',
                icon: Icons.shopping_cart_checkout,
                onPressed: () => onItemPressed(context, index: 3),
              ),
              SizedBox(height: 30),
              Divider(
                thickness: 1,
                height: 10,
                color: Colors.blueGrey,
              ),
              DrawerItem(
                name: 'Contact Support',
                icon: Icons.contact_support_rounded,
                onPressed: () => onItemPressed(context, index: 4),
              ),
              SizedBox(height: 20),
              DrawerItem(
                name: 'Logout',
                icon: Icons.logout,
                onPressed: () => onItemPressed(context, index: 5),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage1()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Favrouites()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Appoitnmentstatus()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => OrderStatus()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ContactStatus()));
        break;
      case 5:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginUser()));
        break;
      default:
        Navigator.pop(context);
        break;
    }
  }

  Widget headerWidget() {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vaidehi",
              style: TextStyle(fontSize: 14, color: Colors.black),
            )
          ],
        ),
      ],
    );
  }
}
