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
        body: Consumer<Hamroprovider>(
          builder: (context, value, child) {
            print(value.antim);
            return Text("MMM");
            // ListView.builder(
            //   itemCount: value.antim.,
            //   itemBuilder: ((context, index) {
            //     return ListTile(
            //         // title: Text("${value.antim.}"),
            //         subtitle: Text("this is subtitile"));
            //   }),
            // );
          },
        ));
  }
}
