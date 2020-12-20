## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this functncti
# # Crea un objeto de matriz especial que puede almacenar en caché su inversa 
makeCacheMatrix  <-  function ( m  =  matrix ()) {

	# # Inicializar la propiedad inversa 
    i  <-  NULL

    # # Método para configurar la matriz de 
    conjunto  <-  función ( matriz ) {
             m  << -  matriz 
            i  << -  NULL
    }

    # # Método para obtener la matriz 
    get  <-  function () {
    	 # # Devuelve la matriz 
    	m
    }

    # # Método para establecer la inversa de la matriz 
    setInverse  <-  función ( inversa ) {
         i  << -  inversa
    }

    # # Método para obtener la inversa de la matriz 
    getInverse  <-  function () {
         # # Devuelve la propiedad inversa 
        i
    }

    # # Devolverá una lista de los métodos de 
    la lista ( set  =  conjunto , get  =  get ,
          setInverse  =  setInverse ,
          getInverse  =  getInverse )
}


# # Calcule la inversa de la matriz especial devuelta por "makeCacheMatrix" 
# # arriba. Si la inversa ya se ha calculado (y la matriz no 
# # ha cambiado), entonces "cachesolve" debería recuperar la inversa de la caché. 
cacheSolve  <-  función ( x , ... ) {

    # # Devuelve una matriz que es la inversa de 'x' 
    m  <-  x $ getInverse ()

    # # Solo devuelve el inverso si ya está configurado 
    if ( ! Is.null ( m )) {
            mensaje ( " obteniendo datos en caché " )
             return ( m )
    }

    # # Obtener la matriz de nuestros 
    datos de  objeto <-  x $ get ()

    # # Calcular la inversa usando la multiplicación de matrices 
    m  <- resolver ( datos ) % *%  datos

    # # Establecer la inversa al objeto 
    x $ setInverse ( m )

    # # Devuelve la matriz 
    m 
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
