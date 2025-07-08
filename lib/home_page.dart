import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.brown,
              height: 100,
              child: Row(
                children: [
                  const SizedBox(width: 16),
                  Icon(Icons.coffee, color: Colors.yellow),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cafeteria Aroma',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Café artesanal desde 1984',
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: EdgeInsetsGeometry.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        'https://blog.archtrends.com/wp-content/uploads/2022/11/cafeteriapequenaabre-2.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 26),
                  Text(
                    'Sobre nós',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Na Cafeteria Aroma, servimos os melhores cafés artesanais da região. '
                    'Nossos grãos são cuidadosamente selecionados e torrados para oferecer '
                    'uma experiência única a cada gole. Além de cafés especiais, oferecemos '
                    'doces caseiros, sanduíches e um ambiente acolhedor para você relaxar.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 26),
                  if (!isMobile)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomWidget(
                          title: 'Fazer Pedido',
                          icon: Icons.shopping_cart,
                          onTap: () => _showDialog(
                            context,
                            'Pedido realizado com sucesso!',
                          ),
                        ),
                        const SizedBox(width: 26),
                        CustomWidget(
                          title: 'Entrar em contato',
                          icon: Icons.call,
                          onTap: () => _showDialog(
                            context,
                            'Entre em contato pelo nosso whatsapp \n (67) 1234-5678',
                          ),
                        ),
                        const SizedBox(width: 26),

                        CustomWidget(
                          title: 'Localização',
                          icon: Icons.location_city,
                          onTap: () => _showDialog(
                            context,
                            'Av. Rosário Congro \n Nº 465, Centro',
                          ),
                        ),
                      ],
                    ),
                  if (isMobile)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomWidget(
                          title: 'Fazer Pedido',
                          icon: Icons.shopping_cart,
                          onTap: () => _showDialog(
                            context,
                            'Pedido realizado com sucesso!',
                          ),
                        ),
                        const SizedBox(height: 26),
                        CustomWidget(
                          title: 'Entrar em contato',
                          icon: Icons.call,
                          onTap: () => _showDialog(
                            context,
                            'Entre em contato pelo nosso whatsapp \n (67) 1234-5678',
                          ),
                        ),
                        const SizedBox(height: 26),

                        CustomWidget(
                          title: 'Localização',
                          icon: Icons.location_city,
                          onTap: () => _showDialog(
                            context,
                            'Av. Rosário Congro \n Nº 465, Centro',
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const CustomWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final contWidth = MediaQuery.of(context).size.width * .4;
    final contHeight = MediaQuery.of(context).size.width * .5;
    return Container(
      height: 200,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.brown),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.brown, size: 40),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _showDialog(BuildContext context, String title) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: EdgeInsets.all(20),
          width: 300,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.coffee, size: 50, color: Colors.brown),
              SizedBox(height: 10),
              Text(
                'Bem-vindo à Cafeteria Aroma!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Fecha o dialog
                },
                child: Text('Fechar'),
              ),
            ],
          ),
        ),
      );
    },
  );
}
