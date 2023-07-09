function plotEntropia(agentes_t,logaritmico)
    global N
    n_iteraciones = size(agentes_t,2);
    S = zeros(1,n_iteraciones);
    clases = ['C' 'U' 'E'];
    for ii = 1:n_iteraciones
        suma = 0;
        agentes_t_ii = agentes_t(:,ii);
        for jj = clases
            n_agentes = length(agentes_t_ii([agentes_t_ii.clase] == jj));
            if n_agentes ~= 0
                suma = suma + n_agentes * log(n_agentes);
            end
        end

        S(ii) = N * log(N) - suma;    
    end

    plot(S);
    title('Evolución de la entropía en el tiempo')
    xlabel('Tiempo (t)')
    ylabel('Entropía (S)')
    if nargin == 2 && logaritmico == true
        set(gca,'YScale','log') % Reescalamiento logarítmico
    end
end