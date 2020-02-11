

import 'package:image_finder/src/api/Image_Api.dart';
import 'package:image_finder/src/models/Image_model.dart';
import 'package:rxdart/rxdart.dart';

class ImageBloc {

  final ImageApi api;
  Stream<List<Images>> _images = Stream.empty();


  BehaviorSubject<String> _query = BehaviorSubject<String>();
  Stream<List<Images>> get images => _images;
  Sink<String> get query => _query;

  ImageBloc(this.api) {

    _images = _query.distinct().asyncMap(api.makeRequest).asBroadcastStream();

  }


}