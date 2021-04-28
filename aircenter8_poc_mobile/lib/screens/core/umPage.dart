import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

import '../../model/User.dart';
import '../../navigation/navigationDrawer.dart';

class umPage extends StatelessWidget {
  static const String routeName = '/usermanagement';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("User Management"),
      ),
      drawer: navigationDrawer(),
      body: Center(child: UserListView()),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('User add form will be opened'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        icon: Icon(Icons.add),
        label: Text("Add user"),
      ),
    );
  }
}

class UserListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
      future: _fetchUsers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<User> data = snapshot.data;
          return _userListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<User>> _fetchUsers() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((job) => new User.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load users from API');
    }
  }

  ListView _userListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          if (index.isOdd) {
            return Divider();
          }
          return _tile(data[index].username, data[index].name,
              data[index].email, Icons.verified_user);
        });
  }

  ListTile _tile(String title, String subtitle, String email, IconData icon) =>
      ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(icon),
        trailing: Text(email),
      );
}
