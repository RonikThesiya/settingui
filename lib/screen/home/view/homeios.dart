import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iosscreen extends StatefulWidget {
  const iosscreen({Key? key}) : super(key: key);

  @override
  State<iosscreen> createState() => _iosscreenState();
}

class _iosscreenState extends State<iosscreen> {
  List<all> ui = [
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
        langsub: 'English',
        term: 'Term of Service',
        source: 'Open Source Licenses'),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.destructiveRed,
        middle: Text(
          "Settings UI",
          style: TextStyle(color: CupertinoColors.white, fontSize: 20),
        ),

      ),
      child: Column(
        children: [

          Expanded(
            child: ListView.builder(
                itemCount: ui.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Common",style: TextStyle(fontSize: 15,color: Colors.black38,
                            decoration: TextDecoration.none
                          ),
                          ),

                        ],
                      ),
                      CupertinoListTile(
                        leading: Icon(
                          CupertinoIcons.globe,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].lang}"),
                      ),
                      CupertinoListTile(
                        leading: Icon(
                          CupertinoIcons.cloud,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].env}"),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Account",
                            style: TextStyle(fontSize: 15,color: Colors.black38,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ],
                      ),
                      CupertinoListTile(
                        leading: Icon(
                          CupertinoIcons.phone,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].phone}"),
                      ),
                      CupertinoListTile(
                        leading: Icon(
                          CupertinoIcons.mail_solid,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].email}"),
                      ),
                      CupertinoListTile(
                        leading: Icon(
                          CupertinoIcons.square_arrow_right,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].signout}"),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Security",
                            style: TextStyle(fontSize: 15,color: Colors.black38,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ],
                      ),
                      CupertinoListTile(
                        leading: Icon(
                          Icons.phonelink_lock,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].lock}"),
                        trailing: CupertinoSwitch(value: ),
                      ),
                      CupertinoListTile(
                        leading: Icon(
                          Icons.fingerprint,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].finger}"),
                      ),
                      CupertinoListTile(
                        leading: Icon(
                          CupertinoIcons.padlock_solid,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].password}"),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Misc",
                            style: TextStyle(fontSize: 15,color: Colors.black38,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ],
                      ),

                      CupertinoListTile(
                        leading: Icon(
                          CupertinoIcons.doc_text_fill,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].term}"),
                      ),
                      CupertinoListTile(
                        leading: Icon(
                          CupertinoIcons.doc_on_clipboard,
                          color: Colors.black38,
                        ),
                        title: Text("${ui[index].source}"),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
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
      term,
      source,
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
      this.term,
      this.source,
      this.envsub});
}
