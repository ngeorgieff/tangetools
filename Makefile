CMD = blink histogram upsidedown tracefile timestamp rand rrm goodpasswd

all: blink/blink.1 goodpasswd/goodpasswd.1 histogram/histogram.1 rand/rand.1 rrm/rrm.1 timestamp/timestamp.1 tracefile/tracefile.1 upsidedown/upsidedown.1 wssh/wssh.1

%.1: %
	pod2man $< > $@


install:
	mkdir -p /usr/local/bin
	parallel eval ln -sf `pwd`/*/{} /usr/local/bin/{} ::: blink reniced em field forever neno rn stdout tracefile w4it-for-port-open upsidedown histogram goodpasswd mtrr not summer timestamp transpose wssh aptsearch rand rrm
	mkdir -p /usr/local/share/man/man1
	parallel ln -sf `pwd`/{} /usr/local/share/man/man1/{/} ::: */*.1
