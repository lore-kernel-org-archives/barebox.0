Delivery-date: Fri, 03 Mar 2023 10:23:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dH-007NUc-2z
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:23:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dF-0000oz-4Q
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:23:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fWT6hRTLSll/HYx7imdI/A2ffWCXGiqJUc4ZWgYUl94=; b=1wRuCARr33U+UXUK7siQgMExFp
	rUmpDKSuEJmfX8PlaCXz4l0Gsbu2rGtpFsS7SOWSGV8+YgWte0dE/cAA448xfcB84oPAgNWT2MfC1
	lGoyYbW2dljUg16q+uKjhvBu058lw8YkF8s3rJRDjjIkySWAatuz/7903snVPxw04rcQlHjwLc7LP
	AEwFpNM88R0OXtQogVZV5XTGdBY8V1/8a+GLuoicy/H4w34ymBiqv/tWeuyHKZOV4PBXMt6oc5QQR
	3yHkD5W55XyCNur4gkpoJxpHUQW9FJG8+oj6MhiJ5AJQ3tQR6jfrOYoFlFHBQ2mwdODe2NtUg9NRw
	f/5As4BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bl-005ePR-QC; Fri, 03 Mar 2023 09:21:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bd-005eJm-PW
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bc-00009J-JB; Fri, 03 Mar 2023 10:21:36 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-001WhI-P1; Fri, 03 Mar 2023 10:21:35 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2eW-3O; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:49 +0100
Message-Id: <20230303092131.3063587-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012138_064410_646FA172 
X-CRM114-Status: GOOD (  14.15  )
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
Subject: [PATCH 08/50] ARM: zynq: Move mach header files to include/mach/zynq
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all zynq specific header files to include/mach/zynq/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/avnet-zedboard/board.c                        | 2 +-
 arch/arm/boards/avnet-zedboard/lowlevel.c                     | 4 ++--
 arch/arm/boards/avnet-zedboard/zedboard.zynqcfg               | 4 ++--
 arch/arm/include/asm/debug_ll.h                               | 2 ++
 arch/arm/mach-zynq/cpu_init.c                                 | 2 +-
 arch/arm/mach-zynq/zynq.c                                     | 2 +-
 drivers/clk/zynq/clkc.c                                       | 2 +-
 images/Makefile.zynq                                          | 2 +-
 .../mach-zynq/include/mach => include/mach/zynq}/debug_ll.h   | 2 +-
 {arch/arm/mach-zynq/include/mach => include/mach/zynq}/init.h | 0
 .../include/mach => include/mach/zynq}/zynq-flash-header.h    | 0
 .../include/mach => include/mach/zynq}/zynq7000-header-regs.h | 0
 .../include/mach => include/mach/zynq}/zynq7000-regs.h        | 0
 scripts/Makefile                                              | 2 +-
 scripts/zynq_mkimage.c                                        | 2 +-
 15 files changed, 14 insertions(+), 12 deletions(-)
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/debug_ll.h (95%)
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/init.h (100%)
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/zynq-flash-header.h (100%)
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/zynq7000-header-regs.h (100%)
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/zynq7000-regs.h (100%)

diff --git a/arch/arm/boards/avnet-zedboard/board.c b/arch/arm/boards/avnet-zedboard/board.c
index b8396d1996..2a6b1ab701 100644
--- a/arch/arm/boards/avnet-zedboard/board.c
+++ b/arch/arm/boards/avnet-zedboard/board.c
@@ -6,7 +6,7 @@
 #include <environment.h>
 #include <generated/mach-types.h>
 #include <init.h>
-#include <mach/zynq7000-regs.h>
+#include <mach/zynq/zynq7000-regs.h>
 #include <linux/sizes.h>
 
 
diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 87ce79863d..6e5a17d7ef 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -5,8 +5,8 @@
 #include <io.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
-#include <mach/init.h>
-#include <mach/zynq7000-regs.h>
+#include <mach/zynq/init.h>
+#include <mach/zynq/zynq7000-regs.h>
 #include <serial/cadence.h>
 
 #define DCI_DONE	(1 << 13)
diff --git a/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg b/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
index 3f8808d3d7..c6a96aec7b 100644
--- a/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
+++ b/arch/arm/boards/avnet-zedboard/zedboard.zynqcfg
@@ -1,4 +1,4 @@
-#include <mach/zynq7000-header-regs.h>
+#include <zynq/zynq7000-header-regs.h>
 
 wm 32 ZYNQ_SLCR_UNLOCK		0x0000DF0D
 wm 32 ZYNQ_CLK_621_TRUE		0x00000001
@@ -21,4 +21,4 @@ wm 32 ZYNQ_IO_PLL_CTRL		0x0001E000
 wm 32 ZYNQ_SDIO_CLK_CTRL	0x00000a03
 
 /* stop */
-wm 32 0xFFFFFFFF			0x00000000
\ No newline at end of file
+wm 32 0xFFFFFFFF			0x00000000
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index e914894a7a..caf13e52f2 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -20,6 +20,8 @@
 #include <mach/bcm283x/debug_ll.h>
 #elif defined CONFIG_ARCH_STM32MP
 #include <mach/stm32mp/debug_ll.h>
+#elif defined CONFIG_ARCH_ZYNQ
+#include <mach/zynq/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-zynq/cpu_init.c b/arch/arm/mach-zynq/cpu_init.c
index ca7c4b2979..7194c7e216 100644
--- a/arch/arm/mach-zynq/cpu_init.c
+++ b/arch/arm/mach-zynq/cpu_init.c
@@ -3,7 +3,7 @@
 #include <common.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/errata.h>
-#include <mach/init.h>
+#include <mach/zynq/init.h>
 
 void zynq_cpu_lowlevel_init(void)
 {
diff --git a/arch/arm/mach-zynq/zynq.c b/arch/arm/mach-zynq/zynq.c
index 5abd52f6a2..2d76a68a5e 100644
--- a/arch/arm/mach-zynq/zynq.c
+++ b/arch/arm/mach-zynq/zynq.c
@@ -18,7 +18,7 @@
 #include <common.h>
 #include <init.h>
 #include <io.h>
-#include <mach/zynq7000-regs.h>
+#include <mach/zynq/zynq7000-regs.h>
 #include <restart.h>
 
 static void __noreturn zynq_restart_soc(struct restart_handler *rst)
diff --git a/drivers/clk/zynq/clkc.c b/drivers/clk/zynq/clkc.c
index 53b4592c7f..8e4beda295 100644
--- a/drivers/clk/zynq/clkc.c
+++ b/drivers/clk/zynq/clkc.c
@@ -15,7 +15,7 @@
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <linux/err.h>
-#include <mach/zynq7000-regs.h>
+#include <mach/zynq/zynq7000-regs.h>
 #include <malloc.h>
 
 enum zynq_clk {
diff --git a/images/Makefile.zynq b/images/Makefile.zynq
index 3e61ad6eb6..ac9ce8157b 100644
--- a/images/Makefile.zynq
+++ b/images/Makefile.zynq
@@ -4,7 +4,7 @@
 #
 
 zynqcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
-                     -I $(srctree)/arch/arm/mach-zynq/include
+                     -I $(srctree)/include/mach
 
 zynqcfg-tmp = $(subst $(comma),_,$(dot-target).zynqcfg.tmp)
 
diff --git a/arch/arm/mach-zynq/include/mach/debug_ll.h b/include/mach/zynq/debug_ll.h
similarity index 95%
rename from arch/arm/mach-zynq/include/mach/debug_ll.h
rename to include/mach/zynq/debug_ll.h
index 1f626cd413..e360fee15e 100644
--- a/arch/arm/mach-zynq/include/mach/debug_ll.h
+++ b/include/mach/zynq/debug_ll.h
@@ -8,7 +8,7 @@
 #define __MACH_DEBUG_LL_H__
 
 #include <io.h>
-#include <mach/zynq7000-regs.h>
+#include <mach/zynq/zynq7000-regs.h>
 
 #ifndef CONFIG_ZYNQ_DEBUG_LL_UART_BASE
 #warning define ZYNQ_DEBUG_LL_UART_BASE properly for debug_ll
diff --git a/arch/arm/mach-zynq/include/mach/init.h b/include/mach/zynq/init.h
similarity index 100%
rename from arch/arm/mach-zynq/include/mach/init.h
rename to include/mach/zynq/init.h
diff --git a/arch/arm/mach-zynq/include/mach/zynq-flash-header.h b/include/mach/zynq/zynq-flash-header.h
similarity index 100%
rename from arch/arm/mach-zynq/include/mach/zynq-flash-header.h
rename to include/mach/zynq/zynq-flash-header.h
diff --git a/arch/arm/mach-zynq/include/mach/zynq7000-header-regs.h b/include/mach/zynq/zynq7000-header-regs.h
similarity index 100%
rename from arch/arm/mach-zynq/include/mach/zynq7000-header-regs.h
rename to include/mach/zynq/zynq7000-header-regs.h
diff --git a/arch/arm/mach-zynq/include/mach/zynq7000-regs.h b/include/mach/zynq/zynq7000-regs.h
similarity index 100%
rename from arch/arm/mach-zynq/include/mach/zynq7000-regs.h
rename to include/mach/zynq/zynq7000-regs.h
diff --git a/scripts/Makefile b/scripts/Makefile
index ac88ebb240..72ad9ad7a6 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -20,7 +20,7 @@ hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
 hostprogs-always-$(CONFIG_MVEBU_HOSTTOOLS)		+= kwbimage kwboot mvebuimg
 hostprogs-always-$(CONFIG_OMAP_IMAGE)			+= omap_signGP mk-omap-image
 hostprogs-always-$(CONFIG_DAVINCI_IMAGE)		+= mkublheader
-HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/arch/arm/mach-zynq/include
+HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/include/mach
 hostprogs-always-$(CONFIG_ZYNQ_MKIMAGE)			+= zynq_mkimage
 hostprogs-always-$(CONFIG_SOCFPGA_MKIMAGE)		+= socfpga_mkimage
 hostprogs-always-$(CONFIG_MXS_HOSTTOOLS)		+= mxsimage mxsboot
diff --git a/scripts/zynq_mkimage.c b/scripts/zynq_mkimage.c
index b611d5c69b..9c1e23ef00 100644
--- a/scripts/zynq_mkimage.c
+++ b/scripts/zynq_mkimage.c
@@ -5,7 +5,7 @@
 #include <errno.h>
 #include <getopt.h>
 #include <linux/kernel.h>
-#include <mach/zynq-flash-header.h>
+#include <zynq/zynq-flash-header.h>
 #include <malloc.h>
 #include <stdint.h>
 #include <stdio.h>
-- 
2.30.2



