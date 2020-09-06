
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('httpDemo'),
        elevation: 0.0,
      ),
      body: httpDemoHome(),
    );
  }
}


class httpDemoHome extends StatefulWidget {
  @override
  _httpDemoHomeState createState() => _httpDemoHomeState();
}

class _httpDemoHomeState extends State<httpDemoHome> {
  @override
  void initState() {
    super.initState();
    fetchPosts()
      .then((value) => print(value));
//    final post = {
//      'title': 'hello',
//      'description': 'nice to meet you',
//    };
//    print(post['title']);
//    print(post['description']);
//
//    final postJson = json.encode(post);
//    print(postJson);
//
//    final postJsonConverted = json.decode(postJson);
//    print(postJsonConverted['title']);
//    print(postJsonConverted['description']);
//
//    final postNodel = Post.fromJson(postJsonConverted);
//    print('title: ${postNodel.title}, description: ${postNodel.description}');
//
//
//    print('${json.encode(postNodel)}');

  }

  Future<List<Post>> fetchPosts() async {
    final response =
      await http.get('https://resources.ninghao.net/demo/posts.json');
    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      List<Post> posts = responseBody['posts']
        .map<Post>((item) => Post.fromJson(item))
        .toList();
      return posts;
    } else {
      throw Exception('Faild to fetch posts');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPosts(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print('data: ${snapshot.data}');
        print('connectionState: ${snapshot.connectionState}');
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('loading...'),
          );
        } else {
          return ListView(
            children: snapshot.data.map<Widget>((item) {
              return ListTile(
                title: Text(item.title),
                subtitle: Text(item.author),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item.imageUrl),
                ),
              );
            }).toList(),
          );
        }
    });
  }
}

class Post {
  final int id;
  final String author;
  final String imageUrl;
  final String title;
  final String description;
  Post({
    this.id,
    this.author,
    this.imageUrl,
    this.title,
    this.description
  });

  Post.fromJson(Map json)
    : id = json['id'],
      author = json['author'],
      imageUrl = json['imageUrl'],
      title = json['title'],
      description = json['description'];

  Map toJson() => {
    'id': id,
    'author': author,
    'imageUrl': imageUrl,
    'title': title,
    'description': description,
  };

}
