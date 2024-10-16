Delivery-date: Wed, 16 Oct 2024 10:57:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zqv-004zuA-0K
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 10:57:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0zqu-0004W9-Au
	for lore@pengutronix.de; Wed, 16 Oct 2024 10:57:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Cg715QH8k+6LxgUyeyiIGOni+XIgjnmjqI06y1NRhik=; b=34GMivOclUxRiKm/ahS1tItlI/
	4r8dHPoLSCqyQ9IgyHYbxeZC0mKvNrNWed83M8SwPwVi5uiV1gq8IEbVsTM156RqGY/bjC/xvbzIx
	ZCrpyFaFg6Wt1LSV0rgaTIh/DUS0yOwW7Sl6mzqJGylwXk1WUS7uddJoxTeZUcx55MG4zrxoTT/w5
	xoGpE3nBCvC0tLTazcF8+heXPv3Ito1sjCFPINa7BHQyeOu5Wrcef4AwdFTZ/qCMehBrp/oEEvGq0
	oEEstjyfhJfoj8p/25E5K1mpjTNLOYFN9+bWzVWXBEzmLWgEWf7ABG9PGO58Y0qomtGOz9w+PT56W
	RiRn1ZRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zqQ-0000000B87I-0HsJ;
	Wed, 16 Oct 2024 08:57:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zon-0000000B7h9-2xEs
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 08:55:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zom-00043I-8H; Wed, 16 Oct 2024 10:55:44 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zol-002EH9-SB; Wed, 16 Oct 2024 10:55:43 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0zol-00GcsI-2X;
	Wed, 16 Oct 2024 10:55:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Oct 2024 10:55:43 +0200
Message-Id: <20241016085543.3961965-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241016085543.3961965-1-a.fatoum@pengutronix.de>
References: <20241016085543.3961965-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_015545_770459_EEEACD80 
X-CRM114-Status: GOOD (  14.60  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] sandbox: add cpuinfo command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have stack dump support in sandbox via AddressSanitizer, if it's
compiled in. To make it easier to test proper operation, let's a cpuinfo
command like we already do on ARM and give it the same -s option.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig         |  7 +++++++
 arch/sandbox/board/Makefile  |  1 +
 arch/sandbox/board/cpuinfo.c | 40 ++++++++++++++++++++++++++++++++++++
 3 files changed, 48 insertions(+)
 create mode 100644 arch/sandbox/board/cpuinfo.c

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 52915490ca98..caff3a138fea 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -58,6 +58,13 @@ config SANDBOX_REEXEC
 	  The normal reset handler hangs barebox. On Linux, barebox
 	  instead can exec itself to simulate a reset.
 
+config CMD_SANDBOX_CPUINFO
+	bool "cpuinfo command"
+	depends on COMMAND_SUPPORT
+	default y
+	help
+	  Say yes here to get a dummy cpuinfo command.
+
 config SDL
 	bool
 
diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index 8e6e1d2d8843..029bfe7ff163 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -10,6 +10,7 @@ obj-y += dtb.o
 obj-y += power.o
 obj-y += dev-random.o
 obj-y += watchdog.o
+obj-$(CONFIG_CMD_SANDBOX_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_LED) += led.o
 
 extra-y += barebox.lds
diff --git a/arch/sandbox/board/cpuinfo.c b/arch/sandbox/board/cpuinfo.c
new file mode 100644
index 000000000000..ce2762e607fd
--- /dev/null
+++ b/arch/sandbox/board/cpuinfo.c
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <getopt.h>
+#include <command.h>
+#include <complete.h>
+
+static int do_cpuinfo(int argc, char *argv[])
+{
+	int opt;
+
+	while ((opt = getopt(argc, argv, "s")) > 0) {
+		switch (opt) {
+		case 's':
+			if (!IS_ENABLED(CONFIG_ARCH_HAS_STACK_DUMP))
+				return -ENOSYS;
+
+			dump_stack();
+			return 0;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(cpuinfo)
+BAREBOX_CMD_HELP_TEXT("Shows misc info about CPU")
+BAREBOX_CMD_HELP_OPT ("-s", "print call stack info (if supported)")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(cpuinfo)
+	.cmd            = do_cpuinfo,
+	BAREBOX_CMD_DESC("show info about CPU")
+	BAREBOX_CMD_OPTS("[-s]")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+	BAREBOX_CMD_HELP(cmd_cpuinfo_help)
+BAREBOX_CMD_END
-- 
2.39.5



