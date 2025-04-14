function [ RMSE, MSE, MAE, MAPE, SSE ] = errorvalues( ytest, y_fore )
% Scale dependent: MAE, RMSE MAE 
error=ytest-y_fore;
SSE=sum(error.^2);
MSE=mean(error.^2);
RMSE=sqrt(MSE);
MAE=mean(abs(error));

% Percentage error: MAPE 
percentage_err=error./ytest*100;
MAPE=mean(abs(percentage_err));
end



