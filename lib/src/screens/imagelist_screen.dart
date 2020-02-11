


import 'package:flutter/material.dart';
import 'package:image_finder/src/Bloc/Image_bloc.dart';
import 'package:image_finder/src/api/Image_Api.dart';
import 'package:image_finder/src/widgets/home_display.dart';




class ImageList extends StatelessWidget {
  final imageBloc = ImageBloc(ImageApi());
  final Home homeWidgetHandler= new Home();
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            homeWidgetHandler.searchField(imageBloc),
            homeWidgetHandler.displayImage(imageBloc),
          ],
        ));
  }







}