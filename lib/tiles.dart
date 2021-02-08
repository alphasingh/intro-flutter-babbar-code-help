import 'package:flutter/material.dart';
import 'package:intro/StudentList.dart';
import 'package:dio/dio.dart';

class Tiles extends StatefulWidget {
  @override
  _TilesState createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  StudentList list = StudentList();
  final String photosUrl = 'https://jsonplaceholder.typicode.com/photos';

  getDynamicDataFromApi() async {
    var dio = Dio();
    Response response = await dio.get(photosUrl);
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    getDynamicDataFromApi();
    return Scaffold(
        body: ListView.builder(
      itemCount: list.students.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            title: Text("${list.getStudentNameByIndex(index)}"),
            subtitle: Text("${list.getStudentRollByIndex(index)}"));
      },
    ));
  }
}
