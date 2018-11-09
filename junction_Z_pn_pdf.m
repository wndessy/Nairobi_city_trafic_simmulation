function [png] = junction_Z_pn_pdf()
png=junction_Z()


%% Junction Z
function [png] = junction_Z()
    png.PN_name ='Petrint model for junction Z ';
    png.set_of_Ps = {'pZA1','pZA2','pZB1','pZB2','pZC1','pZC2','pZD1','pZD2'};
    png.set_of_Ts = {'tZA','tZB','tZC','tZD'};
    
    TA_arcs={'pZA1','tZA',1,'tZA','pZA2',3,'tZA','pZB2',7,'tZA','pZC2',10,'tZA','pZD2',80 }; 
    TB_arcs={'pZB1','tZB',1,'tZB','pZA2',7,'tZB','pZB2',3,'tZB','pZC2',10,'tZB','pZD2',80}; 
    TC_arcs={'pZC1','tZC',1,'tZC','pZA2',10, 'tZC','pZB2',80,'tZC','pZC2',3,'tZC','pZD2',7}; 
    TD_arcs={'pZD1','tZD',1, 'tZD','pZA2',10,'tZD','pZB2',80,'tZD','pZC2',7,'tZD','pZD2',3}; 
    png.set_of_As = [TA_arcs, TB_arcs,TC_arcs,TD_arcs]