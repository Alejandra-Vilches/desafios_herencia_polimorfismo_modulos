class Person
    attr_accessor :first, :last, :age, :type
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end

    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

estudiante_01 = Student.new('juan','perez', 10,'leng')
profesor_01 = Teacher.new('diego','matucana', 25,'mat')
madre_01 = Parent.new('gloria','orellana', 50, 'reu')

estudiante_01.talk
profesor_01.talk
estudiante_01.introduce
profesor_01.introduce

madre_01.introduce
madre_01.talk


