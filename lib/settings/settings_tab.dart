import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../my_theme.dart';
import 'language_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  static const String routeName = "setting";
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'language',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height:20,
                  ),
                  InkWell(
                    onTap: () {
                      showLanguageBottomSheet();
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: MyTheme.whiteColor,
                          border:
                              Border.all(color: MyTheme.blueColor, width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('English',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      fontSize: 14, color: MyTheme.blueColor)),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),SizedBox(
                    height:20,
                  ),Text(
                    'language',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 14),
                  ),SizedBox(
                    height:20,
                  ),InkWell(
                    onTap: () {
                      showLanguageBottomSheet();
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: MyTheme.whiteColor,
                          border:
                          Border.all(color: MyTheme.blueColor, width: 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('English',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                  fontSize: 14, color: MyTheme.blueColor)),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ])));
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }
}
