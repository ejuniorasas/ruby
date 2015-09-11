class Teste
	def initialize(name)
		@name = name
	end

	def name
		@name
	end

	def name=(new_name)
		@name = new_name
	end

end

class Greeter 
	attr_accessor :name
	attr_reader   :greeting
	attr_writer   :age

	def initialize
		@name = 'd888888888888888888888'
		@greeting = 'eoifja;ljei;wlKJF;IDJF;EKLJS;DKFJ;WOIEFJ KJSD;FIAJDE;FK JAIEJSKDFJ  IDFJ;ELIJFLKEJF;GKD;WLKJDOSL'
	end
end

g = Teste.new('nomeee')
puts g.name
g.name = 'dois'
puts g.name

g1 = Greeter.new
puts g1.name
g1.name = 'xpteodle'
puts g1.name
puts g1.greeting