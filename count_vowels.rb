def count_vowels(str)
    str.scan(/[AaEeIiOoUu]/).count
end

continuar = true
begin
    print "Ingresa una palabra y te diré cuántas vocales tiene: "
        
    palabra = gets.chomp
    
    if palabra.to_i != 0 || palabra == "0"
        puts "Ingresaste un número"
    else
        puts "La palabra tiene #{count_vowels(palabra.to_s)} vocales."

        respuesta = ""
        begin
            print "¿Desea validar otra palabra? (S/N): "
            respuesta = gets.chomp.upcase
    
            respuesta == "S" ? continuar = true : continuar = false 
        end unless respuesta == "S" || respuesta == "N"
    end
end while continuar
    
