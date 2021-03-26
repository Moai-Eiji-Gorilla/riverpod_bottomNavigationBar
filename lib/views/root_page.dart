import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'custom_page.dart';

final pageTypeProvider = StateProvider<PageType>((ref) => PageType.first);

enum PageType {
  first,
  second,
  third,
  fourth,
  fifth,
}

class RootPage extends StatelessWidget {
  final List<Widget> _pageList = <Widget>[
    home,
    coupon,
    reservation,
    store,
    account,
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final pageType = watch(pageTypeProvider);

        final tabItems = [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'クーポン',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: '予約',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: '店舗',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'マイページ',
          ),
        ];

        return Scaffold(
          body: _pageList[pageType.state.index],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageType.state.index,
            onTap: (index) {
              pageType.state = PageType.values[index];
            },
            items: tabItems,
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
    );
  }
}
