Delivery-date: Mon, 01 Jul 2024 09:55:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBsW-000QkV-2l
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:55:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBsW-0001Fn-5p
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:55:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LAPap2sfiIxGU2vFeJ9yM8CkgIHxNSaGpMlm9yxEm9c=; b=OlZWx8JyWWRpy3XMcOj1Fe5lJu
	v/FVpGC8I4yOEs1nNRtCGl3oZFpXQzQz0E5eTZ2XqdJFWnt/exDSjSgipEA4DhW5GYORLLwumBZqs
	kasSJHvyWomFzFYvgYx1npONFNN3Go7rbItY1NaSXDcMcKMq6V+Iw38bKfQg1ETBfiJ8ro1R8gA+8
	MI/YTh+O3zPsWmWa/s3WBJ/cAbUU7DFrYTOHLqGe0dUdMjM7kCoEF5I7EZ2UFKh5/FZq60DPYAoSZ
	ZZU/PmRzpcZVKZlY2sicVBXjfAidKyNFTVbNfVOrzG2YMlM4/C3HrEb9zuXXTsnHhbGuZPSL0xq0w
	qBmEKFmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBs2-000000028ih-1iDX;
	Mon, 01 Jul 2024 07:54:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBrx-000000028gp-3JwD
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:54:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBrw-00012G-HF; Mon, 01 Jul 2024 09:54:36 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBrw-006JxU-47; Mon, 01 Jul 2024 09:54:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBrw-000vQJ-08;
	Mon, 01 Jul 2024 09:54:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:54:34 +0200
Message-Id: <20240701075434.220378-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240701075434.220378-1-a.fatoum@pengutronix.de>
References: <20240701075434.220378-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_005437_879972_9F3E7070 
X-CRM114-Status: GOOD (  19.22  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] commands: watch: add new command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For testing proper operation of IIO devices, it can be useful to monitor
changes in the reading reported by the hwmon command. This is now
possible by using `watch -n 0.5 -t hwmon`.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig  |  6 +++
 commands/Makefile |  1 +
 commands/watch.c  | 97 +++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 104 insertions(+)
 create mode 100644 commands/watch.c

diff --git a/commands/Kconfig b/commands/Kconfig
index c9c4be67e098..5b512f1bbac7 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2417,6 +2417,12 @@ config CMD_TIME
 	  Note: This command depends on COMMAND being interruptible,
 	  otherwise the timer may overrun resulting in incorrect results
 
+config CMD_WATCH
+	bool "watch"
+	help
+	  watch is used to execute a command periodically, showing
+	  output to the screen.
+
 config CMD_UPTIME
 	bool "uptime"
 	help
diff --git a/commands/Makefile b/commands/Makefile
index f3e8e944a931..4ca7ba7eb609 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -82,6 +82,7 @@ obj-$(CONFIG_CMD_WD)		+= wd.o
 obj-$(CONFIG_CMD_LED_TRIGGER)	+= trigger.o
 obj-$(CONFIG_CMD_USB)		+= usb.o
 obj-$(CONFIG_CMD_TIME)		+= time.o
+obj-$(CONFIG_CMD_WATCH)		+= watch.o
 obj-$(CONFIG_CMD_UPTIME)	+= uptime.o
 obj-$(CONFIG_CMD_OFTREE)	+= oftree.o
 obj-$(CONFIG_CMD_OF_COMPATIBLE)	+= of_compatible.o
diff --git a/commands/watch.c b/commands/watch.c
new file mode 100644
index 000000000000..84731eb8505a
--- /dev/null
+++ b/commands/watch.c
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Port of Mini watch implementation from busybox
+ *
+ * Copyright (C) 2001 by Michael Habermann <mhabermann@gmx.de>
+ * Copyrigjt (C) Mar 16, 2003 Manuel Novoa III   (mjn3@codepoet.org)
+ */
+
+#include <common.h>
+#include <command.h>
+#include <clock.h>
+#include <linux/math64.h>
+#include <malloc.h>
+#include <getopt.h>
+#include <term.h>
+#include <rtc.h>
+
+static int do_watch(int argc , char *argv[])
+{
+	const char *period_str = "2.0";
+	u64 period_ns, start;
+	bool print_header = false;
+	int opt;
+	unsigned width, new_width;
+	char *end, *header, *cmd;
+
+	while ((opt = getopt(argc, argv, "+n:t")) > 0) {
+		switch (opt) {
+		case 'n':
+			period_str = optarg;
+			break;
+		case 't':
+			print_header = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argc -= optind;
+	argv += optind;
+
+	if (argc < 1)
+		return COMMAND_ERROR_USAGE;
+
+	cmd = strjoin(" ", argv, argc);
+
+	period_ns = simple_strtofract(period_str, &end, NSEC_PER_SEC);
+	if (*end)
+		return -EINVAL;
+
+	width = (unsigned)-1; // make sure first time new_width != width
+	header = NULL;
+
+	while (!ctrlc()) {
+		/* home; clear to the end of screen */
+		printf("\e[H\e[J");
+
+		if (print_header) {
+			term_getsize(&new_width, NULL);
+			if (new_width != width) {
+				width = new_width;
+				free(header);
+				header = xasprintf("Every %ss: %-*s",
+						   period_str, (int)width, cmd);
+			}
+
+			printf("%s\n\n", header);
+		}
+
+		run_command(cmd);
+
+		start = get_time_ns();
+		while (!is_timeout(start, period_ns)) {
+			if (ctrlc())
+				return 1;
+		}
+	}
+
+	free(cmd);
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(watch)
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n SEC", "Period (default 2)")
+BAREBOX_CMD_HELP_OPT ("-t",	"Don't print header")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(watch)
+	.cmd		= do_watch,
+	BAREBOX_CMD_DESC("run program periodically")
+	BAREBOX_CMD_OPTS("[-n SEC] [-t] PROG ARGS")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_watch_help)
+BAREBOX_CMD_END
-- 
2.39.2



