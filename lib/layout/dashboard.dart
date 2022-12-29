

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardLayout extends StatefulWidget {
  const DashboardLayout({Key? key}) : super(key: key);

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout> with TickerProviderStateMixin{
  late TabController _tabController;
  final List<String> routes = ['/violators', '/security', 'tracking'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0  );
  }

  @override
  Widget build(BuildContext context) {
    //TODO
    Modular.to.navigate('/violators');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset('assets/images/unc_seal.png',
            height: 45),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Row(
              children: [
                IconButton(
                  iconSize: 28,
                  onPressed: () => {},
                  icon: const Icon(Icons.notifications, color: Colors.grey),
                  style: IconButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: const CircleBorder()
                  ),
                ),
                Container(
                  width: 30,
                  padding: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey
                  ),
                  child: PopupMenuButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.person, color: Colors.white, size: 22),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(
                          child: Text('Profile'),
                        ),
                        const PopupMenuItem(
                          child: Text('Settings'),
                        ),
                        const PopupMenuItem(
                          child: Text('Logout'),
                        ),
                        const PopupMenuItem(
                          child: Text('Report'),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: TabBar(
            onTap: (value) {
              Modular.to.navigate(routes[value]);
            },
            isScrollable: false,
            indicatorWeight: 3,
            labelPadding: const EdgeInsets.all(0),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
            indicatorColor: Theme.of(context).primaryColor,
            labelColor: Theme.of(context).primaryColor,
            controller: _tabController,
            tabs: const [
              Tab(
                iconMargin: EdgeInsets.zero,
                icon: Icon(Icons.masks, size: 30),
                child: SizedBox(
                  width: 70,
                  child: Text(
                      'Face Mask Violations',
                      style: TextStyle(
                          height: 1.2,
                          fontSize: 10,
                          color: Colors.black
                      ),
                      textAlign: TextAlign.center
                  ),
                )
              ),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 2),
                icon: Icon(Icons.group, size: 30),
                child: SizedBox(
                  width: 60,
                  child: Text(
                    'Security Team',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 2),
                icon: Icon(Icons.leaderboard, size: 28),
                child: SizedBox(
                  width: 60,
                  child: Text(
                    'Tracking Chart',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ),
            ]
        ),
      ),
      backgroundColor: Colors.white,
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: RouterOutlet()
      )
    );
  }
}