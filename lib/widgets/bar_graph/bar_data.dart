import 'individual_bar.dart';

class BarData{
  final double sunAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;


  BarData({
    required this.sunAmount,
    required this.monAmount,
    required this.tueAmount,
    required this.wedAmount,
    required this.thurAmount,
    required this.friAmount,
    required this.satAmount,
   });

  List<IndividualBar> barData = [];
  void initializeBarData() {
    barData = [
      IndividualBar(x: "Sun", y: sunAmount),
      IndividualBar(x: "Mon", y: monAmount),
      IndividualBar(x: "Tue", y: tueAmount),
      IndividualBar(x: "Wed", y: wedAmount),
      IndividualBar(x: "Thur", y: thurAmount),
      IndividualBar(x: "Fri", y: friAmount),
      IndividualBar(x: "Sat", y: satAmount),
    ];
  }
}