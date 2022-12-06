Candidates.companyName = 'Softinnovas';
system.debug('cn=> ' + Candidates.companyName );
system.debug('start count candidates =>  ' + Candidates.countCandidates );

Candidates c1 = new Candidates();
Candidates.countCandidates++;
c1.name ='Jerry';
c1.gender = 'male';
c1.printCandidates();

system.debug('___');

Candidates c2 = new Candidates();
Candidates.countCandidates++;
c2.name ='Ela';
c2.gender = 'female';
c2.printCandidates();

system.debug('___');

Candidates c3 = new Candidates();
Candidates.countCandidates++;
c3.name ='Marry';
c3.gender = 'female';
c3.printCandidates();

system.debug('___');

Candidates.companyName = 'Vandelay Industries';
system.debug('after cn => ' + Candidates.companyName);
system.debug('start count candidates =>  ' + Candidates.countCandidates );
Candidates c4 = new Candidates();
Candidates.countCandidates++;
c4.name = 'George';
c4.gender = 'Male';
c4.printCandidates();

system.debug('after c3 cn => ' + Candidates.companyName);

system.debug('----');
c2.printCandidates();
system.debug('----');
c1.printCandidates();





