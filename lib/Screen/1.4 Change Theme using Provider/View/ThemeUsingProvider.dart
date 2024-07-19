import 'package:adv_flutter_ch1/Screen/1.4%20Change%20Theme%20using%20Provider/Provider/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Themeusingprovider extends StatelessWidget {
  const Themeusingprovider({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeChangeProvider themeChangetrue =
        Provider.of<ThemeChangeProvider>(context, listen: true);
    ThemeChangeProvider themeChangefalse =
        Provider.of<ThemeChangeProvider>(context, listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.settings),
          SizedBox(
            width: width * 0.03,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/profile.jpeg'),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'Testing User',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: height*0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  (themeChangetrue.isdark)
                      ?  Icons.dark_mode
                      :  Icons.sunny  ,
                  size: 22,
                  color: Theme.of(context).colorScheme.primary,

                ),
                Text(
                  (themeChangetrue.isdark)
                  ?'Dark Mode'
                  :'Light Mode',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Switch(
                    inactiveThumbColor: Theme.of(context).colorScheme.primary,
                    activeColor: Theme.of(context).colorScheme.primary,
                    value: themeChangetrue.isdark,
                    onChanged: (value) {
                      themeChangefalse.ChangeTheme();
                    }),
              ],
            ),
            SizedBox(height: height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.table_rows_sharp,
                  size: 22,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                SizedBox(
                  width: width * 0.2,
                ),
                Text(
                  'Story',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.settings,size:22,color: Theme.of(context).colorScheme.secondary,),
                SizedBox(width: width*0.2,),
                Text('Settings and Privacy',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

              ],
            ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.help_center_sharp,size:22,color: Theme.of(context).colorScheme.onSecondary,),
                SizedBox(width: width*0.2,),
                Text('Help Center',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

              ],
            ),
            SizedBox(height: height*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.notifications_active_rounded,size:22,color: Theme.of(context).colorScheme.primary,),
                SizedBox(width: width*0.2,),
                Text('Notification',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
