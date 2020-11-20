(define (echo lst) 
    (if(null? lst)
       '()
       (append (list (car lst) (car lst)) (echo (cdr lst)))))


(define (maken lst n)
  (if (or (null? lst) (< n 2))
      lst
      (append lst (maken lst (- n 1)))))
               
(define (echo-lots lst n)
  (if (or (null? lst) (< n 1))
      '()
      (append (maken (list (car lst)) n) (echo-lots (cdr lst) n))))


(define (echo-all lst) 
    (if(null? lst)
       '()
       (if(list? (car lst))
          (append (maken (list (echo-all (car lst))) 2) (echo-all (cdr lst)))
          (append (list (car lst) (car lst)) (echo-all (cdr lst)))
    )))

(define (nth i lst)
  (if(or (null? lst) (< i 0))
     '()
     (if(= i 0)
        (car lst)
        (nth (- i 1) (cdr lst)))))
(define(check-alst keys a-list)
  (if(null? a-list)
     keys
     (if(eq? (car keys) (caar a-list))
        (cons (cdar a-list) (check-alst (cdr keys) a-list))
        (check-alst keys (cdr a-list)))))

(define assoc-all
    (lambda (keys lst)
      (map (lambda (key) (cadr (assoc key lst)))
           keys)))




(define (filter fn lst)
  (if (or (not (procedure? fn)) (null? lst))
      '()
      (if(fn (car lst))
         (cons (car lst) (filter fn (cdr lst)))
         (filter fn (cdr lst)))))