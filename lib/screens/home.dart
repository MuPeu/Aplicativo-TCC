import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';
import '../widgets/fase_card.dart';
import '../widgets/section_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 917,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            // Fundo marrom
            Positioned(
              left: 0,
              top: 80,
              child: Container(
                width: 412,
                height: 837,
                decoration: BoxDecoration(color: AppTheme.secondaryColor),
              ),
            ),

            // Cabeçalho preto (Header)
            const Positioned(
              left: 0,
              top: 0,
              child: Header(title: 'Porta de Fergas'),
            ),

            // Título “Fases do Jogo”
            const Positioned(
              left: 20,
              top: 100,
              child: SectionTitle(text: 'Fases do Jogo'),
            ),

            // Card: Fase 1
            Positioned(
              left: 20,
              top: 150,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/fase1'),
                child: const FaseCard(
                  titulo: 'A Floresta',
                  descricao:
                      'Primeira fase onde o jogador aprende as mecânicas básicas em um labirinto dentro de uma floresta densa.',
                  imagemUrl: '../src/assets/imgs/icon-fase1.png',
                ),
              ),
            ),

            // Card: Fase 2
            Positioned(
              left: 20,
              top: 290,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/fase2'),
                child: const FaseCard(
                  titulo: 'Casa de Doce',
                  descricao:
                      'Segunda fase — introduz o salto e o uso do estilingue para libertar o irmão preso.',
                  imagemUrl: '../src/assets/imgs/icon-fase2.png',
                ),
              ),
            ),

            // Card: Fase 3
            Positioned(
              left: 20,
              top: 430,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/fase3'),
                child: const FaseCard(
                  titulo: 'O Forno',
                  descricao:
                      'Terceira fase — o jogador enfrenta o Coelho Branco dentro de uma arena metálica.',
                  imagemUrl: '../src/assets/imgs/icon-fase3.png',
                ),
              ),
            ),

            // Card: Fase 4
            Positioned(
              left: 20,
              top: 570,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/fase4'),
                child: const FaseCard(
                  titulo: 'A Fuga',
                  descricao:
                      'Última fase — escapar da casa em chamas antes do tempo acabar.',
                  imagemUrl: '../src/assets/imgs/icon-fase4.png',
                ),
              ),
            ),

            // Rodapé
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: 412,
                height: 50,
                color: AppTheme.primaryColor,
                alignment: Alignment.center,
                child: const Text(
                  '© 2025 App TCC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}