import 'package:flutter/material.dart';
import 'package:ymdy/i18n/i18n.dart';

class DiscoverScreen extends StatefulWidget {


  @override
  _DiscoverScreen createState() => _DiscoverScreen();
}

class _DiscoverScreen extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentI18n.discoverScreenTitle),
      ),
    );
  }
}
