import 'package:flutter/material.dart';
import 'package:plant_app/component/circle_avatar_component.dart';
import 'package:plant_app/core/app_colors.dart';
import 'package:plant_app/pages/home/planting_info_page.dart';
import 'package:plant_app/pages/home/profile_page.dart';

Map<String, Widget> routes = {
  'profilePage': const ProfilePage(),
  'mascotsPage': ProfilePage(),
  'plantingInfoPage': const PlantingInfoPage(),
};

enum RoutePage { homePage, profilePage, mascotsPage, plantingInfoPage }

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  RoutePage _selectedIndex = RoutePage.homePage;

  void _onItemTapped(RoutePage index) {
    setState(() {
      _selectedIndex = index;
    });

    if(_selectedIndex == RoutePage.homePage) {
      Navigator.pop(context);
      return;
    }
    Widget page = routes[_selectedIndex.name] as Widget;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  Color _chooseColor(RoutePage index) {
    return _selectedIndex == index ? AppColors.drawerIcons : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        backgroundColor: AppColors.drawer,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  circleAvatar(),
                  const SizedBox(width: 10),
                  const Text('Pepe',
                      style: TextStyle(fontSize: 20, color: Colors.white))
                ],
              ),
              const Divider(color: Colors.white, thickness: 1, height: 30),
              const SizedBox(height: 20),
              ListTile(
                title: Text('Home',
                    style: TextStyle(
                      color: _chooseColor(RoutePage.homePage),
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    )),
                leading:
                    Icon(Icons.home, color: _chooseColor(RoutePage.homePage)),
                selected: _selectedIndex == RoutePage.homePage,
                onTap: () => _onItemTapped(RoutePage.homePage),
                selectedTileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              ListTile(
                title: Text('Perfil',
                    style: TextStyle(
                      color: _chooseColor(RoutePage.profilePage),
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    )),
                leading: Icon(Icons.account_box,
                    color: _chooseColor(RoutePage.profilePage)),
                selected: _selectedIndex == RoutePage.profilePage,
                onTap: () => _onItemTapped(RoutePage.profilePage),
                selectedTileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              ListTile(
                title: Text('Meus mascotes',
                    style: TextStyle(
                      color: _chooseColor(RoutePage.mascotsPage),
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    )),
                leading: Icon(Icons.energy_savings_leaf,
                    color: _chooseColor(RoutePage.mascotsPage)),
                selected: _selectedIndex == RoutePage.mascotsPage,
                onTap: () => _onItemTapped(RoutePage.mascotsPage),
                selectedTileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              ListTile(
                selectedColor: Colors.white,
                title: Text('O plantio',
                    style: TextStyle(
                      color: _chooseColor(RoutePage.plantingInfoPage),
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    )),
                leading: Icon(Icons.account_tree,
                    color: _chooseColor(RoutePage.plantingInfoPage)),
                selected: _selectedIndex == RoutePage.plantingInfoPage,
                onTap: () => _onItemTapped(RoutePage.plantingInfoPage),
                selectedTileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
