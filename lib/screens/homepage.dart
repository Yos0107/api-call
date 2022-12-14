import 'package:api_testing/models/usermodel.dart';
import 'package:api_testing/services/apis/getApi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatelessWidget {
  // Homepage({super.key});
    late Future<List<User>> userlist;
   late List<User> userDetails;
  @override
  void initState(){
    super.initState();


  }

  callApi(){
   userlist=  GetUser();
  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Testing'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: FutureBuilder(
                  future: userlist,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      userDetails = snapshot.requireData;
                      return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 5,
                                  childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 5),
                          itemBuilder: ((context, index) {
                            return Container(child: Text(userDetails.),)
                          }));
                      print(GetUser());
                      return Text("i have data");
                    } else {
                      // print('error');
                      return Text("i do not have data");
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (() => GetUser()), child: Text('Enter'))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}
