;define characteristics to be used in rules:
(deftemplate Shape (slot CarShape))
(deftemplate Color (slot CarColor))
(deftemplate Name (slot CarName))

(defrule azeeza
	(Shape (CarShape tall | square))
        (Color (CarColor red))
=>
	(assert (Name (CarName azeeza)))
	(printout t "The Car might be azeeza."  crlf))

(defrule coccoid
	(Shape (CarShape big | tight))
	(Color (CarColor blue))
=>
	(assert (Name (CarName leela)))
	(printout t "The Car might be leela" crlf))

;constructs dealing with the dialog with the user
;(defrule welcome
;=>
;	(printout t "Welcome. " crlf crlf))
;
;(defrule enter_Shape
;=>
;	(printout t "Please enter the shape (tall, square, big, or tight)" crlf)
;	(bind ?the_CarShape (read))
;	(assert (Shape (CarShape ?the_CarShape))))

;(defrule enter_Color
;	=>
;	(printout t "Please enter the Color (red or blue)" crlf)
;	(bind ?MyColor (read))
;	(assert (Color (CarColor ?MyColor))))
;End CLIPS