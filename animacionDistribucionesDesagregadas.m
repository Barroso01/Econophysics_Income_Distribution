function animacionDistribucionesDesagregadas(agentes_t,a)
    if a == 1
        for tt = 1:size(agentes_t,2)
            agentes = agentes_t(:,tt);
            C = agentes([agentes.clase] == 'C');
            for ii = 1:length(C)
                y_C(ii) = length(C([C.flujoDinero] >= C(ii).flujoDinero))/length(C);
            end
            E = agentes([agentes.clase] == 'E');
            for ii = 1:length(E)
                y_E(ii) = length(E([E.flujoDinero] >= E(ii).flujoDinero))/length(E);
            end
            plot([C.flujoDinero],y_C,'.',[E.flujoDinero],y_E,'.')
            legend({'Capitalistas','Empleados'},"Location","best")
            xlabel('m')
            ylabel('P(M>=m)')
            set(gca,'xscale','log')
            set(gca,'yscale','log')
            pause(1/60)
        end
    elseif a == 2
        for tt = 1:size(agentes_t,2)
            agentes = agentes_t(:,tt);
            C = agentes([agentes.clase] == 'C');
            for ii = 1:length(C)
                y_C(ii) = length(C([C.m] >= C(ii).m))/length(C);
            end
            E = agentes([agentes.clase] == 'E');
            for ii = 1:length(E)
                y_E(ii) = length(E([E.m] >= E(ii).m))/length(E);
            end
            plot([C.m],y_C,'.',[E.m],y_E,'.')
            legend({'Capitalistas','Empleados'},"Location","best")
            xlabel('m')
            ylabel('P(M>=m)')
            set(gca,'xscale','log')
            set(gca,'yscale','log')
            pause(1/60)
        end
    end
end