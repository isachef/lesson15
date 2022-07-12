void main(List<String> arguments) {
  Rectangle pop = Rectangle(7, 7);
  pop.calculateArea();
}

abstract class Figure {
  int w, h;
  Figure(this.w, this.h);
  void calculateArea();
}

class Rectangle extends Figure {
  Rectangle(w,h):super(w,h);

  @override
  void calculateArea() {
    int area = h * w;
    print(area);
  }
}
