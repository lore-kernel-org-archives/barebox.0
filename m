Delivery-date: Mon, 07 Jul 2025 13:55:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRg-00F10X-25
	for lore@lore.pengutronix.de;
	Mon, 07 Jul 2025 13:55:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uYkRd-0002lh-IV
	for lore@pengutronix.de; Mon, 07 Jul 2025 13:55:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xBr1ZCZ+mwNC7stvVyzWW9IrH0zsikbnGsc/TBsADTg=; b=FbPSSLaQ1OP7DlvAkD8EM5wjAj
	uBoCZu2wuT8wj3UmJB4v1KP9VL5+XMdfOxkKqQq72HKyxlMpnNroLceA63aUm5WqMa24xfuRXL9hC
	MrG4tVQsAq9COu+l8STaYJYAD6XloOjDQOzEHfFo94znwlgKXuWkNwRNonVyOxLPQUsBHL8cm0IPC
	7am8S2tL8RE5YNZZDEqmKlhWmMdeygx2+OkB7WoF9ib2Ut30Aja4LV+Aq1Dl+lYuNfhjCSS2OAsS3
	bFPYyxPRQxNZ3vufPqICFiZGu1jjmwnPAQ8M7MRchCqTkxkBNStHlVy8lmjIq3yRFueOpKNpV5Q1Y
	PUoR643g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYkQr-00000002LT2-1bgQ;
	Mon, 07 Jul 2025 11:54:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYjvx-00000002Gdz-1pNu
	for barebox@lists.infradead.org;
	Mon, 07 Jul 2025 11:22:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uYjvu-0001uY-Vx; Mon, 07 Jul 2025 13:22:51 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 07 Jul 2025 13:22:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-2-af7ee9182480@pengutronix.de>
References: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
In-Reply-To: <20250707-v2024-10-0-topic-socfpga-agilex5-v4-0-af7ee9182480@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_042253_477587_B706F7FB 
X-CRM114-Status: GOOD (  12.78  )
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
Subject: [PATCH v4 02/10] mach: socfpga: debug_ll: rework putc_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cleanup the debug_ll code for SoCFPGA. The old Gen5 Socfpga have a
narrower ioport width for the NS16550. All newer generations support
32-bit access. Invert the logic and add new *_uart_putc functions for
use with pbl_set_putc.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-init.c  |  2 +-
 arch/arm/mach-socfpga/cyclone5-init.c |  2 +-
 include/mach/socfpga/debug_ll.h       | 44 +++++++++++++++++++++++------------
 3 files changed, 31 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-init.c b/arch/arm/mach-socfpga/arria10-init.c
index f8a15ec8b46a761904e470d66bd0900fdb0686ec..14cee3196ade7d36adbb1b70c5b0041bce3cc193 100644
--- a/arch/arm/mach-socfpga/arria10-init.c
+++ b/arch/arm/mach-socfpga/arria10-init.c
@@ -147,7 +147,7 @@ void arria10_finish_io(uint32_t *pinmux)
 
 	arria10_reset_deassert_fpga_peripherals();
 
-	INIT_LL();
+	socfpga_uart_setup_ll();
 
 	puts_ll("lowlevel init done\n");
 }
diff --git a/arch/arm/mach-socfpga/cyclone5-init.c b/arch/arm/mach-socfpga/cyclone5-init.c
index 79a9b15d8761baa8b576a83871a06fbf0559ce91..63ec48b8e48d7e8daa9ce9c158ad5716739b9b3d 100644
--- a/arch/arm/mach-socfpga/cyclone5-init.c
+++ b/arch/arm/mach-socfpga/cyclone5-init.c
@@ -56,5 +56,5 @@ void socfpga_lowlevel_init(struct socfpga_cm_config *cm_config,
 	writel(0x18, CYCLONE5_L3REGS_ADDRESS);
 	writel(0x1, 0xfffefc00);
 
-	INIT_LL();
+	socfpga_uart_setup_ll();
 }
diff --git a/include/mach/socfpga/debug_ll.h b/include/mach/socfpga/debug_ll.h
index 25b3581634704ac523b031a915b73408b674e0c5..698cca60373f7e382db12344e83925dbcb3b35aa 100644
--- a/include/mach/socfpga/debug_ll.h
+++ b/include/mach/socfpga/debug_ll.h
@@ -30,6 +30,26 @@
 #define SCR		0x1c
 #define THR		0x30
 
+static inline void socfpga_gen5_uart_putc(void *base, int c)
+{
+	/* Wait until there is space in the FIFO */
+	while ((readb(base + LSR) & LSR_THRE) == 0);
+	/* Send the character */
+	writeb(c, base + THR);
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while ((readb(base + LSR) & LSR_THRE) == 0);
+}
+
+static inline void socfpga_uart_putc(void *base, int c)
+{
+	/* Wait until there is space in the FIFO */
+	while ((readl(base + LSR) & LSR_THRE) == 0);
+	/* Send the character */
+	writel(c, base + THR);
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while ((readl(base + LSR) & LSR_THRE) == 0);
+}
+
 #ifdef CONFIG_DEBUG_LL
 static inline unsigned int ns16550_calc_divisor(unsigned int clk,
 					 unsigned int baudrate)
@@ -37,7 +57,7 @@ static inline unsigned int ns16550_calc_divisor(unsigned int clk,
 	return (clk / 16 / baudrate);
 }
 
-static inline void INIT_LL(void)
+static inline void socfpga_uart_setup_ll(void)
 {
 	unsigned int div = ns16550_calc_divisor(CONFIG_DEBUG_SOCFPGA_UART_CLOCK,
 						115200);
@@ -53,25 +73,19 @@ static inline void INIT_LL(void)
 	writel(FCRVAL, UART_BASE + FCR);
 }
 
-#ifdef CONFIG_ARCH_SOCFPGA_ARRIA10
+#if defined(CONFIG_ARCH_SOCFPGA_CYCLONE5)
 static inline void PUTC_LL(char c)
 {
-	/* Wait until there is space in the FIFO */
-	while ((readl(UART_BASE + LSR) & LSR_THRE) == 0);
-	/* Send the character */
-	writel(c, UART_BASE + THR);
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while ((readl(UART_BASE + LSR) & LSR_THRE) == 0);
+	void __iomem *base = IOMEM(UART_BASE);
+
+	socfpga_gen5_uart_putc(base, c);
 }
 #else
 static inline void PUTC_LL(char c)
 {
-	/* Wait until there is space in the FIFO */
-	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
-	/* Send the character */
-	writeb(c, UART_BASE + THR);
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while ((readb(UART_BASE + LSR) & LSR_THRE) == 0);
+	void __iomem *base = IOMEM(UART_BASE);
+
+	socfpga_uart_putc(base, c);
 }
 #endif
 
@@ -80,7 +94,7 @@ static inline unsigned int ns16550_calc_divisor(unsigned int clk,
 					 unsigned int baudrate) {
 	return -ENOSYS;
 }
-static inline void INIT_LL(void) {}
+static inline void socfpga_uart_setup_ll(void) {}
 static inline void PUTC_LL(char c) {}
 #endif
 #endif /* __MACH_SOCFPGA_DEBUG_LL_H__ */

-- 
2.46.0



