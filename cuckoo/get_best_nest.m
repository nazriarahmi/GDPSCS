%% Find the current best nest
function [fmin,best,nest,fitness]=get_best_nest(nest,newnest,gbest_conf_local,conf_PSO)
% Evaluating all new solutions
for j=1:size(nest,1),
    %fnew=fobj(newnest(j,:));
    if conf_PSO <= gbest_conf_local(j),
       gbest_conf_local(j) = conf_PSO;
       nest(j,:)=newnest(j,:);
    end
end
% Find the current best
[fmin,K]=min(gbest_conf_local) ;
best=nest(K,:);