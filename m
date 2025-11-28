Delivery-date: Fri, 28 Nov 2025 12:00:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDY-005lBR-0w
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 12:00:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOwDX-00024F-3j
	for lore@pengutronix.de; Fri, 28 Nov 2025 12:00:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yR+0wxQz5JRJ5iWpAENrczY08NP39FziUeAvfDVHKfo=; b=h3aTn8Jbtohh2yRDQcNmrWXrvy
	ZgF32zrvGX1yxSMfFAQdB4PO09d1+p8kPB5ztO0l45B2HZ2YqocOSWu+mFmiIBxTV4A3E3wUR4j3z
	yLoUIrOGAfKQ+ic/LVIedzWpm0bFB2PmUDqX0O9wD7Tw9TcA8QvJxAyzeax2HaHzyB7wS1elmH3Gk
	e8ZV7ZdN3RujSQ8UFFeQS0Q8ujHWS4WINycbCOq4xFJa5is/Ogd4LzcFH8hs9i9fbMW4nrepv1Wh7
	3tHeYOvfpnNdAT1Q9kJZKSU7+0XUvv3sGi2Yfr9qqut8j2/SuJrhUYtYY70fHHlWMWFNRWGKWzBae
	ff3AOe7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwCz-00000000KU3-267X;
	Fri, 28 Nov 2025 11:00:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOwCw-00000000KSN-47hD
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:00:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0001iT-Ia
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 12:00:09 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-002wNn-1A
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOwCv-0000000EOeF-0uVk
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 12:00:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:58:41 +0100
Message-ID: <20251128110005.3336591-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128110005.3336591-1-a.fatoum@pengutronix.de>
References: <20251128110005.3336591-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_030011_024173_FC61B11F 
X-CRM114-Status: GOOD (  17.85  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] openrisc: drop <config.h> usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Generation per-board config.h headers is a left-over from times long
past. For most boards it's no longer possible anyway due to multi-image
suppot, but for legacy boards that still use it, let's switch away from
this magic in preparation for removal.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/openrisc/Kconfig                 |  2 +-
 arch/openrisc/Makefile                |  4 ++++
 arch/openrisc/boards/generic/config.h | 25 -------------------------
 arch/openrisc/cpu/barebox.lds.S       |  2 +-
 arch/openrisc/cpu/start.S             |  2 +-
 arch/openrisc/include/asm/config.h    | 15 +++++++++++++++
 arch/openrisc/lib/board.c             |  5 +++--
 arch/openrisc/lib/clock.c             |  1 +
 arch/openrisc/lib/cpuinfo.c           |  3 ++-
 9 files changed, 28 insertions(+), 31 deletions(-)
 delete mode 100644 arch/openrisc/boards/generic/config.h
 create mode 100644 arch/openrisc/include/asm/config.h

diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index d79743962a42..41a4efc691c7 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -16,7 +16,7 @@ config ARCH_MKIMAGE_NAME
 # not used
 config ARCH_TEXT_BASE
 	hex
-	default 0x00000000
+	default 0x1f80000
 
 config BUILTIN_DTB
 	bool "link a DTB into the barebox image"
diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index 609b998de98e..b7b84f78392b 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -31,4 +31,8 @@ dts := arch/openrisc/dts
 %.dtb: scripts
 	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
 
+TEXT_BASE = $(CONFIG_ARCH_TEXT_BASE)
+
+KBUILD_CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
+
 KBUILD_IMAGE := barebox
diff --git a/arch/openrisc/boards/generic/config.h b/arch/openrisc/boards/generic/config.h
deleted file mode 100644
index 2d836d0063ed..000000000000
--- a/arch/openrisc/boards/generic/config.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-#ifndef _GENERIC_NAMES_H_
-#define _GENERIC_NAMES_H_
-
-#define CONFIG_SYS_CLK_FREQ		50000000
-
-#define OPENRISC_TIMER_FREQ		CONFIG_SYS_CLK_FREQ
-
-#define OPENRISC_SOPC_MEMORY_BASE	0x00000000
-#define OPENRISC_SOPC_MEMORY_SIZE	0x02000000
-
-/* We reserve 512K for barebox */
-#define BAREBOX_RESERVED_SIZE		0x80000
-
-/* Barebox will be at top of main memory */
-#define OPENRISC_SOPC_TEXT_BASE		(OPENRISC_SOPC_MEMORY_BASE + OPENRISC_SOPC_MEMORY_SIZE - BAREBOX_RESERVED_SIZE)
-
-/*
-* TEXT_BASE is defined here because STACK_BASE definition
-*  in include/asm-generic/memory_layout.h uses this name
-*/
-
-#define TEXT_BASE                       OPENRISC_SOPC_TEXT_BASE
-
-#endif
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index 26bb622edc27..3473181b0231 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -13,7 +13,7 @@
  *
  */
 
-#include <config.h>
+#include <asm/config.h>
 #include <asm/barebox.lds.h>
 
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
diff --git a/arch/openrisc/cpu/start.S b/arch/openrisc/cpu/start.S
index c448d3775f37..974eda212139 100644
--- a/arch/openrisc/cpu/start.S
+++ b/arch/openrisc/cpu/start.S
@@ -14,7 +14,7 @@
  *
  */
 
-#include <config.h>
+#include <asm/config.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/spr-defs.h>
 
diff --git a/arch/openrisc/include/asm/config.h b/arch/openrisc/include/asm/config.h
new file mode 100644
index 000000000000..85d777db8f63
--- /dev/null
+++ b/arch/openrisc/include/asm/config.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef _OPENRISC_ASM_CONFIG_H_
+#define _OPENRISC_ASM_CONFIG_H_
+
+#define CFG_SYS_CLK_FREQ		50000000
+
+#define OPENRISC_TIMER_FREQ		CFG_SYS_CLK_FREQ
+
+#define OPENRISC_SOPC_MEMORY_BASE	0x00000000
+#define OPENRISC_SOPC_MEMORY_SIZE	0x02000000
+
+/* We reserve 512K for barebox */
+#define BAREBOX_RESERVED_SIZE		0x80000
+
+#endif
diff --git a/arch/openrisc/lib/board.c b/arch/openrisc/lib/board.c
index c6f34ed412d7..3556f3ecee31 100644
--- a/arch/openrisc/lib/board.c
+++ b/arch/openrisc/lib/board.c
@@ -19,14 +19,15 @@
 #include <memory.h>
 #include <asm-generic/memory_layout.h>
 #include <debug_ll.h>
+#include <asm/config.h>
 
 /* Called from assembly */
 void openrisc_start_barebox(void);
 
 void __noreturn openrisc_start_barebox(void)
 {
-	mem_malloc_init((void *)(OPENRISC_SOPC_TEXT_BASE - MALLOC_SIZE),
-			(void *)(OPENRISC_SOPC_TEXT_BASE - 1));
+	mem_malloc_init((void *)(TEXT_BASE - MALLOC_SIZE),
+			(void *)(TEXT_BASE  - 1));
 
 	putc_ll('>');
 
diff --git a/arch/openrisc/lib/clock.c b/arch/openrisc/lib/clock.c
index 651b163f13cb..a45de30f9426 100644
--- a/arch/openrisc/lib/clock.c
+++ b/arch/openrisc/lib/clock.c
@@ -16,6 +16,7 @@
 #include <common.h>
 #include <clock.h>
 #include <init.h>
+#include <asm/config.h>
 #include <asm/system.h>
 #include <asm/openrisc_exc.h>
 
diff --git a/arch/openrisc/lib/cpuinfo.c b/arch/openrisc/lib/cpuinfo.c
index d94178ea59de..4aa4d35bf91d 100644
--- a/arch/openrisc/lib/cpuinfo.c
+++ b/arch/openrisc/lib/cpuinfo.c
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <asm/config.h>
 #include <asm/system.h>
 #include <asm/cache.h>
 #include <asm/openrisc_exc.h>
@@ -114,7 +115,7 @@ static int checkcpu(void)
 	char impl_str[50];
 
 	printf("CPU:   OpenRISC-%x00 (rev %d) @ %d MHz\n",
-		ver, rev, (CONFIG_SYS_CLK_FREQ / 1000000));
+		ver, rev, (CFG_SYS_CLK_FREQ / 1000000));
 
 	if (vr2) {
 		cpu_implementation(vr2, impl_str);
-- 
2.47.3



