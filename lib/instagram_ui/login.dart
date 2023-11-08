import 'package:flutter/material.dart';
import 'package:instagram_profile/instagram_ui/profile_ig.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Colors.grey),
            ),
            alignment: Alignment.center,
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //email
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  height: 30,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    style: const TextStyle(fontSize: 15),
                    autocorrect: false,
                    textCapitalization: TextCapitalization.none,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      fillColor: Colors.grey.shade600,
                      filled: false,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ),
                ),

                //password
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 30,
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    style: const TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          }),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      fillColor: Colors.grey.shade600,
                      filled: false,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                    alignment: AlignmentDirectional.centerEnd,
                    child: InkWell(
                        onTap: () {}, child: const Text('Lupa Password ?'))),

                //button
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    _validation();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade800,
                      fixedSize: const Size(250, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                //divider
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 2),
                    ),
                    SizedBox(width: 20),
                    Text("atau"),
                    SizedBox(width: 20),
                    Expanded(
                      child: Divider(thickness: 2),
                    ),
                  ],
                ),

                // social media
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 25,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Image.asset(
                      'assets/images/facebook.png',
                      width: 25,
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/apple.png',
                        width: 25,
                      ),
                    ),
                  ],
                ),

                //text daftar
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Tidak punya Akun ? ",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    // SizedBox(width: 5),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.orange.shade900,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
