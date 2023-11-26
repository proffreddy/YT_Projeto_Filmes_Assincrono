Drop Schema if exists projeto_filmes;
Create Schema projeto_filmes;
Use projeto_filmes;

Create Table diretor
(
	cd_diretor int,
	nm_diretor varchar(100),
	constraint pk_diretor primary key (cd_diretor)
);

Create Table ator
(
	cd_ator int,
	nm_ator varchar(100),
	constraint pk_ator primary key (cd_ator)
);

Create Table filme
(
	cd_filme int,
	nm_filme varchar(100),
	aa_lancamento int, 
	cd_diretor int, 
	ds_sinopse text,
	constraint pk_filme primary key (cd_filme),
	constraint fk_filme_diretor foreign key (cd_diretor) references diretor(cd_diretor)
);

Create Table filme_atores
(
	cd_filme int,
	cd_ator int,
	constraint pk_filme_ator primary key (cd_filme, cd_ator),
	constraint fk_filme_atores_filme foreign key (cd_filme) references filme(cd_filme),
	constraint fk_filme_atores_ator foreign key (cd_ator) references ator(cd_ator)
);

insert into diretor values (1,'Steven Spielberg');
insert into diretor values (2,'Christopher Nolan');
insert into diretor values (3,'Fernando Meirelles');
insert into diretor values (4,'David Fincher');
insert into diretor values (5,'Catherine Hardwicke');
insert into diretor values (6,'Robert Zemeckis');
insert into diretor values (7,'Ridley Scott');
insert into diretor values (8,'Lana Wachowski');
insert into diretor values (9,'David Fincher');
insert into diretor values (10,'Guillermo del Toro');
insert into diretor values (11,'Francis Ford Coppola');
insert into diretor values (12,'Roger Allers');
insert into diretor values (13,'Peter Jackson');
insert into diretor values (14,'M. Night Shyamalan');
insert into diretor values (15,'Quentin Tarantino');
insert into diretor values (16,'James Cameron');
insert into diretor values (17,'Anthony Russo');

insert into ator values (01,'Liam Neeson');
insert into ator values (02,'Ben Kingsley');
insert into ator values (03,'Leonardo DiCaprio');
insert into ator values (04,'Joseph Gordon-Levitt');
insert into ator values (05,'Christian Bale');
insert into ator values (06,'Heath Ledger');
insert into ator values (07,'Alexandre Rodrigues');
insert into ator values (08,'Leandro Firmino');
insert into ator values (09,'Brad Pitt');
insert into ator values (10,'Edward Norton');
insert into ator values (11,'Kristen Stewart');
insert into ator values (12,'Robert Pattinson');
insert into ator values (13,'Tom Hanks');
insert into ator values (14,'Robin Wright');
insert into ator values (15,'Russell Crowe');
insert into ator values (16,'Joaquin Phoenix');
insert into ator values (17,'Matthew McConaughey');
insert into ator values (18,'Anne Hathaway');
insert into ator values (19,'Keanu Reeves');
insert into ator values (20,'Laurence Fishburne');
insert into ator values (21,'Brad Pitt');
insert into ator values (22,'Cate Blanchett');
insert into ator values (23,'Ivana Baquero');
insert into ator values (24,'Sergi López');
insert into ator values (25,'Marlon Brando');
insert into ator values (26,'Al Pacino');
insert into ator values (27,'Matthew Broderick');
insert into ator values (28,'Jeremy Irons');
insert into ator values (29,'Tom Hanks');
insert into ator values (30,'Matt Damon');
insert into ator values (31,'Elijah Wood');
insert into ator values (32,'Ian McKellen');
insert into ator values (33,'Bruce Willis');
insert into ator values (34,'Haley Joel Osment');
insert into ator values (35,'John Travolta');
insert into ator values (36,'Uma Thurman');
insert into ator values (37,'Leonardo DiCaprio');
insert into ator values (38,'Kate Winslet');
insert into ator values (39,'Robert Downey Jr.');
insert into ator values (40,'Chris Evans');

insert into filme values (1,'A Lista de Schindler',1993, 1, 'É uma história real sobre Oskar Schindler, um empresário alemão na Segunda Guerra Mundial. Ele arrisca sua vida para salvar mais de mil judeus do Holocausto, utilizando sua fábrica como refúgio. Schindler e seu contador judeu, Itzhak Stern, criam a Lista de Schindler, poupando vidas da perseguição nazista. O filme retrata a transformação de um homem motivado pelo lucro para alguém disposto a sacrificar tudo pela salvação de inocentes, mostrando a esperança em meio à escuridão do Holocausto. É uma narrativa poderosa de coragem, compaixão e resistência humanitária.');
insert into filme values (2,'A Origem',2010, 2, 'Um hábil ladrão de segredos corporativos, entra nos sonhos das pessoas para extrair informações valiosas. Oferecido com a chance de redenção, Cobb tem que plantar uma ideia na mente de alguém através da manipulação de sonhos, um processo conhecido como inserção. No entanto, ele enfrenta obstáculos perigosos, mergulhando em várias camadas de sonhos, onde o tempo se distorce e as realidades se entrelaçam. O filme aborda o poder da mente humana, a fragilidade da realidade e os dilemas éticos ligados ao controle da mente, mergulhando em um mundo fascinante e complexo dos sonhos e da psique humana.');
insert into filme values (3,'Batman: O Cavaleiro das Trevas',2008, 2, 'Gotham enfrenta um novo tipo de ameaça com o surgimento do Coringa, um vilão caótico. Batman, com a ajuda do tenente Gordon e do promotor Harvey Dent, busca deter o caos crescente causado pelo Coringa. A cidade é empurrada para uma série de dilemas morais quando o Coringa desafia a ética de Batman, testando suas crenças sobre justiça e sacrifício. O filme explora a dualidade do bem e do mal enquanto Batman confronta não apenas um inimigo físico, mas um desafio à própria alma de Gotham. É uma narrativa intensa sobre os limites da moralidade, os sacrifícios necessários e a natureza do verdadeiro heroísmo.');
insert into filme values (4,'Cidade de Deus',2002, 3, 'É um retrato vívido e brutal da vida nas favelas do Rio de Janeiro. O filme acompanha a ascensão do jovem Buscapé em meio ao ambiente violento e dominado pelo tráfico na década de 1970. Buscapé, um aspirante a fotógrafo, busca escapar da influência do crime organizado enquanto testemunha a ascensão de Zé Pequeno, um impiedoso líder do tráfico. A história mostra como a vida desses personagens se entrelaça, revelando a brutalidade, a pobreza e a luta pela sobrevivência em um ambiente dominado pela criminalidade. O filme destaca os desafios enfrentados por jovens em comunidades marginalizadas e oferece uma reflexão sobre os ciclos de violência e pobreza que permeiam tais realidades.');
insert into filme values (5,'Clube da Luta',1999, 4, 'É uma obra que mergulha na vida de um homem descontente e insone, que encontra liberação emocional ao participar de um clube de luta clandestino. Ele se envolve em uma relação complexa com Tyler Durden, um vendedor carismático e carismático. Juntos, eles estabelecem um movimento anti-materialista, desafiando as normas sociais. O filme explora a alienação moderna, a busca por identidade e a natureza da rebeldia em uma sociedade consumista. À medida que a trama se desdobra, segredos obscuros e reviravoltas imprevisíveis revelam uma história que desafia a percepção da realidade e da própria existência.');
insert into filme values (6,'Crepúsculo',2008, 5, 'É a história de Bella Swan, uma adolescente que se muda para Forks, Washington, e se apaixona por Edward Cullen, um vampiro. A relação deles se complica devido à natureza sobrenatural de Edward e aos perigos que cercam o mundo dos vampiros. Enquanto tentam manter seu amor, Bella e Edward enfrentam desafios, incluindo as dificuldades de um romance entre uma humana e um vampiro, além das ameaças de outros vampiros sedentos por sangue. O filme aborda temas de amor proibido, aceitação, e os conflitos entre mundos opostos, explorando o preço do desejo e da imortalidade no contexto de um romance adolescente sobrenatural.');
insert into filme values (7,'Forrest Gump: O Contador de Histórias',1994, 6, 'O filme acompanha a jornada extraordinária de Forrest Gump, um homem com habilidades limitadas, mas um coração generoso. Ele se envolve em eventos históricos significativos das décadas de 1950 a 1980, enquanto narra sua vida para estranhos no ponto de ônibus. Desde sua infância até a idade adulta, Forrest toca várias vidas, incluindo a de Jenny, seu amor de infância. Com uma abordagem inocente e otimista, o filme explora temas de amor, superação, sorte e a complexidade da vida, destacando como até mesmo uma pessoa com limitações pode impactar o mundo ao seu redor. A narrativa cativante de Forrest oferece uma visão poética e reflexiva sobre a condição humana e as inesperadas maravilhas da vida.');
insert into filme values (8,'Gladiador',2000, 7, 'O filme narra a história de Maximus Decimus Meridius, um leal general romano traído pelo ambicioso Commodus, que usurpa o trono e mata sua família. Reduzido à escravidão, Maximus emerge como um gladiador habilidoso, determinado a vingar-se e restaurar a justiça na Roma Antiga. Sua jornada o leva à arena, onde suas habilidades e liderança conquistam o povo. O filme explora temas de honra, lealdade e vingança, enquanto Maximus enfrenta o imperador em um confronto épico, buscando restaurar a ordem e sua própria redenção. Esta narrativa épica é marcada por batalhas espetaculares, intriga política e a busca por justiça em um império corrupto.');
insert into filme values (9,'Interestelar',2014, 2, 'É a jornada de Cooper, um ex-piloto envolvido em uma missão desesperada para encontrar um novo lar para a humanidade, uma vez que a Terra enfrenta uma crise ambiental global. Junto com uma equipe de cientistas, ele viaja pelo espaço interestelar em busca de planetas habitáveis. O filme explora conceitos complexos de física e teorias científicas, incluindo buracos negros e a relatividade do tempo, enquanto aborda temas de amor, sacrifício e a luta da humanidade pela sobrevivência. Essa épica e emocionante narrativa espacial oferece uma reflexão sobre a natureza humana e os limites da exploração no universo desconhecido.');
insert into filme values (10,'Matrix',1999, 8, 'Thomas Anderson, também conhecido como Neo, um programador que descobre a verdade perturbadora por trás da realidade: o mundo que ele conhece é uma simulação controlada por máquinas. Ele é introduzido ao mundo real por Morpheus, um líder rebelde, e passa a lutar contra as máquinas que escravizam a humanidade. Neo aprende a manipular a Matrix, uma realidade virtual, e se torna a esperança para libertar a humanidade. Com uma mistura de filosofia, ação e ficção científica, o filme questiona a natureza da realidade, livre arbítrio e destino, desafiando as percepções tradicionais e explorando conceitos profundos sobre a existência humana.');
insert into filme values (11,'O Curioso Caso de Benjamin Button',2008, 4, 'A vida extraordinária de Benjamin, que nasce idoso e rejuvenesce à medida que o tempo passa. Enquanto seu corpo se desenvolve ao contrário, ele vive uma vida única, testemunhando momentos históricos cruciais. Benjamin se apaixona por Daisy, mas suas vidas seguem direções opostas devido à sua condição incomum. O filme explora temas de amor, perda e a natureza efêmera da vida, provocando reflexões sobre o tempo, aceitação e a beleza do envelhecimento. A narrativa emotiva oferece uma perspectiva única sobre a passagem do tempo e as complexidades das relações humanas.');
insert into filme values (12,'O Labirinto do Fauno',2006, 10, 'Na Espanha pós-Guerra Civil, acompanhando Ofelia, uma jovem fascinada por contos de fadas. Durante a década de 1940, ela se muda com a mãe grávida para uma mansão onde seu padrasto, um capitão brutal do exército, está reprimindo os rebeldes. Ofelia descobre um mundo mágico habitado por seres míticos, onde é designada a cumprir três desafios para provar sua verdadeira identidade como princesa. O filme entrelaça realidade e fantasia, explorando a inocência, a crueldade da guerra e a fuga para um mundo encantado em tempos sombrios. A história oferece uma visão rica e comovente sobre os poderes da imaginação e a resiliência diante da adversidade.');
insert into filme values (13,'O Poderoso Chefão',1972, 11, 'É a saga da família Corleone, liderada por Don Vito Corleone, um poderoso chefe da máfia ítalo-americana. O filme explora a ascensão do império criminoso dos Corleone e os dilemas morais enfrentados pelo líder e seus descendentes. Quando Vito é ferido, seu filho Michael, inicialmente relutante em entrar nos negócios da família, é forçado a assumir o controle, mergulhando em um mundo de traição, violência e lealdade familiar. Esta obra-prima de Francis Ford Coppola é uma reflexão sobre poder, honra, tradição e os custos pessoais da busca pelo controle em um impiedoso submundo criminoso.');
insert into filme values (14,'O Rei Leão',1994, 12, 'Conta a jornada do leãozinho Simba, herdeiro do trono, que foge após a morte de seu pai, Mufasa, induzido por seu tio, Scar. Simba vive uma vida simples com novos amigos, Timão e Pumba, enquanto cresce longe de seu reino. Porém, quando confrontado com seu passado, ele abraça sua responsabilidade e retorna para desafiar Scar e restaurar a paz na Pedra do Reino. O filme destaca temas de identidade, amizade e a jornada rumo ao amadurecimento, oferecendo uma narrativa emocionante sobre a busca pelo destino e pelo legado.');
insert into filme values (15,'O Resgate do Soldado Ryan',1998, 1, 'É um retrato brutal e envolvente da Segunda Guerra Mundial. Após o desembarque na Normandia, o Capitão John Miller lidera um grupo em uma missão perigosa: encontrar e trazer para casa o soldado James Ryan, cujos três irmãos foram mortos em combate. Em meio ao caos da guerra, o filme aborda questões éticas e o custo humano do conflito, mostrando o sacrifício e a coragem dos soldados. Com cenas intensas e emocionais, a narrativa questiona o valor da vida em meio ao horror da guerra e os dilemas morais enfrentados pelos envolvidos.');
insert into filme values (16,'O Senhor dos Anéis: A Sociedade do Anel',2001, 13, 'É a jornada épica de Frodo, um hobbit, encarregado de destruir um anel maligno que pode dominar o mundo. Com a ajuda de um grupo diversificado, incluindo o sábio Gandalf, os corajosos Aragorn e Legolas, e os leais Sam, Merry e Pippin, Frodo parte em uma busca perigosa. Enquanto fogem dos servos do mal, a Comunidade do Anel enfrenta desafios, descobrindo a importância da amizade, coragem e sacrifício em meio a um mundo de trevas crescentes. O filme é uma imersão rica e emocionante na jornada heróica de um pequeno ser em um épico confronto entre o bem e o mal.');
insert into filme values (17,'O Sexto Sentido',1999, 14, 'O filme segue a história do psicólogo infantil, Dr. Malcolm Crowe, que tenta ajudar um garoto, Cole Sear, que afirma ver pessoas mortas. Crowe, determinado a ajudar o menino assustado, enfrenta seus próprios problemas enquanto se envolve no caso. O filme tece uma narrativa envolvente, explorando questões de trauma, conexão humana e redenção. Sua reviravolta surpreendente redefiniu o suspense psicológico, oferecendo uma visão única sobre o sobrenatural e o poder da percepção.');
insert into filme values (18,'Pulp Fiction',1994, 15, 'É uma obra-prima de Quentin Tarantino que entrelaça várias histórias interligadas sobre crime, redenção e violência. O filme apresenta Vincent Vega e Jules Winnfield, dois assassinos de aluguel com diálogos memoráveis e encontros bizarros. A narrativa não linear revela eventos em uma ordem não convencional, explorando a vida de gângsteres, boxeadores, dançarinas e chefes do crime. Com uma trilha sonora marcante e estilo visual único, o filme desafia convenções cinematográficas, oferecendo um olhar intrigante sobre o submundo do crime e os dilemas morais de seus personagens.');
insert into filme values (19,'Titanic',1997, 16, 'Conta a história de amor entre Jack Dawson, um jovem artista, e Rose DeWitt Bukater, uma aristocrata, a bordo do icônico navio Titanic. O romance floresce enquanto o navio navega em sua viagem inaugural. No entanto, o destino trágico se aproxima quando o navio colide com um iceberg, desencadeando o desastre que levará ao naufrágio do navio. A trama retrata a luta desesperada pela sobrevivência em meio ao caos, destacando as divisões sociais, o heroísmo e os sacrifícios feitos durante a tragédia histórica. O filme é um épico emocionante que mescla romance e tragédia, baseado no trágico e lendário afundamento do RMS Titanic.');
insert into filme values (20,'Vingadores: Ultimato',2019, 17, 'Segue os eventos de Guerra Infinita, onde metade da vida no universo desaparece com um estalo de dedos de Thanos. Os Vingadores remanescentes, devastados pela perda, se reúnem para buscar uma maneira de reverter o caos. Através de viagens no tempo, eles enfrentam desafios e revisitam momentos-chave do passado, unindo forças para derrotar Thanos. O filme é um épico emocional, marcando o fim de uma era no Universo Cinematográfico Marvel, repleto de ação, redenção e despedidas emocionantes.');

insert into filme_atores values (1, 1);
insert into filme_atores values (1, 2);
insert into filme_atores values (2, 3);
insert into filme_atores values (2, 4);
insert into filme_atores values (3, 5);
insert into filme_atores values (3, 6);
insert into filme_atores values (4, 7);
insert into filme_atores values (4, 8);
insert into filme_atores values (5, 9);
insert into filme_atores values (5, 10);
insert into filme_atores values (6, 11);
insert into filme_atores values (6, 12);
insert into filme_atores values (7, 13);
insert into filme_atores values (7, 14);
insert into filme_atores values (8, 15);
insert into filme_atores values (8, 16);
insert into filme_atores values (9, 17);
insert into filme_atores values (9, 18);
insert into filme_atores values (10, 19);
insert into filme_atores values (10, 20);
insert into filme_atores values (11, 21);
insert into filme_atores values (11, 22);

insert into filme_atores values (12, 23);
insert into filme_atores values (12, 24);
insert into filme_atores values (13, 25);
insert into filme_atores values (13, 26);
insert into filme_atores values (14, 27);
insert into filme_atores values (14, 28);
insert into filme_atores values (15, 29);
insert into filme_atores values (15, 30);
insert into filme_atores values (16, 31);
insert into filme_atores values (16, 32);
insert into filme_atores values (17, 33);
insert into filme_atores values (17, 34);
insert into filme_atores values (18, 35);
insert into filme_atores values (18, 36);
insert into filme_atores values (19, 37);
insert into filme_atores values (19, 38);
insert into filme_atores values (20, 39);
insert into filme_atores values (20, 40);