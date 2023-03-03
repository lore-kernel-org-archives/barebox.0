Delivery-date: Fri, 03 Mar 2023 10:23:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dX-007NWA-Ae
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:23:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1dW-0000vL-9b
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:23:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=98Tr4UkLW8EMNDrFjoLmQjq2TP8S6fXDvHGnVNnZ4XI=; b=uPGsqBdcYctvEuyYtodH4el5u/
	5B5Ijl1Vn8iRTG5DGC/Rkq7ZpwTD5bZykOx5uvKHCCLtjR8UU7axQ+3ExqpzJeKdWFBFoeJmipB28
	sHvXm/sWfnVieymdwovoZlnMKG7ayZssWfuM2VpQ5lbgYyTrWt6xwpgYzE/mruXPf2rpnr2uRpib2
	9pHgITsTE4fPouBc3d5jRWHI2aHl6M2s53w4ARD7nv9xaUodMUsmhNA78TreFCuh6PLEMS087rN8Z
	1rzwTvIR2eUfz4m9bcjuAeDzpK/uXdCnaYgxmoQmy1H32tlyNPM3lYquFHbPuozERsr6UQRPuKjUj
	br9gQoVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1c7-005ecq-Tk; Fri, 03 Mar 2023 09:22:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1be-005eKT-Ti
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bd-0000A8-Lz; Fri, 03 Mar 2023 10:21:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bc-001Wha-RI; Fri, 03 Mar 2023 10:21:36 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2ex-5K; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:52 +0100
Message-Id: <20230303092131.3063587-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012139_169876_70DB397B 
X-CRM114-Status: GOOD (  14.04  )
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
Subject: [PATCH 11/50] ARM: layerscape: Move mach header files to include/mach/layerscape
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently arch specific headers can be included with
longer possible as there won't be a single mach anymore.

Move all layerscape specific header files to include/mach/layerscape/ to
prepare for multi-arch support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1046ardb/board.c                        | 4 ++--
 arch/arm/boards/ls1046ardb/lowlevel.c                     | 8 ++++----
 arch/arm/boards/tqmls1046a/board.c                        | 4 ++--
 arch/arm/boards/tqmls1046a/lowlevel.c                     | 8 ++++----
 arch/arm/include/asm/debug_ll.h                           | 2 ++
 arch/arm/mach-layerscape/boot.c                           | 2 +-
 arch/arm/mach-layerscape/errata.c                         | 4 ++--
 arch/arm/mach-layerscape/lowlevel-ls1046a.c               | 4 ++--
 arch/arm/mach-layerscape/ppa.c                            | 2 +-
 arch/arm/mach-layerscape/xload-qspi.c                     | 4 ++--
 arch/arm/mach-layerscape/xload.c                          | 4 ++--
 .../include/mach => include/mach/layerscape}/bbu.h        | 0
 .../include/mach => include/mach/layerscape}/debug_ll.h   | 0
 .../include/mach => include/mach/layerscape}/errata.h     | 0
 .../include/mach => include/mach/layerscape}/layerscape.h | 0
 .../include/mach => include/mach/layerscape}/lowlevel.h   | 0
 .../include/mach => include/mach/layerscape}/xload.h      | 0
 17 files changed, 24 insertions(+), 22 deletions(-)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/bbu.h (100%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/debug_ll.h (100%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/errata.h (100%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/layerscape.h (100%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/lowlevel.h (100%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/xload.h (100%)

diff --git a/arch/arm/boards/ls1046ardb/board.c b/arch/arm/boards/ls1046ardb/board.c
index 5e42209c8b..921629d2a8 100644
--- a/arch/arm/boards/ls1046ardb/board.c
+++ b/arch/arm/boards/ls1046ardb/board.c
@@ -13,8 +13,8 @@
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <asm/system.h>
-#include <mach/layerscape.h>
-#include <mach/bbu.h>
+#include <mach/layerscape/layerscape.h>
+#include <mach/layerscape/bbu.h>
 #include <of_address.h>
 #include <linux/fsl_ifc.h>
 
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 9eae032377..dc937c1f88 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -12,10 +12,10 @@
 #include <asm/barebox-arm.h>
 #include <asm/syscounter.h>
 #include <asm/cache.h>
-#include <mach/errata.h>
-#include <mach/lowlevel.h>
-#include <mach/xload.h>
-#include <mach/layerscape.h>
+#include <mach/layerscape/errata.h>
+#include <mach/layerscape/lowlevel.h>
+#include <mach/layerscape/xload.h>
+#include <mach/layerscape/layerscape.h>
 
 struct board_specific_parameters {
 	u32 n_ranks;
diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
index 028be890e0..25a4c7b754 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -10,8 +10,8 @@
 #include <linux/clk.h>
 #include <linux/clkdev.h>
 #include <soc/fsl/immap_lsch2.h>
-#include <mach/bbu.h>
-#include <mach/layerscape.h>
+#include <mach/layerscape/bbu.h>
+#include <mach/layerscape/layerscape.h>
 
 static int tqmls1046a_mem_init(void)
 {
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 99dcf1eff7..91e08c0b74 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -9,10 +9,10 @@
 #include <asm/barebox-arm.h>
 #include <asm/syscounter.h>
 #include <asm/cache.h>
-#include <mach/errata.h>
-#include <mach/lowlevel.h>
-#include <mach/xload.h>
-#include <mach/layerscape.h>
+#include <mach/layerscape/errata.h>
+#include <mach/layerscape/lowlevel.h>
+#include <mach/layerscape/xload.h>
+#include <mach/layerscape/layerscape.h>
 
 static struct fsl_ddr_controller ddrc[] = {
 	{
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index ca075ae411..4ba0d932f6 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -26,6 +26,8 @@
 #include <mach/vexpress/debug_ll.h>
 #elif defined CONFIG_ARCH_VERSATILE
 #include <mach/versatile/debug_ll.h>
+#elif defined CONFIG_ARCH_LAYERSCAPE
+#include <mach/layerscape/debug_ll.h>
 #else
 #ifndef CONFIG_ARCH_ARM64_VIRT
 #include <mach/debug_ll.h>
diff --git a/arch/arm/mach-layerscape/boot.c b/arch/arm/mach-layerscape/boot.c
index c6f816444a..4746d0476d 100644
--- a/arch/arm/mach-layerscape/boot.c
+++ b/arch/arm/mach-layerscape/boot.c
@@ -3,7 +3,7 @@
 #include <common.h>
 #include <init.h>
 #include <bootsource.h>
-#include <mach/layerscape.h>
+#include <mach/layerscape/layerscape.h>
 #include <soc/fsl/immap_lsch2.h>
 
 enum bootsource ls1046_bootsource_get(void)
diff --git a/arch/arm/mach-layerscape/errata.c b/arch/arm/mach-layerscape/errata.c
index 4f4b759ddb..3a329959fe 100644
--- a/arch/arm/mach-layerscape/errata.c
+++ b/arch/arm/mach-layerscape/errata.c
@@ -4,8 +4,8 @@
 #include <soc/fsl/immap_lsch2.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <asm/system.h>
-#include <mach/errata.h>
-#include <mach/lowlevel.h>
+#include <mach/layerscape/errata.h>
+#include <mach/layerscape/lowlevel.h>
 
 #define scfg_clrsetbits32(addr, clear, set) clrsetbits_be32(addr, clear, set)
 #define scfg_clrbits32(addr, clear) clrbits_be32(addr, clear)
diff --git a/arch/arm/mach-layerscape/lowlevel-ls1046a.c b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
index 32f825ec25..b2aa839f55 100644
--- a/arch/arm/mach-layerscape/lowlevel-ls1046a.c
+++ b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
@@ -3,8 +3,8 @@
 #include <io.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
-#include <mach/errata.h>
-#include <mach/lowlevel.h>
+#include <mach/layerscape/errata.h>
+#include <mach/layerscape/lowlevel.h>
 #include <soc/fsl/immap_lsch2.h>
 #include <soc/fsl/fsl_immap.h>
 
diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 144d052475..3fa73d555f 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -13,7 +13,7 @@
 #include <asm/system.h>
 #include <image-fit.h>
 #include <asm/psci.h>
-#include <mach/layerscape.h>
+#include <mach/layerscape/layerscape.h>
 #include <asm/cache.h>
 
 int ppa_entry(const void *, u32 *, u32 *);
diff --git a/arch/arm/mach-layerscape/xload-qspi.c b/arch/arm/mach-layerscape/xload-qspi.c
index 192aea64b4..19ee5c14dc 100644
--- a/arch/arm/mach-layerscape/xload-qspi.c
+++ b/arch/arm/mach-layerscape/xload-qspi.c
@@ -4,8 +4,8 @@
 #include <soc/fsl/immap_lsch2.h>
 #include <asm-generic/sections.h>
 #include <asm/cache.h>
-#include <mach/xload.h>
-#include <mach/layerscape.h>
+#include <mach/layerscape/xload.h>
+#include <mach/layerscape/layerscape.h>
 
 /*
  * The offset of the 2nd stage image in the output file. This must match with the
diff --git a/arch/arm/mach-layerscape/xload.c b/arch/arm/mach-layerscape/xload.c
index 54495d7f97..6496a1b4cd 100644
--- a/arch/arm/mach-layerscape/xload.c
+++ b/arch/arm/mach-layerscape/xload.c
@@ -2,8 +2,8 @@
 
 #include <common.h>
 #include <bootsource.h>
-#include <mach/layerscape.h>
-#include <mach/xload.h>
+#include <mach/layerscape/layerscape.h>
+#include <mach/layerscape/xload.h>
 
 int ls1046a_xload_start_image(unsigned long r0, unsigned long r1,
 			      unsigned long r2)
diff --git a/arch/arm/mach-layerscape/include/mach/bbu.h b/include/mach/layerscape/bbu.h
similarity index 100%
rename from arch/arm/mach-layerscape/include/mach/bbu.h
rename to include/mach/layerscape/bbu.h
diff --git a/arch/arm/mach-layerscape/include/mach/debug_ll.h b/include/mach/layerscape/debug_ll.h
similarity index 100%
rename from arch/arm/mach-layerscape/include/mach/debug_ll.h
rename to include/mach/layerscape/debug_ll.h
diff --git a/arch/arm/mach-layerscape/include/mach/errata.h b/include/mach/layerscape/errata.h
similarity index 100%
rename from arch/arm/mach-layerscape/include/mach/errata.h
rename to include/mach/layerscape/errata.h
diff --git a/arch/arm/mach-layerscape/include/mach/layerscape.h b/include/mach/layerscape/layerscape.h
similarity index 100%
rename from arch/arm/mach-layerscape/include/mach/layerscape.h
rename to include/mach/layerscape/layerscape.h
diff --git a/arch/arm/mach-layerscape/include/mach/lowlevel.h b/include/mach/layerscape/lowlevel.h
similarity index 100%
rename from arch/arm/mach-layerscape/include/mach/lowlevel.h
rename to include/mach/layerscape/lowlevel.h
diff --git a/arch/arm/mach-layerscape/include/mach/xload.h b/include/mach/layerscape/xload.h
similarity index 100%
rename from arch/arm/mach-layerscape/include/mach/xload.h
rename to include/mach/layerscape/xload.h
-- 
2.30.2



