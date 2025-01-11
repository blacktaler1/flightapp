import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          context.go('/account');
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Settings',style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),),
              SizedBox(
                height: 24,
              ),
              Text('General' , style: Theme.of(context).textTheme.bodyLarge,),
              buildListTile(context,title: 'Language', onTap: (){
                context.go('/language-settings');
              }),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              buildListTile(context,title: 'Notification Settings', onTap: (){
                context.go('/notification-settings');
              }),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 0 ,vertical: 0),
                title: Text("Location",style: Theme.of(context).textTheme.displaySmall,),

                trailing: Transform.scale(

                  scale: 0.7,
                  child: Switch(

                    value: true,
                    onChanged: (bool value) {

                    },
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Text('Account & Secrity' , style: Theme.of(context).textTheme.bodyLarge,),
              buildListTile(context,title: 'Email and Mobile Number', onTap: (){
                context.go('/email-mobile-number');
              }),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              buildListTile(context,title: 'Security Settings', onTap: (){
                context.go('/security-settings');
              }),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              buildListTile(context,title: 'Delete Account', onTap: (){}),
              SizedBox(height: 8,),
              Text('Other' , style: Theme.of(context).textTheme.bodyLarge,),
              buildListTile(context,title: 'About Indochina Travel App', onTap: (){}),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              buildListTile(context,title: 'Privacy Policy', onTap: (){}),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              buildListTile(context,title: 'Terms and Conditions', onTap: (){}),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0 , vertical: 0),
            title: Text('Rate App' , style: Theme.of(context).textTheme.displaySmall,),
            trailing: Text('v4.87.2' , style: Theme.of(context).textTheme.displaySmall,),
            onTap: (){},
          )
            ],
          ),
        ),
      ),
    );
  }
}


  Widget buildListTile(BuildContext context,
      { required String title, required Function() onTap}) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0 , vertical: 0),
      title: Text(title , style: Theme.of(context).textTheme.displaySmall,),
      trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xff252831),size: 15,),
      onTap: onTap,
    );
  }

