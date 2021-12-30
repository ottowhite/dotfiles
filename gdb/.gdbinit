layout src

define n
  next
  refresh
end

define c
  continue
  refresh
end

define rp
  file kernel.o
  shell killall pintos
  shell pintos --gdb -- run alarm-single &
  shell sleep 1
  debugpintos
  c
  refresh
end
