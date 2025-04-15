    import 'dart:convert';
    import 'model.dart';
    import 'package:http/http.dart' as http;


Future<List<Post>?> fetchmarvelcharacter() async{

    final response = await http.get(Uri.parse("https://www.simplifiedcoding.net/demos/marvel/"));


      if(response.statusCode ==200)
      {
        final List<dynamic> data = json.decode(response.body);

        return data.map((json) => Post.fromJson(json)).toList();

      }

      else
      {
        throw Exception("Failed top Load");
      }
    }