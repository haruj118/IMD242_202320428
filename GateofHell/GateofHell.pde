ArrayList<Circle> circles; //ArrayList 정의
int tileSize = 40; //tileSize 정의

void setup() {
  fullScreen(); //fullScreen 적용
  circles = new ArrayList<Circle>(); //ArrayList 초기화
}

void draw() {
  background(0); //배경색 지정
  
  // ArrayList의 현재 크기를 화면 좌측 상단에 표시
  fill(255); // 텍스트 색 흰색
  textSize(20); // 텍스트 크기
  text("Current count: " + circles.size(), 10, 20); // ArrayList 크기, 텍스트가 표시되는 위치

  //격자무늬
  stroke(100, 0, 0); //붉은색 지정
  for (int x = 0; x < width; x += tileSize) {
    for (int y = 0; y < height; y += tileSize) {
      line(x, 0, x, height);
      line(0, y, width, y);
      //이중루프 for구문에 대해 가로선과 세로선을 각각 그리기 위한 코드를 챗지피티에게 질문하여 격자무늬 그리기를 도움받음
    }
  }

  for (Circle c : circles) { //ArrayList에 저장된 원을 화면에 그리기
    noStroke();
    fill(c.col);
    ellipse(c.x, c.y, c.size, c.size);
  }
}

void mousePressed() { //마우스를 클릭하면 새로운 원이 생겨남
  circles.add(new Circle(mouseX, mouseY));
} //ArrayList에 생성된 원을 추가하기 위해 필요한 함수 add에 대한 질문과 생성위치에 대한 질문을 통해 작성

class Circle { //class 정의
  float x, y; //원의 위치
  float size; //원의 사이즈
  int col; //원의 색상

  Circle(float circleX, float circleY) { //변수이름 설정
    x = circleX; //x좌표 초기화
    y = circleY; //y좌표 초기화
    size = random(40, 200); //적당한 크기 범위 내에서 랜덤생성
    col = color(random(150, 255), random(30, 80), random(50, 100));
    //랜덤 색상 지정(붉은 계열로)
  }
}
