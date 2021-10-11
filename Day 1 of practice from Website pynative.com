########################################################################################################################################################################################################
########################################################################################################################################################################################################

Exercise 1: Calculate the multiplication and sum of two numbers

Given two integer numbers return their product only if the product is greater than 1000, else return their sum.

# multiplication
number1 = 20
number2 = 30
expected Output: 600


code:
--------------------------
number1 = 20
number2 = 30
print(number1 * number2)
--------------------------


# addition
number1 = 40
number2 = 30
expected output: 70


code:
---------------------------
number1 = 40
number2 = 30
print(number1 + number2)
---------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 2: Print the sum of the current number and the previous number

Write a program to iterate the first 10 numbers and in each iteration, print the sum of the current and previous number.

expected output:
Printing current and previous number sum in a range(10)
Current Number 0 Previous Number  0  Sum:  0
Current Number 1 Previous Number  0  Sum:  1
Current Number 2 Previous Number  1  Sum:  3
Current Number 3 Previous Number  2  Sum:  5
Current Number 4 Previous Number  3  Sum:  7
Current Number 5 Previous Number  4  Sum:  9
Current Number 6 Previous Number  5  Sum:  11
Current Number 7 Previous Number  6  Sum:  13
Current Number 8 Previous Number  7  Sum:  15
Current Number 9 Previous Number  8  Sum:  17

code:
-------------------------------------------------------
for i in range(10):
    #i-1 if i>=1 else i
    print(f'Current Number {i} Previous Number  {i-1 if i>=1 else i}  Sum:  {i+i-1 if i!=0 else i}')
-------------------------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 3: Print characters from a string that are present at an even index number

Write a program to accept a string from the user and display characters that are present at an even index number.

For example, str = "pynative" so you should display ‘p’, ‘n’, ‘t’, ‘v’.

Expected Output:
Orginal String is  pynative
Printing only even index chars
p
n
t
v

code:
------------------------------------------------
str = input().strip()
print('Orginal String is '+ str)
print('Printing only even index chars')
for i in range(0,len(str),2):
    print(str[i])
-------------------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 4: Remove first n characters from a string

Write a program to remove characters from a string starting from zero up to n and return a new string.

For example:

    remove_chars("pynative", 4) so output must be tive. Here we need to remove first four characters from a string.
    remove_chars("pynative", 2) so output must be native. Here we need to remove first two characters from a string.

Note: n must be less than the length of the string.


code:
-------------------------------------
str="pynative"
n = 4
print(str[n:])
-------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 5: Check if the first and last number of a list is the same

Write a function to return True if the first and last number of a given list is same. If numbers are different then return False.


Given:

numbers_x = [10, 20, 30, 40, 10]
numbers_y = [75, 65, 35, 75, 30]


Expected outcome:
Given list: [10, 20, 30, 40, 10]
result is True

numbers_y = [75, 65, 35, 75, 30]
result is False

code:
--------------------------------------------
numbers_x = [10, 20, 30, 40, 10]
numbers_y = [75, 65, 35, 75, 30]

def first_last(givemelist):
    print('Given list:',givemelist)
    if givemelist[0] == givemelist[-1]:
        print('result is True')
    else:
        print('result is False')
first_last(numbers_x)
print()
first_last(numbers_y)
----------------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 6: Display numbers divisible by 5 from a list

Iterate the given list of numbers and print only those numbers which are divisible by 5

Expected Output:
Given list is  [10, 20, 33, 46, 55]
Divisible by 5
10
20
55

code:
-------------------------------------------
l = list(map(int, input().strip().split()))
print('Given list is',l,'\nDivisible by 5')
for i in l:
    if i % 5 == 0:
        print(i)
-------------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 7: Return the count of a given substring from a string

Write a program to find how many times substring “Emma” appears in the given string.

Given:
str_x = "Emma is good developer. Emma is a writer"

Expected Output:
Emma appeared 2 times


code:
-----------------------------------------------
str_x = "Emma is good developer. Emma is a writer"
print('Emma appeared',str_x.count('Emma'),'times')
-------------------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 8: Print the following pattern

expected:
1 
2 2 
3 3 3 
4 4 4 4 
5 5 5 5 5


code:
----------------------------------
for i in range(6):
    print((str(i)+' ')*i)
----------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 9: Check Palindrome Number

Write a program to check if the given number is a palindrome number.

A palindrome number is a number that is same after reverse. For example 545, is the palindrome numbers

Expected Output:
original number 121
Yes. given number is palindrome number

original number 125
No. given number is not palindrome number

code:
---------------------------------------------------------------------------------------
def palindrome(GiveMeNumber):
    number = list(str(GiveMeNumber))
    number.reverse()
    number= "".join(number)
    if GiveMeNumber == int(number):
        print('original number',GiveMeNumber,'\nYes. given number is palindrome number')
    else:
        print('original number',GiveMeNumber,'\nNo. given number is not palindrome number')

palindrome(121)
print()
palindrome(125)
---------------------------------------------------------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 10: Create a new list from a two list using the following condition

Create a new list from a two list using the following condition

Given a two list of numbers, write a program to create a new list such that the new list should contain odd numbers from the first list and even numbers from the second list.

Given:
list1 = [10, 20, 25, 30, 35]
list2 = [40, 45, 60, 75, 90]

Expected Output:
result list: [25, 35, 40, 60, 90]

code:
----------------------------------------------------
list1 = [10, 20, 25, 30, 35]
list2 = [40, 45, 60, 75, 90]
result = []
for i in list1:
    if i % 2 != 0:
        result.append(i)
for i in list2:
    if i % 2 == 0:
        result.append(i)
        
print('result list:',result)
-------------------------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 11: Write a Program to extract each digit from an integer in the reverse order.

For example, If the given int is 7536, the output shall be “6 3 5 7“, with a space separating the digits.

Given:
7536

expected outcome:
6 3 5 7

code:
--------------------------------------
n = list(input())         #user input
n.reverse()
print(" ".join(n))
---------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 12: Calculate income tax for the given income by adhering to the below rules
``````````````````````````````````````
Taxable   Income	      Rate (in %)
``````````````````````````````````````
First     $10,000	      0
Next      $10,000	      10
The       remaining	    2
``````````````````````````````````````
Expected Output:

For example, suppose the taxable income is 45000 the income tax payable is

10000*0% + 10000*10%  + 25000*20% = $6000


code:
-------------------------------------------------------------
n = int(input())
first_tax = 10000
next_tax = 10000
if n > first_tax:
    remaining = n - first_tax
    if remaining > next_tax:
        remaining-=next_tax
        tax=((next_tax*10)/100)+((remaining*20)/100)
    else:
        tax=(remaining*10)/100
else:
    tax = 0
    
print(tax)
--------------------------------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 13: Print multiplication table form 1 to 10

Expected Output:
1  2 3 4 5 6 7 8 9 10 		
2  4 6 8 10 12 14 16 18 20 		
3  6 9 12 15 18 21 24 27 30 		
4  8 12 16 20 24 28 32 36 40 		
5  10 15 20 25 30 35 40 45 50 		
6  12 18 24 30 36 42 48 54 60 		
7  14 21 28 35 42 49 56 63 70 		
8  16 24 32 40 48 56 64 72 80 		
9  18 27 36 45 54 63 72 81 90 		
10 20 30 40 50 60 70 80 90 100 


code:
-----------------------------------------
for i in range(1,11):
    temp = []
    for j in range(1,11):
        temp.append(i*j)
    print(" ".join(map(str,temp)))
-----------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 14: Print downward Half-Pyramid Pattern with Star (asterisk)

expected:
* * * * *  
* * * *  
* * *  
* *  
*

code:
---------------------------------------
for i in range(1,6):
    print('* '*(6-i))
---------------------------------------



########################################################################################################################################################################################################
########################################################################################################################################################################################################



Exercise 15: Write a function called exponent(base, exp) that returns an int value of base raises to the power of exp.

Note here exp is a non-negative integer, and the base is an integer.

Expected output
case 1:

base = 2
exponent = 5

2 raises to the power of 5: 32 
i.e. (2 *2 * 2 *2 *2 = 32)

case 2:
base = 5
exponent = 4

5 raises to the power of 4 is: 625 
i.e. (5 *5 * 5 *5 = 625)


code:
---------------------------------------
def exponent(base, exponent):
    result = base**exponent
    print('base =',base,'\nexponent =', exponent,'\n')
    print(f'{base} raises to the power of {exponent}: {result} i.e. ({"*".join(list(str(base)*exponent))}) = {result})')
    return result

case1 = exponent(2,5) # print(case1) will give result in this case 32
print()
case2 = exponent(5,4)  # print(case2) will give result in this case 625

---------------------------------------


########################################################################################################################################################################################################
########################################################################################################################################################################################################
