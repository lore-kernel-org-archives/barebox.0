Delivery-date: Wed, 26 Oct 2022 08:43:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8g-002gw0-EJ
	for lore@lore.pengutronix.de; Wed, 26 Oct 2022 08:43:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8f-0000N1-3w
	for lore@pengutronix.de; Wed, 26 Oct 2022 08:43:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dfBo7eGpdZQvKTJONPrAClZr1CGvvLf9q/SacwZVP1A=; b=mpAkiOrx5rb+OpPknZHaT6WEYA
	PHAu6DUrZQrW8nrBS8qAFNUWwJEsHDBZ7nLIWwIMUgX8wQgG0/MatyaCZbRgDxdRsjWpzWbyp0kpA
	afbt87sL0IS+iD9ztVbB6CVxZJQR7gcH9E65OzOZ1jtxcOyZ1gN1QSxO6DfJo4lugaxCqGxnwX8w3
	cmafnhWEqzEYKCWQOWkovHcBiGE68kOK/Dof1KLjq6rNXss+90Cpn5XtGZzCg9IIYsbAkafKxCv3y
	ozxrQoPxjWt7ebbkHn+kIs2rKzwdmBuNyVhGV+XlCfHiLy0hzfAJP8h0/arcR6TbgRHzRUx0XpF+k
	XkcVZDZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona7S-008IOD-JA; Wed, 26 Oct 2022 06:42:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona76-008IFY-Cx
	for barebox@lists.infradead.org; Wed, 26 Oct 2022 06:42:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-0008W4-09; Wed, 26 Oct 2022 08:42:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-000SHW-7M; Wed, 26 Oct 2022 08:42:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona73-009tyU-N2; Wed, 26 Oct 2022 08:42:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Oct 2022 08:42:00 +0200
Message-Id: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_234208_454955_0DE6FFCF 
X-CRM114-Status: GOOD (  17.06  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] commands: add new uptime command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a time command to record the delta of get_time_ns() to time
command execution, but have no command to just print get_time_ns().

Such a command can be useful to debug clocksources or to verify that a
system is still running and hasn't been reset by a yet unhandled
watchdog in-between.

Make development a bit easier by providing a new uptime command.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig  | 13 +++++++++
 commands/Makefile |  1 +
 commands/uptime.c | 72 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 86 insertions(+)
 create mode 100644 commands/uptime.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 2ce990b5616a..a59616ad1474 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2289,6 +2289,19 @@ config CMD_TIME
 	  Note: This command depends on COMMAND being interruptible,
 	  otherwise the timer may overrun resulting in incorrect results
 
+config CMD_UPTIME
+	bool "uptime"
+	help
+	  uptime - Tell how long barebox has been running
+
+	  Usage: uptime [-n]
+
+	  This command formats the number of elapsed nanoseconds
+	  as measured with the current clocksource.
+
+	  Options:
+	    -n		output elapsed time in nanoseconds
+
 config CMD_STATE
 	tristate
 	depends on STATE
diff --git a/commands/Makefile b/commands/Makefile
index 68d0d05365a5..cac1d4f2535b 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -80,6 +80,7 @@ obj-$(CONFIG_CMD_WD)		+= wd.o
 obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
+obj-$(CONFIG_CMD_UPTIME)	+= uptime.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_OF_DIFF)	+= of_diff.o
 obj-$(CONFIG_CMD_OF_PROPERTY)	+= of_property.o
diff --git a/commands/uptime.c b/commands/uptime.c
new file mode 100644
index 000000000000..e220fec72139
--- /dev/null
+++ b/commands/uptime.c
@@ -0,0 +1,72 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <command.h>
+#include <clock.h>
+#include <linux/math64.h>
+
+#define NSEC_PER_MINUTE	(NSEC_PER_SEC * 60LL)
+#define NSEC_PER_HOUR	(NSEC_PER_MINUTE * 60LL)
+#define NSEC_PER_DAY	(NSEC_PER_HOUR * 24LL)
+#define NSEC_PER_WEEK	(NSEC_PER_DAY * 7LL)
+
+static bool print_with_unit(u64 val, const char *unit, bool comma)
+{
+	if (!val)
+		return comma;
+
+	printf("%s%llu %s%s", comma ? ", " : "", val, unit, val > 1 ? "s" : "");
+	return true;
+}
+
+static int do_uptime(int argc, char *argv[])
+{
+	u64 timestamp, weeks, days, hours, minutes;
+	bool comma = false;
+
+	timestamp = get_time_ns();
+
+	if (argc == 2 && !strcmp(argv[1], "-n")) {
+		printf("up %lluns\n", timestamp);
+		return 0;
+	}
+
+	if (argc != 1)
+		return COMMAND_ERROR_USAGE;
+
+	printf("up ");
+
+	weeks = div64_u64_rem(timestamp, NSEC_PER_WEEK, &timestamp);
+	days = div64_u64_rem(timestamp, NSEC_PER_DAY, &timestamp);
+	hours = div64_u64_rem(timestamp, NSEC_PER_HOUR, &timestamp);
+	minutes = div64_u64_rem(timestamp, NSEC_PER_MINUTE, &timestamp);
+
+	comma = print_with_unit(weeks, "week", false);
+	comma = print_with_unit(days, "day", comma);
+	comma = print_with_unit(hours, "hour", comma);
+	comma = print_with_unit(minutes, "minute", comma);
+
+	if (!comma) {
+		u64 seconds = div64_u64_rem(timestamp, NSEC_PER_SEC, &timestamp);
+		print_with_unit(seconds, "second", false);
+	}
+
+	printf("\n");
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(uptime)
+BAREBOX_CMD_HELP_TEXT("This command formats the number of elapsed nanoseconds")
+BAREBOX_CMD_HELP_TEXT("as measured with the current clocksource")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n",     "output elapsed time in nanoseconds")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(uptime)
+	.cmd		= do_uptime,
+	BAREBOX_CMD_DESC("Tell how long barebox has been running")
+	BAREBOX_CMD_OPTS("[-n]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_uptime_help)
+BAREBOX_CMD_END
-- 
2.30.2



