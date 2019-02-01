function f = parse_func_seq(str)
    ch=strsplit(str,'.');
    disp(ch);
    f=uint8(str2double(ch));
    disp(f);
end