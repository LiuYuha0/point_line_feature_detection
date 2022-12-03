function [result, rec] = RectImprove(rec, angles)
% 
% Try some rectangles variations to improve NFA value. Only if the rectangle is not meaningful (i.e., log_nfa <= log_eps).
% @return      The new NFA value.
% 
% rec [y1, x1, y2, x2, width, y, x, theta, dy, dx, prec, p]
delta = 0.5;
LOG_EPS = 0;
delta_2 = delta / 2;

log_nfa = RectNFA(rec, angles);

%Good rectangle
if(log_nfa > 0)
    result = log_nfa;
    return;
end

%Try to improve
%Finer precision
r = rec;
for n = 1 : 5
    r(12) = r(12) / 2;
    r(11) = r(11) * pi;
    log_nfa_new = RecNFA(r, angles);
    if log_nfa_new > log_nfa
        log_nfa = log_nfa_new;
        rec = r;
    end
end
if(log_nfa > 0)
    result = log_nfa;
    return;
end

%try to reduce width
r = rec;
for n = 1 : 5
    if (r(5) - delta) >= 0.5
        r(5) = r(5) - delta;
        log_nfa_new = RectNFA(r, angles);
        if log_nfa_new > log_nfa
            log_nfa = log_nfa_new;
            rec = r;
        end
    end
end
if(log_nfa > 0)
    result = log_nfa;
    return;
end

%try to reduce on side of rectangle
r = rec;
for n = 1 : 5
    if (r(5) - delta ) >= 0.5
        r(2) = r(2) + -r(9) * delta_2;
        r(1) = r(1) + r(10) * delta_2;
        r(4) = r(4) + -r(9) * delta_2;
        r(3) = r(3) + r(10) * delta_2;
        r(5) = r(5) - delta;
        log_nfa_new = RectNFA(r, angles);
        if log_nfa_new > log_nfa
            log_nfa = log_nfa_new;
            rec = r;
        end
    end
end
if(log_nfa > 0)
    result = log_nfa;
    return;
end

% Try to reduce other side of rectangle
r = rec;
for n = 1 : 5
    if (r(5) - delta ) >= 0.5
        r(2) = r(2) + -r(9) * delta_2;
        r(1) = r(1) + r(10) * delta_2;
        r(4) = r(4) + -r(9) * delta_2;
        r(3) = r(3) + r(10) * delta_2;
        r(5) = r(5) - delta;
        log_nfa_new = RectNFA(r, angles);
        if log_nfa_new > log_nfa
            log_nfa = log_nfa_new;
            rec = r;
        end
    end
end
if(log_nfa > 0)
    result = log_nfa;
    return;
end        
        
%try finer precision
r = rec;
for n = 1 : 5
    if (r(5) - delta) >= 0.5
        r(12) = r(12) / 2;
        r(11) = r(11) * pi;
        log_nfa_new = RectNFA(r, angles);
        if log_nfa_new > log_nfa
            log_nfa = log_nfa_new;
            rec = r;
        end
    end
end
result  = log_nfa;

        
        
        
        
    