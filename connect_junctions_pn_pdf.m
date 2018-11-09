   function [png] = connect_junctions_pn_pdf()
      png=connect_junctions();
  
%%connector Transitions
   function [png] = connect_junctions()
    png.PN_name ='Petrint model for Junction Connectors Z ';
    png.set_of_Ps = {};
    png.set_of_Ts = {'tXW','tWX','tXY','tYX','tYZ','tZY'};
        wx={'pWB2','tWX',1,'tWX','pXD1',1};
        xw={'pXD2','tXW',1,'tXW','pXB1',1};
        xy={'pXC2','tXY',1,'tXY','pYA1',1};
        yx={'pYA2','tYX',1,'tYX','pXC1',1};
        yz={'pYD2','tYZ',1,'tYZ','pZB1',1};
        zy={'pZB2','tZY',1,'tZY','pYD1',1};
        zw={'pZA2','tZW',1,'tZW','pWC1',1};
        wz={'pWC2','tWZ',1,'tWZ','pZA1',1};
     Conn_arcs=[wx,xw,xy,yx,yz,zy,zw,wz]
     png.set_of_As = Conn_arcs