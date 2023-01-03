import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingui/screen/home/provider/homeprovider.dart';

class HomeAndroid extends StatefulWidget {
  const HomeAndroid({Key? key}) : super(key: key);

  @override
  State<HomeAndroid> createState() => _HomeAndroidState();
}

class _HomeAndroidState extends State<HomeAndroid> {

  Homeprovider? homeprovidertrue;
  Homeprovider? homeproviderfalse;

  List<all> common = [
    all(
        lang: 'Language',
        env: 'Environment',
        phone: 'Phone Number',
        email: 'Email',
        signout: 'Sign Out',
        lock: 'Lock up in background',
        finger: 'Use fingerprint',
        password: 'Change password',
        envsub: 'Production',
        langsub: 'English'),
  ];

  @override
  Widget build(BuildContext context) {

    homeprovidertrue = Provider.of<Homeprovider>(context,listen: true);
    homeproviderfalse = Provider.of<Homeprovider>(context,listen: false);

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Settings UI"),
actions: [TextButton(onPressed: (){
  Navigator.pushNamed(context, 'ioss');
}, child: Text("iOS",style: TextStyle(fontSize: 20),)),],
      ),
      body: Column(
        children: [

          //Common

          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "Common",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: common.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.language),
                        title: Text("${common[index].lang}"),
                        subtitle: Text("${common[index].langsub}"),
                      ),
                      ListTile(
                        leading: Icon(Icons.cloud),
                        title: Text("${common[index].env}"),
                        subtitle: Text("${common[index].envsub}"),
                      ),

                      //Account

                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Account",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.call),
                            title: Text("${common[index].phone}"),
                          ),
                          ListTile(
                            leading: Icon(Icons.email),
                            title: Text("${common[index].email}"),
                          ),
                          ListTile(
                            leading: Icon(Icons.exit_to_app),
                            title: Text("${common[index].signout}"),
                          ),
                        ],
                      ),

                      //Security

                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Security",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.phonelink_lock),
                            title: Text("${common[index].lock}"),
                            trailing: Switch(value: homeproviderfalse!.switches1,onChanged: (value){
                              return homeprovidertrue!.swi1();
                            },),
                          ),
                          ListTile(
                            leading: Icon(Icons.fingerprint),
                            title: Text("${common[index].finger}"),
                            trailing: Switch(value: homeprovidertrue!.switches2,onChanged: (value){
                              return homeprovidertrue!.swi2();
                            },),
                          ),
                          ListTile(
                            leading: Icon(Icons.lock),
                            title: Text("${common[index].lock}"),
                            trailing: Switch(value: homeproviderfalse!.switches3,onChanged: (value){
                              return homeprovidertrue!.swi3();
                            },),
                          ),

                        ],
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    ));
  }
}

class all {
  String? lang,
      env,
      phone,
      email,
      signout,
      lock,
      finger,
      password,
      langsub,
      envsub;

  all(
      {this.lang,
      this.env,
      this.phone,
      this.email,
      this.signout,
      this.lock,
      this.finger,
      this.password,
      this.langsub,
      this.envsub});
}
