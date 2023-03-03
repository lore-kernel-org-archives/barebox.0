Delivery-date: Fri, 03 Mar 2023 10:30:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1kV-007O2g-HC
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:30:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1kU-0004Rc-Ot
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:30:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=um0Q2ekILommGrfh8DGHlAmZdfKiEluS4xB9Gm/1W14=; b=z8kcItWEWjHS9AyLyVo9XlmrcB
	cQXFjQTIfYfmK1yY5R41y+wIE3mAkTZCK7SaIuigMmqzCF7fe5W7u+Q6CsuMpi17itE3Gze99gH0K
	RRF6F2/+RiqSveOOljOdDVD7XTSonMaX6gv3LQLfWJOCnugzXCvkrvyKB0oG1ISSyMaZpbZQZQNSt
	bgUuEBmS0C528QbM50qBH+EzU1Dn6RqzYZ2HK6KlRvxquHhRd9G1qceo80rCCjOPS1QqDD3pauS4H
	s5QMT25p+TgqVA27soTU0aKUF0SrOR//ZGyPp+U5voB2StZEC1Khap5FbpC0Kj8Vixtm4NG6Hv6k1
	vMc0MYWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1jG-005k1v-CH; Fri, 03 Mar 2023 09:29:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1c4-005ecg-72
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:22:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=um0Q2ekILommGrfh8DGHlAmZdfKiEluS4xB9Gm/1W14=; b=I+t7ovUWWbT5veyyDVU5jETlCa
	2lQFjhpYtBRYiIWPLRUmSCbaOHL3k46TRkeklt6NPmpzIUNo+zV5W/mM2mwQRf6Xdku71E/DTix3T
	LIAUNviGemZ5yCgj9nO3vzdEw2NXM+9Z7EiIeWYXmAPHggC6AJxxAAg7ejNFC0Un6IyUaUi/XsPzA
	IPMBv98PbulSNgBDElJQPl8CthcsgE8xMJys/XbDuYJveUHnZ4OXTlqBkF4HIu5INvHqibHFZCKak
	RHZaC20d9HAQBSlPSaPw977nj+5yVpR0hFumuCPMwcqNxgJGPyZTRUHHz1wrJ+wacMh9d8eULz+oF
	Da/VqxqQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY1bq-00FdLA-0W
	for barebox@lists.infradead.org;
	Fri, 03 Mar 2023 09:22:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-0000Fw-S1; Fri, 03 Mar 2023 10:21:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bi-001WjF-5B; Fri, 03 Mar 2023 10:21:42 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2ia-Rk; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:11 +0100
Message-Id: <20230303092131.3063587-31-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092152_965279_07BA79BB 
X-CRM114-Status: GOOD (  14.01  )
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
Subject: [PATCH 30/50] ARM: omap: Use ns16550 debug_ll helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The omap UART is ns16550 compatible, so use the existing ns16550
debug_ll helper to provide debug_ll functionality.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/afi-gf/lowlevel.c            |  2 +-
 arch/arm/boards/beagle/lowlevel.c            |  2 +-
 arch/arm/boards/beaglebone/lowlevel.c        |  2 +-
 arch/arm/boards/myirtech-x335x/lowlevel.c    |  2 +-
 arch/arm/boards/phytec-som-am335x/lowlevel.c |  2 +-
 arch/arm/boards/vscom-baltos/lowlevel.c      |  2 +-
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c   |  2 +-
 include/mach/omap/debug_ll.h                 | 63 ++++++++++----------
 8 files changed, 37 insertions(+), 40 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index 1b08d14205..d1c8e98434 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -226,7 +226,7 @@ static noinline int gf_sram_init(void)
 
 	am33xx_uart_soft_reset((void *)AM33XX_UART2_BASE);
 	am33xx_enable_uart2_pin_mux();
-	omap_uart_lowlevel_init((void *)AM33XX_UART2_BASE);
+	omap_debug_ll_init();
 	putc_ll('>');
 
 	barebox_arm_entry(0x80000000, SZ_256M, fdt);
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index ff822e5c24..bd944c4f67 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -196,7 +196,7 @@ static noinline int beagle_board_init(void)
 
 	mux_config();
 
-	omap_uart_lowlevel_init((void *)OMAP3_UART3_BASE);
+	omap_debug_ll_init();
 
 	/* Dont reconfigure SDRAM while running in SDRAM! */
 	if (!in_sdram)
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 6978723fbb..b1ba66434b 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -132,7 +132,7 @@ static noinline int beaglebone_sram_init(void)
 
 	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
 	am33xx_enable_uart0_pin_mux();
-	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
+	omap_debug_ll_init();
 	putc_ll('>');
 
 	barebox_arm_entry(0x80000000, sdram_size, fdt);
diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index 66d2dc1a53..eb42182098 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -91,7 +91,7 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		am33xx_uart_soft_reset(IOMEM(AM33XX_UART0_BASE));
 		am33xx_enable_uart0_pin_mux();
-		omap_uart_lowlevel_init(IOMEM(AM33XX_UART0_BASE));
+		omap_debug_ll_init();
 		putc_ll('>');
 	}
 
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 445ec18d5a..2e2bdc9169 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -163,7 +163,7 @@ static noinline void physom_board_init(void *fdt, int sdram, int module_family)
 
 	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
 	am33xx_enable_uart0_pin_mux();
-	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
+	omap_debug_ll_init();
 	putc_ll('>');
 
 	am335x_barebox_entry(fdt);
diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index f1dcc731a0..80046a3b05 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -97,7 +97,7 @@ static noinline void baltos_sram_init(void)
 
 	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
 	am33xx_enable_uart0_pin_mux();
-	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
+	omap_debug_ll_init();
 	putc_ll('>');
 
 	am335x_barebox_entry(fdt);
diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
index 04e036c233..cff6bfbfeb 100644
--- a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
+++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
@@ -184,7 +184,7 @@ static noinline void pfc200_board_init(void)
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		am33xx_uart_soft_reset(IOMEM(OMAP3_UART3_BASE));
-		omap_uart_lowlevel_init(IOMEM(OMAP3_UART3_BASE));
+		omap_debug_ll_init();
 		putc_ll('>');
 	}
 
diff --git a/include/mach/omap/debug_ll.h b/include/mach/omap/debug_ll.h
index 2e723dcb82..b696c3cb37 100644
--- a/include/mach/omap/debug_ll.h
+++ b/include/mach/omap/debug_ll.h
@@ -22,32 +22,6 @@
 #include <mach/omap/omap4-silicon.h>
 #include <mach/omap/am33xx-silicon.h>
 
-#define LSR_THRE	0x20	/* Xmit holding register empty */
-#define LCR_BKSE	0x80	/* Bank select enable */
-#define LSR		(5 << 2)
-#define THR		(0 << 2)
-#define DLL		(0 << 2)
-#define IER		(1 << 2)
-#define DLM		(1 << 2)
-#define FCR		(2 << 2)
-#define LCR		(3 << 2)
-#define MCR		(4 << 2)
-#define MDR		(8 << 2)
-
-static inline void omap_uart_lowlevel_init(void __iomem *base)
-{
-	writeb(0x00, base + LCR);
-	writeb(0x00, base + IER);
-	writeb(0x07, base + MDR);
-	writeb(LCR_BKSE, base + LCR);
-	writeb(26, base + DLL); /* 115200 */
-	writeb(0, base + DLM);
-	writeb(0x03, base + LCR);
-	writeb(0x03, base + MCR);
-	writeb(0x07, base + FCR);
-	writeb(0x00, base + MDR);
-}
-
 #ifdef CONFIG_DEBUG_LL
 
 #ifdef CONFIG_DEBUG_OMAP3_UART
@@ -63,17 +37,40 @@ static inline void omap_uart_lowlevel_init(void __iomem *base)
 #define __OMAP_UART_BASE(soc, num) soc##_UART##num##_BASE
 #define OMAP_UART_BASE(soc, num) __OMAP_UART_BASE(soc, num)
 
-static inline void PUTC_LL(char c)
+static inline uint8_t debug_ll_read_reg(int reg)
 {
 	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
 			CONFIG_DEBUG_OMAP_UART_PORT);
 
-	/* Wait until there is space in the FIFO */
-	while ((readb(base + LSR) & LSR_THRE) == 0);
-	/* Send the character */
-	writeb(c, base + THR);
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while ((readb(base + LSR) & LSR_THRE) == 0);
+	return readb(base + (reg << 2));
+}
+
+static inline void debug_ll_write_reg(int reg, uint8_t val)
+{
+	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
+			CONFIG_DEBUG_OMAP_UART_PORT);
+
+	writeb(val, base + (reg << 2));
+}
+
+#include <debug_ll/ns16550.h>
+
+static inline void omap_debug_ll_init(void)
+{
+	unsigned int divisor;
+
+	divisor = debug_ll_ns16550_calc_divisor(48000000);
+	debug_ll_ns16550_init(divisor);
+}
+
+static inline void PUTC_LL(int c)
+{
+	debug_ll_ns16550_putc(c);
+}
+
+#else
+static inline void omap_debug_ll_init(void)
+{
 }
 #endif
 
-- 
2.30.2



