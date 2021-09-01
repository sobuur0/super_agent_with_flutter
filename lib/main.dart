import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_agent_with_flutter/data/data.dart';

void main() =>
  runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Onboarding testing",
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static const List<String> _titles = [
    'Welcome \nOnboard',
    'It\'s a \nQuick One',
    'Scan QR Code \nTo Ride'
  ];

  static const List<String> _descriptions = [
    'Helgg Scooters is Located \nNear you',
    'Pay for Every Ride Using Helgg Wallet',
    'With Just One tap, you\'re \ngood to go'
  ];

  List<SliderModel> slides = <SliderModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: slides.length,
          itemBuilder: (context, index) {
            return SliderTile(
              imageAssetPath1: slides[index].getImageImageAssetPath1(),
              imageAssetPath2: slides[index].getImageImageAssetPath2(),
              title: slides[index].getTitle(),
              descriptions: slides[index].getDescription()
            );
          }
      )
    );
  }
}

class SliderTile extends StatelessWidget {

  late String imageAssetPath1, imageAssetPath2, title, descriptions;
  SliderTile({required this.title, required this.descriptions, required this.imageAssetPath1, required this.imageAssetPath2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text(title, style: TextStyle(fontSize: 39, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
          SizedBox(height: 20),
          Text(descriptions, textAlign: TextAlign.center,),
          Image.asset(imageAssetPath1),
          SizedBox(height: 70,),
          Image.asset(imageAssetPath2),
          SizedBox(height: 40,),
          ElevatedButton(
              onPressed: null,
              child: Text('Let\'s Begin', style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,),
              ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              fixedSize: MaterialStateProperty.all(Size(250, 50)),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.transparent),
                  ))
            ),
            ),
          // ElevatedButton(onPressed: onPressed, child: child),
        ],
      ),
    );
  }
}





