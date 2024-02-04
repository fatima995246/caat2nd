import 'package:caatsec/my_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  Function onSideMenuItem;
  static const int home = 1;
  static const int ToDo = 2;
  static const int SendTask = 3 ;
  static const int settings = 4;
  static const int AboutUs = 5;
  static const int ContactUs = 6;
  HomeDrawer({required this.onSideMenuItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: MyTheme.blueColor,
            ),
            accountName: Text('fatma sayed'),
            accountEmail: Text('fatmasayed@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              onSideMenuItem(HomeDrawer.home);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.home_outlined, color: MyTheme.greyColor),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Home  ',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              onSideMenuItem(HomeDrawer.ToDo);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.task_outlined, color: MyTheme.greyColor),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'ToDo',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              onSideMenuItem(HomeDrawer.SendTask);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.task_outlined, color: MyTheme.greyColor),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Send Task',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              onSideMenuItem(HomeDrawer.settings);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.settings_outlined, color: MyTheme.greyColor),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    ' Settings',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              onSideMenuItem(HomeDrawer.AboutUs);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.supervisor_account_outlined,
                      color: MyTheme.greyColor),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    ' About Us',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              onSideMenuItem(HomeDrawer.ContactUs);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.support_agent_outlined, color: MyTheme.greyColor),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    ' Contact Us',
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
