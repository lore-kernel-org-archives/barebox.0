Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X59nh-0001Fp-KX
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 08:33:58 +0000
Received: by mail-la0-f54.google.com with SMTP id mc6so5765767lab.41
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 01:33:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 Jul 2014 12:33:19 +0400
Message-Id: <1404981199-21293-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 5/5] commands: add hwclock
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/Kconfig   |  8 ++++++++
 commands/Makefile  |  1 +
 commands/hwclock.c | 37 +++++++++++++++++++++++++++++++++++++
 3 files changed, 46 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 61816f5..a594f7c 100644
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
+	  The lspci command allows to query or set the hardware clock (RTC).
+
 config CMD_I2C
 	bool
 	depends on I2C
diff --git a/commands/Makefile b/commands/Makefile
index d42aca5..44dd9d4 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -100,3 +100,4 @@ obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
 obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
 obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
+obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
diff --git a/commands/hwclock.c b/commands/hwclock.c
new file mode 100644
index 0000000..4671fee
--- /dev/null
+++ b/commands/hwclock.c
@@ -0,0 +1,37 @@
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+#include <linux/err.h>
+#include <rtc.h>
+#include <linux/rtc.h>
+
+static int do_hwclock(int argc, char *argv[])
+{
+	struct rtc_device *r;
+	struct rtc_time tm;
+	char *rtc_name;
+
+	rtc_name = "rtc0";
+
+	if (argc > 1)
+		rtc_name = argv[1];
+
+	r = rtc_lookup(rtc_name);
+	if (IS_ERR(r))
+		return PTR_ERR(r);
+
+	rtc_read_time(r, &tm);
+
+	printf("%02d:%02d:%02d %02d-%02d-%04d\n",
+		tm.tm_hour, tm.tm_min, tm.tm_sec,
+		tm.tm_mday, tm.tm_mon, tm.tm_year);
+
+	return 0;
+}
+
+BAREBOX_CMD_START(hwclock)
+	.cmd		= do_hwclock,
+	BAREBOX_CMD_DESC("query or set the hardware clock (RTC)")
+	BAREBOX_CMD_OPTS("[RTC]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+BAREBOX_CMD_END
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
