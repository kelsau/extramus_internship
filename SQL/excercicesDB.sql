--Q1

SELECT ANNEE, FORMAT(NUMERO_TICKET, '00000') AS "N°"
FROM vendre
WHERE ID_ARTICLE=500

--Q2

SELECT ANNEE, NUMERO_TICKET, DATE_VENTE 
FROM ticket 
WHERE DATE_VENTE = '2017-15-01';

--Q3

SELECT ANNEE, NUMERO_TICKET
FROM ticket
WHERE DATE_VENTE BETWEEN '15/01/2017' and '17/01/2017'

--Q4

SELECT distinct ID_ARTICLE as Code,
(SELECT NOM_ARTICLE FROM ARTICLE WHERE ID_ARTICLE = v.ID_ARTICLE) as Nom 
FROM vendre AS v
WHERE quantite >= 95

--Q5

SELECT ANNEE, NUMERO_TICKET, DATE_VENTE from ticket 
WHERE DATE_VENTE BETWEEN '01/03/2017' and '31/03/2017'

--Q6

SELECT * FROM ticket
WHERE DATE_VENTE BETWEEN '01/04/2017' and '30/06/2017'

--Q7

SELECT * FROM ticket
WHERE ANNEE = 2017
and MONTH(date_vente) in (3,7)

--Q8

SELECT ID_ARTICLE as code, NOM_ARTICLE as Libellé, NOM_COULEUR
FROM article
left join COULEUR on article.ID_Couleur = Couleur.ID_COULEUR 
ORDER by NOM_COULEUR

--Q9

SELECT ID_ARTICLE, NOM_ARTICLE from article
WHERE ID_Couleur is null 

--Q10

SELECT ID_ARTICLE as Code, NOM_ARTICLE as Libellé, NOM_COULEUR, NOM_TYPE
FROM ARTICLE as A
join COULEUR as C C.ID_COULEUR =  A.ID_COULEUR
join TYPEBIERE as T on T.ID_COULEUR = A.ID_TYPE
WHERE A.ID_COULEUR = (select ID_COULEUR from ARTICLE where ID_ARTICLE +142)
and A.ID_TYPE = (select ID_TYPE from where ID_ARTICLE = 142)

--Q11

select ANNEE, NUMERO_TICKET,
sum(QUANTITE) as Quantité from vendre
ordre by sum(QUANTITE) desc

--Q12

select ANNEE, NUMERO_TICKET,
sum(QUANTITE) as Quantite from vendre
group by ANNEE, NUMERO_TICKET
having sum(QUANTITE) < 50
order by Quantité asc

--Q13

select ANNEE, NUMERO_TICKET,
sum(QUANTITE) as Quantité from vendre
group by ANNEE, NUMERO_TICKET
having sum(QUANTITE) > 500
order by Quantité DESC

--Q14

SELECT ANNEE, NUMERO_TICKET,
sum(QUANTITE) as Quantité from vendre
where QUANTITE <= 50
group by ANNEE, NUMERO_TICKET
having sum(QUANTITE) > 500
order by Quantité DESC

--Q15

select ID_ARTICLE, NOM_ARTICLE, VOLUME, TITRAGE from article
join TYPEBIERE as T on T.ID_TYPE = Article.ID_TYPE
WHERE NOM_TYPE = 'Trappiste'

--Q16

SELECT ID_MARQUE, NOM_MARQUE, NOM_CONTINENT FROM Marque as Marque
join Pays as P on p.ID_PAYS = M.ID_PAYS
join CONTINENT as c on c.ID_CONTINENT = P.ID_CONTINENT
WHERE NOM_CONTINENT = 'Afrique'

--Q17

SELECT ID_ARTICLE, NOM_ARTICLE, VOLUME
FROM ARTICLE as A
join Marque as M on a.ID_MARQUE = M.ID_MARQUE
join Pays as P on p.ID_PAYS = M.ID_MARQUE
join ID_CONTINENT as C on c.ID_CONTINENT = P.ID_CONTINENT
WHERE NOM_CONTINENT = 'Afrique'

--Q18
select ANNEE, NUMERO_TICKET,
sum(Quantité * PRIX_VENTE * 1.29) AS PRIX 
from VENDRE
group by ANNEE, NUMERO_TICKET
ORDER BY 'PRIX' DESC


--Q19

SELECT ANNEE,
sum(quantité * PRIX_VENTE) as 'CA HT'
FROM VENDRE
group by ANNEE
ORDER by ANNEE

--Q20

SELECT V.ID_ARTICLE, NOM_ARTICLE, sum(quantité) as 'Qté 2017'
from VENDRE as v
join Article as A on a.ID_ARTICLE = v.ID_ARTICLE
WHERE ANNEE = 2017
group by V.ID_ARTICLE, NOM_ARTICLE

--Q21

select distinct ANNEE, NUMERO_TICKET from VENDRE
WHERE ID_ARTICLE IN (SELECT ID_ARTICLE FROM VENDRE
WHERE ANNEE = 2017 and NUMERO_TICKET = 5123)

--Q22

SELECT distinct  ANNEE, NUMERO_TICKET FROM VENDRE
WHERE ID_ARTICLE IN (select ID_ARTICLE from VENDRE
where ANNEE = 2017 and NUMERO_TICKET = 5123)

--Q23
select (select NOM_TYPE from TYPEBIERE WHERE ID_TYPE = A.ID_TYPE)? AS TYPE
ID_ARTICLE,
NOM_ARTICLE,
(select sum(quantite)
from VENDRE
WHERE ANNEE = 2017 and ID_ARTICLE = A.ID_ARTICLE) as Quantité
from article as a
where (
    select sum(quantite)
    from VENDRE
    where ANNEE = 2017 and ID_ARTICLe = A.ID_ARTICLE) = (select distinct max(sum)(quantite)) over()
    from VENDRE as V
    WHERE ANNEE = 2017
    and (select ID_TYPE FROM ARTICLE WHERE ID_ARTICLE = V.ID_ARTICLE)
    group by ID_ARTICLE)
    order by quantité desc

    --Q24

    SELECT ID_ARTICLE, NOM_ARTICLE, NOM_ARTICLE, VOLUME from article as A
    where not exists (select * from VENDRE
    WHERE ID_ARTICLE = A.ID_ARTICLE and annee = 2014)
    and not exists (select * from VENDRE) where ID_ARTICLE = A.ID_ARTICLE and ANNEE = 2015)

    select ID_ARTICLE, NOM_ARTICLE, VOLUME from article as a
    where ID_ARTICLE = A.ID_ARTICLE 
 and not exists (select * form VENDRE WHERE ID_ARTICLE = A.ID_ARTICLE
 and annee in (2014,2015))

    --Q25

select ID_ARTICLE, NOM_ARTICLE, VOLUME from as a
WHERE not exists (select * from VENDRE where  ID_ARTICLE = A.ID_ARTICLE
and annee = 2014)
and exists (select * from VENDRE
where ID_ARTICLE = A.ID_ARTICLE
and annee = 2015)
order by ID_ARTICLE