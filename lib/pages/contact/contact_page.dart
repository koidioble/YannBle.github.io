import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:yannble/responsive/responsive.dart';
import 'package:yannble/widgets/colors.dart';
import 'package:yannble/widgets/my_divider.dart';
import 'package:yannble/widgets/my_signature.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "send me a message.",
          style: TextStyle(color: lightOlive),
        ),
        backgroundColor: white,
        iconTheme: IconThemeData(color: lightOlive),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              lightOlive,
              Colors.white,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(9),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Card(
                elevation: 9,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        lightOlive,
                        Colors.white,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(height: 10),
                        SizedBox(
                          width: Responsive.isMobile(context)
                              ? Responsive.widthOfScreen(context) * 0.9
                              : Responsive.widthOfScreen(context) * 0.8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: lightOlive,
                                    blurRadius: 4,
                                    spreadRadius: 2),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  contactFormField(
                                      'Name', 1, "Your Name", _nameController),
                                  contactFormField('Email', 1, "Your Email",
                                      _emailController),
                                  contactFormField('Phone Number', 1,
                                      "Your Phone Number", _phoneController),
                                  contactFormField("Message", 12,
                                      "Your Message", _messageController),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: OutlinedButton(
                                          style: ButtonStyle(
                                            side: WidgetStateProperty.all(
                                                BorderSide(
                                                    color: lightOlive,
                                                    width: 2)),
                                            backgroundColor:
                                                WidgetStateProperty.all(
                                                    Colors.black),
                                          ),
                                          onPressed: () async {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              // Collect the data from the text controllers
                                              String name =
                                                  _nameController.text;
                                              String email =
                                                  _emailController.text;
                                              String phone =
                                                  _phoneController.text;
                                              String message =
                                                  _messageController.text;

                                              // Call the sendEmail function
                                              await sendEmail(
                                                  email, message, name, phone);

                                              // Optionally show a success message
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(const SnackBar(
                                                content: Text(
                                                    'Message sent successfully!'),
                                              ));

                                              // Clear the form fields
                                              _nameController.clear();
                                              _emailController.clear();
                                              _phoneController.clear();
                                              _messageController.clear();
                                            }
                                          },
                                          child: Text(
                                            "Submit",
                                            style: TextStyle(
                                                color: lightGreen100,
                                                fontSize: 19.0,
                                                fontWeight: FontWeight.w600),
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
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: MyDivider(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const MySignature()
            ],
          ),
        ),
      ),
    );
  }

  Widget contactFormField(String name, int maxLine, String hintText,
      TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 18,
              color: lightOlive,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextField(
              controller: controller,
              maxLines: maxLine,
              decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: canaryYellow,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> sendEmail(
      String email, String message, String name, String phone) async {
    final smtpServer = SmtpServer('smtp.office365.com',
        username: 'yannble@hotmail.com', // Your Hotmail email
        password: '_DeBabi225', // Your Hotmail password or App Password
        port: 587, // Port for TLS
        ssl: false); // Use SSL

    final msg = Message()
      ..from = const Address('yannble@hotmail.com',
          'Koidio (Y.) Blé') // Your Hotmail email and name
      ..recipients.add('yannble@hotmail.com') // Recipient email
      ..subject = 'New Message from Your Website'
      ..text =
          'Name: $name\nEmail: $email\nPhone: $phone\n\nMessage:\n$message';

    try {
      await send(msg, smtpServer);
      print('Email sent!');
    } on MailerException catch (e) {
      print('Message not sent. $e');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    } catch (e) {
      print('An unexpected error occurred: $e');
    }
  }
}
