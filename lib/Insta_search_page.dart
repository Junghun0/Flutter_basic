import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create),
        backgroundColor: Colors.blue,
        onPressed: () {},
      ),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildListItems(context, index);
        });
  }

  Widget _buildListItems(BuildContext context, int index) {
    return Image.network('https://www.dreamsquadgroup.com/wp-content/uploads/2019/04/maxresdefault-1080x675.jpg', fit: BoxFit.cover,);
  }
}
