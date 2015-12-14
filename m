Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8RXn-0001LJ-Jh
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 11:43:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Dec 2015 12:43:30 +0100
Message-Id: <1450093411-13885-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
References: <1450093411-13885-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/7] hwclock: Allow to set hwclock from sntp
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/hwclock.c | 27 ++++++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/commands/hwclock.c b/commands/hwclock.c
index 3f89cce..7633132 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -4,6 +4,7 @@
 #include <linux/err.h>
 #include <linux/ctype.h>
 #include <rtc.h>
+#include <sntp.h>
 #include <linux/rtc.h>
 #include <string.h>
 #include <environment.h>
@@ -92,8 +93,10 @@ static int do_hwclock(int argc, char *argv[])
 	char *env_name = NULL;
 	int opt;
 	int set = 0;
+	int ntp_to_hw = 0;
+	char *ntpserver = NULL;
 
-	while ((opt = getopt(argc, argv, "f:s:e:")) > 0) {
+	while ((opt = getopt(argc, argv, "f:s:e:n:")) > 0) {
 		int ret;
 
 		switch (opt) {
@@ -116,6 +119,10 @@ static int do_hwclock(int argc, char *argv[])
 		case 'e':
 			env_name = optarg;
 			break;
+		case 'n':
+			ntp_to_hw = 1;
+			ntpserver = optarg;
+			break;
 		}
 	}
 
@@ -127,6 +134,23 @@ static int do_hwclock(int argc, char *argv[])
 		return rtc_set_time(r, &stm);
 	}
 
+	if (ntp_to_hw) {
+		s64 now;
+
+		if (!IS_ENABLED(CONFIG_NET_SNTP)) {
+			printf("SNTP support is disabled\n");
+			return 1;
+		}
+
+		now = sntp(ntpserver);
+		if (now < 0)
+			return now;
+
+		rtc_time_to_tm(now, &stm);
+		printf("%s\n", time_str(&stm));
+		return rtc_set_time(r, &stm);
+	}
+
 	rtc_read_time(r, &tm);
 
 	if (env_name) {
@@ -147,6 +171,7 @@ BAREBOX_CMD_HELP_START(hwclock)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-f NAME\t\t\t", "RTC device name (default rtc0)")
 BAREBOX_CMD_HELP_OPT ("-e VARNAME\t\t", "store RTC readout into variable VARNAME")
+BAREBOX_CMD_HELP_OPT ("-n NTPSERVER\t", "set RTC from NTP server")
 BAREBOX_CMD_HELP_OPT ("-s ccyymmddHHMM[.SS]\t", "set time")
 BAREBOX_CMD_HELP_END
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
