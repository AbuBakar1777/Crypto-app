import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:untitled2/Appstyle/class_style.dart';
import 'package:untitled2/Model/chart_model.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  late List<ChartData> data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data =[
ChartData(17, 21500),
      ChartData(18, 22684),
      ChartData(19, 21643),
      ChartData(20, 22997),
      ChartData(21, 22883),
      ChartData(22, 22635),
      ChartData(23, 21800),
      ChartData(24, 23500),
      ChartData(25, 21354),
      ChartData(26, 22354),





    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Appstyle.bg_color,
      appBar: AppBar(
        backgroundColor: Appstyle.bg_color,
        elevation: 0.0,
        title: Text("Bitcoin"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
Text("Bitcoin",style: TextStyle(color:Colors.white,fontSize: 28,fontWeight: FontWeight.bold),)
      ,
          SizedBox(height: 10,),
          CircleAvatar(
            radius: 30,
        backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1200px-Bitcoin.svg.png'),
      ),
          SizedBox(height: 20,),
          Text("BTC",style: TextStyle(color: Colors.white,fontSize: 29),),
          Center(
            child: SfCartesianChart(
              margin: EdgeInsets.all(0),
              borderWidth: 0,
              borderColor: Colors.transparent,
              plotAreaBorderWidth: 0,
              primaryXAxis: NumericAxis(
                minimum: 17,
                maximum: 26,
                isVisible:false,
                  borderWidth: 0,
                  borderColor: Colors.transparent,
              ),
              primaryYAxis: NumericAxis(
minimum: 19000,
                maximum: 24000,
                interval: 1000,
                isVisible: false,
                borderWidth: 0,
                borderColor: Colors.transparent,
              ),
              series: <ChartSeries<ChartData,int>>[
                SplineAreaSeries(dataSource: data,
                    xValueMapper: (ChartData data,_)=>data.day,
                    yValueMapper:(ChartData data,_)=>data.price,
                splineType: SplineType.natural,
                gradient:LinearGradient(colors: [Appstyle.spline_colr,
                  Appstyle.spline_colr.withAlpha(150),],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
                ),
                SplineSeries(dataSource: data,
                    color: Appstyle.accent_color,
                    width: 4,
                    markerSettings: MarkerSettings(
                      color: Appstyle.spline_colr,
                      borderColor: Colors.white,
                    borderWidth: 2,
                      shape: DataMarkerType.circle,
                      isVisible: true,
                    ),
                    xValueMapper: (ChartData data,_)=>data.day,
                    yValueMapper:(ChartData data,_)=>data.price)
              ]

            ),
          ),
Text("data",style: TextStyle(color: Colors.white),
),
      Text("data",style: TextStyle(color: Colors.white),),
          Text("data",style: TextStyle(color: Colors.white),),
          Text("data",style: TextStyle(color: Colors.white),),
          Text("data",style: TextStyle(color: Colors.white),),
          Text("data",style: TextStyle(color: Colors.white),),
          Text("data",style: TextStyle(color: Colors.white),),Text("data",style: TextStyle(color: Colors.white),),

        ],
      ),
    );
  }
}
