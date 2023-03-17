// 1
func swap(a, b) {
	temp = a;
	a = b;
	b = temp;
}

Time function f(n) = 3  --> O(1)
Space function s(n) = 3  --> O(1)


// 2
func sum(Array, size) {
	res = 0;
	for (i = 0; i < size; i++) {
		res = res + Array[i];
	}
	return res;
}

Time - f(n) = 2n + 3 - O(n)
Space - s(n) = n + 3 - O(n)

* A[i, j] => A[i][j]
func add(A, B, n) {
	for (i = 0; i < n; i++) {            	// n + 1
		for (j = 0; j < n; j++) { 			// n^2 + n
			C[i, j] = A[i, j] + B[i, j];	// n^2
		}
	}
}

Time - f(n) = 2n^2 + 2n + 1 => O(n^2)
Space - s(n) = 3n^2 + 3 => O(n^2)

// A, B : 2D array, matrix
func multiply(A, B, n) {
	for (i = 0; i < n; i++) {							// n + 1
		for (j = 0; j < n; j++) {						// n^2 + n
			C[i, j] = 0;								// n^2
			for (k = 0; k < n; k++) {					// n^3 +n^2
				C[i, j] = C[i, j] + A[i, k] * B[k, j];	// n^3
			}
		}
	}
}
Time - f(n) = 2n^3 + 3n^2 + 2n + 1 => O(n^3)
Space - s(n) = 3n^2 + 4            => O(n^2) 


// Examples Big-O (Code snippets)
// 1
for (i = 1; i < n; i = i + 2) {
	// some statements
}

f(n) = n / 2 - O(n)

// 2
for (i = 0; i < n; i++) {		// n + 1
	for (j = 0; j < n; j++) {	// n^2 + n
		// some statements		// n^2
	}
}

f(n) = 2n^2 + 2n + 1 -> O(n^2)

// 3
for (i = 0; i < n; i++) {		// n + 1
	for (j = 0; j < i; j++) {	// ((n+1)/2)n + 1
		// some statements		// 
	}
}

f(n) = n(n+1)/2 = (1/2)n^2 + (1/2)n => O(n^2)

// 4
p = 0;
for (i = 1; p <= n; i++) {
	p = p + i;
}

Assume p > n (when the loop ends)
when i = k, since p = k(k+1)/2, we can say k(k+1)/2 > n,
simply k^2 > n, hence k > sqrt(n)

O(sqrt(n))


// 5
for (i = 1; i < n; i = i * 2) {
	// some statements
}

n = 10
i =  1, next i = 1*2= 2  = 2^1
i =  2, next i = 2*2= 4  = 2^2
i =  4, next i = 4*2= 8  = 2^3
i =  8, next i = 8*2=16  = 2^4
i = 16, the loop ends

2^x = n
x = log n

O(lg n)

// 6
for (i = n; i >= 1; i = i / 2) {
	// some statements
}

n = 16
i = 16, next i = 8   = 2^3
i =  8, next i = 4   = 2^2
i =  4, next i = 2   = 2^1
i =  2, next i = 1   = 2^0
i =  1, next i = 0.5
i =  0, the loop ends

O(lg n)


// 7
for (i = 0; i * i < n; i++) {
	// some statements
}

n = 10
i =  1, next i = 2, 2*2= 4 = 2^2
i =  2, next i = 3, 3*3= 9 = 3^2
i =  3, nxtt i = 4, 4*4=16 = 4^2
i =  4, the loop ends

x^2 = n
x = sqrt n

O(sqrt(n))

// 8
for (i = 0; i < n; i++) {
	// some statements
}
for (j = 0; j < n; j++) {
	// some statements
}

f(n) = 2n
O(n) // this is not n^2


// 9
p = 0
for (i = 1; i < n; i = i * 2) {
	p++;
}
for (j = 1; j < p; j = j * 2) {
	// some statements
}

n = 10
i =  1, p = 1, next i = 2 = 2^1
i =  2, p = 2, next i = 4 = 2^2
i =  4, p = 3, next i = 8 = 2^3
i =  8, the first loop ends

p = 3
j = 1, next j = 2 = 2^1
j = 2, next j = 4 = 2^2
j = 4, the second loop ends

O(lg lg n)

// 10

for (i = 0; i < n; i++) {
	for (j = 1; j < n; j = j * 2) {
		// some statements
	}
}

O(nlg n)

// Names

O(1) - Contant
O(lg N) - Logarithmic
O(N) - Linear
O(N^2) - Quadratic // polynomial time
O(N^3) - Cubic // polynomial time
O(2^n), O(3^n), ..., O(n^n) - Exponential

The Fastest to Slowest

1 < lg N < sqrt(N) < N < Nlg N < N^2 < N^3 < ... < 2^n < 3^n < ... < n^n 


