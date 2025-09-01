Delivery-date: Mon, 01 Sep 2025 19:29:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut8LG-006z6t-3B
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 19:29:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut8LF-0006jz-Og
	for lore@pengutronix.de; Mon, 01 Sep 2025 19:29:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Qqy6ibjcw4X4CWkeUKxyc2b0wj682h1aAG1oQmpjXic=; b=xNSY5M1XFdP9Lqy1RzKvCzeg2e
	vga8e4TJOh5NPZlM+Qvp2eXezMkLWKhKVqFtI2qadAFPx9c2oU5J4EZzXA3TDpziYh97QT/lwEJ+2
	JXylc702jkI1wa2PBd/HuMPcf9+fc/OK3kbd0dCeM8AMvu3a4fqnuP2fqNjE1TfxLC5Mj1TilviVN
	EB53vkXkQvghBVmw2cKM55yYED6pQdULdz4A5HNtVUtDA2gwUnvrqWsJ6lSs8abqYolKERAK09Ozh
	mm66+swPV9avFw8iCvOvYVGu+8TW/X/rjon/7SHt0ZlTjSEh+etAa0DJbhAaiVTr/HkJB/ufpfZar
	J/r41/rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut8Kj-0000000DSTz-26Ru;
	Mon, 01 Sep 2025 17:28:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut5HK-0000000CoUM-23pH
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 14:13:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut5HI-00005p-Hy; Mon, 01 Sep 2025 16:13:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut5HI-003Emu-1C;
	Mon, 01 Sep 2025 16:13:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut5HI-00000001k7f-1Aqt;
	Mon, 01 Sep 2025 16:13:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Sep 2025 16:12:55 +0200
Message-ID: <20250901141259.415561-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_071302_537880_A49C9D7D 
X-CRM114-Status: GOOD (  15.28  )
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
Subject: [PATCH master 1/3] console: move full ctrl+c implementation into separate file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is no reason to keep different ctrl+c implementations for the full
and simple console case. In preparation for unifying them, move the
implementation into its own file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Makefile        |  2 +-
 common/console.c       | 60 -------------------------------------
 common/console_ctrlc.c | 67 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 68 insertions(+), 61 deletions(-)
 create mode 100644 common/console_ctrlc.c

diff --git a/common/Makefile b/common/Makefile
index 7a91ef21f79b..9f98de72854f 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -32,7 +32,7 @@ obj-$(CONFIG_BOOTM)		+= bootm.o booti.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_MEMTEST)		+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
-obj-$(CONFIG_CONSOLE_FULL)	+= console.o
+obj-$(CONFIG_CONSOLE_FULL)	+= console.o console_ctrlc.o
 obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
 obj-y				+= console_countdown.o
 obj-pbl-$(CONFIG_DDR_SPD)	+= ddr_spd.o
diff --git a/common/console.c b/common/console.c
index dc552e4c5dac..a31433a659e2 100644
--- a/common/console.c
+++ b/common/console.c
@@ -635,65 +635,5 @@ void console_flush(void)
 }
 EXPORT_SYMBOL(console_flush);
 
-static int ctrlc_abort;
-static int ctrlc_allowed;
-
-void ctrlc_handled(void)
-{
-	ctrlc_abort = 0;
-}
-
-int ctrlc_non_interruptible(void)
-{
-	int ret = 0;
-
-	if (!ctrlc_allowed)
-		return 0;
-
-	if (ctrlc_abort)
-		return 1;
-
-#ifdef CONFIG_ARCH_HAS_CTRLC
-	ret = arch_ctrlc();
-#else
-	if (tstc() && getchar() == 3)
-		ret = 1;
-#endif
-
-	if (ret)
-		ctrlc_abort = 1;
-
-	return ret;
-}
-EXPORT_SYMBOL(ctrlc_non_interruptible);
-
-/* test if ctrl-c was pressed */
-int ctrlc(void)
-{
-	resched();
-	return ctrlc_non_interruptible();
-}
-EXPORT_SYMBOL(ctrlc);
-
-static int console_ctrlc_init(void)
-{
-	globalvar_add_simple_bool("console.ctrlc_allowed", &ctrlc_allowed);
-	return 0;
-}
-device_initcall(console_ctrlc_init);
-
-void console_ctrlc_allow(void)
-{
-	ctrlc_allowed = 1;
-}
-
-void console_ctrlc_forbid(void)
-{
-	ctrlc_allowed = 0;
-}
-
-BAREBOX_MAGICVAR(global.console.ctrlc_allowed,
-		"If true, scripts can be aborted with ctrl-c");
-
 BAREBOX_MAGICVAR(global.linux.bootargs.console,
 		"console= argument for Linux from the stdout-path property in /chosen node");
diff --git a/common/console_ctrlc.c b/common/console_ctrlc.c
new file mode 100644
index 000000000000..0272eec280d1
--- /dev/null
+++ b/common/console_ctrlc.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <stdio.h>
+#include <console.h>
+#include <sched.h>
+#include <globalvar.h>
+#include <magicvar.h>
+
+static int ctrlc_abort;
+static int ctrlc_allowed;
+
+void ctrlc_handled(void)
+{
+	ctrlc_abort = 0;
+}
+
+int ctrlc_non_interruptible(void)
+{
+	int ret = 0;
+
+	if (!ctrlc_allowed)
+		return 0;
+
+	if (ctrlc_abort)
+		return 1;
+
+#ifdef CONFIG_ARCH_HAS_CTRLC
+	ret = arch_ctrlc();
+#else
+	if (tstc() && getchar() == 3)
+		ret = 1;
+#endif
+
+	if (ret)
+		ctrlc_abort = 1;
+
+	return ret;
+}
+EXPORT_SYMBOL(ctrlc_non_interruptible);
+
+/* test if ctrl-c was pressed */
+int ctrlc(void)
+{
+	resched();
+	return ctrlc_non_interruptible();
+}
+EXPORT_SYMBOL(ctrlc);
+
+static int console_ctrlc_init(void)
+{
+	globalvar_add_simple_bool("console.ctrlc_allowed", &ctrlc_allowed);
+	return 0;
+}
+device_initcall(console_ctrlc_init);
+
+void console_ctrlc_allow(void)
+{
+	ctrlc_allowed = 1;
+}
+
+void console_ctrlc_forbid(void)
+{
+	ctrlc_allowed = 0;
+}
+
+BAREBOX_MAGICVAR(global.console.ctrlc_allowed,
+		"If true, scripts can be aborted with ctrl-c");
-- 
2.47.2



