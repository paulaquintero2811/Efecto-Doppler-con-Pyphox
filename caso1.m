clc;
clearvars -except Caso1_FrequencyAndSpeed
close all;

%% Eliminar filas con datos faltantes (NaN)
datos = rmmissing(Caso1_FrequencyAndSpeed);

%% Extraer las variables de la tabla
tiempo = datos.Tiempo;
frecuencia = datos.Frecuencia;
velocidad = datos.Velocidad;

%% Crear una figura con dos gráficas
figure('Name','Frecuencia y Velocidad vs Tiempo','NumberTitle','off');

%% Frecuencia vs Tiempo
subplot(2,1,1)
plot(tiempo, frecuencia, 'b-', 'LineWidth', 1.8)
grid on
box on
xlabel('Tiempo (s)','FontSize',12)
ylabel('Frecuencia (Hz)','FontSize',12)
title('Frecuencia vs Tiempo','FontSize',14)
xlim([min(tiempo) max(tiempo)])

%% Velocidad vs Tiempo
subplot(2,1,2)
plot(tiempo, velocidad, 'r-', 'LineWidth', 1.8)
grid on
box on
xlabel('Tiempo (s)','FontSize',12)
ylabel('Velocidad (m/s)','FontSize',12)
title('Velocidad vs Tiempo','FontSize',14)
xlim([min(tiempo) max(tiempo)])

