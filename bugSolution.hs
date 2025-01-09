The error in the original code lies in the list comprehension's condition. The expression `x*x | even x` doesn't correctly filter even numbers before squaring them.  Instead it squares all numbers and then uses even in a way that doesn't filter out the odd numbers. The correct approach is to filter even numbers first and then square them. Here's the corrected code:

```haskell
sumOfSquaresOfEvens :: [Integer] -> Integer
sumOfSquaresOfEvens xs = sum [x * x | x <- xs, even x]
```
This revised version ensures that only even numbers are squared, thus producing the accurate sum.