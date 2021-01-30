import 'package:hooks_riverpod/hooks_riverpod.dart';

final countries = Provider.autoDispose(
  (ref) => const <List<String>>[
    ['afghanistan', 'af'],
    ['albania', 'al'],
    ['algeria', 'dz'],
    ['american samoa', 'as'],
    ['andorra', 'ad'],
    ['angola', 'ao'],
    ['arab countries', ''],
    ['argentina', 'ar'],
    ['armenia', 'am'],
    ['aruba', 'aw'],
    ['australia', 'au'],
    ['austria', 'at'],
    ['azerbaijan', 'az'],
    ['bahrain', 'bh'],
    ['bangladesh', 'bd'],
    ['barbados', 'bb'],
    ['belarus', 'by'],
    ['belgium', 'be'],
    ['bolivia', 'bo'],
    ['bosnia and herzegovina', 'ba'],
    ['brazil', 'br'],
    ['brunei', 'bn'],
    ['bulgaria', 'bg'],
    ['burkina faso', 'bf'],
    ['cambodia', 'kh'],
    ['cameroon', 'cm'],
    ['canada', 'ca'],
    ['chile', 'cl'],
    ['china', 'cn'],
    ['colombia', 'co'],
    ['costa rica', 'cr'],
    ['croatia', 'hr'],
    ['curaçao', 'cw'],
    ['cyprus', 'cy'],
    ['czech republic', 'cz'],
    ['democratic republic of the congo', 'cd'],
    ['denmark', 'dk'],
    ['dominica', 'dm'],
    ['dominican republic', 'do'],
    ['ecuador', 'ec'],
    ['egypt', 'eg'],
    ['el salvador', 'sv'],
    ['equatorial guinea', 'gq'],
    ['estonia', 'ee'],
    ['ethiopia', 'et'],
    ['ex-yugoslavia', 'int'],
    ['faroe islands', 'fo'],
    ['fiji', 'fj'],
    ['finland', 'fi'],
    ['france', 'fr'],
    ['gambia', 'gm'],
    ['georgia', 'ge'],
    ['germany', 'de'],
    ['ghana', 'gh'],
    ['greece', 'gr'],
    ['guadeloupe', 'gp'],
    ['haiti', 'ht'],
    ['honduras', 'hn'],
    ['hong kong', 'hk'],
    ['hungary', 'hu'],
    ['iceland', 'is'],
    ['india', 'in'],
    ['indonesia', 'id'],
    ['international', 'int'],
    ['iran', 'ir'],
    ['iraq', 'iq'],
    ['ireland', 'ie'],
    ['israel', 'il'],
    ['italy', 'it'],
    ['jamaica', 'jm'],
    ['japan', 'jp'],
    ['jordan', 'jo'],
    ['kazakhstan', 'kz'],
    ['kenya', 'ke'],
    ['kosovo', 'xk'],
    ['kuwait', 'kw'],
    ['kyrgyzstan', 'kg'],
    ['laos', 'la'],
    ['latin america', 'int'],
    ['latvia', 'lv'],
    ['lebanon', 'lb'],
    ['libya', 'ly'],
    ['liechtenstein', 'li'],
    ['lithuania', 'lt'],
    ['luxembourg', 'lu'],
    ['macao', 'mo'],
    ['malaysia', 'my'],
    ['maldives', 'mv'],
    ['malta', 'mt'],
    ['mexico', 'mx'],
    ['moldova', 'md'],
    ['mongolia', 'mn'],
    ['montenegro', 'me'],
    ['morocco', 'ma'],
    ['mozambique', 'mz'],
    ['myanmar', 'mm'],
    ['nepal', 'np'],
    ['netherlands', 'nl'],
    ['new zealand', 'nz'],
    ['nicaragua', 'ni'],
    ['nigeria', 'ng'],
    ['north korea', 'kp'],
    ['north macedonia', 'mk'],
    ['norway', 'no'],
    ['oman', 'om'],
    ['pakistan', 'pk'],
    ['palestine', 'ps'],
    ['panama', 'pa'],
    ['paraguay', 'py'],
    ['peru', 'pe'],
    ['philippines', 'ph'],
    ['poland', 'pl'],
    ['portugal', 'pt'],
    ['puerto rico', 'pr'],
    ['qatar', 'qa'],
    ['romania', 'ro'],
    ['russian federation', 'ru'],
    ['rwanda', 'rw'],
    ['san marino', 'sm'],
    ['saudi arabia', 'sa'],
    ['senegal', 'sn'],
    ['serbia', 'rs'],
    ['sierra leone', 'sl'],
    ['singapore', 'sg'],
    ['slovakia', 'sk'],
    ['slovenia', 'si'],
    ['somalia', 'so'],
    ['south africa', 'za'],
    ['south korea', 'kr'],
    ['spain', 'es'],
    ['sri lanka', 'lk'],
    ['sudan', 'sd'],
    ['sweden', 'se'],
    ['switzerland', 'ch'],
    ['syria', 'sy'],
    ['taiwan', 'tw'],
    ['tanzania', 'tz'],
    ['thailand', 'th'],
    ['trinidad and tobago', 'tt'],
    ['tunisia', 'tn'],
    ['turkey', 'tr'],
    ['turkmenistan', 'tm'],
    ['turks and caicos islands', 'tc'],
    ['uganda', 'ug'],
    ['ukraine', 'ua'],
    ['undefined', 'int'],
    ['united arab emirates', 'ae'],
    ['united kingdom', 'gb'],
    ['united states of america', 'us'],
    ['uruguay', 'uy'],
    ['uzbekistan', 'uz'],
    ['venezuela', 've'],
    ['vietnam', 'vn'],
    ['western sahara', 'eh'],
    ['yemen', 'ye']
  ],
);