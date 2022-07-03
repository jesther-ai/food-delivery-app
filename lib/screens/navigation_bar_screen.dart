import 'package:flutter/material.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:food_app_delivery/providers/navigation_bar_provider.dart';
import 'package:food_app_delivery/screens/home_screen.dart';
import 'package:provider/provider.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationBarProvider>(
      builder: (context, value, child) {
        _tabController.index = value.currentIndex;
        return DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Scaffold(
            backgroundColor: HexColor('#EFEDF4'),
            extendBodyBehindAppBar: true,
            extendBody: true,
            bottomNavigationBar: menu(context, value.currentIndex),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: SafeArea(
              bottom: false,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  HomeScreen(),
                  SizedBox(),
                  SizedBox(),
                  SizedBox(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget menu(BuildContext context, int currentIndex) {
    return Container(
      color: Colors.yellow,
      child: Consumer<NavigationBarProvider>(builder: (context, value, child) {
        return TabBar(
          onTap: (index) {
            value.setCurrentIndex(index);
          },
          // indicator: UnderlineTabIndicator(
          //   borderSide: BorderSide(color: HexColor('#D95A23'), width: 5.0),
          //   insets: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 50.0),
          // ),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 4,
          unselectedLabelColor: HexColor('#939393'),
          indicatorColor: HexColor('#D95A23'),
          padding: const EdgeInsets.only(bottom: 5, top: 5),
          tabs: [
            Tab(
              child: const SizedBox(),
              // child: Image.asset(
              //   'assets/images/tab1.png',
              //   height: currentIndex == 0 ? 35 : 25,
              //   width: currentIndex == 0 ? 35 : 25,
              //   color: currentIndex == 0 ? Colors.white : HexColor('#939393'),
              // ),
            ),
            Tab(
              child: const SizedBox(),
              // child: Image.asset(
              //   'assets/images/tab2.png',
              //   height: currentIndex == 1 ? 35 : 25,
              //   width: currentIndex == 1 ? 35 : 25,
              //   color: currentIndex == 1 ? Colors.white : HexColor('#939393'),
              // ),
            ),
            Tab(
              child: const SizedBox(),
              // child: Image.asset(
              //   'assets/images/tab3.png',
              //   height: currentIndex == 2 ? 35 : 25,
              //   width: currentIndex == 2 ? 35 : 25,
              //   color: currentIndex == 2 ? Colors.white : HexColor('#939393'),
              // ),
            ),
            Tab(
              child: const SizedBox(),
              // child: Image.asset(
              //   'assets/images/tab4.png',
              //   height: currentIndex == 3 ? 35 : 25,
              //   width: currentIndex == 3 ? 35 : 25,
              //   color: currentIndex == 3 ? Colors.white : HexColor('#939393'),
              // ),
            ),
          ],
        );
      }),
    );
  }
}
