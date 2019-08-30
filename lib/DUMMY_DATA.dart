import 'package:flutter/material.dart';

import './models/animal.dart';
import './models/specie.dart';

final DUMMY_SPECIES = [
  Specie(
    id: 'Répteis',
    name: 'Répteis',
    imageUrl: 'https://img.pngio.com/crocodile-png-alligator-png-2264_1268.png',
    color: Colors.green.shade300,
  ),
  Specie(
    id: 'Mamíferos',
    name: 'Mamíferos',
    imageUrl:
        'https://pngriver.com/wp-content/uploads/2017/12/download-Jaguar-PNG-transparent-images-transparent-backgrounds-PNGRIVER-COM-jaguar_PNG20745.png',
    color: Colors.orange.shade300,
  ),
  Specie(
    id: 'Aves',
    name: 'Aves',
    imageUrl:
        'https://1.bp.blogspot.com/-4IxOYqPCK1o/XNDHWqDwyVI/AAAAAAAAOik/VsRAbwK5eykT_SCRF2rY3T1BQd-RWda6QCLcBGAs/s640/parrot%2B%252819%2529.png',
    color: Colors.red.shade300,
  ),
  Specie(
    id: 'Peixes',
    name: 'Peixes',
    imageUrl: 'http://pngimg.com/uploads/fish/fish_PNG25147.png',
    color: Colors.blue.shade300,
  ),
  Specie(
    id: 'Anfíbios',
    name: 'Anfíbios',
    imageUrl:
        'https://purepng.com/public/uploads/large/purepng.com-froganimalfrogamphibian-981524649850wp1ss.png',
    color: Colors.purple.shade300,
  ),
];

final DUMMY_ANIMALS = [
  Animal(
      name: 'Tamanduá-bandeira',
      summary:
          'O tamanduá-bandeira, também chamado iurumi, jurumim, tamanduá-açu, tamanduá-cavalo, papa-formigas-gigante e urso-formigueiro-gigante, é um mamífero xenartro da família dos mirmecofagídeos, encontrado na América Central e na América do Sul.',
      specie: 'Mamíferos',
      scientificName: 'Myrmecophaga tridactyla',
      life: '14 - 16 anos',
      length: '1,8m – 2,2m',
      status: 'Vulnerável',
      color: Colors.pinkAccent.shade100,
      imageUrl:
          'https://vrl-us-cdn.wetransfer.net/ivise/eyJwaXBlbGluZSI6W1sic3JnYiIse31dLFsiYXV0b19vcmllbnQiLHt9XSxbImdlb20iLHsiZ2VvbWV0cnlfc3RyaW5nIjoiNTEyeDUxMj4ifV0sWyJzaGFycGVuIix7InJhZGl1cyI6MC43NSwic2lnbWEiOjAuNX1dLFsiZXhwaXJlX2FmdGVyIix7InNlY29uZHMiOjYwNDgwMH1dXSwic3JjX3VybCI6InMzOi8vd2V0cmFuc2Zlci11cy1wcm9kLW91dGdvaW5nLzI1NjhmYzI3ZDBhNDg3MDhlOGM4NDhlOGYwMzI4MGE3MjAxOTA4MzAxMzIwMzUvNGJlMmIxMmJiMTI3M2Q1ZWJkNWZiZDNiMmE0YmJkNWE1ZjFhZDNlMyJ9/b01803be1d62e2b7132e1f1949676082fb6a08773760d402f567d79d30c559e0'),
  Animal(
    name: 'Onça-pintada',
    summary:
        'A onça-pintada ou jaguar, também conhecida como onça-preta, é uma espécie de mamífero carnívoro da família Felidae encontrada nas Américas. É o terceiro maior felino do mundo, após o tigre e o leão, e o maior do continente americano',
    specie: 'Mamíferos',
    scientificName: 'Panthera onca',
    life: '12 – 15 anos',
    length: '1,2m – 2m',
    color: Colors.orange.shade300,
    status: 'Quase ameaçada',
    imageUrl:
        'https://pngriver.com/wp-content/uploads/2017/12/download-Jaguar-PNG-transparent-images-transparent-backgrounds-PNGRIVER-COM-jaguar_PNG20745.png',
  ),
  Animal(
      name: 'Mico-leão-dourado',
      summary:
          'O mico-leão-dourado é um primata endêmico do Brasil, da família Callitrichidae e gênero Leontopithecus. Ocorre exclusivamente na Mata Atlântica brasileira, no estado do Rio de Janeiro, mas alguns autores já consideraram sua ocorrência no sul do Espírito Santo.',
      specie: 'Mamíferos',
      scientificName: 'Leontopithecus rosalia',
      life: '15 anos',
      length: '25cm',
      status: 'Em perigo',
      color: Colors.amber.shade300,
      imageUrl:
          'https://vrl-us-cdn.wetransfer.net/ivise/eyJwaXBlbGluZSI6W1sic3JnYiIse31dLFsiYXV0b19vcmllbnQiLHt9XSxbImdlb20iLHsiZ2VvbWV0cnlfc3RyaW5nIjoiNTEyeDUxMj4ifV0sWyJzaGFycGVuIix7InJhZGl1cyI6MC43NSwic2lnbWEiOjAuNX1dLFsiZXhwaXJlX2FmdGVyIix7InNlY29uZHMiOjYwNDgwMH1dXSwic3JjX3VybCI6InMzOi8vd2V0cmFuc2Zlci11cy1wcm9kLW91dGdvaW5nLzI1NjhmYzI3ZDBhNDg3MDhlOGM4NDhlOGYwMzI4MGE3MjAxOTA4MzAxMzIwMzUvYTE2NzQ5MTg2YmY5NTRjN2JjMmNlNTY5Mzk2NWFjODUxMzViNGE4OCJ9/46ba12a4ae6cba7d0b0ad163c8ddd051666d75da7c8314f9ee2ae46cef975e17'),
  Animal(
      name: 'Arara-azul',
      summary:
          'A arara-azul-grande, também chamada arara-jacinto, araraúna, arara-preta, araruna, ou simplesmente arara-azul é uma ave da família Psittacidae que vive nos biomas da Floresta Amazônica e principalmente no Cerrado e Pantanal. ',
      specie: 'Aves',
      scientificName: 'Anodorhynchus hyacinthinus',
      life: '50 anos',
      length: '100 cm',
      color: Colors.blue.shade300,
      status: 'Vulnerável',
      imageUrl:
          'https://vivotransforma.com.br/wp-content/themes/html5blank/assets/img/sosmataatlantica/img-arara-azul.png'),
  Animal(
      name: 'Ararajuba',
      summary:
          'A guaruba, também chamada de ararajuba, é uma ave psitaciforme endêmica do norte do Brasil, ameaçada de extinção. As aves chegam a medir até 35 centímetros de comprimento, possuindo uma plumagem amarelo-ouro com rêmiges verdes.',
      specie: 'Aves',
      scientificName: 'Guaruba guarouba',
      life: '30 anos',
      color: Colors.yellow.shade300,
      length: '34 cm',
      status: 'Vulnerável',
      imageUrl:
          'https://1.bp.blogspot.com/-4IxOYqPCK1o/XNDHWqDwyVI/AAAAAAAAOik/VsRAbwK5eykT_SCRF2rY3T1BQd-RWda6QCLcBGAs/s640/parrot%2B%252819%2529.png'),
  Animal(
    name: 'Jacaré-de-papo-amarelo',
    summary:
        'Jacaré-de-papo-amarelo (nome científico: Caiman latirostris) é um réptil crocodiliano da família Alligatoridae e gênero Caiman. É amplamente distribuído pelo sudeste da América do Sul, ocorrendo em qualquer ecossistema associado à água nas bacias dos rios Paraná, Paraguai, Uruguai e São Francisco, sendo comum desde o extremo leste do Brasil até o Uruguai. ',
    specie: 'Répteis',
    scientificName: 'Caiman latirostris',
    life: ' 50 a 70 anos',
    color: Colors.green.shade300,
    length: '3,5m',
    status: 'Pouco preocupante',
    imageUrl: 'https://img.pngio.com/crocodile-png-alligator-png-2264_1268.png',
  ),
  Animal(
    name: 'Dragão-de-komodo',
    summary:
        'Dragão-de-komodo ou crocodilo-da-terra é uma espécie de lagarto que vive nas ilhas de Komodo, Rinca, Gili Motang, Flores e Sitio Alegre, na Indonésia.',
    specie: 'Répteis',
    scientificName: 'Varanus komodoensis',
    life: '30 anos',
    color: Colors.red.shade300,
    length: '2,5m',
    status: 'Vulnerável',
    imageUrl:
        'https://i-love-png.com/images/902-9029961_dragon-rocks-komodo-dragon.png',
  ),
  Animal(
    name: 'Dourado',
    summary:
        'O dourado é um peixe dos rios do Brasil e outros países da América do Sul. Ocorre na Bacia do Prata, na bacia do Rio Magdalena e nos rios do Peru da bacia do rio Amazonas. O dourado é um peixe dos rios do Brasil; é sinônimo de Salminus maxillosus, e é também chamado popularmente doirado, piraju, pirajuba e saijé.',
    specie: 'Peixes',
    scientificName: 'Carassius auratus',
    life: '15 anos',
    color: Colors.amber.shade300,
    length: '75cm',
    status: 'Pouco preocupante',
    imageUrl:
        'https://images.tcdn.com.br/img/editor/up/699276/pescariadourado.png',
  ),
  Animal(
    name: 'Sapo-cururu',
    summary:
        'Rhinella marina, conhecido como sapo-cururu, sapo-boi ou cururu, é um sapo nativo das Américas Central e do Sul. Pertence ao gênero Rhinella, que inclui centenas de espécies de sapos diferentes, distribuídas principalmente pelo Brasil. É um animal fértil devido ao grande número de ovos postos pelas fêmeas.',
    specie: 'Anfíbios',
    scientificName: 'Rhinella',
    life: '10 – 15 anos',
    length: '10cm - 15cm',
    color: Colors.purple.shade300,
    status: 'Pouco preocupante',
    imageUrl:
        'https://purepng.com/public/uploads/large/purepng.com-froganimalfrogamphibian-981524649850wp1ss.png',
  ),
];
