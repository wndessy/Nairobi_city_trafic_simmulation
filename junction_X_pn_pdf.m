function [png] = junction_X_pn_pdf()
png=junction_X()

%%Junction X
function [png] = junction_X()
    png.PN_name ='Petrint model for junction X ';
    png.set_of_Ps = {'pXA1','pXA2','pXB1','pXB2','pXC1','pXC2','pXD1','pXD2'};
    png.set_of_Ts = {'tXA','tXB','tXC','tXD'};
    
    TA_arcs={'pXA1','tXA',1,'tXA','pXA2',3,'tXA','pXB2',7,'tXA','pXC2',10,'tXA','pXD2',80}; 
    TB_arcs={'pXB1','tXB',1,'tXB','pXA2',7,'tXB','pXB2',3,'tXB','pXC2',10,'tXB','pXD2',80}; 
    TC_arcs={'pXC1','tXC',1,'tXC','pXA2',10, 'tXC','pXB2',80,'tXC','pXC2',3,'tXC','pXD2',7}; 
    TD_arcs={'pXD1','tXD',1, 'tXD','pXA2',10,'tXD','pXB2',80,'tXD','pXC2',7,'tXD','pXD2',3}; 
    png.set_of_As = [TA_arcs, TB_arcs,TC_arcs,TD_arcs]