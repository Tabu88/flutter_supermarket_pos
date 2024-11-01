import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import 'bar_graph/bar_graph.dart';

class DashboardCardsWidget extends StatelessWidget {
  final List<String> quatifiers;
  final String title;
  final String subtitle;
  final String subtitle2;
  final List<String>? categories;
  final List weeklySummary;
  const DashboardCardsWidget({super.key, required this.quatifiers, required this.title, this.categories, required this.weeklySummary, required this.subtitle, required this.subtitle2});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(Constants.primaryWhite()),
      child: Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(Constants.primaryBlack()),
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  DropdownButton(
                    //value: ,
                    hint: Text(quatifiers[0]),
                      items: quatifiers.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                  }).toList(),
                      onChanged: (v) {},
                  )
                ],
              ),
              const SizedBox(height: 32,),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: MyBarGraph(
                  weeklySummary: weeklySummary, title: subtitle, title2: subtitle2,
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
