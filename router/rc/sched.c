/*

	Tomato Firmware
	Copyright (C) 2006-2008 Jonathan Zarate

*/

#include <time.h>
#include "rc.h"


static void unsched(const char *key)
{
	char s[64];
	sprintf(s, "cru d %s", key);
	system(s);
}

static void sched(const char *key)
{
	int en;
	int tm;
	int dow;
	char s[64];
	char w[32];
	int i;
	
	// en,time,days
	if ((sscanf(nvram_safe_get(key), "%d,%d,%d", &en, &tm, &dow) != 3) || (!en)) {
		unsched(key);
		return;
	}

	w[0] = 0;
	w[1] = 0;
	for (i = 0; i < 7; ++i) {
		if (dow & (1 << i)) {
			sprintf(w + strlen(w), ",%d", i);
		}
	}
	
	sprintf(s, "cru a %s \"%d %d * * %s sched %s\"", key, tm % 60, tm / 60, w + 1, key);
	system(s);
}

static inline int is_sched(const char *key)
{
	return *nvram_safe_get(key) == '1';
}

int sched_main(int argc, char *argv[])
{
	if (argc == 2) {
		wait_action_idle(5 * 60);
		
		if (is_sched(argv[1])) {
			if (strcmp(argv[1], "sch_rboot") == 0) {
				syslog(LOG_INFO, "Performing scheduled %s...", "reboot");
				system("reboot");
				return 0;
			}
			else if (strcmp(argv[1], "sch_rcon") == 0) {
				syslog(LOG_INFO, "Performing scheduled %s...", "reconnect");
				system("service wan restart");
				return 0;
			}
		}
	}
	
	while (time(0) < Y2K) {
		sleep(1);
	}

	sched("sch_rboot");
	sched("sch_rcon");
	return 0;
}

void start_sched(void)
{
	killall("sched", SIGTERM);
	xstart("sched");
}

void stop_sched(void)
{
	killall("sched", SIGTERM);
	unsched("sch_rboot");
	unsched("sch_rcon");
}
