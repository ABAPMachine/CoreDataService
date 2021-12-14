@AbapCatalog.sqlViewName: 'ZSQL_DEMO1'
@EndUserText.label: 'Core Dara Service'
define view ZCDS_Example
  with parameters
    p_material : matnr
  as select from mara as a
    inner join   makt as b on a.matnr = b.matnr
{

  key a.matnr as material,
      b.maktx as description

}
where
  a.matnr = :p_material
