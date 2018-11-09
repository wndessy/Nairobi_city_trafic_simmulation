
function [png] = junction_W_pn_pdf()
png=junction_w();

%%For Junction W
function [png] = junction_w()
    png.PN_name ='Petrint model for junction W ';
    png.set_of_Ps = {'pWA1','pWA2','pWB1','pWB2','pWC1','pWC2','pWD1','pWD2'};
    png.set_of_Ts = {'tWA','tWB','tWC','tWD'};
    
    TA_arcs={'pWA1','tWA',1,'tWA','pWA2',3,'tWA','pWB2',10,'tWA','pWC2',80,'tWA','pWD2',7 }; 
    TB_arcs={'pWB1','tWB',1,'tWB','pWA2',80,'tWB','pWB2',3,'tWB','pWC2',7,'tWB','pWD2',10}; 
    TC_arcs={'pWC1','tWC',1,'tWC','pWA2',80, 'tWC','pWB2',7,'tWC','pWC2',3,'tWC','pWD2',10}; 
    TD_arcs={'pWD1','tWD',1, 'tWD','pWA2',7,'tWD','pWB2',80,'tWD','pWC2',10,'tWD','pWD2',3}; 
    png.set_of_As = [TA_arcs, TB_arcs,TC_arcs,TD_arcs]
