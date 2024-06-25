import 'package:flutter/material.dart';
import 'mobile_layout.dart';
import 'tablet_layout.dart';
import 'desktop_layout.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return MobileLayout();
            } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 1200) {
              return TabletLayout();
            } else {
              return DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
