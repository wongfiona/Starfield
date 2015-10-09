NormalParticle [] bob;


void setup()
{
	size (700, 700);
	background(0);
	bob = new NormalParticle [130];
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
	int color;
	double x, y, speed, angle;

	NormalParticle()
	{
	color = ((int)(Math.random*255),255,255);
	x = 
	y = 
	speed = 
	angle =
	}
	void show
	{
		//
	}
	void move
	{
		//
	}
	
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

