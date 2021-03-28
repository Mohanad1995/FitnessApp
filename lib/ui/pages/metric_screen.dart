import 'package:fitnesappui/constants.dart';
import 'package:fitnesappui/size_config.dart';
import 'package:fitnesappui/ui/widget/activity_pie_chart_widget.dart';
import 'package:fitnesappui/ui/widget/heading_widget.dart';
import 'package:fitnesappui/ui/widget/hourly_bar_chart_widget.dart';
import 'package:fitnesappui/ui/widget/weekly_bar_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MetricScreen extends StatelessWidget {

  // Data we need to draw two bar graphs.
  final List<int> weeklyData = [10, 12, 4, 16, 20, 16, 14];
  final List<int> hourlyData = [
    5,7,10,11,17,18,14,15,12,11,8,7,11,19,6,8,10,12,18,16,14,17,11,13
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical * 82,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: CustomColors.kBackgroundColor,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeadingWidget(
              text1: 'EXERCISE',
              text2: '',
            ),
            ActivityPieChart(),
            HeadingWidget(
              text1: 'GOAL COMPILANCE',
              text2: '',
            ),
            WeeklyBarChartWidget(weeklyData: weeklyData, maximumValueOnYAxis: 22.0),
            HeadingWidget(
              text1: 'EXERCISE AVG',
              text2: '',
            ),
            HourlyBarChartWidget(hourlyData: hourlyData, maximumValueOnYAxis: 22.0,)
          ],
        ),
      ),
    );
  }
}
