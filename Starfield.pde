Particle [] bob;


public void setup()
{
  size (700, 700);
  bob = new Particle [200];
   for (int i = 0; i < bob.length; i++)
   {
    bob[i] = new NormalParticle();
   }
   bob[0] = new OddballParticle();
   bob[1] = new JumboParticle();
}

public void draw()
{
  background(0);
  for (int i = 0; i < bob.length; i++)
   {
    bob[i].move();
    bob[i].show();
   }
}

class NormalParticle implements Particle
{
  double x, y, speed, angle;
  int Color;
  NormalParticle()
  {
    x = 350;
    y = 350; 
    speed = (Math.random()*3);
    angle = (Math.random()*Math.PI*2);
    Color = color((int)(Math.random()*255), (int)(Math.random()*255), 255);
  }

  public void show()
  {
    noStroke();
    fill(Color);
    ellipse((float)x, (float)y, 5, 5);
  }

  public void move()
  {
    x = Math.cos(angle)*speed + x;
    y = Math.sin(angle)*speed + y;
    angle += 0.01;
  }

}

interface Particle
{
    public void show();
    public void move();
}

class OddballParticle implements Particle //uses an interface
{
  double x, y, speed, angle;
  int Color;
  OddballParticle()
  {
    x = 350;
    y = 350; 
    speed = (Math.random()*3);
    angle = (Math.random()*5);
    Color = color(0, 0, 255);
  }

  public void show()
  {
    noStroke();
    fill(Color);
    ellipse((float)x, (float)y, 5, 5);
  }

  public void move()
  {
    x = Math.cos(angle)*speed + x;
    y = Math.sin(angle)*speed + y;
    angle -= 0.01;
  }
}

class JumboParticle extends NormalParticle //uses inheritance
{
  public void show()
  {
    noStroke();
    fill(Color);
    ellipse((float)x, (float)y, 15, 15);
  }
    
  public void move()
  {
   x = Math.cos(angle)*speed + x;
   y = Math.sin(angle)*speed + y;
   angle -= 0.01; 
  }
}
