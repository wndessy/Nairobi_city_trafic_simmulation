
function [png] = junction_Y_pn_pdf()
png=junction_Y()

%Junction Y
function [png] = junction_Y()
    png.PN_name ='Petrint model for junction Y ';
    png.set_of_Ps = {'pYA1','pYA2','pYB1','pYB2','pYC1','pYC2','pYD1','pYD2'};
    png.set_of_Ts = {'tYA','tYB','tYC','tYD'};
    
    TA_arcs={'pYA1','tYA',1,'tYA','pYA2',3,'tYA','pYB2',10,'tYA','pYC2',80,'tYA','pYD2',7 }; 
    TB_arcs={'pYB1','tYB',1,'tYB','pYA2',80,'tYB','pYB2',3,'tYB','pYC2',7,'tYB','pYD2',10}; 
    TC_arcs={'pYC1','tYC',1,'tYC','pYA2',80, 'tYC','pYB2',7,'tYC','pYC2',3,'tYC','pYD2',10}; 
    TD_arcs={'pYD1','tYD',1, 'tYD','pYA2',7,'tYD','pYB2',10,'tYD','pYC2',80,'tYD','pYD2',3}; 
    png.set_of_As = [TA_arcs, TB_arcs,TC_arcs,TD_arcs]