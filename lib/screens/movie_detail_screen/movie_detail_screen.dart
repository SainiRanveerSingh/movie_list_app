import 'package:flutter/material.dart';

import 'package:movie_list_app/screens/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie item;
  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
      ),
      body: Center(
        child: Column(
          children:[
            Text(item.title),
            Image.network(item.poster,fit: BoxFit.fill,),
            Text("\n Awards: ${item.awards}"),
            Text("Rating: ${item.rating}"),
          ]
        ),
      ),
    );
  }
}