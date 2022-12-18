import 'package:api_testing/models/usermodel.dart';
import 'package:api_testing/services/apis/getApi.dart';
import 'package:api_testing/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    Provider.of<Hamroprovider>(context, listen: false).antimData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Api Testing'),
        ),
        body: Consumer<Hamroprovider>(builder: (context, value, child) {
          if (value.antim.length == null) {
            return Text("no data");
          } else {
            return ListView.builder(
              itemCount: value.antim.length,
              itemBuilder: ((context, index) {
                return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green.shade200,
                      child: Text("${index + 1}"),
                    ),
                    title: Text(value.antim[index].name),
                    subtitle: Text(value.antim[index].email));
              }),
            );
          }
        }));
  }
}
