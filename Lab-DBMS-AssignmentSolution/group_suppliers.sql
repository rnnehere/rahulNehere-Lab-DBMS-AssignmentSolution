CREATE PROCEDURE `group_suppliers` ()
BEGIN
select supplier.SUPP_ID, supplier.SUPP_NAME, rating.rat_ratstars, 
case 
	when rating.rat_ratstars > 4 then 'genuine supplier'
    when rating.rat_ratstars > 2 then 'average supplier'
    else 'supplier should not be considered'
end 
	as verdict from rating inner join supplier on supplier.SUPP_ID = rating.SUPP_ID;
end
