import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        // DrawerHeader(child: Text("This is drawer",style: TextStyle(fontSize: 20),),
        // decoration: BoxDecoration(color: Colors.amber),
        // )
        UserAccountsDrawerHeader(
          accountName: Text("Avibhav Choudhary"),
          accountEmail: Text("avibhavchoudhary@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://media-exp1.licdn.com/dms/image/C4E03AQHIG_s8K5IRXQ/profile-displayphoto-shrink_200_200/0?e=1607558400&v=beta&t=4qfuN119R8SlwKm6ccbAaPCnKuUtgrAwA3YBYdW74Zg"),
          ),
        ),
        ListTile(
          title: Text("My Account"),
          leading: Icon(Icons.person),
          subtitle: Text("Personal information"),
        ),
        ListTile(
          title: Text("Emails"),
          leading: Icon(Icons.email_rounded),
          subtitle: Text("Business email"),
        ),
        ListTile(
          title: Text("Settings"),
          leading: Icon(Icons.settings_applications_rounded),
          subtitle: Text("Customize the needs"),
        ),
        ListTile(
          title: Text("Help"),
          leading: Icon(Icons.help_rounded),
          subtitle: Text("Watch out for queris"),
        ),
        ListTile(
          title: Text("Sign out"),
          leading: Icon(Icons.logout),
          subtitle: Text("Need some break"),
        ),
      ],
    ));
  }
}
