#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; BEGIN SUPPORT FUNCTIONS;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Here is the list of manufacturing companies' countries
(define manufactures
  '(American
    ("Buick" "Chevrolet" "Chrysler" "Dodge" "Ford" "Jeep" "Lincoln" "Tesla")
    British
    ("Aston-Martin" "Bentley" "Jaguar" "Land-Rover" "Lotus" "Mclaren" "Rolls-Royce")
    French
    ("Bugatti")
    German
    ("Audi" "BMW" "Mercedes-Benz" "Porsche" "Volkswagen")
    Italian
    ("Alfa-Romeo" "Ferrari" "FIAT" "Lamborghini" "Maserati" "Pagani")
    Japanese
    ("Acura" "Honda" "Intiniti" "Lexus" "Mazda" "Nissan" "Subaru" "Toyota")
    Korean
    ("Hyundai" "Kia")
    Swedish
    ("Koenigsegg" "Volvo")))                                                              
                             

;; Helper function for outputing the list of car brands
;; carcountry: Sym -> Str
(define (help-carmaker company manufactures)
  (cond
    [(empty? manufactures) empty]
    [(equal? (first manufactures) company)
     (first (rest manufactures))]
    [else (help-carmaker company (rest manufactures))]))


;; Here is the list of car companies luxary levels
(define luxary-brand
  '(Standard
    ("Chevrolet" "Dodge" "FIAT" "Ford" "Honda" "Hyundai" "Jeep" "Kia"
                 "Mazda" "Nissan" "Subaru" "Toyota" "Volkswagen")
    Entry
    ("Acura" "Buick" "Cadillac" "Chrysler" "Infiniti" "Lexus" "Lincoln" "Volvo")
    High-end
    ("Alfa Romeo" "Audi" "BMW" "Jaguar" "Land Rover" "Maserati" "Mercedes-Benz" "Porsche" "Tesla")
    Ultra-luxary
    ("Bentley" "Rolls-Royce")
    Exotic
    ("Aston Martin" "Bentley" "Bugatti" "Ferrari" "Koenigsegg" "Lamborghini"
                    "Lotus" "McLaren" "Pagani" "Rolls-Royce")))


;; Helper function for outputing the cars associated with the luxary levels
;; luxarylevel: Sym -> Str
(define (help-luxary level luxary-brand)
  (cond
    [(empty? luxary-brand) empty]
    [(equal? (first luxary-brand) level)
     (first (rest luxary-brand))]
    [else (help-luxary level (rest luxary-brand))]))


;; Here is the list of car types
(define cartype 
  '(Sedan/Hatchback
    ("Chevrolet" Spark Sonic Cruze Malibu Impala
                 "Dodge" Charger
                 "Ford" Fiesta Focus Fusion Taurus
                 "Honda" Fit Civic Acord
                 "Hyundai" Elantra Accent Sonata Azera
                 "Kia" Rio Forte Optima Stinger Cadenza K900
                 "Mazda" Mazda3 Mazda6
                 "Nissan" Versa Sentra Altima Maxima
                 "Rolls Royce" Ghost Phantom
                 "Toyota" Yaris Corolla Camry Avalon
                 "Volkswagen" Jetta Beetle Golf Passat CC)
    Electric/Hybrid
    ("Chevrolet" Volt
                 "Honda" Clarity
                 "Hyundai" Ioniq Sonata
                 "Kia" Optima Soul Niro
                 "Nissan" Leaf
                 "Subaru" Imperza Legacy WRX
                 "Toyota" Prius amry Avalon)
    Coupe
    ("Aston Martin" New-Vantage DB11 Rapide-S Vanquish-S Vanquish-Zagato Valkyrie
                    "Bugatii" Veyron Chiron
                    "Chevrolet" Camaro Corvette
                    "Dodge" Challenger Viper
                    "Ferrari" California 488-GTB 488-Spider GTC4Lusso 812-Superfast Laferrari-Aperta
                    "FIAT" 124-Spider
                    "Ford" Mustang
                    "Honda" Civic Acord
                    "Hyundai" Veloster
                    "Koenigsegg" Regera Agera CCXR
                    "Lamborghini" Huracan Aventador
                    "Lotus" Evora-400
                    "Mazda" Miata
                    "McLaren" 570S 570GT 650S-Spider 720S 675LT-Spider Senna P1
                    "Nissan" 370z GT-R
                    "Pagani" Zonda Huayra
                    "Rolls Royce" Black-Badge Wraith Dawn
                    "Subaru" BRZ
                    "Toyota" 86)     
    Crossover/SUV
    ("Chevrolet" Trax Equinox Traverse Tahoe Suburban
                 "Dodge" Durango Journey
                 "Ford" Escape Ecosport Edge Flex Explorer Expedition
                 "Honda" Pilot CR-V HR-V
                 "Hyundai" Tuscan Santa-Fe
                 "Jeep" Renegade Compass Cherokee Grand-Cherokee Wrangler
                 "Kia" Soul Niro Sportage Sorento
                 "Lamborghini" Urus
                 "Mazda" CX-3 CX-5 CX-9
                 "Nissan" Juke Rogue Murano Pathfinder Armada
                 "Subaru" Crosstrek Forester Outback
                 "Toyota" C-HR RAV4 Highlander
                 "Volkswagen" Tiguan Atlas Toureq)
    Truck
    ("Chevrolet" Colorado Silverado
                 "Ford" F-150 Super-Duty
                 "Honda" Ridgeline
                 "Nissan" Frontier Titan
                 "Toyota" Tacoma Tundra)
    Van/Minivan
    ("Dodge" Grand-Carvan
             "FIAT" 500
             "Ford" C-Max
             "Honda" Odyssey
             "Kia" Sedona
             "Toyota" Sienna)))


;; Helper function for outputing the cars associated with the type of cars
;; typeofcar: Sym -> (Str and Sym)
(define (help-cartype type cartype)
  (cond
    [(empty? cartype) empty]
    [(equal? (first cartype) type)
     (first (rest cartype))]
    [else (help-luxary type (rest cartype))]))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; END SUPPORT FUNCTIONS ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;