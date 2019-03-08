-- Question 1 --

union :: [Int] -> [Int] -> [Int]
union [] y=y
union x []=x 
union [] []=[]
union x y
  |(head x) `elem` (tail x) || (head x) `elem` (tail y) = union (tail x) y
  | (head y) `elem` (tail x) || (head y) `elem` (tail y) = union x (tail y)
  | (head x) == (head y) = (head x) : union (tail x) (tail y)
  | otherwise = (head x) : (head y) : union (tail x) (tail y)

-- Question 2--

delete :: Int->[Int]->[Int]
deletek::[Int] ->Int->Int ->[Int]
delete n [] = []
delete n (x:xs) = deletek (x:xs) n 1 
deletek [] n ys=[] 
deletek (x:xs) y ys 
   		| y<0 = error "Enter positive value"
   		| y==0 = x:xs
   		| mod ys y == 0   = []  ++ deletek xs y (ys+1) 
   		| mod ys y /= 0   = [x]  ++ deletek xs y (ys+1) 

-- Question 3 --

data Tree=Leaf Int|Node Tree Int Tree
occurs:: Int->Tree->Bool

occurs x (Leaf node)
	|node /= x	=False
	|otherwise	=True
occurs x (Node lefttree nextnode righttree)
	|x<nextnode	=occurs x lefttree
	|x>nextnode	=occurs x righttree
	|nextnode==x 	=True

-- Question 4 --
delete_last:: Int->[Int]->[Int]
delete_last x []=[]
delete_last x [y]
	|x==y =[]
	|otherwise =[y]
delete_last x(y:ys)
	|elem x ys=[y] ++ delete_last x ys
	|x==y	=ys
	|otherwise =y:ys

-- Question 5 --

combine::Int->[Int]->[Int]
combine x[]=[x]
combine x(y:ys) 
	|x>y =y:(combine x ys)
	|otherwise =x:y:ys
isort::[Int]->[Int]
isort [] =[]
isort(x:xs)= combine x (isort xs)
	

