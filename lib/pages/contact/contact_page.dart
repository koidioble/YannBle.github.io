import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:yannble/responsive/responsive.dart';
import 'package:yannble/widgets/colors.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
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
      backgroundColor: darkOlive,
      appBar: AppBar(
        title: Text(
          "send me a message.",
          style: TextStyle(color: lightOlive),
        ),
        backgroundColor: darkOlive,
        iconTheme: IconThemeData(color: lightOlive),
      ),
      body: SafeArea(
        bottom: false,
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Horizontal line
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 6.0),
                    child: Container(
                      height: 1,
                      color: lightOlive,
                    ),
                  ),
                  const SizedBox(height: 6),

                  InkWell(
                    hoverColor: canaryYellow,
                    onTap: () {},
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0))),
                      borderOnForeground: true,
                      color: Colors.black,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: lightOlive),
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(9.99),
                          child: Text(
                            "Get In Touch With Me",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: canaryYellow),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            contactFormField(
                                'Name', 1, "Your Name", _nameController),
                            contactFormField(
                                'Email', 1, "Your Email", _emailController),
                            contactFormField('Phone Number', 1,
                                "Your Phone Number", _phoneController),
                            contactFormField("Message", 12, "Your Message",
                                _messageController),
                            Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                    style: ButtonStyle(
                                        side: WidgetStateProperty.all(
                                          BorderSide(
                                              color: canaryYellow, width: 2),
                                        ),
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                Colors.black)),
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        // Collect the data from the text controllers
                                        String name = _nameController.text;
                                        String email = _emailController.text;
                                        String phone = _phoneController.text;
                                        String message =
                                            _messageController.text;

                                        // Call the sendEmail function
                                        await sendEmail(
                                            email, message, name, phone);

                                        // Optionally show a success message
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text(
                                                  'Message sent successfully!')),
                                        );

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
                                          color: canaryYellow,
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Divider(
                      color: lightOlive,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "© Koidio Y. Blé - 2024",
                      style: GoogleFonts.ubuntu(color: lightOlive),
                    ),
                  ),
                  const SizedBox(height: 9),
                ],
              ),
            ),
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
}

Future<void> sendEmail(
    String email, String message, String name, String phone) async {
  final smtpServer = SmtpServer('smtp.office365.com',
      username: 'yannble@hotmail.com', // Your Hotmail email
      password: '_DeBabi225', // Your Hotmail password or App Password
      port: 587, // Port for TLS
      ssl: false // Use SSL
      );

  final msg = Message()
    ..from = const Address(
        'yannble@hotmail.com', 'Koidio (Y.) Blé') // Your Hotmail email and name
    ..recipients.add('yannble@hotmail.com') // Recipient email
    ..subject = 'New Message from Your Website'
    ..text = 'Name: $name\nEmail: $email\nPhone: $phone\n\nMessage:\n$message';

  try {
    await send(msg, smtpServer);
    ('Email sent!');
  } on MailerException catch (e) {
    ('Message not sent. $e');
    for (var p in e.problems) {
      ('Problem: ${p.code}: ${p.msg}');
    }
  } catch (e) {
    ('An unexpected error occurred: $e');
  }
}
