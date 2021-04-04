% binary to decimal
% b1 = [0 1 1 0];
% d1 = bi2de(b1);
% s = b1(1:3);
% b2 = [1 2 1 2];
% con = [];
x = randi([0 1],1,26);
x1 = bi2de(x(1:13));
x2 = bi2de(x(14:26));

t = {};
for i=1:20
    x = randi([0 1],1,26);
    t{i} = x;
end

for i=1:20
    fprintf("now: %d \n",i);
    t1 = bi2de(t{i}(1:13));
    t2 = bi2de(t{i}(14:26));
    fprintf("t1: %d \n",t1);
    fprintf("t2: %d \n",t2);
end

outss = getNewGene(3);
