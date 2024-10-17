import 'package:flutter/material.dart';

import '../models/community.dart';
import '../models/post.dart';

const DUMMY_COMMUNITY = const [
  Community(
    id: 'c1',
    title: 'Minecraft',
    imageUrl: 'https://store-images.s-microsoft.com/image/apps.60323.14294656681058683.4d17bdd8-7026-429a-846f-cf7836bc9e56.a69e6905-8926-4a48-b243-14a039b97aae?mode=scale&q=90&h=1080&w=1920&format=jpg',
  ),
  Community(
    id: 'c2',
    title: 'The Last of Us',
    imageUrl: 'https://th.bing.com/th/id/R.d3deb55291530be9207998252822f361?rik=PPr4iNMNtMEZOQ&riu=http%3a%2f%2fimages.pushsquare.com%2f721a5ca4d7381%2fthe-last-of-us-game-of-the-decade.original.jpg&ehk=Bcwd3lQsUl6CBIQ3oaubt9FHhd8t97ws1OYpRthuPCc%3d&risl=&pid=ImgRaw&r=0',
  ),
  Community(
    id: 'c3',
    title: 'Dragon Ball Z',
    imageUrl: 'https://th.bing.com/th/id/OIP.uFL9QiE7P6IU0FaTdNRPIwHaEK?rs=1&pid=ImgDetMain',
  ),
  Community(
    id: 'c4',
    title: 'God of War',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/a/a7/God_of_War_4_cover.jpg',
  ),
  Community(
    id: 'c5',
    title: 'Resident Evil',
    imageUrl: 'https://th.bing.com/th/id/OIP.10eRuToFb6xsIfMeuFjoYgHaEK?rs=1&pid=ImgDetMain',
  ),
  Community(
    id: 'c6',
    title: 'Breaking Bad',
    imageUrl: 'https://th.bing.com/th/id/OIP.sQrs2n-tdNwVkeG7xkbOxgHaEK?rs=1&pid=ImgDetMain',
  ),
  Community(
    id: 'c7',
    title: 'Naruto',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/9/94/NarutoCoverTankobon1.jpg',
  ),
  Community(
    id: 'c8',
    title: 'Marvel Comics',
    imageUrl: 'https://th.bing.com/th/id/OIP.OOuMc16yqBHsavKZVoN1lwHaEK?rs=1&pid=ImgDetMain',
  ),
  Community(
    id: 'c9',
    title: 'DC Comics',
    imageUrl: 'https://th.bing.com/th/id/OIP.Qq3h52zuaCKZKD1plO8gigHaFo?rs=1&pid=ImgDetMain',
  ),
  Community(
    id: 'c10',
    title: 'Game of Thrones',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/d/d8/Game_of_Thrones_title_card.jpg',
  ),
];

const DUMMY_POSTS = [
  // Minecraft
  Post(
    id: 'p1',
    communities: ['c1'],
    title: 'Curiosidades',
    image: '../assets/images/Mine1.jpg',
    subtitle: "5 Curiosidades sobre o Minecraft",
    info: [
      '1. Minecraft foi criado em 16 de maio de 2009...',
      '2. Minecraft foi criado por Markus Persson...',
      '3. O nome Minecraft vem de "mine" e "craft"...',
      '4. Inspirado por Dungeon Keeper, Dwarf Fortress...',
      '5. A primeira versão foi criada em 6 dias!',
    ],
    isGame: true,
    isSeries: false,
    isComics: false,
    isManga: false,
  ),
  Post(
    id: 'p2',
    communities: ['c1'],
    title: 'Dicas para iniciantes',
    image: '../assets/images/Mine2.jpg',
    subtitle: 'Como sobreviver na sua primeira noite em Minecraft',
    info: [
      '1. Colete madeira e crie ferramentas básicas.',
      '2. Construa um abrigo simples para se proteger dos mobs.',
      '3. Use tochas para evitar monstros perto de você.',
      '4. Explore as cavernas com cuidado e colete recursos.',
      '5. Sempre tenha comida suficiente em seu inventário.',
    ],
    isGame: true,
    isSeries: false,
    isComics: false,
    isManga: false,
  ),
  Post(
    id: 'p3',
    communities: ['c1'],
    title: 'Os melhores mods de Minecraft',
    image: '../assets/images/Mine3.jpg',
    subtitle: '5 Mods que você deve experimentar',
    info: [
      '1. Optifine: melhora gráficos e performance.',
      '2. Biomes O\' Plenty: adiciona novos biomas.',
      '3. Tinkers\' Construct: novas opções de ferramentas.',
      '4. Pam\'s HarvestCraft: adicione novas comidas e culturas.',
      '5. The Twilight Forest: explore uma dimensão mágica.',
    ],
    isGame: true,
    isSeries: false,
    isComics: false,
    isManga: false,
  ),

  // The Last of Us
  Post(
    id: 'p4',
    communities: ['c2'],
    title: 'Curiosidades',
    image: '../assets/images/Last1.jpg',
    subtitle: '5 Curiosidades sobre The Last of Us',
    info: [
      '1. Foi inspirado por "I Am Legend" e "Children of Men".',
      '2. Joel e Ellie foram baseados em atores reais.',
      '3. O fungo Cordyceps no jogo existe na vida real.',
      '4. A IA do jogo é uma das mais avançadas da época.',
      '5. A música tema foi composta por Gustavo Santaolalla.',
    ],
    isGame: true,
    isSeries: true,
    isComics: false,
    isManga: false,
  ),
  Post(
    id: 'p5',
    communities: ['c2'],
    title: 'Melhores armas em The Last of Us',
    image: '../assets/images/Last2.jpg',
    subtitle: 'Top 5 armas para sobreviver aos infectados',
    info: [
      '1. Revolver: poderoso e confiável.',
      '2. Rifle de precisão: perfeito para longas distâncias.',
      '3. Lança-chamas: eficaz contra hordas de infectados.',
      '4. Molotov: causa dano em área e incinera os inimigos.',
      '5. Arco e flecha: silencioso e mortal em combates furtivos.',
    ],
    isGame: true,
    isSeries: true,
    isComics: false,
    isManga: false,
  ),
  Post(
    id: 'p6',
    communities: ['c2'],
    title: 'Evolução dos gráficos em The Last of Us',
    image: '../assets/images/Last3.jpg',
    subtitle: 'Comparando as versões de PS3, PS4 e PS5',
    info: [
      '1. PS3: o começo, gráficos impressionantes para a época.',
      '2. PS4: melhorias visuais significativas e maior resolução.',
      '3. PS5: suporte a 4K e ray-tracing para uma imersão completa.',
      '4. Melhorias na iluminação e nos detalhes de textura.',
      '5. Animações faciais e expressões mais realistas com nova tecnologia.',
    ],
    isGame: true,
    isSeries: true,
    isComics: false,
    isManga: false,
  ),

];
