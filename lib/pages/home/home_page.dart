import 'package:flutter/material.dart';
import 'package:plant_app/core/app_colors.dart';
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
      drawer: const DrawerWidget(),
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
                hintStyle:
                    MaterialStatePropertyAll(TextStyle(color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              _buttonPlantingSpots(),
              const SizedBox(width: 20),
              _buttonYourPlants()
            ],
          ),
        ),
      ),
    );
  }

  Container _buttonPlantingSpots() {
    return Container(
      height: 100,
      width: 250,
      decoration: BoxDecoration(
          color: AppColors.green, borderRadius: BorderRadius.circular(35)),
      child: Center(
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
          title: const Row(
            children: [
              Icon(Icons.place_outlined, color: Colors.white),
              Text('Pontos de plantio',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.white)),
            ],
          ),
          subtitle: const Text(
            'Existem 10 pontos de plantio próximos a você',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }

  Container _buttonYourPlants() {
    return Container(
      height: 100,
      width: 250,
      decoration: BoxDecoration(
          color: AppColors.green, borderRadius: BorderRadius.circular(35)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        title: const Row(
          children: [
            Icon(Icons.account_tree_outlined, color: Colors.white),
            Text('Sua(s) planta(s)',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.white)),
          ],
        ),
        subtitle: const Text(
          'Você já plantou 5 árvores',
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
