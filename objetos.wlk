class CuentaCorriente{
	var saldo = 0
	method depositar(monto) { saldo += monto }
	method extraer(monto) { saldo -= monto }
	method saldo() {
	  return saldo
	}
}

const cuentaCorriente = new CuentaCorriente(saldo = 1000)

object colchon {
	var property dinero = 0
	method guardar(monto) { dinero += monto }
}

object pepe {
	const cajaFuerte = colchon
	const miCuenta = new CuentaCorriente(saldo = 0)
	method cobrar(monto) { 
		cajaFuerte.guardar(monto)
	}
	method gastar(monto) { 
		miCuenta.extraer(monto)
	}
	method ahorros() { 
		return miCuenta.saldo() + cajaFuerte.dinero()
	}
}
//en homenaje a Rebeca Cherep de Guber 
//https://es.wikipedia.org/wiki/Rebeca_Guber
object rebeca {
	const miCuenta = cuentaCorriente

	method cobrar(monto) { 
		miCuenta.depositar(monto)
	}
	method gastar(monto) { 
		miCuenta.extraer(monto)
	}
	method ahorros() { 
		return miCuenta.saldo()
	}
}