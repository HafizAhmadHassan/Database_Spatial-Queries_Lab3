--Q1
Select ST_ASEWKT(F.geom)
from psycho_db.comune_geo as d, psycho_db.fiume_geo f
where d.cod_pro = 23  and not ST_Disjoint(d.geom,f.geom)


--Q2 from 
Select * from psycho_db.comune_geo

Select d.gid,d.nome_com
from psycho_db.comune_geo as d, psycho_db.fiume_geo f
where d.gid = f.gid and not ST_Disjoint(d.geom,F.geom)


--Q3


Select d.nome_com
from psycho_db.comune_geo as d,psycho_db.comune_geo as cc
where cc.nome_com = 'Vicenza' 
and ST_Touches(d.geom,cc.geom)
group by d.nome_com

--Q4


Select * from psycho_db.Lago_geo

Select d.nome_com
from psycho_db.comune_geo as d
where d.nome_com in (
Select d2.nome_com 
from psycho_db.lago_geo as d1 ,psycho_db.comune_geo as d2
where d1.nome = 'LAGO DI GARDA' and not ST_disjoint(d1.geom,d2.geom)
)

