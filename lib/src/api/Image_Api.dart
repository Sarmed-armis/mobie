import 'dart:convert';

import 'package:http/http.dart';
import 'package:image_finder/src/models/Image_model.dart';

class ImageApi
{




  Future<List<Images>> makeRequest(String query) async {

    List<Images> images = [];
    final response = await get(
        'https://api.unsplash.com/search/photos?query=$query&client_id=e4ed5fcb73504cf6ae05d316104afb63e44a251046a8055b8b6dad86cfc33cbb');
    final parsedResponse = json.decode(response.body);
    final List results = parsedResponse['results'];
    results.forEach((result)
    {

         images.add(Images.fromJson(result));

    });

    return images;

  }



}