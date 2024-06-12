void main() {
  
  final c1=Circulo('azul',5); 
  print(c1.calcularArea());
  print(c1.calcularPerimetro());
}


class Circulo{
  
  final int _radio;
  final String _color;
  
  final pi=3.141516;
  
  Circulo(this._color,this._radio);
  
  
  String mensaje()=>'EL CIRCULO TIENE $_radio y $_color';
  
  double calcularArea()
  {
    return pi*(_radio*_radio);
  }  
  
  double calcularPerimetro(){
    return 2*(pi)*_radio;
  }
  
  
}

