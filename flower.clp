;define characteristics to be used in rules:

(deftemplate Height (slot PlantHeight))
(deftemplate Size (slot PlantSize))
(deftemplate Name (slot PlantName))
(deftemplate Color (slot PlantColor))
(deftemplate Season (slot PlantSeason))
(deftemplate Root (slot PlantRoot))
(deftemplate Perfume (slot PlantPerfume))
(deftemplate LifeType (slot PLifeType))
(deftemplate Soil (slot PlantSoil))
(deftemplate LifeCycle (slot PLifeCycle))

;rules to define Height

(defrule Small "Rule One"
	(Size (PlantSize ?var))
	(test(>= ?var 10))
	(test(< ?var 50)) 
=>
	(assert (Height (PlantHeight small))))

(defrule MediumHeight "Rule Two"
	(Size (PlantSize ?var))
	(test(>= ?var 50))
	(test(< ?var 150)) 
=>
	(assert (Height (PlantHeight medium))))
	
(defrule TallHeight "Rule Four"
	(Size (PlantSize ?var))
	(test(>= ?var 150))
=>
	(assert (Height (PlantHeight tall))))
	
;rules to define Life Type

(defrule AnnualType "Rule Five"
	(LifeCycle (PLifeCycle one))
=>
	(assert (LifeType (PLifeType annual))))

(defrule PerennialType "Rule Six"
	(LifeCycle (PLifeCycle more)) 
=>
	(assert (LifeType (PLifeType perennial))))

;rules to define Flower Name

(defrule FlowerIris "Rule Seven"
	(Season (PlantSeason summer))
	(Color (PlantColor blue | purple | yellow))
	(LifeType (PLifeType perennial))
	(Root (PlantRoot bulb))
=>
	(assert (Name (PlantName Iris))))
	
(defrule FlowerAnemone "Rule Eight"
	(Season (PlantSeason autumn))
	(Color (PlantColor white | pink | pinkish-red))
=>
	(assert (Name (PlantName Anemone))))
	
(defrule FlowerChrystanthemum "Rule Nine"
	(Season (PlantSeason autumn))
	(Height (PlantHeight medium))
	(Color (PlantColor yellow | white | purple | red))
=>
	(assert (Name (PlantName Chrysanthemum))))
	
(defrule FlowerFreesia "Rule Ten"
	(Season (PlantSeason spring))
	(Root (PlantRoot bulb))
	(Color (PlantColor white | yellow | orange | purple | red))
	(Perfume (PlantPerfume true))
=>
	(assert (Name (PlantName Freesia))))
	
(defrule FlowerDahlia "Rule Eleven"
	(LifeType (PLifeType perennial))
	(Height (PlantHeight tall))
	(Root (PlantRoot bulb))
	(Season (PlantSeason summer))
=>
	(assert (Name (PlantName Dahlia))))
	
(defrule FlowerNarcissus "Rule Twelve"
	(Season (PlantSeason spring))
	(Root (PlantRoot bulb))
	(Color (PlantColor yellow | white))
=>
	(assert (Name (PlantName Narcissus))))
	
(defrule FlowerCamellia "Rule Thirteen"
	(Soil (PlantSoil acidic))
	(Color (PlantColor white | pink | red))
	(LifeType (PLifeType perennial))
	(Root (PlantRoot root))
=>
	(assert (Name (PlantName Camellia))))

(defrule FlowerLily "Rule Fourteen"
	(Season (PlantSeason spring))
	(Root (PlantRoot bulb))
	(Perfume (PlantPerfume true))
	(LifeType (PLifeType perennial))
=>
	(assert (Name (PlantName Lily))))
	
(defrule FlowerBegonia "Rule Fifteen"
	(Height (PlantHeight small))
	(LifeType (PLifeType annual))
	(Soil (PlantSoil rich | loose | fertile))
=>
	(assert (Name (PlantName Begonia))))
	
(defrule FlowerAzalea "Rule Sixteen"
	(Season (PlantSeason winter))
	(Color (PlantColor white | pink | red))
=>
	(assert (Name (PlantName Azalea))))

(defrule FlowerAnemone2 "Rule Seventeen"
	(LifeType (PLifeType perennial))
	(Root (PlantRoot root))
	(Color (PlantColor white | red | blue | yellow))
=>
	(assert (Name (PlantName Anemone))))

(defrule FlowerRose "Rule Eighteen"
	(LifeType (PLifeType perennial))
	(Root (PlantRoot root))
	(Color (PlantColor white | pink | red | yellow))
	(Perfume (PlantPerfume true))
	(Soil (PlantSoil well-drained))
=>
	(assert (Name (PlantName Rose))))
	
(defrule FlowerWhiteLily "Rule Nineteen"
	(Name (PlantName Lily))
	(Perfume (PlantPerfume true))
=>
	(assert (Name (PlantName White-Lily))))

;End CLIPS