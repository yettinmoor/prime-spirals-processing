size(800, 800);

// create prime list
ArrayList<Integer> primes = new ArrayList<Integer>();
primes.add(2);
int i = 3;
while (primes.size() < 10000) {
    boolean isPrime = true;
    for (int p : primes) {
        if (i % p == 0) {
            isPrime = false;
            break;
        }
    }
    if (isPrime) primes.add(i);
    i += 2;
}
int maxPrime = primes.get(primes.size()-1);

// draw it
background(0);
translate(width/2, height/2);
stroke(50);
strokeWeight(2);
for (int j = 1; j < maxPrime; j++) {
    PVector v = PVector.fromAngle(-j);
    v.mult(j*(sqrt(2)*width/2)/maxPrime);
    point(v.x, v.y);
}
stroke(240, 100, 100);
for (int p : primes) {
    PVector v = PVector.fromAngle(-p);
    v.mult(p*(sqrt(2)*width/2)/maxPrime);
    point(v.x, v.y);
}

save("img/spiral.png");
