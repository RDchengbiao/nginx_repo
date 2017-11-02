
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/home/work/local/nginx/sbin/nginx -t

	kill -USR2 `cat /home/work/local/nginx/logs/nginx.pid`
	sleep 1
	test -f /home/work/local/nginx/logs/nginx.pid.oldbin

	kill -QUIT `cat /home/work/local/nginx/logs/nginx.pid.oldbin`
