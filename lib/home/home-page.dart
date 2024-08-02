import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                            style: TextStyle(color: Colors.white, fontSize: 14),
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
              
            ],
          ),
        ),
      ),
    );
  }
}
