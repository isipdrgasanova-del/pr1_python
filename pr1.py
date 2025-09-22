print('Калькулятор_______')
print("1. Арифметические операторы")
print("2. операторы сравнения")
print("3. операторы логические")
print("4. операторы принадлежности")
print("5. операторы тождественности")

choice = int(input('введите число для операции '))

if choice == 1: 
    num1 = float(input('введите первое число '))
    num2 = float(input('введите второе число ')) 
    operation = input('Введите операцию ')  
    
    if operation == "+":
        print(num1 + num2)
    elif operation == "-":
        print(num1 - num2)
    elif operation == "/":
        if num2 != 0:
            print(num1 / num2)
        else:
            print("Ошибка: деление на ноль!")
    elif operation == "*":
        print(num1 * num2)
    elif operation == "//":
        if num2 != 0:
            print(num1 // num2)
        else:
            print("Ошибка: деление на ноль!")
    elif operation == "**":
        print(num1 ** num2)
    elif operation == "%":
        if num2 != 0:
            print(num1 % num2)
        else:
            print("Ошибка: деление на ноль!")
    else:
        print("Неверная операция")

elif choice == 2:
    num1 = float(input('введите первое число '))
    num2 = float(input('введите второе число ')) 
    operation = input('Введите операцию ')
    
    if operation == "==":
        print(num1 == num2)
    elif operation == "!=":
        print(num1 != num2)
    elif operation == ">":
        print(num1 > num2)
    elif operation == "<":
        print(num1 < num2)
    elif operation == ">=":
        print(num1 >= num2)
    elif operation == "<=":
        print(num1 <= num2)
    else:
        print("Неверная операция")

elif choice == 3:

    val1 = input('Введите первое значение: ').lower() == 'true'
    val2 = input('Введите второе значение: ').lower() == 'true'
    operation = input('Введите операцию (and, or, not): ')
    
    if operation == "and":
        print(val1 and val2)
    elif operation == "or":
        print(val1 or val2)
    elif operation == "not":
        print(not val1)
    else:
        print("Неверная операция")

elif choice == 4:
  
    print("Операторы принадлежности работают с коллекциями")
    element = input('Введите элемент для проверки: ')
    collection = input('Введите коллекцию (через запятую): ').split(',')
    operation = input('Введите операцию (in, not in): ')
    
    if operation == "in":
        print(element in collection)
    elif operation == "not in":
        print(element not in collection)
    else:
        print("Неверная операция")

elif choice == 5:

    num1 = input('введите первое значение ')
    num2 = input('введите второе значение ')
    operation = input('Введите операцию (is, is not): ')

    try:
        num1 = float(num1) if '.' in num1 else int(num1)
    except ValueError:
        pass
    
    try:
        num2 = float(num2) if '.' in num2 else int(num2)
    except ValueError:
        pass
    
    if operation == "is":
        print(num1 is num2)
    elif operation == "is not":
        print(num1 is not num2)
    else:
        print("Неверная операция")

else:
    print('Неверный номер операции')