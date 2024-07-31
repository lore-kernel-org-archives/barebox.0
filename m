Delivery-date: Wed, 31 Jul 2024 10:05:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LN-004jWZ-0w
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 10:05:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LL-0004Nl-TR
	for lore@pengutronix.de; Wed, 31 Jul 2024 10:05:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=95fnbUjWUWQreX2Nldm6Ebo24V4JiSvzc5RyZauLLEo=; b=ei8EvrHStLVBJ8khvNQX2wN4f/
	BohdqCRnYBG+QGhTvP4VkOGrz13NEB3SOJ9G5SEryxJQfY6eWPnW5G2lsInMmv6xcHAJ7u6pisOO9
	1wIZd/MMHbZ8BXOS+IfSfSJRHEXxxocibkEwGEZIhFsI5vzNwZxVk3NQeG6dpIphoc9Y005oElvK4
	bQvpNUNtTuWNxY2W3CbhnW3RLvD/p/Kl1SxYRl3N99HHGiTyO2cG6qST9aTmItQqC5mFJFPB0KJPF
	VI/uqCFf1GAB2QoZKhl1veSkokk/+vcg0GszcgyEu1wyGRfuA4OGWTLe00THsgaH1LIhAadNWbYPV
	rTIIJ+eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kp-00000000F7s-2u7n;
	Wed, 31 Jul 2024 08:05:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Km-00000000F5z-0ohe
	for barebox@bombadil.infradead.org;
	Wed, 31 Jul 2024 08:05:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=95fnbUjWUWQreX2Nldm6Ebo24V4JiSvzc5RyZauLLEo=; b=DVmmxQ5dwsuDAVlWCq9sAEgLJw
	uBgyUQrLhtGQdAV1fHbAaOUK1qju3j+wTILhkD9sVSDXtgUfoxKpH1V6PT1/sOC+pPmmP6F/ibxng
	eucjHME3IcHhermeF3Wdd8rN9AcIaAiWxT+AjJ6JooM/jHyK6vXtgPn86d5ujdk7qvtY/dZzPrJXm
	XyF31TLwybhGlXlsNVTembJWGojIW8FEMdtQF5EguHQ6PyZron2nlB5QbBap5RJPurAv63juEZ3H7
	7WSqrRHGouXBUv5k+m9+qnAmwthwFqrHS8qNqleFU/Vfn9CdfgjQVPs8Z8yoFWfH0ZSwzQ0UjPBD2
	t1DQNFOA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kh-00000005ATs-30Ts
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 08:05:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-0003yn-Q4; Wed, 31 Jul 2024 10:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-003Tfy-Bg; Wed, 31 Jul 2024 10:05:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-001Wt2-0s;
	Wed, 31 Jul 2024 10:05:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 10:05:09 +0200
Message-Id: <20240731080510.364706-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731080510.364706-1-a.fatoum@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_090516_458000_F8D70C93 
X-CRM114-Status: GOOD (  18.47  )
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
Subject: [PATCH v2 09/10] commands: sync: add new command to flush cached writes
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
don't bother to implement a argument-less sync that's global. Users are
supposed to flush the files they are actually interested in, e.g.:

  sync /dev/mmc2.0

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typo in commit message (Sascha)
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



