import 'package:flutter/material.dart';

void main() {
  runApp(const PiFitPawsApp());
}

class PiFitPawsApp extends StatelessWidget {
  const PiFitPawsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PiFitPaws',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF5F9F6),
        fontFamily: 'Roboto',
      ),
      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  // รายชื่อหน้าจอทั้ง 5 แท็บตามสถาปัตยกรรม PiFitPaws
  final List<Widget> _pages = [
    const HomeScreen(),
    const StreetMissionScreen(),
    const KennelScreen(),
    const ShopScreen(),
    const ProfileSocialScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _initializePiSDK();
  }

  // เรียกใช้งาน Pi SDK (Pi.authenticate) เพื่อให้ผ่านการตรวจสอบของ Pi App Studio
  void _initializePiSDK() {
    // โค้ดเชื่อมต่อ Pi.authenticate ทำงานที่นี่
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF2E7D32),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alt_route_rounded),
            label: 'Street',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets_rounded),
            label: 'Kennel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_rounded),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// --- โครงสร้างหน้าจอทั้ง 5 แท็บหลัก ---

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PiFitPaws - Dashboard')),
      body: const Center(
        child: Text('ยินดีต้อนรับสู่หน้าหลัก / แดชบอร์ด (Streak & Weather)', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class StreetMissionScreen extends StatelessWidget {
  const StreetMissionScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Street & Global Mission')),
      body: const Center(
        child: Text('ระบบสตรีทและภารกิจชุมชน (Global Mission System)', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class KennelScreen extends StatelessWidget {
  const KennelScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dog Kennel (1-5 Dogs)')),
      body: const Center(
        child: Text('ระบบบ้านสุนัขและจัดการคอกสัตว์เลี้ยง', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Permanent Ground Shop')),
      body: const Center(
        child: Text('ร้านค้าถาวรและคลังสินค้า (Top-Left Position)', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

class ProfileSocialScreen extends StatelessWidget {
  const ProfileSocialScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile & Social Group')),
      body: const Center(
        child: Text('โปรไฟล์, สังคมเพื่อน (Max 7 Members) & Referral', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
