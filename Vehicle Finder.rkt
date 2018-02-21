;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Vehicle Finder|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Information on Vechicles
;; Last update: January 5th 2018

;; By: Harish Patel

(require "Carslib.rkt")

;; Company list to choose from
(define companies
  '(American British French German Italian Japanese Korean Swedish))

;; carcountry consumes a company, as a symbol, and outputs the car brands
;;  that are built by that company
;; carcountry: Sym -> Str
(define (carcountry company)
  (help-carmaker company manufactures))


;; Luxary levels to choose from
(define levels
  '(Standard Entry High-end Ultra-luxary Exotic))

;; luxarylevel consumes a level, as a symbol, and outputs the car brands
;;  that are in that luxary level
;; luxarylevel: Sym -> Str
(define (luxarylevel level)
  (help-luxary level luxary-brand))


;; Car types to choose from
(define type
  '(Sedan/Hatchback Electric/Hybrid Coupe Crossover/SUV Truck Van/Minivan))

;; typeofcar consumes a type, as a symbol, and outputs the car brands with car models
;;  that are in that type
;; typeofcar: Sym -> (Str and Sym)
;; NOTE:: Symbol of cars in car brand are priced from low to high
(define (typeofcar type)
  (help-cartype type cartype))