import 'dart:ui';

import 'package:flutter/material.dart';

class SliderModel{
  late String imagePath1;
  late String imagePath2;
  late String title;
  late String description;

  // SliderModel({ this.imagePath1, this.imagePath2, this.title, this.description});

  void setImageAssetPath1(String getImagepath1) {
    imagePath1 = getImagepath1;
  }

  void setImageAssetPath2(String getImagepath2) {
    imagePath2 = getImagepath2;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    description = getDesc;
  }

  String getImageImageAssetPath1(){
    return imagePath1;
  }

  String getImageImageAssetPath2(){
    return imagePath2;
  }

  String getTitle(){
    return title;
  }

  String getDescription(){
    return description;
  }
}

List<SliderModel> getSlides () {
  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = new SliderModel();

  //first slide
  sliderModel.setTitle('Welcome \nOnboard');
  sliderModel.setDesc('Helgg Scooters is Located \nNear you');
  sliderModel.setImageAssetPath1('assets/onboard1.png');
  sliderModel.setImageAssetPath2('assets/navigation1.png');
  slides.add(sliderModel);

  //Second Slide
  sliderModel.setTitle('It\'s a Quick One');
  sliderModel.setDesc('Pay for Every Ride Using Helgg Wallet');
  sliderModel.setImageAssetPath1('assets/onboard2.png');
  sliderModel.setImageAssetPath2('assets/navigaton2.png');
  slides.add(sliderModel);
  
  //Third Slide
  sliderModel.setTitle('Scan QR Code To Ride');
  sliderModel.setDesc('With Just One tap, you\'re good to go');
  sliderModel.setImageAssetPath1('aassets/onboard3.png');
  sliderModel.setImageAssetPath2('assets/navigation3');
  slides.add(sliderModel);

  return slides;
}