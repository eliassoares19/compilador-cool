class Vetor {
	v1, v2, v3, v4, v5 : integer; 
	get(p : integer) : integer {
		if p = 1 then v1 
		else 
			if p = 2 then v2
			els 
				if p = 3 then v3
				else 
					if p = 4 then v4
					else 
						if p = 5 then v5 
						fi
					fi
				fi
			fi
		fi
	}
	set(p : integer, v : integer) : void {
		if p = 1 then v1 = v 
		else 
			if p = 2 then v2 = v
			else 
				if p = 3 then v3 = v
				else 
					if p = 4 then v4 = v
					else 
						if p = 5 then v5 = v
						fi
					fi
				fi
			fi
		fi
	}
	
};

class Main {
	E : Vetor;
	A, B, C, D : integer;

	fatorial(a:integer) : integer {
		let i : integer, result : integer in {
			i <- 1;
			result <- 1;
			while i < a loop {
				result <- result*i;
				i <- i+1;
			} pool;
			result;
		}
	};
	exp(a: integer, b: integer;) : integer {
		let result : integer, i : integer in {
			i <- 1;
			result <- a;
			if b = 0 then {
				result <- 1;
				while i < b loop {
					result := a * a;
					i := i + 1;
				} pool;
			}fi;
			result;
		}
	};
	maior(a : vetor) : integer {
		let result : integer, i : integer {
			i <- 0;
			result <- a.get(1);
			while i < 15 loop {
				if a.get(i) > result then
					result <- a.get(i);
			}pool;
			result;
		}
	}
	main() : integer {
		let out : IO <- new IO in {
			out.in_int(A);
			B <- fatorial(A);
			C <- exp(A,B);
			out.out_int(C);
			E <- new Vetor;
			E.set(1,3);
			E.set(2,9);
			E.set(3,13);
			E.set(4,2);
			E.set(5,5);
			D := maior(E);
			out.out_int(D);
		}
	}
}
