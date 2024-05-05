% The derivative of CR energy is symmetic between
% lambda_1, lambda_2 and lambda_3

dCR_dLambda_handle = @(paras, lambda)...
    (2.*paras(1) ./ ( (paras(2)+paras(3)).*(paras(2)+paras(3)) ))...
    .* ( paras(2) .* lambda.^(paras(2)-1) + paras(3) .* lambda.^(-paras(3)-1) )...
    .* ( lambda.^paras(2) - lambda.^(-paras(3)) );