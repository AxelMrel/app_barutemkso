import 'package:barutemkso_maquette/pages/Authentification/loginPage/login_screen_page.dart';
import 'package:barutemkso_maquette/pages/Authentification/signPage/sign_screen_page.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
              children: [
                onboardingPage(
                  image: 'assets/imgs/litterat.png',
                  title: 'Publiez vos Ouvrages',
                  description:
                      'Partagez vos écrits en langue Bariba et offrez à la communauté un accès à des ressources culturelles uniques.',
                ),
                onboardingPage(
                  image: 'assets/imgs/ideas.png',
                  title: 'Partagez vos Idées',
                  description:
                      'Partagez vos idées créatives avec le monde et trouvez des collaborateurs.',
                ),
                onboardingPage(
                  image: 'assets/imgs/communauté.png',
                  title: 'Rejoignez la Communauté',
                  description:
                      'Connectez-vous avec des personnes partageant les mêmes idées et grandissez ensemble.',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIndicator(currentPage == 0),
              _buildIndicator(currentPage == 1),
              _buildIndicator(currentPage == 2),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Action pour le bouton se connecter
                    Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0C743F),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Se connecter',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward,
                            color: Colors.white
                          ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Action pour le bouton s'inscrire
                    Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                 );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffDD5E11),
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'S’inscrire',
                    style: TextStyle(fontSize: 18,
                            color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Fonction pour créer une page d'onboarding avec image et texte
  Widget onboardingPage({required String image, required String title, required String description}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 200,
          ),
          const SizedBox(height: 30),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // Fonction pour créer les indicateurs de page (cercles)
  Widget _buildIndicator(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
  
}
