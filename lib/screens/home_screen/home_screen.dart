import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stock_prediction/constants.dart';
import 'package:stock_prediction/screens/home_screen/widgets/app_navbar.dart';
import 'package:stock_prediction/screens/home_screen/widgets/header.dart';
import 'package:stock_prediction/screens/home_screen/widgets/info_card.dart';
import 'package:stock_prediction/screens/home_screen/widgets/row_stocks.dart';
import 'package:stock_prediction/screens/home_screen/widgets/search_box.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0,
                    left: horizontalPadding,
                    right: horizontalPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(),
                    SizedBox(height: 32),
                    SearchBox(),
                    SizedBox(height: 32),
                    InfoCard(),
                    SizedBox(height: 32),
                    Text(
                      'Trending',
                      style: TextStyle(
                        fontSize: 26,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
              RowStocks(),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(height: 60, child: AppNavbar()),
      ),
    );
  }
}
