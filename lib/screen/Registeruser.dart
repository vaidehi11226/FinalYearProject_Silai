import 'package:flutter/material.dart';
import 'package:silaiproject/screen/homepage.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  final _formkey = GlobalKey<FormState>();

  final usernameEditingController = new TextEditingController();
  final ContactEditingController = new TextEditingController();
  final EmailidEditingController = new TextEditingController();
  final PasswordEditingController = new TextEditingController();
  final ConPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nameField = TextFormField(
      autofocus: false,
      controller: usernameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter your Name";
        }
        return null;
      },
      onSaved: (value) {
        usernameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Name",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Color(0xFF063448)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Color(0xFF063448)),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    final ContactField = TextFormField(
      autofocus: false,
      controller: ContactEditingController,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter contact no.";
        }
        //reg expression for email validation
        if (value.length != 10) {
          return "Mobile Number must be of 10 digit";
        }
      },
      onSaved: (value) {
        ContactEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Contact",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Color(0xFF063448)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Color(0xFF063448)),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    final EmailField = TextFormField(
      autofocus: false,
      controller: EmailidEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please enter your Email";
        }
        //reg expression for email validation
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return "Please enter a valid email";
        }
        return null;
      },
      onSaved: (value) {
        EmailidEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email-Id",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Color(0xFF063448)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Color(0xFF063448)),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: PasswordEditingController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return "Please enter your Password";
        }
        if (!regex.hasMatch(value)) {
          return "Enter Valid Password(Min. 6 Character)";
        }
      },
      onSaved: (value) {
        PasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        prefixIconColor: Color(0xFF063448),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Color(0xFF063448)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Color(0xFF063448)),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    final ConPasswordField = TextFormField(
      autofocus: false,
      controller: ConPasswordEditingController,
      obscureText: true,
      validator: (value) {
        if (ConPasswordEditingController.text !=
            PasswordEditingController.text) {
          return "Password Don't match";
        }
        return null;
      },
      onSaved: (value) {
        ConPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        prefixIconColor: Color(0xFF063448),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Color(0xFF063448)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Color(0xFF063448)),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );

    final SignupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(25),
      color: Color(0xFF063448),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => homepage()));
        },
        child: Text(
          "Sign-up",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFF6d96cf),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xFF6d96cf),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Register",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF063448),
                      ),
                    ),
                    SizedBox(
                        height: 300,
                        child: Image.asset(
                          "images/sewing2.png",
                          fit: BoxFit.contain,
                        )),
                    SizedBox(
                      height: 2,
                    ),
                    nameField,
                    SizedBox(
                      height: 15,
                    ),
                    ContactField,
                    SizedBox(
                      height: 15,
                    ),
                    EmailField,
                    SizedBox(
                      height: 15,
                    ),
                    passwordField,
                    SizedBox(
                      height: 15,
                    ),
                    ConPasswordField,
                    SizedBox(
                      height: 45,
                    ),
                    SignupButton,
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
