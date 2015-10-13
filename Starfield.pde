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
	//int myColor;
	float x, y, speed, angle;
	NormalParticle()
	{
		x = 350;
		y = 350; 
		speed = 10;
		angle = (float)(Math.random()*100);
	}

	void show()
	{
		noStroke();
		fill((int)(Math.random()*255), 255, 255);
		ellipse(x, y, 10, 10);
	}

	void move()
	{
		x = cos(angle)*speed + x;
		y = sin(angle)*speed + y;
		angle++;
	}
	
}
// interface Particle
// {
// 	//your code here
// }
// class OddballParticle //uses an interface
// {
// 	//your code here
// }
// class JumboParticle //uses inheritance
// {
// 	//your code here
// }

