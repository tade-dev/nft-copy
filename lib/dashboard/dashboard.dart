import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nft_collab/home/home-page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Widget> _views = [
    HomeView(),
  ];
  int _currentView = 0;
  updateCurrentIndex(value) {
    setState(() {
      _currentView = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_currentView],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  updateCurrentIndex(0);
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.home,
                    ),
                    Text("Home")
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
