import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../blocs/contactBloc.dart';
import '../global/app.dart';
import '../global/colors.dart';
import '../global/images.dart';
import '../widgets/commonWidgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ContactBloc contactBloc;
  @override
  Widget build(BuildContext context) {
    contactBloc = Provider.of<ContactBloc>(context);
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: ColorPlate.DarkColor,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 50,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: ColorPlate.WhiteColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.home,
                      color: ColorPlate.DarkColor,
                    ),
                    mySizedBox(myHeight: 0, myWidth: 5),
                    Text(
                      AppString.HomeTxt,
                      style: TextStyle(
                        color: ColorPlate.DarkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Icon(
                Icons.wallet_giftcard,
                color: ColorPlate.WhiteColor,
              ),
            ),
            Expanded(
              flex: 2,
              child: Icon(
                Icons.settings,
                color: ColorPlate.WhiteColor,
              ),
            ),
            Expanded(
              flex: 3,
              child: Icon(
                Icons.supervised_user_circle,
                color: ColorPlate.WhiteColor,
              ),
            )
          ],
        ),
      ),
      backgroundColor: ColorPlate.ScaffoldBackColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: ColorPlate.PrimaryColor,
          ),
          onPressed: () => showToastMessage(
              text: AppString.DrawerTxt, color: ColorPlate.DarkColor),
        ),
        backgroundColor: ColorPlate.ScaffoldBackColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.login_rounded,
              color: ColorPlate.PrimaryColor,
            ),
            onPressed: () => showToastMessage(
                text: AppString.LogoutTxt, color: ColorPlate.DarkColor),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Text(
            AppString.SendMoneyTxt,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          mySizedBox(myHeight: 15, myWidth: 0),
          Text(
            AppString.SelectOptionTxt,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: ColorPlate.PrimaryColor),
          ),
          mySizedBox(myHeight: 10, myWidth: 0),
          Container(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () => contactBloc.changeOption1(),
                    child: Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        color: contactBloc.option1
                            ? ColorPlate.DarkColor
                            : ColorPlate.WhiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            MyImage.Option1,
                            color: contactBloc.option1
                                ? ColorPlate.WhiteColor
                                : ColorPlate.DarkColor,
                            height: 40,
                          ),
                          Text(
                            AppString.Option1,
                            style: TextStyle(
                              fontWeight: contactBloc.option1
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: contactBloc.option1
                                  ? ColorPlate.WhiteColor
                                  : ColorPlate.DarkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () => contactBloc.changeOption2(),
                    child: Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        color: contactBloc.option2
                            ? ColorPlate.DarkColor
                            : ColorPlate.WhiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            MyImage.Option3,
                            color: contactBloc.option2
                                ? ColorPlate.WhiteColor
                                : ColorPlate.DarkColor,
                            height: 40,
                          ),
                          Text(
                            AppString.Option2,
                            style: TextStyle(
                              fontWeight: contactBloc.option2
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: contactBloc.option2
                                  ? ColorPlate.WhiteColor
                                  : ColorPlate.DarkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () => contactBloc.changeOption3(),
                    child: Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        color: contactBloc.option3
                            ? ColorPlate.DarkColor
                            : ColorPlate.WhiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            MyImage.Option2,
                            color: contactBloc.option3
                                ? ColorPlate.WhiteColor
                                : ColorPlate.DarkColor,
                            height: 40,
                          ),
                          Text(
                            AppString.Option3,
                            style: TextStyle(
                              fontWeight: contactBloc.option3
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: contactBloc.option3
                                  ? ColorPlate.WhiteColor
                                  : ColorPlate.DarkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () => contactBloc.changeOption4(),
                    child: Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        color: contactBloc.option4
                            ? ColorPlate.DarkColor
                            : ColorPlate.WhiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            MyImage.Option4,
                            color: contactBloc.option4
                                ? ColorPlate.WhiteColor
                                : ColorPlate.DarkColor,
                            height: 40,
                          ),
                          Text(
                            AppString.Option4,
                            style: TextStyle(
                              fontWeight: contactBloc.option4
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: contactBloc.option4
                                  ? ColorPlate.WhiteColor
                                  : ColorPlate.DarkColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          mySizedBox(myHeight: 20, myWidth: 0),
          Container(
            height: 150,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.RecentReceiptTxt,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => contactBloc.changereceipt1(),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(MyImage.User1),
                                ),
                                mySizedBox(myHeight: 10, myWidth: 0),
                                Text(
                                  AppString.User1Name,
                                  style: TextStyle(
                                      color: contactBloc.receipt1
                                          ? ColorPlate.DarkColor
                                          : ColorPlate.BlackColor,
                                      fontWeight: contactBloc.receipt1
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => contactBloc.changereceipt2(),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(MyImage.User2),
                                ),
                                mySizedBox(myHeight: 10, myWidth: 0),
                                Text(
                                  AppString.User2Name,
                                  style: TextStyle(
                                      color: contactBloc.receipt2
                                          ? ColorPlate.DarkColor
                                          : ColorPlate.BlackColor,
                                      fontWeight: contactBloc.receipt2
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => contactBloc.changereceipt3(),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(MyImage.User3),
                                ),
                                mySizedBox(myHeight: 10, myWidth: 0),
                                Text(
                                  AppString.User1Name,
                                  style: TextStyle(
                                      color: contactBloc.receipt3
                                          ? ColorPlate.DarkColor
                                          : ColorPlate.BlackColor,
                                      fontWeight: contactBloc.receipt3
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () => contactBloc.changereceipt4(),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(MyImage.User4),
                                ),
                                mySizedBox(myHeight: 10, myWidth: 0),
                                Text(
                                  AppString.User1Name,
                                  style: TextStyle(
                                      color: contactBloc.receipt4
                                          ? ColorPlate.DarkColor
                                          : ColorPlate.BlackColor,
                                      fontWeight: contactBloc.receipt4
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 450,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.AddContactTxt,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: myTextField(hint: AppString.SearchContactsTxt),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(MyImage.User1),
                      ),
                      title: Text(AppString.User1Name),
                      trailing: RaisedButton(
                        onPressed: () => contactBloc.changeInvite1(),
                        textColor: ColorPlate.WhiteColor,
                        child: Text(contactBloc.invite1
                            ? AppString.InvitedTxt
                            : AppString.InviteTxt),
                        color: contactBloc.invite1
                            ? ColorPlate.YellowColor
                            : ColorPlate.DarkColor,
                      ),
                      subtitle: Text(AppString.ContactTxt),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(MyImage.User2),
                      ),
                      title: Text(AppString.User2Name),
                      trailing: RaisedButton(
                        onPressed: () => contactBloc.changeInvite2(),
                        textColor: ColorPlate.WhiteColor,
                        child: Text(
                          contactBloc.invite2
                              ? AppString.InvitedTxt
                              : AppString.InviteTxt,
                        ),
                        color: contactBloc.invite2
                            ? ColorPlate.YellowColor
                            : ColorPlate.DarkColor,
                      ),
                      subtitle: Text(AppString.ContactTxt),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(MyImage.User3),
                      ),
                      title: Text(AppString.User3Name),
                      trailing: RaisedButton(
                        onPressed: () => contactBloc.changeInvite3(),
                        textColor: ColorPlate.WhiteColor,
                        child: Text(
                          contactBloc.invite3
                              ? AppString.InvitedTxt
                              : AppString.InviteTxt,
                        ),
                        color: contactBloc.invite3
                            ? ColorPlate.YellowColor
                            : ColorPlate.DarkColor,
                      ),
                      subtitle: Text(AppString.ContactTxt),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(MyImage.User4),
                      ),
                      title: Text(AppString.User4Name),
                      trailing: RaisedButton(
                        onPressed: () => contactBloc.changeInvite4(),
                        textColor: ColorPlate.WhiteColor,
                        child: Text(
                          contactBloc.invite4
                              ? AppString.InvitedTxt
                              : AppString.InviteTxt,
                        ),
                        color: contactBloc.invite4
                            ? ColorPlate.YellowColor
                            : ColorPlate.DarkColor,
                      ),
                      subtitle: Text(AppString.ContactTxt),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
