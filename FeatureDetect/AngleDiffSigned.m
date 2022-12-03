function diff = AngleDiffSigned(a, b)
diff = a - b;
while (diff <= -pi)
    diff = diff + 2 * pi;
end
while (diff > pi)
    diff = diff - 2 * pi;
end

    