function [valueVec]=convGene2Value(gene)
 arguments
     gene
 end
t1 = bi2de(gene(1:13));
t2 = bi2de(gene(14:26));
 
 valueVec = [t1,t2];
 return
 