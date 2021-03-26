import 'package:flutter/material.dart';

final home = CustomPage(
panelColor: Colors.blue,
title: 'home',
);

final coupon = CustomPage(
  panelColor: Colors.yellowAccent,
  title: 'クーポン',
);

final reservation = CustomPage(
  panelColor: Colors.blue,
  title: '予約',
);

final store = CustomPage(
  panelColor: Colors.blue,
  title: '店舗',
);

final account = CustomPage(
panelColor: Colors.green,
title: 'マイページ',
);




class CustomPage extends StatelessWidget {
  final Color panelColor;
  final String title;

  CustomPage({@required this.panelColor, @required this.title});

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.headline6;
    return Container(
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: panelColor,
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: titleTextStyle.fontSize,
                color: titleTextStyle.color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
