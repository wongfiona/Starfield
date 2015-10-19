NormalParticle [] bob;


void setup()
{
	size (700, 700);
	background(0);
	bob = new NormalParticle [50];
   for (int i = 0; i < bob.length; i++)
   {
    bob[i] = new NormalParticle();
   }
}

void draw()
{
	for (int i = 0; i < bob.length; i++)
   {
    bob[i].move();
    bob[i].show();
   }
}

class NormalParticle
{
	float x, y, speed, angle;
	NormalParticle()
	{
		x = 350;
		y = 350; 
		speed = (float)(Math.random()*500);
		angle = (float)(Math.random()*500);
	}

	void show()
	{
		noStroke();
		fill((int)(Math.random()*255), (int)(Math.random()*255), 255);
		ellipse(x, y, 10, 10);
	}

	void move()
	{
		//frameRate(200);
		x = (float)(Math.cos(angle)*speed + x);
		y = (float)(Math.sin(angle)*speed + y);
		angle++;
	}
	
}
// interface Particle
// {
// 	public void show();
//  public void move();
// }
// class OddballParticle implements Particle //uses an interface
// {
// 	//your code here
// }
// class JumboParticle extends NormalParticle //uses inheritance
// {
// 	//your code here
// }

