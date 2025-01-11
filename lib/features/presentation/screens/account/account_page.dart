import 'package:flight_app/shared/application/aplication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool value = true;
  void onCHanged(){
    if(value = true){
      value =false;
    }else if(value = false){
      value = true;
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffF2F3F6),
      appBar: AppBar(

        titleSpacing: 25,
        title: const Text("My Profile" , style: TextStyle(fontSize: 20,color: Colors.white , fontWeight:FontWeight.w600 ,),),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.white,),
          child: Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
              color:  Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(36), bottomLeft:Radius.circular(36) )
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/account_avatar.jpg'),
                radius: 40,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    const Text(
                      "Jos Creative",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "josphandes@gmail.com",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    const Text(
                      "+1 654 785 4462",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit, color: Colors.white),
              ),
            ],
          ),
        ),
            )
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all( 24),
              child: Column(
                children: [
                  accountListTile(
                    context,
                    iconPath:"Share.svg",
                    title: "My Order",
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    color: Color(0xFFEAEAEA),
                  ),
                  accountListTile(
                    context,
                    iconPath:'voucher.svg',
                    title: "My Voucher",
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    color: Color(0xFFEAEAEA),
                  ),
                  accountListTile(
                    context,
                    iconPath:"peyment.svg",
                    title: "Payment Methods",
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    color: Color(0xFFEAEAEA),
                  ),
                  accountListTile(
                    context,
                    iconPath:"invite.svg",
                    title: "Invite Friends",
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    color: Color(0xFFEAEAEA),
                  ),

              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                title: Row(
                  children: [
                     SvgPicture.asset("assets/icons/scan.svg"),
                    const SizedBox(width: 20),
                    const Text("Quick Login"),
                  ],
                ),
                trailing: Transform.scale(
                  scale: 0.7,
                  child: Switch(
                    value: value,
                    onChanged: (bool value) {
                     setState(() {
                       onCHanged();
                     });
                    },
                  ),
                ),
              ),

                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(24 ),
              child: Column(
                children: [
                  accountListTile(
                    context,
                    iconPath:'my_order.svg',
                    title: "My Order",
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    color: Color(0xFFEAEAEA),
                  ),

                  accountListTile(
                    context,
                    iconPath: 'settings.svg',
                    title: "Settings",
                    onTap: () {
                      context.go('/settings');
                    },
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),

            Container(
              color: Colors.white,
              padding: EdgeInsets.all(24 ),
              child: Column(
                children: [

                  accountListTile(
                    context,
                    iconPath: 'logout.svg',
                    title: "Log Out",
                    onTap: () {},
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }



}

ListTile accountListTile(BuildContext context,
    {required String iconPath, required String title, required Function() onTap}) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 0 , vertical: 12),
    leading:SvgPicture.asset('assets/icons/$iconPath'),
    title: Text(title),
    trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
    onTap: onTap,
  );
}
