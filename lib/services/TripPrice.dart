import 'dart:convert';

import 'package:dio/dio.dart';

tripDis(plat, plng, dlat, dlng) async {
  Dio dio = new Dio();
  Response response = await dio.get(
      "https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=$plat,$plng&destinations=$dlat,$dlng&key=AIzaSyCbbRwfX5zIYh403Zd_1_LFohjeVID5814");
  print(response.data);
  if (response.data['rows'][0]['elements'][0]['status'] == "OK"){
    print("https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=$plat,$plng&destinations=$dlat,$dlng&key=AIzaSyCbbRwfX5zIYh403Zd_1_LFohjeVID5814");
    num data = response.data['rows'][0]['elements'][0]['distance']['value'];
    num km = data * 0.001;
    return km.round();
  }else if (response.data['rows'][0]['elements'][0]['status'] == "ZERO_RESULTS"){
    return 1.0;
  }else {
    return null;
  }

}
