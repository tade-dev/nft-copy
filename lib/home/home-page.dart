import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Map<String, dynamic>> _featured = [
    {
      "images": [
        "assets/images/featured_image1.png",
        "assets/images/featured_image2.png",
      ],
      "name": "CryptoPunks",
      "author": "Larva Labs",
      "price": 565.65
    },
    {
      "images": [
        "assets/images/ape-1.png",
        "assets/images/ape-2.png",
      ],
      "name": "Bored Ape Yacht Club",
      "author": "Yuga Labs",
      "price": 565.65
    },
    {
      "images": [
        "assets/images/girls-image.png",
      ],
      "name": "Worls of Women",
      "author": "Yam KarKai",
      "price": 565.65
    },
  ];
  int _currentIndex = 0;
  updateCurrentIndex(value) {
    setState(() {
      _currentIndex = value;
    });
  }

  final List<Map<String, dynamic>> _trending = [
    {
      "images": [
        "assets/images/featured_image1.png",
        "assets/images/featured_image2.png",
      ],
      "name": "CryptoPunks",
      "author": "Larva Labs",
      "price": 565.65
    },
    {
      "images": [
        "assets/images/ape-1.png",
        "assets/images/ape-2.png",
      ],
      "name": "Bored Ape Yacht Club",
      "author": "Yuga Labs",
      "price": 565.65
    },
    {
      "images": [
        "assets/images/girls-image.png",
      ],
      "name": "Worls of Women",
      "author": "Yam KarKai",
      "price": 565.65
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "GeistMed",
                                fontSize: 16),
                          ),
                          Text(
                            "Manage your assets",
                            style: TextStyle(
                                color: Color(0xff555555), fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.2))),
                          child: const Icon(
                            Iconsax.search_normal_1,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.2))),
                          child: const Icon(
                            Iconsax.notification,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black.withOpacity(0.2),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 155,
                      child: Swiper(
                        loop: false,
                        itemCount: 3,
                        onIndexChanged: (value) {},
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    alignment: Alignment.centerRight,
                                    image: AssetImage("assets/images/st.png")),
                                color: (index == 0)
                                    ? const Color(0xffB11E1E)
                                    : (index == 1)
                                        ? Colors.black
                                        : const Color(0xff5C046B)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                        "assets/images/Cardholder.svg"),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "My Wallet",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "2,546.65 ETH",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontFamily: "GeistMed"),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Featured",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Container(
                              height: 36,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.2))),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/images/arrow_up.svg"))),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 300,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(_featured.length, (index) {
                              var items = _featured[index];
                              return Container(
                                width: 284,
                                margin: const EdgeInsets.only(right: 15),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 240,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Swiper(
                                            autoplay: true,
                                            itemCount: items["images"].length,
                                            onIndexChanged: (value) {},
                                            itemBuilder: (context, index) {
                                              var images =
                                                  items["images"][index];
                                              return Container(
                                                height: 240,
                                                width: Get.width,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image:
                                                            AssetImage(images),
                                                        fit: BoxFit.cover),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                              );
                                            },
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 15, bottom: 15),
                                            padding: const EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: AnimatedSmoothIndicator(
                                              activeIndex: _currentIndex,
                                              count: items["images"].length,
                                              effect: const ExpandingDotsEffect(
                                                  spacing: 8.0,
                                                  radius: 10.0,
                                                  expansionFactor: 3,
                                                  dotWidth: 4.0,
                                                  dotHeight: 4.0,
                                                  dotColor: Color(0xffD9D9D9),
                                                  activeDotColor:
                                                      Color(0xffB11E1E)),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  items["name"],
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: "GeistOne",
                                                      fontSize: 16),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                      text: "by ",
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xff555555),
                                                          fontFamily: "Geist",
                                                          fontSize: 14),
                                                      children: [
                                                        TextSpan(
                                                          text: items["author"],
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontFamily:
                                                                      "Geist",
                                                                  fontSize: 14),
                                                        )
                                                      ]),
                                                )
                                              ]),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: "Price\n",
                                              style: const TextStyle(
                                                  color: Color(0xff555555),
                                                  fontFamily: "Geist",
                                                  fontSize: 16),
                                              children: [
                                                TextSpan(
                                                  text: "${items["price"]}ETH",
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: "Geist",
                                                      fontSize: 20),
                                                )
                                              ]),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Trending NFTs",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Container(
                              height: 36,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.2))),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/images/arrow_up.svg"))),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
