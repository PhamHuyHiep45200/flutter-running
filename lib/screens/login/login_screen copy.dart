import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final List<int> numbers = [1, 2, 3, 4, 5];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 600,
            color: Colors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      top: 0,
                      left: 0,
                      right: 0,
                      // width: ,
                      child: SizedBox(
                        // width: 180,
                        // height: 180,
                        child: Center(
                          child: Image.asset(
                            'assets/shape.png',
                            width: 218,
                            height: 218,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                            minimum: 0,
                            maximum: 40,
                            interval: 2,
                            labelFormat: '',
                            labelsPosition: ElementsPosition.outside,
                            axisLineStyle: const AxisLineStyle(
                              thickness: 30,
                              color: Color.fromARGB(179, 240, 240, 240),
                            ),
                            showTicks: false,
                          ),
                          RadialAxis(
                            minimum: 0,
                            maximum: 40,
                            interval: 2,
                            labelFormat: '',
                            labelsPosition: ElementsPosition.outside,
                            ranges: <GaugeRange>[
                              GaugeRange(
                                startValue: 0,
                                endValue: 30,
                                color: Colors.blueAccent,
                                startWidth: 30,
                                endWidth: 30,
                              ),
                            ],
                            axisLineStyle: const AxisLineStyle(
                              thickness: 45,
                              color: Colors.transparent,
                            ),

                            // pointers: <GaugePointer>[NeedlePointer(value: 30,)],
                            annotations: <GaugeAnnotation>[
                              // GaugeAnnotation(
                              //   widget: SizedBox(
                              //     width: 200,
                              //     height: 200,
                              //     child: Center(
                              //       child: Image.asset('assets/shape.png', fit: BoxFit.cover,)
                              //     ),
                              //   ),
                              //   angle: 0,
                              // ),
                              GaugeAnnotation(
                                widget: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                      width: 3,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '0',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                positionFactor: 0.74,
                                angle: 130,
                              ),
                              GaugeAnnotation(
                                widget: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: Colors.blueGrey,
                                      width: 3,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '40',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                positionFactor: 0.74,
                                angle: 50,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: numbers
                      .map((e) => Text(e.toString(), key: ValueKey<int>(e)))
                      .toList(),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text('count $count'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
