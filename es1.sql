-- ES 1 Visualizzazione Base Scrivi una query per visualizzare tutte le informazioni di tutti i treni.
select * from train;

-- ES2 Selezione per Agente Scrivi una query per elencare tutti i treni gestiti dall'agenzia 'Cremin LLC'.
select *
from train 
where agency like "Cremin LLC";

-- ES3 Stazioni Particolari Scrivi una query per elencare i treni che partono da 'South Sean' e arrivano a 'Bergnaumstad'.
select *
from train 
where start_station like "South Sean" and end_station like "Bergnaumstad";

-- ES4 Codici Unici dei Treni Scrivi una query per selezionare i treni con il codice che inizia con 'train-9'.
select *
from train 
where code like "train-9%";

-- ES5 Treni Puntuali Scrivi una query per trovare tutti i treni che sono arrivati in tempo (in_time = 1).
select * 
from train 
where in_time = true;

-- ES6 Treni con Molti Vagoni Scrivi una query per trovare i treni che hanno più di 15 vagoni.
select *
from train 
where carriages_count > 15;

-- ES7. Treni per Specifiche Stazioni di Partenza e Arrivo Scrivi una query per elencare i treni che partono da 'East Wendychester' e arrivano a 'Lake Dustyville'.
select *
from train 
where start_station like "East Wendychester" and end_station like "Lake Dustyville";

-- ES8. Treni Ordinati per Orario di Partenza Scrivi una query per elencare i treni ordinati per start_time in ordine crescente.
select *
from train 
order by start_time;

-- ES9. Treni con Numero Specifico di Carrozze Scrivi una query per trovare i treni che hanno esattamente 10 vagoni.
select *
from train 
where carriages_count = 10;

-- ES10. Filtro per Più Agenzie Scrivi una query per elencare i treni gestiti sia da 'Lang and Sons' che da 'Kling-Nienow'.
select *
from train 
where agency like "Lang and Sons" or agency like "Kling-Nienow";

-- ES11. Treni Non Cancellati con Pochi Vagoni mScrivi una query per trovare i treni non cancellati (deleted = 0) con meno di 7 vagoni.
select *
from train 
where deleted = false and carriages_count < 7;

-- ES BONUS Intervallo di Tempo di Viaggio Scrivi una query per trovare i treni il cui tempo di viaggio (differenza tra start_time e end_time) supera le 72 ore.
SELECT *
FROM train
WHERE TIMESTAMPDIFF(HOUR, start_time, end_time) > 72;

--ES BONUS Ricerca per Fascia Oraria Scrivi una query per trovare i treni che partono tra le 22:00 e le 04:00.
select id, start_time 
from train 
where (hour(start_time) >= '22:00:00' OR hour(start_time) <= '04:00:00');