#modulos
module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
         end

         def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
         end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
         end
    end
 end

#clases
#super clase
class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end

    class Pinguino < Ave
        include Habilidades::Nadador
        include Habilidades::Caminante
        include Alimentacion::Carnivoro
    end

    class Paloma < Ave
        include Habilidades::Volador
        include Habilidades::Caminante
        include Alimentacion::Herbivoro
    end

    class Pato < Ave
        include Habilidades::Nadador
        include Habilidades::Caminante
        include Alimentacion::Herbivoro
    end



    class Perro < Mamifero
        include Habilidades::Caminante
        include Alimentacion::Carnivoro
    end

    class Gato < Mamifero
        include Habilidades::Caminante
        include Alimentacion::Carnivoro
    end

    class Vaca < Mamifero
        include Habilidades::Caminante
        include Alimentacion::Carnivoro
    end

    class Mosca < Insecto
        include Habilidades::Volador
        include Alimentacion::Herbivoro
    end

    class Mariposa < Insecto
        include Habilidades::Volador
        include Alimentacion::Herbivoro
    end

    class Aveja < Insecto
        include Habilidades::Volador
        include Alimentacion::Herbivoro
    end

    ave_01 = Pinguino.new('pingui')
    puts ave_01.nombre
    puts ave_01.sumergir
    puts ave_01.comer

    insecto_01 = Mosca.new('zuri')
    puts insecto_01.nombre
    puts insecto_01.aterrizar
    puts insecto_01.comer

    mamifero_01 = Gato.new('flofy')
    puts mamifero_01.nombre
    puts mamifero_01.caminar
    puts mamifero_01.comer
