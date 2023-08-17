clc
close all

% Sample Data
n = 5;
x = [5, 10, 15, 20, 25];
y = [25, 100, 225, 400, 625];
x = x.'
y = y.'


% Data to be evaluated
xe = [7, 19, 21];
% xe = xe.'

% Calling the function for output
ne = length(xe);
PZe = [0, 0, 0];

% for i = 1:ne
%     PZe(i) = lag(x, y, xe(i));
%     disp(PZe(i));
% end
PZe(1) = lag(x, y, xe(1));
disp(PZe(1));

plot(x, y)

% Definition of the Function for deriving the Lagrange Function
% It takes the sample data as input and returns the corresponding derived
% function as output
function b = lag(X, Y, XE)

N = length(X);
b = 0;
Vn = ones(N);
Vd = ones(N);
V = ones(N);

for i = 1:N
    for j = 1:N
        if(j ~= i)
                Vn(i) = Vn(i) * (XE - X(j));
                Vd(i) = Vd(i) * (X(j) - X(i));
                V(i) = Vn(i)/Vd(i);
                b = b + (Y(i)*V(i));
        else
            continue
        end
    end
end
end

% for i = 1:NE
%     
%     pz(i) = pzz(XE(i))
% end
% end
% 
% % % Definition of the Function that takes input from the user and returns
% % % the output from the derived Lagrange Function
% % 
% %     function result(pz)
% %    
% % 
% %     end