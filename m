Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCDjj-0005S6-20
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:11:03 +0000
Received: by mail-lb0-f179.google.com with SMTP id v6so140038lbi.10
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 13:10:40 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 00:10:20 +0400
Message-Id: <1406664625-19653-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
References: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v4 4/9] commands: add hwclock
To: barebox@lists.infradead.org

The hwclock command allows to query or set the hardware clock (RTC).

Barebox' 'hwclock' command uses busybox' 'date' compatible
time format ccyymmddHHMM[.SS]:

  # /bin/busybox date -s 201407292005.41 ; /bin/date
  Tue Jul 29 20:05:41 MSK 2014
  Tue Jul 29 20:05:41 MSK 2014

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig   |   8 +++
 commands/Makefile  |   1 +
 commands/hwclock.c | 161 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 506b3d0..df8d60f 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1691,6 +1691,14 @@ config CMD_GPIO
 
 	  Usage: gpio_set_value GPIO VALUE
 
+config CMD_HWCLOCK
+	bool
+	depends on RTC_CLASS
+	prompt "hwclock command"
+	default y
+	help
+	  The hwclock command allows to query or set the hardware clock (RTC).
+
 config CMD_I2C
 	bool
 	depends on I2C
diff --git a/commands/Makefile b/commands/Makefile
index f3caceb..9151c96 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -101,3 +101,4 @@ obj-$(CONFIG_CMD_2048)		+= 2048.o
 obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
 obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
 obj-$(CONFIG_CMD_USBGADGET)	+= usbgadget.o
+obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
diff --git a/commands/hwclock.c b/commands/hwclock.c
new file mode 100644
index 0000000..a1f5293
--- /dev/null
+++ b/commands/hwclock.c
@@ -0,0 +1,161 @@
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <linux/err.h>
+#include <linux/ctype.h>
+#include <rtc.h>
+#include <linux/rtc.h>
+#include <string.h>
+#include <environment.h>
+
+static char *strchrnul(const char *s, int c)
+{
+	while (*s != '\0' && *s != c)
+		s++;
+
+	return (char *)s;
+}
+
+static int sscanf_two_digits(char *s, int *res)
+{
+	char buf[3];
+	unsigned long t;
+
+	if (!isdigit(s[0]) || !isdigit(s[1])) {
+		return -EINVAL;
+	}
+
+	buf[0] = s[0];
+	buf[1] = s[1];
+	buf[2] = '\0';
+
+	t = simple_strtoul(buf, NULL, 10);
+	*res = t;
+
+	return 0;
+}
+
+static int parse_datestr(char *date_str, struct rtc_time *ptm)
+{
+	char end = '\0';
+	int len = strchrnul(date_str, '.') - date_str;
+	int year;
+
+	/* ccyymmddHHMM[.SS] */
+	if (len != 12) {
+		return -EINVAL;
+	}
+
+	if (sscanf_two_digits(date_str, &year) ||
+		sscanf_two_digits(&date_str[2], &ptm->tm_year)) {
+		return -EINVAL;
+	}
+
+	ptm->tm_year = year * 100 + ptm->tm_year;
+
+	/* Adjust years */
+	ptm->tm_year -= 1900;
+
+	if (sscanf_two_digits(&date_str[4], &ptm->tm_mon) ||
+		sscanf_two_digits(&date_str[6], &ptm->tm_mday) ||
+		sscanf_two_digits(&date_str[8], &ptm->tm_hour) ||
+		sscanf_two_digits(&date_str[10], &ptm->tm_min)) {
+		return -EINVAL;
+	}
+
+	/* Adjust month from 1-12 to 0-11 */
+	ptm->tm_mon -= 1;
+
+	end = date_str[12];
+
+	if (end == '.') {
+		/* xxx.SS */
+		if (!sscanf_two_digits(&date_str[13], &ptm->tm_sec)) {
+			end = '\0';
+		}
+		/* else end != NUL and we error out */
+	}
+
+	if (end != '\0') {
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int do_hwclock(int argc, char *argv[])
+{
+	struct rtc_device *r;
+	struct rtc_time tm;
+	struct rtc_time stm;
+	char rtc_name[16] = "rtc0";
+	char *env_name = NULL;
+	int opt;
+	int set = 0;
+
+	while ((opt = getopt(argc, argv, "f:s:e:")) > 0) {
+		int ret;
+
+		switch (opt) {
+		case 'f':
+			strncpy(rtc_name, optarg, 16);
+			break;
+		case 's':
+			memset(&stm, 0, sizeof(stm));
+
+			ret = parse_datestr(optarg, &stm);
+			if (ret)
+				return ret;
+
+			ret = rtc_valid_tm(&stm);
+			if (ret)
+				return ret;
+
+			set = 1;
+			break;
+		case 'e':
+			env_name = optarg;
+			break;
+		}
+	}
+
+	r = rtc_lookup(rtc_name);
+	if (IS_ERR(r))
+		return PTR_ERR(r);
+
+	if (set) {
+		rtc_set_time(r, &stm);
+		return 0;
+	}
+
+	rtc_read_time(r, &tm);
+
+	if (env_name) {
+		unsigned long time;
+		char t[12];
+
+		rtc_tm_to_time(&tm, &time);
+		snprintf(t, 12, "%lu", time);
+		setenv(env_name, t);
+	} else {
+		printf("%02d:%02d:%02d %02d-%02d-%04d\n",
+			tm.tm_hour, tm.tm_min, tm.tm_sec,
+			tm.tm_mday, tm.tm_mon + 1, tm.tm_year + 1900);
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(hwclock)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-f NAME\t\t\t", "RTC device name (default rtc0)")
+BAREBOX_CMD_HELP_OPT ("-e VARNAME\t\t", "store RTC readout into variable VARNAME")
+BAREBOX_CMD_HELP_OPT ("-s ccyymmddHHMM[.SS]\t", "set time")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(hwclock)
+	.cmd		= do_hwclock,
+	BAREBOX_CMD_DESC("query or set the hardware clock (RTC)")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_hwclock_help)
+BAREBOX_CMD_END
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
