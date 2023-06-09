% HPP-GAS Model using Margolus Neighborhood
% by Javier Ameghino jameghin@dc.uba.ar
% 08/22/2000

[top]
components : Collisions

[Collisions]
type : cell
dim : (40,40,2)
delay : transport
defaultDelayTime  : 100
border : wrapped
neighbors : collisions(-1,-1,0) collisions(-1,0,0) collisions(-1,1,0)
neighbors : collisions(0,-1,0)  collisions(0,0,0)  collisions(0,1,0) collisions(0,0,1)
neighbors : collisions(1,-1,0)  collisions(1,0,0)  collisions(1,1,0) 
initialvalue : 0
initialCellsValue : Colli.val
localtransition : calculus

[calculus]
rule : { (1,1,0) } 100 { cellpos(2)=0 and ((even(cellpos(0)) and even(cellpos(1)) and (0,0,1)=0) or (odd(cellpos(0)) and odd(cellpos(1)) and (0,0,1)=1)) }
rule : { (1,-1,0) } 100 { cellpos(2)=0 and ((even(cellpos(0)) and odd(cellpos(1)) and (0,0,1)=0) or (odd(cellpos(0)) and even(cellpos(1)) and (0,0,1)=1)) }
rule : { (-1,1,0) } 100 { cellpos(2)=0 and ((odd(cellpos(0)) and even(cellpos(1)) and (0,0,1)=0) or (even(cellpos(0)) and odd(cellpos(1)) and (0,0,1)=1)) }
rule : { (-1,-1,0) } 100 { cellpos(2)=0 and ((odd(cellpos(0)) and odd(cellpos(1)) and (0,0,1)=0) or (even(cellpos(0)) and even(cellpos(1)) and (0,0,1)=1)) }

rule : 1 100 { cellpos(2)=1 and (0,0,0)=0 } 
rule : 0 100 { cellpos(2)=1 and (0,0,0)=1 } 
rule : { (0,0,0) } 100 { t }
