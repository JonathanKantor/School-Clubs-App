import 'package:flutter/material.dart';
import 'package:login_app/Comm/comHelper.dart';
import 'package:login_app/Comm/genTextFormField.dart';
import 'package:login_app/DataBaseHandler/DbHelper.dart';
import 'package:login_app/Model/UserModel.dart';
import 'package:login_app/Screens/LoginForm.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeForm extends StatefulWidget {
  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> {
  final _formKey = new GlobalKey<FormState>();
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  late DbHelper dbHelper;
  late String? _conUserId;
  final _conDelUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
    getUserData();

    dbHelper = DbHelper();
  }

  Future<void> getUserData() async {
    final SharedPreferences sp = await _pref;

    setState(() {
      _conUserId = sp.getString("user_id")!;
      _conDelUserId.text = sp.getString("user_id")!;
      _conUserName.text = sp.getString("user_name")!;
      _conEmail.text = sp.getString("email")!;
      _conPassword.text = sp.getString("password")!;
    });
  }

  update() async {
    String uid = _conUserId!;
    String uname = _conUserName.text;
    String email = _conEmail.text;
    String passwd = _conPassword.text;

    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();

      UserModel user = UserModel(uid, uname, email, passwd);
      await dbHelper.updateUser(user).then((value) {
        if (value == 1) {
          AlertDialog(title: Text("Successfully Updated"));

          updateSP(user, true).whenComplete(() {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => LoginForm()),
                (Route<dynamic> route) => false);
          });
        } else {
          AlertDialog(title: Text("Error Update"));
        }
      }).catchError((error) {
        print(error);
        AlertDialog(title: Text("Error"));
      });
    }
  }

  delete() async {
    String delUserID = _conDelUserId.text;

    await dbHelper.deleteUser(delUserID).then((value) {
      if (value == 1) {
        AlertDialog(title: Text("Successfully Deleted"));

        updateSP(UserModel(null, null, null, null), false).whenComplete(() {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => LoginForm()),
              (Route<dynamic> route) => false);
        });
      }
    });
  }

  Future updateSP(UserModel user, bool add) async {
    final SharedPreferences sp = await _pref;

    if (add) {
      sp.setString("user_name", user.user_name ?? "");
      sp.setString("email", user.email ?? "");
      sp.setString("password", user.password ?? "");
    } else {
      sp.remove('user_id');
      sp.remove('user_name');
      sp.remove('email');
      sp.remove('password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10.0),
                  getTextFormField(
                      controller: _conUserName,
                      icon: Icons.person_outline,
                      inputType: TextInputType.name,
                      hintName: 'User Name'),
                  SizedBox(height: 10.0),
                  getTextFormField(
                      controller: _conEmail,
                      icon: Icons.email,
                      inputType: TextInputType.emailAddress,
                      hintName: 'Email'),
                  SizedBox(height: 10.0),
                  getTextFormField(
                    controller: _conPassword,
                    icon: Icons.lock,
                    hintName: 'Password',
                    isObscureText: true,
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        'Update',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: update,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),

                  //Delete

                  getTextFormField(
                      controller: _conDelUserId,
                      isEnable: false,
                      icon: Icons.person,
                      hintName: _conUserId.toString()),
                  SizedBox(height: 10.0),
                  SizedBox(height: 10.0),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: delete,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
