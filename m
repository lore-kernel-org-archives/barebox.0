Delivery-date: Thu, 20 Mar 2025 06:20:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Kt-001l6G-27
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:20:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Ks-0003gS-Ac
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:20:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v5K2jONe6lrff1Kgx4bK6hiInGMorhKyNvlh6lRQWVM=; b=qQyN3l6oEZTCT/6+2tUrggzUxO
	RT5Qal6y1c9nzy1JZ9qphX4RRE5Qqskn1omZ6LUsEVlkJUEONOy0XHgDwLqfJ3l5Ev39rwwXLEgN8
	Mj0Ba2AlZLYuv//roSqj/9TVhzEQ0x/xr5fC+JAhEvqjGO2o3W3MnSilRUON3HFM21RAwL3MQpC2X
	qEfK7Ufqffs3XezLeOA7V5SshGJxWOM/x1ekNirSIxAi65OTMT6PzRrIx/VzKEPKZFbglielifIPD
	Kjz+TEMRkWaKyDOJAJh0m6WJVu1i4yIKzaaspoAwrLqXRB5+h6Z+vtkkP5XwSZOGCkUCzoIY135mP
	pXWJx3gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KS-0000000BCXd-32oP;
	Thu, 20 Mar 2025 05:20:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8KM-0000000BCSA-07cx
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:20:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-0003E5-QS; Thu, 20 Mar 2025 06:20:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-000hvR-0a;
	Thu, 20 Mar 2025 06:20:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8KK-007GGZ-1e;
	Thu, 20 Mar 2025 06:20:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:20:18 +0100
Message-Id: <20250320052019.1726331-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
References: <20250320052019.1726331-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_222022_071355_46F9D019 
X-CRM114-Status: GOOD (  20.02  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] commands: add new truncate command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The truncate command offers an easy way to exercise a file system's
truncate operation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig    |  15 +++++++
 commands/Makefile   |   1 +
 commands/truncate.c | 100 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 116 insertions(+)
 create mode 100644 commands/truncate.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 8a7a6e94f025..8c05b8eff606 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1904,6 +1904,21 @@ config CMD_DETECT
 		  -e	bail out if one device fails to detect
 		  -a	detect all devices
 
+config CMD_TRUNCATE
+	tristate
+	prompt "truncate"
+	help
+
+	truncate [-c] -s [+]SIZE FILE...
+
+	truncate truncates files to a given size. If a file does
+	not exist, it is created unless told otherwise.
+	Options:
+	-c		Do not create files
+	-s [+]SIZE	truncate file to SIZE, or increase by +SIZE
+
+	This command is mainly useful for VFS development.
+
 config CMD_SYNC
 	tristate
 	prompt "sync"
diff --git a/commands/Makefile b/commands/Makefile
index fa7de443cc13..36ef59b38759 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -41,6 +41,7 @@ obj-$(CONFIG_CMD_FINDMNT)	+= findmnt.o
 obj-$(CONFIG_CMD_CRC)		+= crc.o
 obj-$(CONFIG_CMD_CLEAR)		+= clear.o
 obj-$(CONFIG_CMD_TEST)		+= test.o
+obj-$(CONFIG_CMD_TRUNCATE)	+= truncate.o
 obj-$(CONFIG_CMD_SYNC)		+= sync.o
 obj-$(CONFIG_CMD_FLASH)		+= flash.o
 obj-$(CONFIG_CMD_MEMINFO)	+= meminfo.o
diff --git a/commands/truncate.c b/commands/truncate.c
new file mode 100644
index 000000000000..5c6d74257da1
--- /dev/null
+++ b/commands/truncate.c
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2015 by Ari Sundholm <ari@tuxera.com>
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fcntl.h>
+#include <getopt.h>
+#include <fs.h>
+
+static int do_truncate(int argc, char *argv[])
+{
+	int flags = O_CREAT | O_WRONLY;
+	int opt, modify = 0, ret = 0;
+	const char *size_str;
+	off_t size = -1;
+
+	while((opt = getopt(argc, argv, "cs:")) > 0) {
+		switch(opt) {
+		case 'c':
+			flags &= ~O_CREAT;
+			break;
+		case 's':
+			size_str = optarg;
+			if (!size_str)
+				return COMMAND_ERROR_USAGE;
+			switch (*size_str) {
+			case '+':
+				modify = 1;
+				size_str++;
+				break;
+			case '-':
+				return COMMAND_ERROR_USAGE;
+			}
+			size = strtoull_suffix(size_str, NULL, 10);
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	if (size == -1 || argc == 0)
+		return COMMAND_ERROR_USAGE;
+
+	for (int i = 0; i < argc; i++) {
+		int fd = open(argv[i], flags, 0666);
+		if (fd < 0) {
+			if (errno != ENOENT || !(flags & O_CREAT)) {
+				perror("open");
+				ret = 1;
+			}
+			/* else: ENOENT && OPT_NOCREATE:
+			 * do not report error, exitcode is also 0.
+			 */
+			continue;
+		}
+
+		if (modify) {
+			struct stat st;
+
+			if (fstat(fd, &st) == -1) {
+				perror("fstat");
+				ret = 1;
+				goto close;
+			}
+
+			size = st.st_size + modify * size;
+		}
+
+		if (ftruncate(fd, size) == -1) {
+			perror("truncate");
+			ret = 1;
+		}
+close:
+		close(fd);
+	}
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(truncate)
+BAREBOX_CMD_HELP_TEXT("truncate truncates files to a given size. If a file does")
+BAREBOX_CMD_HELP_TEXT("not exist, it is created unless told otherwise.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-c",     "Do not create files")
+BAREBOX_CMD_HELP_OPT ("-s [+]SIZE", "truncate file to SIZE, or increase by +SIZE")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(truncate)
+	.cmd		= do_truncate,
+	BAREBOX_CMD_DESC("truncate files to size")
+	BAREBOX_CMD_OPTS("[-c] -s [+]SIZE FILE...")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_truncate_help)
+BAREBOX_CMD_END
-- 
2.39.5



