cat sfCat = new cat();
sfCat.name = 'ginger';
sfCat.color = 'orange';
system.debug('sf cat ' + sfCat );

cat batch12cat= new cat('koi','white');
system.debug('batch12 cat ' + batch12cat);

cat batch12cat2= new cat('simba','brown');
system.debug('batch12 cat ' + batch12cat2);


system.debug('number of cat =>  ' + cat.countCat);