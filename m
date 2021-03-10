Delivery-date: Wed, 10 Mar 2021 09:49:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXK-0001A9-Ia
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:49:46 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXI-00027g-G3
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:49:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=10EXJ+u3QcuG8IqBdNhFqDkK7kmov8DkQFbx+Uk8jmE=; b=dAfNe//Aeu8RwM2SUxuHGPfDY
	z34dPv3yEKh14PSG9lsZSCy0ojHTDshLO/QqSPan/iW24pPMewWHO6qs7H9uwjChCZae05Mh9057I
	Brs8eqdYiS6MIWqMc+CEQFBFF5avV3TSSdjxwtvBKKzbK4Z8q2tlL9yc1RHhJX7wACnTpJbmxVQOD
	g6qEsKGvZggDPEY+sdb9yH9VV8/F8MLn0g6CSkiLzihogJDhQ6RRgVrJOks8sMbyFCXjsubtd28WI
	YlwDjAmjgP7umoZ/yCMb6Z/NNMtjTMuCSrJHwZjslqzLaBvz4Yxz40iRMICCCRyviUwGGIHOugmdK
	zk3kbq+nw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuWA-006LSW-8n; Wed, 10 Mar 2021 08:48:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVh-006LJc-1a
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVf-0001Tk-2w; Wed, 10 Mar 2021 09:48:03 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zp-MU; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:59 +0100
Message-Id: <20210310084800.3584-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084805_369157_062230A8 
X-CRM114-Status: GOOD (  22.97  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 15/16] commands: add new bthread test command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

This command is meant to show how to use the bthread API as well as
help with debugging. It's a bit overcomplicated to exercise aspects
of the API, like scheduling from both secondary and primary thread.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/Kconfig   |   9 +++
 commands/Makefile  |   1 +
 commands/bthread.c | 195 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 205 insertions(+)
 create mode 100644 commands/bthread.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 520ad4b1dea3..6d84c956e576 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -253,6 +253,15 @@ config CMD_POLLER
 	  is_timeout() or one of the various delay functions. The poller command prints
 	  informations about registered pollers.
 
+config CMD_BTHREAD
+	tristate
+	prompt "bthread"
+	depends on BTHREAD
+	help
+	  barebox threads are cooperatively-scheduled (green) threads that are running in
+	  the background whenever code executes is_timeout() or one of the various delay
+	  functions. The bthread command prints informations about registered bthreads.
+
 config CMD_SLICE
 	tristate
 	prompt "slice"
diff --git a/commands/Makefile b/commands/Makefile
index 034c0e6383d3..cdf14a5e1d8d 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -129,6 +129,7 @@ obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
 obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
 obj-$(CONFIG_CMD_SEED)		+= seed.o
 obj-$(CONFIG_CMD_IP_ROUTE_GET)  += ip-route-get.o
+obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
 
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/bthread.c b/commands/bthread.c
new file mode 100644
index 000000000000..05dfa68cc597
--- /dev/null
+++ b/commands/bthread.c
@@ -0,0 +1,195 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
+ */
+
+#include <bthread.h>
+#include <errno.h>
+#include <malloc.h>
+#include <stdio.h>
+#include <command.h>
+#include <getopt.h>
+#include <clock.h>
+
+static int bthread_time(void)
+{
+	uint64_t start = get_time_ns();
+	int i = 0;
+
+	/*
+	 * How many background tasks can we have in one second?
+	 *
+	 * A low number here may point to problems with bthreads taking too
+	 * much time.
+	 */
+	while (!is_timeout(start, SECOND))
+		i++;
+
+	return i;
+}
+
+static int bthread_infinite(void *data)
+{
+	while (!bthread_should_stop())
+		;
+
+	return 0;
+}
+
+static int bthread_isolated_time(void)
+{
+	uint64_t start = get_time_ns();
+	struct bthread *bthread;
+	int i = 0;
+
+	bthread = bthread_run(bthread_infinite, NULL, "infinite");
+	if (!bthread)
+		return -ENOMEM;
+
+	/* main thread is the first in the run queue. Newly created bthread
+	 * is the last. So if main_thread explicitly schedules new bthread,
+	 * it will schedule back to main_thread afterwards and we won't
+	 * execute any other threads in-between.
+	 */
+
+	while (!is_timeout_non_interruptible(start, SECOND)) {
+		bthread_schedule(bthread);
+		i += 2;
+	}
+
+	bthread_stop(bthread);
+	bthread_free(bthread);
+
+	return i;
+}
+
+static int bthread_printer(void *arg)
+{
+	volatile u64 start;
+	volatile int i = 0;
+	start = get_time_ns();
+
+	while (!bthread_should_stop()) {
+		if (!is_timeout_non_interruptible(start, 225 * MSECOND))
+			continue;
+
+		if ((long)arg == i++)
+			printf("%s yield #%d\n", bthread_name(current), i);
+		start = get_time_ns();
+	}
+
+	return i;
+}
+
+static int yields;
+
+static int bthread_spawner(void *arg)
+{
+	struct bthread *bthread[4];
+	volatile u64 start;
+	volatile int i = 0;
+	int ret = 0;
+	int ecode;
+
+	start = get_time_ns();
+
+	for (i = 0; i < ARRAY_SIZE(bthread); i++) {
+		bthread[i] = bthread_run(bthread_printer, (void *)i,
+					 "%s-bthread%u", bthread_name(current), i+1);
+		if (!bthread[i]) {
+			ret = -ENOMEM;
+			goto cleanup;
+		}
+	}
+
+	while (!bthread_should_stop())
+		;
+
+cleanup:
+	while (i--) {
+		ecode = bthread_stop(bthread[i]);
+		bthread_free(bthread[i]);
+
+		if (!ret && (ecode != 4 || yields < ecode))
+			ret = -EIO;
+	}
+
+	return ret;
+}
+
+struct spawn {
+	struct bthread *bthread;
+	struct list_head list;
+};
+
+static int do_bthread(int argc, char *argv[])
+{
+	LIST_HEAD(spawners);
+	struct spawn *spawner, *tmp;
+	int ret = 0;
+	int ecode, opt, i = 0;
+	bool time = false;
+
+	while ((opt = getopt(argc, argv, "itcv")) > 0) {
+		switch (opt) {
+		case 'i':
+			bthread_info();
+			break;
+		case 'c':
+			yields = bthread_isolated_time();
+			printf("%d bthread context switches possible in 1s\n", yields);
+			break;
+		case 'v':
+			spawner = xzalloc(sizeof(*spawner));
+			spawner->bthread = bthread_run(bthread_spawner, NULL,
+						       "spawner%u", ++i);
+			if (!spawner->bthread) {
+				free(spawner);
+				ret = -ENOMEM;
+				goto cleanup;
+			}
+
+			/* We create intermediate spawning threads to test thread
+			 * creation and scheduling from non-main thread.
+			 */
+			list_add(&spawner->list, &spawners);
+
+			/* fallthrough */
+		case 't':
+			time = true;
+		}
+	}
+
+	if (time) {
+		yields = bthread_time();
+		printf("%d bthread yield calls in 1s\n", yields);
+	}
+
+cleanup:
+	list_for_each_entry_safe(spawner, tmp, &spawners, list) {
+		ecode = bthread_stop(spawner->bthread);
+		bthread_free(spawner->bthread);
+		if (!ret && ecode)
+			ret = ecode;
+		free(spawner);
+	}
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(bthread)
+	BAREBOX_CMD_HELP_TEXT("print info about registered barebox threads")
+	BAREBOX_CMD_HELP_TEXT("")
+	BAREBOX_CMD_HELP_TEXT("Options:")
+	BAREBOX_CMD_HELP_OPT ("-i", "Print information about registered bthreads")
+	BAREBOX_CMD_HELP_OPT ("-t", "measure how many bthreads we currently run in 1s")
+	BAREBOX_CMD_HELP_OPT ("-c", "count maximum context switches in 1s")
+	BAREBOX_CMD_HELP_OPT ("-v", "verify correct bthread operation")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(bthread)
+	.cmd = do_bthread,
+	BAREBOX_CMD_DESC("print info about registered bthreads")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_bthread_help)
+BAREBOX_CMD_END
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

