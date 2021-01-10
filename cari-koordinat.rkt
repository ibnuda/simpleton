#lang racket

(define (hipotenusa-inggang x)
  (sqrt (+ (* x x) (* 19.05 19.05))))

(define (derajat-tambahan stagger)
  (atan (/ stagger 19.05)))

(define (koordinat-kiri x-sekarang y-sekarang inggang)
  (let* ([hipotenusa (hipotenusa-inggang inggang)]
         [delta (derajat-tambahan inggang)]
         [derajat (+ (degrees->radians 30) delta)]
         [x (* hipotenusa (cos derajat))]
         [y (* hipotenusa (sin derajat))]
         [x-baru (- x-sekarang x)]
         [y-baru (- y-sekarang y)])
    (list x-baru y-baru)))

(define (koordinat-kanan x-sekarang y-sekarang inggang)
  (let* ([hipotenusa (hipotenusa-inggang inggang)]
         [delta (derajat-tambahan inggang)]
         [derajat (- (degrees->radians 150) delta)]
         [x (* hipotenusa (cos derajat))]
         [y (* hipotenusa (sin derajat))]
         [x-baru (- x-sekarang x)]
         [y-baru (- y-sekarang y)])
    (list x-baru y-baru)))

(koordinat-kanan 223.481 22.165 -15)
