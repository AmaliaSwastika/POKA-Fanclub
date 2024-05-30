import 'package:flutter/material.dart';
import 'package:code_competence_2/widget/text_field_widget.dart';
import 'package:code_competence_2/theme/theme_text_style.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

@override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  String _firstNameValue = '';
  String _lastNameValue = '';
  String _emailValue = '';
  String _messageValue = '';

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  void setController() {
    setState(() {
      _firstNameValue = firstNameController.text;
      _lastNameValue = lastNameController.text;
      _emailValue = emailController.text;
      _messageValue = messageController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF73BDE0),
        title: Text(
          'POKA Fanclub',
          style: ThemeTextStyle().appBar,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.yellow,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF73BDE0),
        selectedItemColor: Colors.white,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),

      endDrawer: Drawer( 
        backgroundColor: const Color(0xFF73BDE0),
        child: ListView(
          padding: EdgeInsets.zero,
            children: const [
              ListTile(
                leading: Icon(Icons.note, color: Colors.white),
                title: Text(
                  'About Us',
                    style: TextStyle(
                      color: Colors.white, 
                      fontWeight: FontWeight.bold,
                      fontSize: 18, 
                    ),
                ),
          contentPadding: EdgeInsets.fromLTRB(30, 100, 16, 0), 
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white),
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold,
                    fontSize: 18, 
                  ),
                ),
          contentPadding: EdgeInsets.fromLTRB(30, 0, 16, 0), 
              ),
                ListTile(
                  leading: Icon(Icons.login, color: Colors.white),
                  title: Text(
                    'Login',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 18, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
          contentPadding: EdgeInsets.fromLTRB(30, 0, 16, 0), 
                ),
            ],
          ),
        ),

      body: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 12),
        children: <Widget>[
          const SizedBox(height: 60),
          Image.asset('assets/poka.jpg'),

          const SizedBox(height: 20),
          Text(
            'Welcome at POKA HINATAZAKA46 Fanclub!',
            style: ThemeTextStyle().title,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 15),
          Text(
            'Anda ingin tahu mengenai info, jadwal, blog, merchandise atau konten special? Segera Subscribe Fanclub dengan mengisi form di bawah ini!',
            style: ThemeTextStyle().titles,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 70),

          Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  'Contact Us',
                  style: ThemeTextStyle().contactUs,
                  ),

                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(
                        child: TextFieldWidget(
                        label: 'First Name',
                        hintText: 'Insert Your First Name',
                        controller: firstNameController,  style: const TextStyle(
                        color: Colors.black, 
                        ),
                      )),

                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFieldWidget(
                        label: 'Last Name',
                        hintText: 'Insert Your Last Name',
                        controller: lastNameController,  
                        style: const TextStyle(
                        color: Colors.black, 
                        ),
                      ))
                    ],
                  ),

                  const SizedBox(height: 10),
                  TextFieldWidget(
                    label: 'Email',
                    hintText: 'Insert Your Email',
                    controller: emailController,  
                    style: const TextStyle(
                    color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 10),
                  TextFieldWidget(
                    label: 'Message',
                    hintText: 'Insert Your Message',
                    message: true,
                    controller: messageController,  
                    style: const TextStyle(
                    color: Colors.black, 
                    ),
                  ),
                  
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                    setController();
                    if (_firstNameValue.isEmpty || _lastNameValue.isEmpty || _emailValue.isEmpty || _messageValue.isEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) => const AlertDialog(
                          content: Text('Semua field harus diisi.'),
                        ),
                      );

                    } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Center(
                          child: Text(
                            'You have successfully sent data',
                            textAlign: TextAlign.center,
                          ),
                        ),

                        content: SizedBox(
                        height: 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  const Text('Name : '),
                                  Text('$_firstNameValue $_lastNameValue'),
                                ],
                              ),
          
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                const Text('Email : '),
                                Text(_emailValue),
                                ],
                              ),
                              
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                const Text('Message : '),
                                Flexible(child: Text(_messageValue)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                },

                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFF73BDE0)),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                    ),

                    const SizedBox(height: 40), 
                    Center(
                      child: Text(
                        'About Us', 
                        style: ThemeTextStyle().contactUs,
                        ),
                      ),

                    const SizedBox(height: 10), 
                    Center(
                      child: Text(
                        'POKA HINATAZAKA46 Fanclub', 
                        style: ThemeTextStyle().about,
                        ),
                      ),

                    const SizedBox(height: 20), 
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.only(right: 8.0), 
                            elevation: 4, 
                             color: const Color(0xFF73BDE0),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                  child: Column(
                      children: [
                        Text(
                          'POKA',
                          style: ThemeTextStyle().card1, 
                        ),
              
                      const SizedBox(height: 10),
                        Text(
                          'Sebuah Icon Maskot Hinatazaka46 yang berbntuk seperti burung identik dengan warna biru dan kuning.',
                          style: ThemeTextStyle().card2, 
                          textAlign: TextAlign.justify,
                        ),
                      ],
                                  ),
                              ),
                          ),
                        ),
                        
                        Expanded(
                          child: Card(
                            margin: const EdgeInsets.only(left: 8.0), 
                            elevation: 4, 
                            color: const Color(0xFF73BDE0),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                        children: [
                          Text(
                            'HINATAZAKA46',
                            style: ThemeTextStyle().card1, 
                          ),

                        const SizedBox(height: 10),
                          Text(
                            'Hinatazaka46 adalah Sebuah Idol Group berasal dari negara jepang bernaungan agency Seed & Flower',
                            style: ThemeTextStyle().card2,
                            textAlign: TextAlign.justify,
                          ),
                        ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ],
                ),
              ),
            ],
        )
    );
  }
}