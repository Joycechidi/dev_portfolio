import 'dart:convert';
import 'package:dev_portfolio/blog_section/blog_model.dart';
import 'package:dev_portfolio/constants.dart';
import 'package:http/http.dart' as http;
class ApiProvider{
  Future<List<Blog>> getBlogs() async {
    final response = await http.get(Constants.BLOG_API);
    if(response.statusCode==200){
      List blogs = json.decode(utf8.decode(response.bodyBytes))['response'];
      final results= blogs.map((blog)=>Blog.fromJson(blog)).toList();
      return results;
    }else{
      return null;
    }
  }
}