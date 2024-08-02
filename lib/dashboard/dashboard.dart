import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    HomeView(),
    HomeView(),
    HomeView(),
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
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  updateCurrentIndex(0);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/logo.svg",
                      color: (_currentView == 0)
                          ? const Color(0xffB11E1E)
                          : Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: (_currentView == 0)
                              ? const Color(0xffB11E1E)
                              : Colors.black,
                          fontSize: 16),
                    )
                  ],
                )),
            InkWell(
                onTap: () {
                  updateCurrentIndex(1);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.buy_crypto,
                      color: (_currentView == 1)
                          ? const Color(0xffB11E1E)
                          : Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Market",
                      style: TextStyle(
                          color: (_currentView == 1)
                              ? const Color(0xffB11E1E)
                              : Colors.black,
                          fontSize: 16),
                    )
                  ],
                )),
            InkWell(
                onTap: () {
                  updateCurrentIndex(2);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.global_search,
                      color: (_currentView == 2)
                          ? const Color(0xffB11E1E)
                          : Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Explore",
                      style: TextStyle(
                          color: (_currentView == 2)
                              ? const Color(0xffB11E1E)
                              : Colors.black,
                          fontSize: 16),
                    )
                  ],
                )),
            InkWell(
                onTap: () {
                  updateCurrentIndex(3);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.bitcoin_card,
                      color: (_currentView == 3)
                          ? const Color(0xffB11E1E)
                          : Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Assets",
                      style: TextStyle(
                          color: (_currentView == 3)
                              ? const Color(0xffB11E1E)
                              : Colors.black,
                          fontSize: 16),
                    )
                  ],
                )),
            InkWell(
                onTap: () {
                  updateCurrentIndex(4);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.user,
                      color: (_currentView == 4)
                          ? const Color(0xffB11E1E)
                          : Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: (_currentView == 4)
                              ? const Color(0xffB11E1E)
                              : Colors.black,
                          fontSize: 16),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
