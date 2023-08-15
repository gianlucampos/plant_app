import 'package:flutter/material.dart';
import 'package:plant_app/pages/home/widgets/drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: const Icon(Icons.menu),
              onTap: () => _scaffoldKey.currentState!.openDrawer(),
            ),
            const SizedBox(
              width: 320,
              child: SearchBar(
                leading: Icon(Icons.search),
                hintText: 'Pesquisar local',
                hintStyle: MaterialStatePropertyAll(TextStyle(color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
