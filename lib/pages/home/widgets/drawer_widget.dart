import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';

const linkAvatar =
    '''
https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnLaFPMPSwjs6J-eESrFLRymDkDBQQ_Q7Wpw&usqp=CAU    ''';
const linkAvatar2 =
    'https://img.freepik.com/free-icon/user_318-644360.jpg?size=626&ext=jpg';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _chooseColor(int index) {
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
              const Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(linkAvatar),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 10),
                  Text('Pepe',
                      style: TextStyle(fontSize: 20, color: Colors.white))
                ],
              ),
              const Divider(color: Colors.white, thickness: 1, height: 30),
              const SizedBox(height: 20),
              ListTile(
                title: Text('Home',
                    style: TextStyle(
                      color: _chooseColor(0),
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    )),
                leading: Icon(Icons.home, color: _chooseColor(0)),
                selected: _selectedIndex == 0,
                selectedTileColor: Colors.white,
                onTap: () => _onItemTapped(0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              ListTile(
                title: Text('Perfil',
                    style: TextStyle(
                      color: _chooseColor(1),
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    )),
                leading: Icon(Icons.account_box, color: _chooseColor(1)),
                selected: _selectedIndex == 1,
                selectedTileColor: Colors.white,
                onTap: () => _onItemTapped(1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              ListTile(
                title: Text('Meus mascotes',
                    style: TextStyle(
                      color: _chooseColor(2),
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    )),
                leading:
                    Icon(Icons.energy_savings_leaf, color: _chooseColor(2)),
                selected: _selectedIndex == 2,
                selectedTileColor: Colors.white,
                onTap: () => _onItemTapped(2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              ListTile(
                selectedColor: Colors.white,
                title: Text('O plantio',
                    style: TextStyle(
                      color: _chooseColor(3),
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    )),
                leading: Icon(Icons.account_tree, color: _chooseColor(3)),
                selected: _selectedIndex == 3,
                selectedTileColor: Colors.white,
                onTap: () => _onItemTapped(3),
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
