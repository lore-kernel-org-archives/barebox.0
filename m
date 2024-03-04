Delivery-date: Mon, 04 Mar 2024 20:10:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhw-008dli-0j
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:10:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhv-0005bR-Ew
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:10:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iMsLV6mh9hMTtfV41iGUzizIX8J61fMr+GozwgCWU5w=; b=46BzE9emWQAJU7DbBU3TgqNA5Z
	hoRkFpLtb+YrvT9KfeOG/mUu8glf8rkKfhcfzwtK24E4Ur4sKUseo92a0pOjs/ji8WLwOCrryJJqR
	L25YuSBrdohGCHMCT+aizsyy8IUQNVE/euRyY0sewWreKPi4xaa/m65AR2MPLtLxVUG/y4QGhQk61
	LFVHvTkvnw71DbrbVSQP1fNvlEW3Aj64XMxuSzQXHChXimAT7OqX3py02N5XvTCFf1bWakeH9cW0v
	jAlyvoLpZDq54Mcp1iVYeGaqd5FNdKAtdMAy3clDZqlYAWNrXoj/4n4+v4W6y4pqul/jcXniZDFGW
	4TTQy0wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDhI-0000000ANGO-0Kho;
	Mon, 04 Mar 2024 19:10:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDad-0000000AId4-0fzo
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iMsLV6mh9hMTtfV41iGUzizIX8J61fMr+GozwgCWU5w=; b=iV3MzCRdre6MyiygFLd2iKNWZa
	ijP7PMimW2QXUy3zYfAP7UcMPHi4G51s6O9SOh0T6G9IYA0KQYeby7UUd0p0zQxnDlqzryz6efZBO
	MfSGTBf6xDqm7tCljLXr2CKR2xZNTzoGje+hHueT4WICacTzDB4AY7hO0K3Q7m0PAZj746RYtLOFE
	9jGgTPAq4aoDMtXK8nMQdUs615dys4xUkaeEv3GucWrAKGBXMYRqh7MN0MrOliP1nA8RBXA+GE+mb
	XanTwLyUQq18zvHt5xVRziZWJMiglyZw5+nMNCDLFlR+/p4A1ewPgBs/jeTK8kZji+tRTgKFFDx/S
	86IvTpjg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaX-00000002BSx-0Zux
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00067R-9I; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-004PJQ-NQ; Mon, 04 Mar 2024 20:02:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-2Y;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:01 +0100
Message-Id: <20240304190038.3486881-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190301_338623_9A2D454D 
X-CRM114-Status: GOOD (  16.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 016/113] commands: kallsyms: add command-line interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When working on kallsyms code, it's useful to be able to resolve symbols
and decode addresses on the fly. Add a simple command to facilitate
this. There should be no need to enable this except for development.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig    |  9 ++++++++
 commands/Makefile   |  1 +
 commands/kallsyms.c | 50 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 60 insertions(+)
 create mode 100644 commands/kallsyms.c

diff --git a/commands/Kconfig b/commands/Kconfig
index d8bcb573fd43..04bfc85a951d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2199,6 +2199,15 @@ config CMD_FIRMWARELOAD
 	  Provides the "firmwareload" command which deals with devices which need
 	  firmware to work. It is also used to upload firmware to FPGA devices.
 
+config CMD_KALLSYMS
+	depends on KALLSYMS
+	bool
+	prompt "kallsyms"
+	help
+	  query kallsyms table
+
+	  Usage: kallsyns [SYMBOL | ADDRESS]
+
 config CMD_KEYSTORE
 	depends on CRYPTO_KEYSTORE
 	bool
diff --git a/commands/Makefile b/commands/Makefile
index b3114102765c..8fdff75a72a6 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -106,6 +106,7 @@ obj-$(CONFIG_CMD_READLINK)	+= readlink.o
 obj-$(CONFIG_CMD_LET)		+= let.o
 obj-$(CONFIG_CMD_LN)		+= ln.o
 obj-$(CONFIG_CMD_CLK)		+= clk.o
+obj-$(CONFIG_CMD_KALLSYMS)	+= kallsyms.o
 obj-$(CONFIG_CMD_KEYSTORE)	+= keystore.o
 obj-$(CONFIG_CMD_TFTP)		+= tftp.o
 obj-$(CONFIG_CMD_FILETYPE)	+= filetype.o
diff --git a/commands/kallsyms.c b/commands/kallsyms.c
new file mode 100644
index 000000000000..163cd99c1079
--- /dev/null
+++ b/commands/kallsyms.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/*
+ * kallsyms.c - translate address to symbols
+ */
+
+#include <common.h>
+#include <kallsyms.h>
+#include <command.h>
+#include <malloc.h>
+#include <complete.h>
+#include <getopt.h>
+#include <string.h>
+
+static int do_kallsyms(int argc, char *argv[])
+{
+	unsigned long addr;
+
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	if (kstrtoul(argv[1], 16, &addr) == 0) {
+		char sym[KSYM_SYMBOL_LEN];
+
+		sprint_symbol(sym, addr);
+
+		printf("%s\n", sym);
+		return 0;
+	}
+
+	if ((addr = kallsyms_lookup_name(argv[1]))) {
+		printf("0x%08lx\n", addr);
+		return 0;
+	}
+
+	return COMMAND_ERROR;
+}
+
+BAREBOX_CMD_HELP_START(kallsyms)
+BAREBOX_CMD_HELP_TEXT("Lookup address or symbol using kallsyms table")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(kallsyms)
+	.cmd	= do_kallsyms,
+	BAREBOX_CMD_DESC("query kallsyms table")
+	BAREBOX_CMD_OPTS("[SYMBOL | ADDRESS]")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_kallsyms_help)
+BAREBOX_CMD_END
-- 
2.39.2



