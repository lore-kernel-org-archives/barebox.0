Delivery-date: Mon, 01 Jun 2026 14:32:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wU1oQ-001EEk-0o
	for lore@lore.pengutronix.de;
	Mon, 01 Jun 2026 14:32:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wU1oP-0006ca-6L
	for lore@pengutronix.de; Mon, 01 Jun 2026 14:32:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w6t0SFD/XKJCawGkeUynjpY9dQtcsYq28PuGvOkkEJU=; b=I00C+r1zlXwqff+ic4rt/FUuiA
	JLaRklE01Y4lJh413rpTWxT4Ag7FclwoR5ZQGi6PIdNFGhbDUCpfO/tICT6mVUJnBR+K4YqqcMpKl
	Z4qswGLsZBjluQlSI1uGVKz2LnQKCsWunVNmqgNPoFwoPzf/7wVwSwKa7VFP0UbM/zYA5Je+Eetew
	nLYt2CypU5zmbK5y0LreLUI22SDWzVBiJM8G5eomkWeUv8yTsqeJnNQsBlNmDYlOjYHs68nmQOLHa
	LyRh8Z6CAxloYqZIlNXN546jMSwIaSg81X/MHsYmk8bwf7rX8gUJQRYaNZPbE8pdJ+JEyzVKaWXpk
	xvow6JfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mO-0000000B8OS-4AAu;
	Mon, 01 Jun 2026 12:30:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mM-0000000B8NL-1zF0
	for barebox@bombadil.infradead.org;
	Mon, 01 Jun 2026 12:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=w6t0SFD/XKJCawGkeUynjpY9dQtcsYq28PuGvOkkEJU=; b=HV682zTzPYEwO663rjIl5I9sqM
	jT5xfcvLpAdqm2RW1nOM5dCPUuiic6R6eD0ZDQcVDBokFrXmX6ispLD7K9M1KaXxSfNKb5alEKs+f
	0fBjOK3hal7tDXj7lhCwoSdIRwN67xm0ijghu92DIYsIMHqyF4i4/Z9jULxOosKviWKi8V4R03J7E
	RvSTJGci8scyZID1wqEpmeTeABVAmZRJmTW5bgisI5zHrqNvwT5huku98OSiHLjK1nDpqBb/i5Fw5
	w8yC5rTu8+Pauo+Pl6LlS7Eo2dzt28QKSI14zC+EWU4iLL6lNZdqCppDRZnBGJGZHkj7DECeWEaKr
	xB4oO6WQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mH-00000006gt8-3dwt
	for barebox@lists.infradead.org;
	Mon, 01 Jun 2026 12:30:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-0006J9-Uh; Mon, 01 Jun 2026 14:29:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-000a6A-2o;
	Mon, 01 Jun 2026 14:29:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-00000002PJv-3MuC;
	Mon, 01 Jun 2026 14:29:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 01 Jun 2026 14:29:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260601-debug-ll-conflicts-v1-1-bf17f9f0e23a@pengutronix.de>
References: <20260601-debug-ll-conflicts-v1-0-bf17f9f0e23a@pengutronix.de>
In-Reply-To: <20260601-debug-ll-conflicts-v1-0-bf17f9f0e23a@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780316994; l=7177;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lISFGKmpDVZ8OsELpKnqnYM5fTPZOxRCMKONaPnnd0o=;
 b=Kmy8SoChr+vBtOWX07tk2ixaHiLOivx+xNSIlW8LJv2rVR412kucZ6ai65z5+JxQqLVUvCGrI
 NmqzmmIkcg4A/K6sQOYu3TinGhjQZ7Rf5PhiUpL/H/RBf+HNZErUGcb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_132958_377402_4ED30508 
X-CRM114-Status: GOOD (  11.24  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] debug_ll: give PUTC_LL a common prototype
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some PUTC_LL() implementations expect an integer as argument and others
a char. For consistency change all to expect a char argument.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h | 2 +-
 arch/openrisc/include/asm/debug_ll.h                | 2 +-
 arch/powerpc/include/asm/debug_ll.h                 | 2 +-
 include/mach/bcm283x/debug_ll.h                     | 4 ++--
 include/mach/imx/debug_ll.h                         | 2 +-
 include/mach/k3/debug_ll.h                          | 2 +-
 include/mach/layerscape/debug_ll.h                  | 2 +-
 include/mach/mxs/debug_ll.h                         | 2 +-
 include/mach/omap/debug_ll.h                        | 2 +-
 include/mach/rockchip/debug_ll.h                    | 2 +-
 include/mach/stm32mp/debug_ll.h                     | 2 +-
 include/mach/zynq/debug_ll.h                        | 2 +-
 include/mach/zynqmp/debug_ll.h                      | 2 +-
 13 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h b/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
index cd32e2d1d1..71978164c6 100644
--- a/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
+++ b/arch/mips/mach-ath79/include/mach/debug_ll_ar9331.h
@@ -34,7 +34,7 @@ static inline u32 ar933x_debug_ll_readl(int offset)
 	return __raw_readl((u8 *)DEBUG_LL_UART_ADDR + offset);
 }
 
-static inline void PUTC_LL(int ch)
+static inline void PUTC_LL(char ch)
 {
 	u32 data;
 
diff --git a/arch/openrisc/include/asm/debug_ll.h b/arch/openrisc/include/asm/debug_ll.h
index 35d4360940..cd3b976e8a 100644
--- a/arch/openrisc/include/asm/debug_ll.h
+++ b/arch/openrisc/include/asm/debug_ll.h
@@ -26,7 +26,7 @@ static inline void debug_ll_init(void)
 	/* already configured */
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	debug_ll_ns16550_putc(DEBUG_LL_UART_BASE, c);
 }
diff --git a/arch/powerpc/include/asm/debug_ll.h b/arch/powerpc/include/asm/debug_ll.h
index 910db2808d..0dc83b9cac 100644
--- a/arch/powerpc/include/asm/debug_ll.h
+++ b/arch/powerpc/include/asm/debug_ll.h
@@ -36,7 +36,7 @@ static inline void debug_ll_init(void)
 	debug_ll_ns16550_init(DEBUG_LL_UART_BASE, divisor);
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	debug_ll_ns16550_putc(DEBUG_LL_UART_BASE, c);
 }
diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/debug_ll.h
index 8bbff4fd9a..a6a3b8f088 100644
--- a/include/mach/bcm283x/debug_ll.h
+++ b/include/mach/bcm283x/debug_ll.h
@@ -70,7 +70,7 @@ static inline void debug_ll_init(void)
 	debug_ll_ns16550_init(base, divisor);
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	void __iomem  *base = IOMEM(BCM2836_MINIUART_BASE);
 
@@ -96,7 +96,7 @@ static inline void debug_ll_init(void)
 	/* Configured by ROM */
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	void __iomem *base = IOMEM(BCM2711_MINIUART_BASE);
 
diff --git a/include/mach/imx/debug_ll.h b/include/mach/imx/debug_ll.h
index 05e16a8f02..0f6500fd2e 100644
--- a/include/mach/imx/debug_ll.h
+++ b/include/mach/imx/debug_ll.h
@@ -117,7 +117,7 @@ static inline void imx9_uart_setup_ll(void)
 	lpuart32_setup(base + 0x10, 24000000);
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	void __iomem *base = IOMEM(IMX_UART_BASE(IMX_DEBUG_SOC,
 						 CONFIG_DEBUG_IMX_UART_PORT));
diff --git a/include/mach/k3/debug_ll.h b/include/mach/k3/debug_ll.h
index 13321c6134..acbe6c230b 100644
--- a/include/mach/k3/debug_ll.h
+++ b/include/mach/k3/debug_ll.h
@@ -41,7 +41,7 @@ static inline void debug_ll_init(void)
 	/* already configured */
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,
 					CONFIG_DEBUG_K3_UART_PORT);
diff --git a/include/mach/layerscape/debug_ll.h b/include/mach/layerscape/debug_ll.h
index c54a4810a4..9c2e84dcf8 100644
--- a/include/mach/layerscape/debug_ll.h
+++ b/include/mach/layerscape/debug_ll.h
@@ -72,7 +72,7 @@ static inline void ls102xa_debug_ll_init(void)
 	ls102xa_uart_setup(base);
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
 
diff --git a/include/mach/mxs/debug_ll.h b/include/mach/mxs/debug_ll.h
index 41658ba0c5..f38b1486a1 100644
--- a/include/mach/mxs/debug_ll.h
+++ b/include/mach/mxs/debug_ll.h
@@ -11,7 +11,7 @@
 # define TXFE (1 << 7)
 # define TXFF (1 << 5)
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	void __iomem *base = (void *)IMX_DBGUART_BASE;
 
diff --git a/include/mach/omap/debug_ll.h b/include/mach/omap/debug_ll.h
index a95c1bf140..c0af1abac7 100644
--- a/include/mach/omap/debug_ll.h
+++ b/include/mach/omap/debug_ll.h
@@ -60,7 +60,7 @@ static inline void omap_debug_ll_init(void)
 	debug_ll_write_reg(base, NS16550_MDR, 0);
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
 			CONFIG_DEBUG_OMAP_UART_PORT);
diff --git a/include/mach/rockchip/debug_ll.h b/include/mach/rockchip/debug_ll.h
index 941d1505e5..c2392d71e4 100644
--- a/include/mach/rockchip/debug_ll.h
+++ b/include/mach/rockchip/debug_ll.h
@@ -77,7 +77,7 @@ static inline void rockchip_debug_ll_init(void)
 	debug_ll_ns16550_init(base, divisor);
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	void __iomem *base = IOMEM(RK_UART_BASE(RK_DEBUG_SOC,
 		CONFIG_DEBUG_ROCKCHIP_UART_PORT));
diff --git a/include/mach/stm32mp/debug_ll.h b/include/mach/stm32mp/debug_ll.h
index 0d88910c13..c3ef3255c7 100644
--- a/include/mach/stm32mp/debug_ll.h
+++ b/include/mach/stm32mp/debug_ll.h
@@ -28,7 +28,7 @@ static inline void stm32_serial_putc(void *ctx, int c)
 	while ((readl(base + ISR_OFFSET) & USART_ISR_TXE) == 0);
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	stm32_serial_putc(IOMEM(DEBUG_LL_UART_ADDR), c);
 }
diff --git a/include/mach/zynq/debug_ll.h b/include/mach/zynq/debug_ll.h
index 3105211c1b..1d322a6aa4 100644
--- a/include/mach/zynq/debug_ll.h
+++ b/include/mach/zynq/debug_ll.h
@@ -23,7 +23,7 @@
 #define ZYNQ_UART_STS_TFUL	(1 << 4)
 #define ZYNQ_UART_TXDIS		(1 << 5)
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	void __iomem *base = (void __iomem *)ZYNQ_DEBUG_LL_UART_BASE;
 
diff --git a/include/mach/zynqmp/debug_ll.h b/include/mach/zynqmp/debug_ll.h
index cc94d3ce54..c9e9547812 100644
--- a/include/mach/zynqmp/debug_ll.h
+++ b/include/mach/zynqmp/debug_ll.h
@@ -28,7 +28,7 @@ static inline void cdns_serial_putc(void *ctx, int c)
 	writel(c, base + 0x30);
 }
 
-static inline void PUTC_LL(int c)
+static inline void PUTC_LL(char c)
 {
 	cdns_serial_putc(IOMEM(ZYNQMP_DEBUG_LL_UART_BASE), c);
 }

-- 
2.47.3



