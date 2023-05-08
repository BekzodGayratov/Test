import 'package:appn3/model/album_model.dart';
import 'package:appn3/service/album_service.dart';
import 'package:flutter/material.dart';

class AlbumWidget extends StatelessWidget {
  const AlbumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: AlbumService().getAlbums(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Image.asset('assets/loading.gif'),
            );
          } else if (snapshot.data is String) {
            return Center(child: Text(snapshot.data.toString()));
          } else {
            List<AlbumModel> data = snapshot.data as List<AlbumModel>;
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(title: Text(data[index].title.toString()));
              },
              itemCount: data.length,
            );
          }
        });
  }
}
