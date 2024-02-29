import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_page/presentation/screens/home_page/home_page.dart';
import 'package:sign_in_page/presentation/screens/sign_in_page/sign_in_page.dart';
import 'package:sign_in_page/presentation/widgets/text_fonts/text.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({
    super.key,
  });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  String _email = '';
  String _password = '';
  void _handleSignUp() async {
    setState(() {
      isLoading = true;
    });

    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: _email, password: _password);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      print("User Signed In:${userCredential.user!.email}");
    } catch (e) {
      print("Error During Signing In");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  var obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 121 : 121,
                            left: constraints.maxWidth > 600 ? 100 : 24,
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyles.bigtext(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 5 : 5,
                            left: constraints.maxWidth > 600 ? 100 : 24,
                          ),
                          child: Text(
                            "Let's create your account",
                            style: TextStyles.medium(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 50 : 10,
                            left: constraints.maxWidth > 600 ? 100 : 24,
                          ),
                          child: Text(
                            'Email',
                            style: TextStyles.medium2(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 6 : 6,
                            left: constraints.maxWidth > 600 ? 100 : 24,
                          ),
                          child: Container(
                            width: constraints.maxWidth > 600 ? 600 : 327,
                            height: constraints.maxWidth > 600 ? 56 : 56,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Your Email';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  _email = value;
                                });
                              },
                              controller: emailController,
                              obscureText: obscureText,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).cardColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).cardColor,
                                  ),
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 16),
                                hintText: 'Enter your email',
                                hintStyle: TextStyles.medium5(context),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 15 : 15,
                            left: constraints.maxWidth > 600 ? 100 : 24,
                          ),
                          child: Text(
                            'Password',
                            style: TextStyles.medium2(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 6 : 6,
                            left: constraints.maxWidth > 600 ? 100 : 24,
                          ),
                          child: Container(
                            width: constraints.maxWidth > 600 ? 600 : 327,
                            height: constraints.maxWidth > 600 ? 56 : 56,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Your Password';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  _password = value;
                                });
                              },
                              obscureText: obscureText,
                              controller: passwordController,
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: obscureText
                                      ? Icon(Icons.visibility_off_outlined,
                                          color: Color(0xff4B465C))
                                      : Icon(Icons.visibility_outlined,
                                          color: Color(0xff4B465C)),
                                ),
                                filled: true,
                                fillColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).cardColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Theme.of(context).cardColor,
                                  ),
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 16,
                                ),
                                hintText: 'Enter your password',
                                hintStyle: TextStyles.medium5(context),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 10 : 10,
                            left: constraints.maxWidth > 600 ? 480 : 225,
                          ),
                          child: Text(
                            'Forgot password?',
                            style: TextStyles.medium3(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 50 : 50,
                            left: constraints.maxWidth > 600 ? 100 : 24,
                          ),
                          child: Container(
                            width: constraints.maxWidth > 600 ? 600 : 327,
                            height: constraints.maxWidth > 600 ? 56 : 56,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                backgroundColor: Theme.of(context).canvasColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  _handleSignUp();
                                }
                              },
                              child: Center(
                                child: Stack(
                                  children: [
                                    if (!isLoading)
                                      Text(
                                        'Sign Up',
                                        style: TextStyles.bigtext2(context),
                                      ),
                                    if (isLoading)
                                      Container(
                                          child: Center(
                                        child: CircularProgressIndicator(
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                        ),
                                      ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 23 : 23,
                            left: constraints.maxWidth > 600 ? 100 : 24,
                          ),
                          child: Container(
                            width: constraints.maxWidth > 600 ? 600 : 327,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Divider(
                                  thickness: 0.7,
                                  color: Color(0xffE6E6E8),
                                )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 0,
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    'Or',
                                    style: TextStyles.medium(context),
                                  ),
                                ),
                                Expanded(
                                    child: Divider(
                                  thickness: 0.7,
                                  color: Color(0xffE6E6E8),
                                )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 23 : 23,
                            left: constraints.maxWidth > 600 ? 100 : 24,
                          ),
                          child: Container(
                            width: constraints.maxWidth > 600 ? 600 : 327,
                            height: constraints.maxWidth > 600 ? 56 : 56,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0.0,
                                side: BorderSide(
                                    color: Theme.of(context).cardColor),
                                backgroundColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              onPressed: () {},
                              child: Center(
                                child: Container(
                                  width: constraints.maxWidth > 600 ? 600 : 327,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: constraints.maxWidth > 600
                                                ? 100
                                                : 18),
                                        child: Image.asset(
                                          'assets/google.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: constraints.maxWidth > 600
                                                ? 100
                                                : 18),
                                        child: Text(
                                          'Sign up with Google',
                                          style: TextStyles.medium4(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: constraints.maxWidth > 600 ? 13 : 13,
                            left: constraints.maxWidth > 600 ? 220 : 60,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Already a member?",
                                  style: TextStyles.bigtext4(context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignInPage()),
                                    );
                                  },
                                  child: Text(
                                    "Sign in here",
                                    style: TextStyles.bigtext3(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              );
            },
          )),
    );
  }
}
