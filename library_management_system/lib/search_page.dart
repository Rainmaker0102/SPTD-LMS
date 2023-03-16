// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  const SearchPage({Key? key}) : super (key: key);

  @override
  State<SearchPage> createState()=> _SearchPageState();
}

class _SearchPageState extends State<SearchPage>{

  String name = "";
  List<Map<String, dynamic>> data = [];
  addData() async {
    for (var element in data) {
      FirebaseFirestore.instance.collection('Books').add(element);
    }
  }

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    addData();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      
        appBar: AppBar(
          backgroundColor: Colors.green,
          
          title: Card(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search), hintText: 'Search for book'),
            onChanged: (val) {
              setState(() {
                name = val;
              });
            },
          ),
        )),

        body: Container(
          margin: EdgeInsets.only(left: 200, right: 200),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('Books').snapshots(),
            builder: (context, snapshots) {
              return (snapshots.connectionState == ConnectionState.waiting)
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: snapshots.data!.docs.length,
                      itemBuilder: (context, index) {
                        var data = snapshots.data!.docs[index].data()
                            as Map<String, dynamic>;
        
                        if (name.isEmpty) {
                          return ListTile(
                            title: Text(
                              data['Title'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              data['ISBN'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Text(
                              data['Available'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          );
                        }
                        if (data['Title']
                            .toString()
                            .toLowerCase()
                            .startsWith(name.toLowerCase())) {
                          return ListTile(
                            title: Text(
                              data['Title'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              data['ISBN'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Text(
                              data['Available'],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          );
                        }
                        return Container();
                      });
            },
          ),
        ));
  }
}