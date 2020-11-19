use Chinook_dw;

select Country, City, YearId, sum(LineTotal)
from fact_sales natural join dim_customer natural join dim_time
group by Country, City, YearId;

select ArtistName, Country, YearId, sum(quantity)
from fact_sales natural join dim_track natural join dim_customer natural join dim_time
group by ArtistName, Country, YearId;
