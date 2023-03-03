Delivery-date: Fri, 03 Mar 2023 10:28:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1iT-007Nsy-DQ
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:28:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1iR-0003ba-FV
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:28:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vPHPIAbNCEPZBH64CoaEPGKjdtcRgYtBfkPr0T2A6yY=; b=AYNCeFvbrpQC+ijdx02o1bngDF
	1qhWcWwtvXpy35mEbdtEBT5Fh0LkBmiqtcFsaEIL5/LQVKgQ8Gj4yHZDs+xvoN+lT6xjYBf1azpXy
	Rx/wCsWWZ7TMj/UUxJIeoUbvaqcheJujaKXCLQ7CQNNNPLQSzMJvRMFM+6FnxSHl7AmySTqPWqU00
	KUN/4m0FaR/QXNm7dm/YRvdnHK50+MoFem/GluG6h69Y0YUq9fEueTxndrq5/9EXO63ZzQLZemfpg
	KZVj8Jv+By2Z7sElS5f09Zgs8TzGtADot6hlCor8o9INuH1gGi92PFwm40Xs6JxE4R+VqQjpPCDVp
	fr+0a7dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1hE-005iR8-7I; Fri, 03 Mar 2023 09:27:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bq-005eUN-I5
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bh-0000ED-9M; Fri, 03 Mar 2023 10:21:41 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bg-001Wif-EB; Fri, 03 Mar 2023 10:21:40 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2in-SZ; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:12 +0100
Message-Id: <20230303092131.3063587-32-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012150_707373_62B0BED7 
X-CRM114-Status: GOOD (  13.52  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 31/50] ARM: omap: Only provide PUTC_LL() when activated
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With multi-arch support we must make sure we provide exactly one
PUTC_LL() function as indicated by the "Kernel low-level debugging port"
Kconfig choice. Make sure that the omap specific debug_ll.h only
provides PUTC_LL() when specified.
The omap specific debug_ll.h also provides other functions needed
by board code regardless if the omap debug_ll port is enabled or
not, so include it explicitly where needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/afi-gf/lowlevel.c            | 1 +
 arch/arm/boards/beagle/lowlevel.c            | 1 +
 arch/arm/boards/beaglebone/lowlevel.c        | 1 +
 arch/arm/boards/myirtech-x335x/lowlevel.c    | 1 +
 arch/arm/boards/phytec-som-am335x/lowlevel.c | 1 +
 arch/arm/boards/vscom-baltos/lowlevel.c      | 1 +
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c   | 1 +
 arch/arm/include/asm/debug_ll.h              | 6 ++++--
 common/Kconfig                               | 6 ++++++
 include/mach/omap/debug_ll.h                 | 2 +-
 10 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index d1c8e98434..5c38198a36 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -17,6 +17,7 @@
 #include <mach/omap/syslib.h>
 #include <mach/omap/am33xx-mux.h>
 #include <debug_ll.h>
+#include <mach/omap/debug_ll.h>
 
 /* AM335X EMIF Register values */
 #define	VTP_CTRL_READY		(0x1 << 5)
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index bd944c4f67..e53086cef0 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <init.h>
+#include <mach/omap/debug_ll.h>
 #include <debug_ll.h>
 #include <io.h>
 #include <linux/sizes.h>
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index b1ba66434b..5dc49dfaaf 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -5,6 +5,7 @@
 #include <io.h>
 #include <linux/string.h>
 #include <debug_ll.h>
+#include <mach/omap/debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/omap/am33xx-silicon.h>
diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index eb42182098..0ac2370e57 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -6,6 +6,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <debug_ll.h>
+#include <mach/omap/debug_ll.h>
 #include <init.h>
 #include <linux/sizes.h>
 #include <mach/omap/am33xx-clock.h>
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 2e2bdc9169..267f30b638 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -16,6 +16,7 @@
 #include <mach/omap/am33xx-mux.h>
 #include <mach/omap/am33xx-generic.h>
 #include <debug_ll.h>
+#include <mach/omap/debug_ll.h>
 
 #include "ram-timings.h"
 
diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index 80046a3b05..aee0cde651 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -6,6 +6,7 @@
 #include <io.h>
 #include <linux/string.h>
 #include <debug_ll.h>
+#include <mach/omap/debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/omap/am33xx-silicon.h>
diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
index cff6bfbfeb..5429065c2d 100644
--- a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
+++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
@@ -10,6 +10,7 @@
 #include <io.h>
 #include <linux/string.h>
 #include <debug_ll.h>
+#include <mach/omap/debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/omap/generic.h>
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 52e0b9223f..7c1152c6d9 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -11,6 +11,10 @@
 #include <mach/rockchip/debug_ll.h>
 #endif
 
+#ifdef CONFIG_DEBUG_OMAP_UART
+#include <mach/omap/debug_ll.h>
+#endif
+
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
@@ -40,8 +44,6 @@
 #include <mach/socfpga/debug_ll.h>
 #elif defined CONFIG_ARCH_PXA
 #include <mach/pxa/debug_ll.h>
-#elif defined CONFIG_ARCH_OMAP
-#include <mach/omap/debug_ll.h>
 #elif defined CONFIG_ARCH_NOMADIK
 #include <mach/nomadik/debug_ll.h>
 #elif defined CONFIG_ARCH_MXS
diff --git a/common/Kconfig b/common/Kconfig
index 25f78cca46..eeb33f3042 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1255,6 +1255,9 @@ config DEBUG_IMX_UART
 config DEBUG_ROCKCHIP_UART
 	bool
 
+config DEBUG_OMAP_UART
+	bool
+
 choice
 	prompt "Kernel low-level debugging port"
 	depends on DEBUG_LL
@@ -1365,6 +1368,7 @@ config DEBUG_VF610_UART
 config DEBUG_OMAP3_UART
 	bool "OMAP3 Debug UART"
 	depends on ARCH_OMAP3
+	select DEBUG_OMAP_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on OMAP3.
@@ -1372,6 +1376,7 @@ config DEBUG_OMAP3_UART
 config DEBUG_OMAP4_UART
 	bool "OMAP4 Debug UART"
 	depends on ARCH_OMAP4
+	select DEBUG_OMAP_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on OMAP4.
@@ -1379,6 +1384,7 @@ config DEBUG_OMAP4_UART
 config DEBUG_AM33XX_UART
 	bool "AM33XX Debug UART"
 	depends on ARCH_AM33XX
+	select DEBUG_OMAP_UART
 	help
 	  Say Y here if you want kernel low-level debugging support
 	  on AM33XX.
diff --git a/include/mach/omap/debug_ll.h b/include/mach/omap/debug_ll.h
index b696c3cb37..a6cd9a77c4 100644
--- a/include/mach/omap/debug_ll.h
+++ b/include/mach/omap/debug_ll.h
@@ -22,7 +22,7 @@
 #include <mach/omap/omap4-silicon.h>
 #include <mach/omap/am33xx-silicon.h>
 
-#ifdef CONFIG_DEBUG_LL
+#ifdef CONFIG_DEBUG_OMAP_UART
 
 #ifdef CONFIG_DEBUG_OMAP3_UART
 #define OMAP_DEBUG_SOC OMAP3
-- 
2.30.2



