import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Map> contacts = [
    {'name': 'Roky Das', 'mobile': '01521227862'},
    {'name': 'Roky Das', 'mobile': '01521227862'}
  ];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getAllContacts();
    print('initialized');
    // _askPermissions(null);
  }

  getAllContacts() {
    // List<Contact> newContacts = ( ContactsService.getContacts(withThumbnails: false)).toList();

    // print(newContacts);
    // setState(() {
    //   contacts = newContacts;
    //   print(contacts);
    // });
  }

  // Future<void> _askPermissions(String routeName) async {
  //   PermissionStatus permissionStatus = await _getContactPermission();
  //   if (permissionStatus == PermissionStatus.granted) {
  //     if (routeName != null) {
  //       Navigator.of(context).pushNamed(routeName);
  //     }
  //   } else {
  //     _handleInvalidPermissions(permissionStatus);
  //   }
  // }
  //
  // Future<PermissionStatus> _getContactPermission() async {
  //   PermissionStatus permission = await Permission.contacts.status;
  //   if (permission != PermissionStatus.granted &&
  //       permission != PermissionStatus.permanentlyDenied) {
  //     PermissionStatus permissionStatus = await Permission.contacts.request();
  //     return permissionStatus;
  //   } else {
  //     return permission;
  //   }
  // }
  //
  // void _handleInvalidPermissions(PermissionStatus permissionStatus) {
  //   if (permissionStatus == PermissionStatus.denied) {
  //     final snackBar = SnackBar(content: Text('Access to contact data denied'));
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
  //     final snackBar =
  //     SnackBar(content: Text('Contact data not available on device'));
  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Text('হেই ব্রো,'),
            ListView.builder(
                shrinkWrap: true,
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  Map contact = contacts[index];
                  String name = contact['name'];
                  String mobile = contact['mobile'];
                  return ListTile(
                    title: Text("$name"),
                    subtitle: Text("$mobile"),
                  );
                }
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //     itemCount: contacts.length,
            //     itemBuilder: (context, index) {
            //       Contact contact = contacts[index];
            //       return ListTile(
            //         title: Text(contact.displayName),
            //         subtitle: Text(contact.phones.elementAt(0).value),
            //       );
            //     }
            // ),
          ],
        ),
      ),
    );
  }
}