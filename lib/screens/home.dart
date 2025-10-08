import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/fase_card.dart';
import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(title: 'Porta de Fergas'),
          Expanded(
            child: Container(
              color: AppTheme.secondaryColor,
              child: ListView(
                padding: const EdgeInsets.only(top: 25),
                children: const [
                  FaseCard(
                    titulo: 'A Floresta',
                    descricao:
                        'Primeira fase do jogo, onde o player aprende o básico das mecânicas em uma floresta labiríntica cheia de puzzles e caminhos secretos.',
                    imagemUrl: 'src/assets/imgs/icon-fase1.png',
                  ),
                  FaseCard(
                    titulo: 'Casa de Doce',
                    descricao:
                        'Segunda fase, onde o player deve aprender a pular e usar o estilingue enquanto busca o irmão Ary entre obstáculos perigosos.',
                    imagemUrl: '',
                  ),
                  FaseCard(
                    titulo: 'O Forno',
                    descricao:
                        'Terceira fase. O player deve derrotar o Coelho Branco em um ambiente metálico repleto de engrenagens e vapor.',
                    imagemUrl: '',
                  ),
                  FaseCard(
                    titulo: 'A Fuga',
                    descricao:
                        'Última fase, onde o jogador deve escapar da casa em chamas antes do tempo acabar.',
                    imagemUrl: '',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
