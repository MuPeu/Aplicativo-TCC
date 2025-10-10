import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class FaseCard extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String imagemUrl;

  const FaseCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.imagemUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 372,
      height: 100,
      child: Stack(
        children: [
          // Fundo do card
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 372,
              height: 100,
              decoration: const BoxDecoration(color: AppTheme.cardColor),
            ),
          ),

          // Imagem lateral
          Positioned(
            left: 10,
            top: 20,
            child: SizedBox(
              width: 60,
              height: 60,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imagemUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),

          // Título da fase
          Positioned(
            left: 85,
            top: 8,
            child: Text(
              titulo,
              style: const TextStyle(
                color: AppTheme.accentColor,
                fontSize: 30,
                fontFamily: 'Lavishly Yours',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          // Descrição
          Positioned(
            left: 85,
            top: 35,
            child: SizedBox(
              width: 270,
              child: Text(
                descricao,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'Arial',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
