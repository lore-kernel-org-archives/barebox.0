Delivery-date: Fri, 17 May 2024 08:22:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qzN-000uKT-2v
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 08:22:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7qzN-0003cW-6W
	for lore@pengutronix.de; Fri, 17 May 2024 08:22:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nI5YmGrsAElPFW5lo/mYQ0ocQS+b0c1r6QYqoRVcNuk=; b=ozKWvZZi1dWWK8ti0tDzJHZ/YE
	gpW+w6lw9kkQcDS43u72s4v9BPrHcVUR8PkO1vCBZN2PBBso33W8KQ31yfv0VX0eC/iK/imBIjdju
	2/MekzXGrZRS4NkU4Qh66C1CioyHUh2ZGexM+HFTz9WUYcIgC+x8uprQR+GRT2HGpogIJIG89YmYU
	34dU9WVf5BQPzbOTxji+4ACGJG9VlI+UpA3I/Ee6XnMKcjaoOo9OnALo9B8aA/yQk9bsbn5ltNS0q
	drK0Vh7HzlyUXNwxXKaE5ZGz+wYN3K7S5WLeENaI33zyOvNzWvlvIGv7NO1Px6gCI8SCZxIEN6Srq
	douBKimA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qyy-00000006wH1-3XjF;
	Fri, 17 May 2024 06:22:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7qyu-00000006wFE-4Bsl
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 06:22:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qyt-0003PA-KI; Fri, 17 May 2024 08:22:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qyt-001pZi-7t; Fri, 17 May 2024 08:22:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7qyt-00Dqze-0V;
	Fri, 17 May 2024 08:22:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 08:22:14 +0200
Message-Id: <20240517062214.3301954-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_232217_110229_001A4F2B 
X-CRM114-Status: GOOD (  14.84  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: layerscape: fix layerscape multiarch build with DEBUG_LL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Layerscape was added recently into the CONFIG_ARCH_MULTIARCH (really
multiplatform), but the required changes to DBEUG_LL was omitted, which
breaks DEBUG_LL use for other platforms that aren't layerscape.

Fix this, so DEBUG_LL may be used for either layerscape or other enabled
platforms.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/ls1021aiot/lowlevel.c |  2 ++
 arch/arm/boards/ls1028ardb/lowlevel.c |  1 +
 arch/arm/boards/ls1046ardb/lowlevel.c |  1 +
 arch/arm/boards/tqmls1046a/lowlevel.c |  1 +
 arch/arm/include/asm/debug_ll.h       |  6 ++++--
 common/Kconfig.debug_ll               | 10 +++++++++-
 include/mach/layerscape/debug_ll.h    | 14 ++++++++++++++
 7 files changed, 32 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/ls1021aiot/lowlevel.c b/arch/arm/boards/ls1021aiot/lowlevel.c
index 6bba528635a8..d2d4237c3d48 100644
--- a/arch/arm/boards/ls1021aiot/lowlevel.c
+++ b/arch/arm/boards/ls1021aiot/lowlevel.c
@@ -8,6 +8,8 @@
 #include <common.h>
 #include <clock.h>
 #include <debug_ll.h>
+#include <mach/layerscape/debug_ll.h>
+#include <debug_ll.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
diff --git a/arch/arm/boards/ls1028ardb/lowlevel.c b/arch/arm/boards/ls1028ardb/lowlevel.c
index e903d9d30196..de6f53d7dc2e 100644
--- a/arch/arm/boards/ls1028ardb/lowlevel.c
+++ b/arch/arm/boards/ls1028ardb/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 
 #include <common.h>
+#include <mach/layerscape/debug_ll.h>
 #include <debug_ll.h>
 #include <ddr_spd.h>
 #include <image-metadata.h>
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index 56b8320eddb4..c2d3a526bc06 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0+
 
 #include <common.h>
+#include <mach/layerscape/debug_ll.h>
 #include <debug_ll.h>
 #include <ddr_spd.h>
 #include <image-metadata.h>
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 9fcb52ea3902..2551a18ec634 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <common.h>
+#include <mach/layerscape/debug_ll.h>
 #include <debug_ll.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <soc/fsl/immap_lsch2.h>
diff --git a/arch/arm/include/asm/debug_ll.h b/arch/arm/include/asm/debug_ll.h
index 0cc3d28662a3..999f1cb831a8 100644
--- a/arch/arm/include/asm/debug_ll.h
+++ b/arch/arm/include/asm/debug_ll.h
@@ -31,6 +31,10 @@
 #include <mach/bcm283x/debug_ll.h>
 #endif
 
+#ifdef CONFIG_DEBUG_LAYERSCAPE_UART
+#include <mach/layerscape/debug_ll.h>
+#endif
+
 #ifdef CONFIG_DEBUG_QEMU_ARM64_VIRT
 #define DEBUG_LL_UART_ADDR		0x9000000
 #include <debug_ll/pl011.h>
@@ -40,8 +44,6 @@
 #include <mach/zynq/debug_ll.h>
 #elif defined CONFIG_ARCH_VERSATILE
 #include <mach/versatile/debug_ll.h>
-#elif defined CONFIG_ARCH_LAYERSCAPE
-#include <mach/layerscape/debug_ll.h>
 #elif defined CONFIG_ARCH_TEGRA
 #include <mach/tegra/debug_ll.h>
 #elif defined CONFIG_ARCH_SOCFPGA
diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index bdc1a7f3a6dc..29265bfad0f5 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -139,6 +139,14 @@ config DEBUG_IMX9_UART
 	depends on ARCH_IMX93
 	select DEBUG_IMX_UART
 
+
+config DEBUG_LAYERSCAPE_UART
+	bool "Layerscape Debug UART"
+	depends on ARCH_LAYERSCAPE
+	help
+	  Say Y here if you want barebox low-level debugging support
+	  on NXP Layerscape SoCs.
+
 config DEBUG_VEXPRESS_UART
 	bool "Vexpress Debug UART"
 	depends on ARCH_VEXPRESS
@@ -409,7 +417,7 @@ config DEBUG_SOCFPGA_UART_CLOCK
 
 config DEBUG_LAYERSCAPE_UART_PORT
 	int "Layerscape UART port selection"
-	depends on ARCH_LAYERSCAPE
+	depends on DEBUG_LAYERSCAPE_UART
 	default 1
 	help
 	  Select the UART port number used for early debugging here. Port
diff --git a/include/mach/layerscape/debug_ll.h b/include/mach/layerscape/debug_ll.h
index 22c32243406b..c54a4810a4cb 100644
--- a/include/mach/layerscape/debug_ll.h
+++ b/include/mach/layerscape/debug_ll.h
@@ -13,6 +13,8 @@
 #define __LSCH3_UART_BASE(num)	LSCH3_NS16550_COM##num
 #define LSCH3_UART_BASE(num) __LSCH3_UART_BASE(num)
 
+#ifdef CONFIG_DEBUG_LAYERSCAPE_UART
+
 static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
 	return readb(base + reg);
@@ -82,4 +84,16 @@ static inline void layerscape_uart_putc(void *base, int c)
 	debug_ll_ns16550_putc(base, c);
 }
 
+#else
+
+static inline void ls1046a_uart_setup(void *base) { }
+static inline void ls1046a_debug_ll_init(void) { }
+static inline void ls1028a_uart_setup(void *base) { }
+static inline void ls1028a_debug_ll_init(void) { }
+static inline void ls102xa_uart_setup(void *base) { }
+static inline void ls102xa_debug_ll_init(void) { }
+static inline void layerscape_uart_putc(void *base, int c) { }
+
+#endif
+
 #endif /* __MACH_LAYERSCAPE_DEBUG_LL_H__ */
-- 
2.39.2



