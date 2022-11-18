import 'bicicleta.dart';

class Backend {

  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _bicicletas=[
     Bicicleta(id: 1, name: 'Bicicletas de Montaña', descripcion: 'Las bicicletas de montaña (también conocidas como MTB) están diseñadas para «fuera de ruta» por lo que son bastante resistentes. Están equipadas con llantas anchas con dibujos marcados para mejorar el agarre en terrenos sueltos. Regularmente usan manubrios rectos o de doble altura.', color: 'verde ', velocidades: '6 Velocidades ', precio: '1500'),
      Bicicleta(id: 2, name: 'Bicicletas de Ruta', descripcion: 'Son bicicletas orientadas a obtener velocidad en pavimento, de construcción más ligera que otras bicicleta, están dotadas con ruedas más grandes, delgadas y provistas de llantas angostas y con dibujo liso. Las bicis de ruta utilizan manubrios drop-bar para lograr una postura más aerodinámica.', color: 'roja', velocidades: '12 Velocidades', precio: '3000'),
      Bicicleta(id: 3, name: 'Bicicletas Híbridas', descripcion: 'Las bicicletas híbridas son bastante versátiles ya que combinan características de las bicis de montaña y de las de ruta.Estas bicicletas nacieron como una solución para quienes necesitan una bicicleta para la ciudad, pero que tenga la flexibilidad de ser usada en diferentes terrenos.', color: 'azul', velocidades: '8 Velocidades', precio: '1874'),
      Bicicleta(id: 4, name: 'Bicicletas Urbanas', descripcion: 'Estas bicicletas fueron concebidas para la ciudad, por lo que son de construcción bastante solida tanto en su cuadro como en sus ruedas.',  color: 'negra', velocidades: '13 Velocidades', precio: '1764'),
       Bicicleta(id: 5, name: 'Bicicletas plegables', descripcion: 'La gran mayoría de estas bicicletas usan ruedas pequeñas, siendo 16 y 20″ las más comunes, aunque es posible encontrar plegables con rodados más convencionales. Casi todas las plegables están diseñadas para uso urbano, no obstante existen modelos que aguantan viajes largos sin problemas.',  color: 'blanca', velocidades: '4 Velocidades', precio: '1640'),
  ];


 List<Bicicleta> getBibicletas(){
   return _bicicletas;
 }
 


}
