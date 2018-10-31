## Задачи

1. Дефинирайте функция `(compose f g)`

  ```scheme
  (define (f x) (+ x 1))
  (define (g x) (* x 5))

  ((compose f f) 1)   ;; връща  3
  ((compose g g) 1)   ;; връща 25
  ((compose f g) 1)   ;; връща  6
  ((compose g f) 1)   ;; връща 10
  ```

2. (Георги) Дефинирайте функция `(add-n number)`, коятo връща функция, която при подаден аргумент връща сумата му с number.

  ```scheme
  ((add-n 10) 5)  ;; връща 15
  ```

3. Дефинирайте функция `(derive f h)`, която връща производната на функцията `f`.  
![derivative](https://cdn-images-1.medium.com/max/1600/1*1wUD_t4Ufp8Ef9NQzcydWQ.png)

  ```scheme
  (define (f x)
    (+ (* x x) 1))                ;; f(x) = x^2 + 1

  ((derive f 0.00001) 5)          ;; f'(x) = 2*x
                                  ;; returns something around 10
  ```

4. Дефинирайте функция `(my-length list)`

5. Дефинирайте функция `(my-member? element list)`

6. Дефинирайте функция `(take n list)`, която връща списъка от първите `n` елемента на `list`

7. Дефинирайте функция `(my-append list1 list2)`

8. Дефинирайте функция `(my-reverse list)`

9. Дефинирайте функции `(all? list predicate)` и `(any? list predicate)`, които проверяват дали всички (съответно, поне един) от елементите изпълняват подаденото условие
