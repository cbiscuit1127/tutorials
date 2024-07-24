def fibonacci(n):
    '''Return the nth Fibonacci number.'''
    if n <=0:
        raise ValueError('n must be a positive integer.')
    elif n == 1:
        return 0
    elif n == 2:
        return 1
    else:
        a, b = 0,1
        for _ in range(n-2):
            a,b=b,a+b
        return b

def is_prime(num):
    '''Return True if the number is prime.'''
    if num<=1:
        return False
    for i in range(2, int(num **0.5)+1):
        if num%i==0:
            return False
    return True

def main():
    '''Main function to test the utilities.'''
    fib_index=10
    print(f'The {fib_index}th Fibonacci number is {fibonacci(fib_index)}')

    number = 29
    if is_prime(number):
        print(f'{number} is a prime number.')
    else:
        print(f'{number} is not a prime number.')

if __name__ == '__main__':
    main()

