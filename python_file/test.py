def is_prime(num):
    if num < 0 or num == 1:
        return False 

    # check if number is [2, 3, 5, 7 ]
    elif num in [2, 3, 5, 7 ]:
        return True

    # convert num to list string e.g 45 = ['4', '5']
    numAsListString = list(str(num))
    # print(numAsListString)
    
    # check if the number ends with 0,2,4,6,8. if it does then it is not a prime 
    # number
    if numAsListString[-1] in ['0', '2', '4','6', '8', '5' ]:
        return False
    

    # add all the digit and check if it is divided by 3, if yes, then it a
    # composite number
    if _getSum(num) % 3 == 0:
        return False
    
    
    return   True


def _getSum(n):
    
    sum = 0
    for digit in str(n): 
      sum += int(digit)      
    return sum
   


print(is_prime(3))
print(is_prime(4))
print(is_prime(5))
print(is_prime(7))
print(is_prime(5099))
print(is_prime(45)) # false
print(is_prime(-41)) # false
print(is_prime(9)) # false
print(is_prime(41)) # true

 