classdef Agente
    properties
        id % Identificador del agente
        m % Dinero del agente
        e = 0; % Empleador
        e_x = [];% Empleados
        flujoDinero = 0;
    end
    properties (Dependent)
        clase % Clase (U = desempleado, E = empleados, C = capitalistas)
    end
    methods
        function obj = Agente(id,dineroInicial) % Constructor de la clase
            obj.id = id;
            obj.m = dineroInicial;
        end
        function clase = get.clase(obj) % Calculo de la clase
            global agentes
            if length(agentes([agentes.e] == obj.id)) ~= 0
                clase = 'C';
            elseif obj.e == 0
                clase = 'U';
            else
                clase = 'E';
            end 
        end
    end
end
