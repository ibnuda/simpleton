#lang racket

(define (hipotenusa-inggang x)
  (sqrt (+ (* x x) (* 19.05 19.05))))

(define (derajat-tambahan inggang)
  (atan (/ inggang 19.05)))

(define (koordinat kiri? x-sekarang y-sekarang inggang)
  (let* ([delta (derajat-tambahan inggang)]
         [derajat-sisi (if kiri? 30 150)]
         [derajat-radian (degrees->radians derajat-sisi)]
         [derajat (+ derajat-radian (if kiri? delta (- delta)))]
         [hipotenusa (hipotenusa-inggang inggang)]
         [x (* hipotenusa (cos derajat))]
         [y (* hipotenusa (sin derajat))]
         [x-baru (- x-sekarang x)]
         [y-baru (- y-sekarang y)])
    (list x-baru y-baru)))

(koordinat false 223.481 22.165 -15)
(koordinat-kanan 223.481 22.165 -15)

(koordinat true 223.481 22.165 -15)
(koordinat-kiri 223.481 22.165 -15)
