$fn = 100;

wallWidth = 1.2;

// This gets added to the hole sizes
clearance = 0.25;

// main part only
cubeSize = 18;
chamfer = 2;
grip = 2;

// these are just calculations for convenience
gripOffsetFar = cubeSize/5*4;
gripOffsetClose = cubeSize/5;
outsideWidth = cubeSize - 2*chamfer;
halfHeight = sqrt(cubeSize*cubeSize*2)/2;
partHeight = sqrt(cubeSize*cubeSize - halfHeight*halfHeight);


flatHeight = 4;
holeWidth = 5;

gapWidth = 1.5;

axleDiameter = holeWidth;
pinDiameter = holeWidth + 0.8;

axleLength = 2*wallWidth + pinDiameter; // up to the middle of the dots
pinLength = 2*wallWidth + 2*pinDiameter; // up to the ends of the dots

attachLength = 2*wallWidth;
testCubeSize = pinDiameter + 2*wallWidth; // sphere plus walls

sphereSize = pinDiameter+clearance;
cylinderSize = sphereSize/2+wallWidth;
