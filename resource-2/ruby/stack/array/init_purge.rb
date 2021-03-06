class ArrayStack < Stack
	def init(size = 0)
		super()
		@array = Array.new(size)
	end
	def purge
		while @count > 0
			@count -= 1
			@array[@count] = nil
		end
	end
end
