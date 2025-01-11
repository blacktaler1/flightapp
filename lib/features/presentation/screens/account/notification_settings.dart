import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/settings');
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Notification Settings',style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),),
              SizedBox(
                height: 24,
              ),
              Text('Push Notification Disabled' , style: Theme.of(context).textTheme.bodyLarge,),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text('To enable notifications, go to', style: Theme.of(context).textTheme.displaySmall,),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: (){context.go('/settings');}, child: Text('Settings', style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Color(0xff0064D2)),),)
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Text('Activity' , style: Theme.of(context).textTheme.bodyLarge,),
              SizedBox(
                height: 6,
              ),
              Text('Secure your account by keeping your log in,\nregister, and OTP activity on track.', style: Theme.of(context).textTheme.displaySmall,),
              notificationListTile(context,title: 'Email', value: false),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              notificationListTile(context,title: 'Push Notification', value: true),
              Text('Special For You' , style: Theme.of(context).textTheme.bodyLarge,),
              SizedBox(
                height: 6,
              ),
              Text('You can never have too much of limited-time\ndiscount, exclusive offers, tips and info new\nfeature.', style: Theme.of(context).textTheme.displaySmall,),
              notificationListTile(context,title: 'Email', value: false),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              notificationListTile(context,title: 'Push Notification', value: true),
              Text('Reminders' , style: Theme.of(context).textTheme.bodyLarge,),
              SizedBox(
                height: 6,
              ),
              Text('Get inportant travel news and info, payment\nreminders, check-in reminder and more.', style: Theme.of(context).textTheme.displaySmall,),
              notificationListTile(context,title: 'Email', value: false),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              notificationListTile(context,title: 'Push Notification', value: true),
              Text('Membership' , style: Theme.of(context).textTheme.bodyLarge,),
              SizedBox(
                height: 6,
              ),
              Text('You’ll get emails about tiket Elite Rewards and\nsurveys.', style: Theme.of(context).textTheme.displaySmall,),
              notificationListTile(context,title: 'Email', value: false),
              Divider(
                height: 1,
                color: Color(0xFFEAEAEA),
              ),
              notificationListTile(context,title: 'Push Notification', value: true),
            ],
        ),
      ),
      ),
    );
  }
}


ListTile notificationListTile(BuildContext context,
    { required String title,required bool value }) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 0 ,vertical: 0),
    title: Text(title,style: Theme.of(context).textTheme.displaySmall,),
    trailing: Transform.scale(

      scale: 0.7,
      child: Switch(
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Color(0xff0D16340D),
        trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            return null;
          }
          return Color(0xff0D16340D);
        }),
        value: value,
        onChanged: (bool value) {},
      ),
    ),
  );
}