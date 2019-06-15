import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  final PageViewModel viewModel;
  Page({
    this.viewModel,
  });
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      color: viewModel.color,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 25.0, left: 10.0, right: 10.0),
              child: new Image.asset(
                viewModel.heroAssetPath,
                width: 180.0,
                height: 200.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: new Image.asset(
                "images/t.png",
                width: 180.0,
                height: 200.0,
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
            child: new Text(
              viewModel.title,
              style: new TextStyle(
                color: Colors.white,
                fontFamily: 'FlamantRoma',
                fontSize: 34.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: new Text(
              viewModel.body,
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontFamily: 'FlamantRoma',
                color: Colors.white,
                fontSize: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageViewModel {
  final Color color;
  final String heroAssetPath;
  final String title;
  final String body;
  final String iconAssetIcon;

  PageViewModel(
    this.color,
    this.heroAssetPath,
    this.title,
    this.body,
    this.iconAssetIcon,
  );
}
