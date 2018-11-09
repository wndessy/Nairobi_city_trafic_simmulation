% Junction W 
function [png] = cycle_controller_pn_pdf()
  png=cycle_controller()

 
   %Cycle Controllers
    function [png] = cycle_controller()
    png.PN_name ='Petrint model for Cycle controllers ';
    png.set_of_Ps = {'pCycleBuffer'};
    png.set_of_Ts = {'tCycle1','tCycle2','tCycle3','tCycle4','tGenerator'};
                  c1={'pCycleBuffer','tCycle1',1,'tCycle1','pWA1',1,'tCycle1','pYC1',1};
                  c2={'pCycleBuffer','tCycle2',1,'tCycle2','pZC1',1,'tCycle2','pXB1',1};
                  c3={'pCycleBuffer','tCycle3',1,'tCycle3','pWD1',1,'tCycle3','pYB1',1};
                  c4={'pCycleBuffer','tCycle4',1,'tCycle4','pZD1',1,'tCycle4','pXA1',1};
                  g={'tGenerator','pCycleBuffer',1}
                  
     Conn_arcs=[wx,xw,xy,yx,yz,zy,zw,wz]
     png.set_of_As = Conn_arcs
     
    
    
    
    
    
    
    
    
    
    