class AVLTree < BinarySearchTree
	def LL_rotation
		raise StateError if empty?
		tmp = @right
		@right = @left
		@left = @right.left
		@right.left = @right.right
		@right.right = tmp
		tmp = @key
		@key = @right.key
		@right.key = tmp
		@right.adjustHeight
		adjustHeight
	end
end
