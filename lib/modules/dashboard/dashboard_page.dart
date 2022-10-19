
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with TickerProviderStateMixin{
  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: TabBar(
            indicator: ,
            labelStyle: const TextStyle(
            ),
            labelColor: Theme.of(context).primaryColor,
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.cloud_outlined),
                text: 'Face Mask Violation',
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
                text: 'Security Team',
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
                text: 'Tracking Chart',
              ),
            ]
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.all(16))
          ),
          child: const Text('Back to login'),
          onPressed: () => Modular.to.navigate('/auth/login'),
        ),
      ),
    );
  }
}