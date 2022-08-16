import 'package:flutter/material.dart';
import 'package:todo2/home/setting_tab/settings_tab.dart';

import 'list_tab/tasks_list.dart';

class HomeScrren extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  int slectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 7.0,
        child: BottomNavigationBar(
          currentIndex: slectedIndex,
          onTap: (index){
            setState(() {
              slectedIndex=index;

            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: ''),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(side: BorderSide(color: Colors.white,width: 5)),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    body: tabs[slectedIndex],
    );
  }
  var tabs=[TasksList(),SettingTab()];
}
