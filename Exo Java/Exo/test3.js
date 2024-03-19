function pgcd(a,b) {
    a = Math.abs(a);
    b = Math.abs(b);
    if (b > a) {
       var tmp = a; 
       a = b; 
       b = tmp;
    }
    while (true) {
        if (b == 0) return a;
        a %= b;
        if (a == 0) return b;
        b %= a;
    }
}

console.log(pgcd(60,36));