// import 'dart:convert';

// import 'package:ecomerce_app/model/special_model.dart';
// import 'package:http/http.dart' as http;

// class SpecialRepo {
//   final String apiUrl;

//   // Constructor allows passing the API URL (e.g., for testing or different environments)
//   SpecialRepo({this.apiUrl = "http://10.0.2.2:8000/api/special/"});

//   // Fetch data from the API
//   Future<List<SpecialModel>> fetchSpecials() async {
//     try {
//       final response = await http
//           .get(Uri.parse(apiUrl))
//           .timeout(const Duration(seconds: 20)); // Add a timeout to the request

//       if (response.statusCode == 200) {
//         //print("indesh");
//         final List<dynamic> data = json.decode(response.body);
//         // log("if suceess repo");
//         return data.map((json) => SpecialModel.fromJson(json)).toList();
//       } else {
//         //log("if else repo");
//         throw Exception("Failed to load items: ${response.statusCode}");
//       }
//     } catch (error) {
//       throw Exception("Error catch repo data: $error");
//     }
//   }
// }

import 'dart:convert';
import 'package:ecomerce_app/model/special_model.dart';
import 'package:http/http.dart' as http;

class SpecialRepo {
  final String apiUrl = 'http://192.168.1.73:8000/api/special/';

  Future<List<SpecialModel>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => SpecialModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}
