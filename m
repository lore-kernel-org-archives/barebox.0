Delivery-date: Tue, 30 Jul 2024 09:17:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh6y-004O5K-1r
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 09:17:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh6x-0006bO-ST
	for lore@pengutronix.de; Tue, 30 Jul 2024 09:17:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ta2hd4YneOsyrwCujChmu+LZDpIdESnLnaHB5QlBWjc=; b=VIFjXvduYhpX+akxuxeb0L6pnZ
	otwwnqrpUY4hYR5qTPcuYmZLarhFos7XTPY+E+Afm7pSCocsRhtUUg+tXUSWafYygubLiAkklYKP/
	oTsHr7NhpkRhUbv7fV3n6mnjtb4EgJhpfQoOfHD9j/BOJz26CY/TvmNSfqBWqXOPOfkTrzeSlwgr8
	gH+dCFQsanxx6WjQxz3TVgoFMDNUOBPsSTmDoBpyUwC094L9nKmM1/XT6sZ4nJU8sLwUVFreRcDJo
	DEJyYGlplO3Yvk2hgqcrUxQdBHSIOqMHoswOYQGLIJh+CEkb/UqbKpemCTVjAo5KsT5tbfoOoyjjP
	mjH77feA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh6I-0000000DyFm-3MOl;
	Tue, 30 Jul 2024 07:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh64-0000000DyCI-0P5z
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 07:16:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh61-0006UJ-Tn; Tue, 30 Jul 2024 09:16:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh61-003EIm-Gv; Tue, 30 Jul 2024 09:16:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh61-008S9k-1N;
	Tue, 30 Jul 2024 09:16:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Jul 2024 09:16:32 +0200
Message-Id: <20240730071632.2014844-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_001636_154379_59C8DF8C 
X-CRM114-Status: GOOD (  16.87  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: sync: add new command to flush cached writes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In barebox, the dirty block cache for a given device is flushed when
closing all file descriptors to it, a cached block needs to be evicted
due to pressure or when barebox shuts down.

There are valid uses to do it explicitly however:

  - When benchmarking write speed to a block device
  - Before forced resets, because a regular reset would run shutdown
    code that should be omitted.

Add a sync command that does this. Unlike the userspace variant, we
don't both to implement a argument-less sync that's global. Users are
supposed to flush the files they are actually interested in, e.g.:

  sync /dev/mmc2.0

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig  | 14 ++++++++++++++
 commands/Makefile |  1 +
 commands/sync.c   | 42 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 57 insertions(+)
 create mode 100644 commands/sync.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 5b512f1bbac7..a8b7037618cc 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1871,6 +1871,20 @@ config CMD_DETECT
 		  -e	bail out if one device fails to detect
 		  -a	detect all devices
 
+config CMD_SYNC
+	tristate
+	prompt "sync"
+	help
+	  sync - flush cached writes
+
+	  Usage: sync DEVICE
+
+	  Synchronize cached writes to persistent storage of DEVICE
+	  immediately instead of waiting for block device to be closed,
+	  cache eviction or the regular barebox exit.
+
+	  This command is mainly useful for benchmarking.
+
 config CMD_FLASH
 	tristate
 	prompt "erase, protect and unprotect"
diff --git a/commands/Makefile b/commands/Makefile
index 4ca7ba7eb609..a9dbead4389f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -41,6 +41,7 @@ obj-$(CONFIG_CMD_REGINFO)	+= reginfo.o
 obj-$(CONFIG_CMD_CRC)		+= crc.o
 obj-$(CONFIG_CMD_CLEAR)		+= clear.o
 obj-$(CONFIG_CMD_TEST)		+= test.o
+obj-$(CONFIG_CMD_SYNC)		+= sync.o
 obj-$(CONFIG_CMD_FLASH)		+= flash.o
 obj-$(CONFIG_CMD_MEMINFO)	+= meminfo.o
 obj-$(CONFIG_CMD_TIMEOUT)	+= timeout.o
diff --git a/commands/sync.c b/commands/sync.c
new file mode 100644
index 000000000000..6add67cd0876
--- /dev/null
+++ b/commands/sync.c
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+/* sync - flushing support */
+
+#include <common.h>
+#include <command.h>
+#include <fcntl.h>
+#include <fs.h>
+
+static int do_sync(int argc, char *argv[])
+{
+	int ret, fd;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	fd = open(argv[1], O_WRONLY);
+	if (fd < 0) {
+		printf("open %s: %m\n", argv[1]);
+		return 1;
+	}
+
+	ret = flush(fd);
+
+	close(fd);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(sync)
+BAREBOX_CMD_HELP_TEXT("Synchronize cached writes to persistent storage of DEVICE")
+BAREBOX_CMD_HELP_TEXT("immediately instead of waiting for block device to be closed,")
+BAREBOX_CMD_HELP_TEXT("cache eviction or the regular barebox exit.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(sync)
+	.cmd		= do_sync,
+	BAREBOX_CMD_DESC("flush cached writes")
+	BAREBOX_CMD_OPTS("DEVICE")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_sync_help)
+BAREBOX_CMD_END
-- 
2.39.2



