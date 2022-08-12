Historial3=(9530, 4120, 4580, 1500, 890,7516,426)#defino una tupla
total=sum(Historial3)#creo una variable y sumo con sum la lista
promedio=total/7#creo una variable llamada promedio y la igualo a la variable total y la divido por 7

if promedio > 4500:#pregunto si el promedio es mayor a 4500 muestro un mensaje
    print("Se ha excedido del gasto promedio para su mascota")
else:# si el promedio no es mayor lo muestro
    print(round(promedio))
