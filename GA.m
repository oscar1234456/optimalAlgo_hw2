% x = linspace(-1.5, 4, 50);	% 在 x 軸 [-1.5,4] 之間取 50 點  
% y = linspace(-3, 3, 50);	% 在 y 軸 [-3,3] 之間取 50 點  
% [xx, yy] = meshgrid(x, y);	% xx 和 yy 都是 50x50 的矩陣  
% zz = sin(xx+yy)+((xx-yy).^2)-1.5.*xx+2.5.*yy+1;	% 計算函數值，zz 也是 50x50 的矩陣
% mesh(xx, yy, zz);		% 畫出立體網狀圖 
% % colormap(zeros(1,3));		% 以黑色呈現   

pop_size = 20;
pc = 0.25;
pm = 0.01;
fitnessRec = zeros(1,20);
thisGene = getNewGene(pop_size);
for i=1:length(thisGene)
    fprintf("now: %d \n",i);
    vec = convGene2Value(thisGene{i});
    fprintf("X: %4.3f \n",roundn(vec(1), -3));
    fprintf("Y: %4.3f \n",roundn(vec(2), -3));
    fprintf("fit: %5.4f \n",roundn(fitness(vec(1), vec(2)), -4));
    fitnessRec(i) = roundn(fitness(vec(1), vec(2)), -4);
end
[newGene, pickRecord] = selectionProcess(thisGene);
for i=1:length(newGene)
    fprintf("now: %d \n",i);
    vec = convGene2Value(newGene{i});
    fprintf("X: %4.3f \n",roundn(vec(1), -3));
    fprintf("Y: %4.3f \n",roundn(vec(2), -3));
    fprintf("fit: %5.4f \n",roundn(fitness(vec(1), vec(2)), -4));
    fitnessRec(i) = roundn(fitness(vec(1), vec(2)), -4);
end

