Delivery-date: Wed, 03 Jan 2024 19:35:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65m-002O4e-2j
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65f-0006yt-92
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rb0UsZXI4yOUr9uH4uIs6JMebEmLD5cYa91pzMEOwRg=; b=SVjABGzIxlhoyWWbTatNHo5E7C
	zwf0Uv6E+378qMoEPJ2OUUf3kwizrtxmzVV2Up1hIMhXnjuWDyBh/m4bHcVBace7854cBgv/lP8Jn
	7qbJ9aXTZFqNYE3+YykTH/GyinIETgjv8Ba5hWpv3QJdaCagu8hUtQXTh5X7oyDmXX2wwGlzmJCQb
	jlpKXsDRIk9bSqwdGaSxCfwgEkNl8OpFryneVvjRDkmdIm4iiszYF0/FiZgtuMd5dUN3jgP+OAY1G
	Im6DIZCn8v8u4m/0z4nw4SAMM+wRZB4o0lJQMWTAJdQ5vD0+Opv1b5qKhdXHB73V1OZlxzRdIhxRd
	qcLuqd0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL642-00Bkdw-1r;
	Wed, 03 Jan 2024 18:34:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61J-00BhMv-1s
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Rb0UsZXI4yOUr9uH4uIs6JMebEmLD5cYa91pzMEOwRg=; b=m/2X32WeBLL2K6zPeeLvFF+u2x
	x4xQVlBTPqSlCyhyJ082t3Xkg7GaFmRWjfu1ivjBbjB/GtTpzbI+0sg1LGQA3Hp6g8+k0Fl3gZpep
	My/tIkz8r2aTrsnYei3yhU/UoCSponFnjedpR7Ez6lzTHOGpl7AOl8/jzynNpQsWb7pQYibFcdNSb
	NjBXju36UN0InUKD45jAH/tb39pDdFsQ6TO9kFJYnMPaeFr9pGl6drYCG9kbOjsb1VbrLaUQp9h7E
	7t/JDc8kThTCiO6/W2tamJxxknuaUs5BMIRCytBk8x+l/GBYaDaB5puOThUypZ6WdmmmPCDw1f9Br
	ua6yhwVg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61C-005eC1-14
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001b7-M3; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000AwY-9L; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-2A;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:36 +0100
Message-Id: <20240103181312.409668-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183106_598527_8F02D070 
X-CRM114-Status: GOOD (  16.49  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 016/112] commands: kallsyms: add command-line interface
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
index a6806f198ec4..d27c20478fcf 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2178,6 +2178,15 @@ config CMD_FIRMWARELOAD
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
index 4924755500e3..c8cb21a7db88 100644
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



