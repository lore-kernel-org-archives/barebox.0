Delivery-date: Mon, 20 Nov 2023 15:25:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r55DX-001YeI-2a
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 15:25:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r55DX-0004b2-DJ
	for lore@pengutronix.de; Mon, 20 Nov 2023 15:25:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xOKbWmUE9Fsp+cLqQwoZ996xuxxowfvaqJ8SjMlEn0Y=; b=aQvPXqSLkU/U1uiBaiQ1LPlaRA
	LTGw6vYOd3uKJ5CFJY7E1GFLcPCHWAAQJ4SWa7z4vtM+GjafeSbV0tns0xBpi1TUVIJw989P8fXC3
	RU8NfsP3IqTKUho0rN5J0//CCsHQ3MragBuLIJmF3Wa894xhKnFB8z0FcwZvNHn94D7xK9nNRGRd9
	SbPotJ/FRopB98+t1uz/Rht+By4JZjQCp2G+TD318BgJ5dp/EPilXbBYhvv9ViLHzBqRujLWBWSL6
	denlFDB68+mWNp9qNLY5YaFDnMDdxQ6NfgKD6QUJVz1dQGDiykvxJGPY+0lwqExe+lxTcwfIxYn0a
	Hj75zJlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r55C5-00CGqY-32;
	Mon, 20 Nov 2023 14:24:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r55Bi-00CGmh-2P
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 14:24:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r55Bg-00049L-N8; Mon, 20 Nov 2023 15:23:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r55Bg-00ANBj-At; Mon, 20 Nov 2023 15:23:44 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r55Bg-002elI-0t;
	Mon, 20 Nov 2023 15:23:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Nov 2023 15:23:43 +0100
Message-Id: <20231120142343.633143-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_062347_024231_664878E1 
X-CRM114-Status: GOOD (  11.56  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] debug_ll ns16550: Add base address argument to register functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add base address argument to debug_ll_ns16550_init() and debug_ll_ns16550_putc().
With this we can use the ns16550 debug_ll functions not only for
debug_ll, but also for general use with pbl_set_putc().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/debug_ll/ns16550.h         | 26 +++++++++++++-------------
 include/mach/bcm283x/debug_ll.h    | 27 ++++++++++++++++-----------
 include/mach/layerscape/debug_ll.h | 18 +++++++++---------
 include/mach/omap/debug_ll.h       | 19 +++++++++----------
 include/mach/rockchip/debug_ll.h   | 19 +++++++++----------
 5 files changed, 56 insertions(+), 53 deletions(-)

diff --git a/include/debug_ll/ns16550.h b/include/debug_ll/ns16550.h
index 373e1df32a..fce113574f 100644
--- a/include/debug_ll/ns16550.h
+++ b/include/debug_ll/ns16550.h
@@ -29,12 +29,12 @@
 
 #define NS16550_LCR_BKSE	0x80 /* Bank select enable */
 
-static inline void debug_ll_ns16550_putc(char ch)
+static inline void debug_ll_ns16550_putc(void __iomem *base, char ch)
 {
-        while (!(debug_ll_read_reg(NS16550_LSR) & NS16550_LSR_THRE))
+        while (!(debug_ll_read_reg(base, NS16550_LSR) & NS16550_LSR_THRE))
                 ;
 
-        debug_ll_write_reg(NS16550_THR, ch);
+        debug_ll_write_reg(base, NS16550_THR, ch);
 }
 
 static inline uint16_t debug_ll_ns16550_calc_divisor(unsigned long clk)
@@ -42,17 +42,17 @@ static inline uint16_t debug_ll_ns16550_calc_divisor(unsigned long clk)
 	return clk / (CONFIG_BAUDRATE * 16);
 }
 
-static inline void debug_ll_ns16550_init(uint16_t divisor)
+static inline void debug_ll_ns16550_init(void __iomem *base, uint16_t divisor)
 {
-	debug_ll_write_reg(NS16550_LCR, 0x0); /* select ier reg */
-	debug_ll_write_reg(NS16550_IER, 0x0); /* disable interrupts */
-
-	debug_ll_write_reg(NS16550_LCR, NS16550_LCR_BKSE);
-	debug_ll_write_reg(NS16550_DLL, divisor & 0xff);
-	debug_ll_write_reg(NS16550_DLM, (divisor >> 8) & 0xff);
-	debug_ll_write_reg(NS16550_LCR, NS16550_LCR_VAL);
-	debug_ll_write_reg(NS16550_MCR, NS16550_MCR_VAL);
-	debug_ll_write_reg(NS16550_FCR, NS16550_FCR_VAL);
+	debug_ll_write_reg(base, NS16550_LCR, 0x0); /* select ier reg */
+	debug_ll_write_reg(base, NS16550_IER, 0x0); /* disable interrupts */
+
+	debug_ll_write_reg(base, NS16550_LCR, NS16550_LCR_BKSE);
+	debug_ll_write_reg(base, NS16550_DLL, divisor & 0xff);
+	debug_ll_write_reg(base, NS16550_DLM, (divisor >> 8) & 0xff);
+	debug_ll_write_reg(base, NS16550_LCR, NS16550_LCR_VAL);
+	debug_ll_write_reg(base, NS16550_MCR, NS16550_MCR_VAL);
+	debug_ll_write_reg(base, NS16550_FCR, NS16550_FCR_VAL);
 }
 
 #endif
diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/debug_ll.h
index e89328340a..844305109a 100644
--- a/include/mach/bcm283x/debug_ll.h
+++ b/include/mach/bcm283x/debug_ll.h
@@ -42,14 +42,14 @@ static inline void debug_ll_init(void)
 
 #elif defined CONFIG_DEBUG_RPI3_MINI_UART
 
-static inline uint8_t debug_ll_read_reg(int reg)
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
-	return readb(BCM2836_MINIUART_BASE + (reg << 2));
+	return readb(base + (reg << 2));
 }
 
-static inline void debug_ll_write_reg(int reg, uint8_t val)
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 {
-	writeb(val, BCM2836_MINIUART_BASE + (reg << 2));
+	writeb(val, base + (reg << 2));
 }
 
 #define BCM2836_AUX_CLOCK_ENB		0x3f215004 /* BCM2835 AUX Clock enable register */
@@ -60,28 +60,31 @@ static inline void debug_ll_write_reg(int reg, uint8_t val)
 static inline void debug_ll_init(void)
 {
 	uint16_t divisor;
+	void __iomem *base = IOMEM(BCM2836_MINIUART_BASE);
 
 	writeb(BCM2836_AUX_CLOCK_EN_UART, BCM2836_AUX_CLOCK_ENB);
 
 	divisor = debug_ll_ns16550_calc_divisor(250000000 * 2);
-	debug_ll_ns16550_init(divisor);
+	debug_ll_ns16550_init(base, divisor);
 }
 
 static inline void PUTC_LL(int c)
 {
-	debug_ll_ns16550_putc(c);
+	void __iomem  *base = IOMEM(BCM2836_MINIUART_BASE);
+
+	debug_ll_ns16550_putc(base, c);
 }
 
 #elif defined CONFIG_DEBUG_RPI4_MINI_UART
 
-static inline uint8_t debug_ll_read_reg(int reg)
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
-	return readb(BCM2711_MINIUART_BASE + (reg << 2));
+	return readb(base + (reg << 2));
 }
 
-static inline void debug_ll_write_reg(int reg, uint8_t val)
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 {
-	writeb(val, BCM2711_MINIUART_BASE + (reg << 2));
+	writeb(val, base + (reg << 2));
 }
 
 #include <debug_ll/ns16550.h>
@@ -93,7 +96,9 @@ static inline void debug_ll_init(void)
 
 static inline void PUTC_LL(int c)
 {
-	debug_ll_ns16550_putc(c);
+	void __iomem *base = IOMEM(BCM2711_MINIUART_BASE);
+
+	debug_ll_ns16550_putc(base, c);
 }
 
 #else
diff --git a/include/mach/layerscape/debug_ll.h b/include/mach/layerscape/debug_ll.h
index 4c8137d1e1..23af0118cc 100644
--- a/include/mach/layerscape/debug_ll.h
+++ b/include/mach/layerscape/debug_ll.h
@@ -9,17 +9,13 @@
 #define __LS_UART_BASE(num)	LSCH2_NS16550_COM##num
 #define LS_UART_BASE(num) __LS_UART_BASE(num)
 
-static inline uint8_t debug_ll_read_reg(int reg)
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
-	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
-
 	return readb(base + reg);
 }
 
-static inline void debug_ll_write_reg(int reg, uint8_t val)
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 {
-	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
-
 	writeb(val, base + reg);
 }
 
@@ -27,23 +23,27 @@ static inline void debug_ll_write_reg(int reg, uint8_t val)
 
 static inline void ls1046a_debug_ll_init(void)
 {
+	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
 	uint16_t divisor;
 
 	divisor = debug_ll_ns16550_calc_divisor(300000000);
-	debug_ll_ns16550_init(divisor);
+	debug_ll_ns16550_init(base, divisor);
 }
 
 static inline void ls102xa_debug_ll_init(void)
 {
+	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
 	uint16_t divisor;
 
 	divisor = debug_ll_ns16550_calc_divisor(150000000);
-	debug_ll_ns16550_init(divisor);
+	debug_ll_ns16550_init(base, divisor);
 }
 
 static inline void PUTC_LL(int c)
 {
-	debug_ll_ns16550_putc(c);
+	void __iomem *base = IOMEM(LS_UART_BASE(CONFIG_DEBUG_LAYERSCAPE_UART_PORT));
+
+	debug_ll_ns16550_putc(base, c);
 }
 
 #endif /* __MACH_LAYERSCAPE_DEBUG_LL_H__ */
diff --git a/include/mach/omap/debug_ll.h b/include/mach/omap/debug_ll.h
index a6cd9a77c4..b0650abf2d 100644
--- a/include/mach/omap/debug_ll.h
+++ b/include/mach/omap/debug_ll.h
@@ -37,19 +37,13 @@
 #define __OMAP_UART_BASE(soc, num) soc##_UART##num##_BASE
 #define OMAP_UART_BASE(soc, num) __OMAP_UART_BASE(soc, num)
 
-static inline uint8_t debug_ll_read_reg(int reg)
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
-	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
-			CONFIG_DEBUG_OMAP_UART_PORT);
-
 	return readb(base + (reg << 2));
 }
 
-static inline void debug_ll_write_reg(int reg, uint8_t val)
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 {
-	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
-			CONFIG_DEBUG_OMAP_UART_PORT);
-
 	writeb(val, base + (reg << 2));
 }
 
@@ -57,15 +51,20 @@ static inline void debug_ll_write_reg(int reg, uint8_t val)
 
 static inline void omap_debug_ll_init(void)
 {
+	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
+			CONFIG_DEBUG_OMAP_UART_PORT);
 	unsigned int divisor;
 
 	divisor = debug_ll_ns16550_calc_divisor(48000000);
-	debug_ll_ns16550_init(divisor);
+	debug_ll_ns16550_init(base, divisor);
 }
 
 static inline void PUTC_LL(int c)
 {
-	debug_ll_ns16550_putc(c);
+	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
+			CONFIG_DEBUG_OMAP_UART_PORT);
+
+	debug_ll_ns16550_putc(base, c);
 }
 
 #else
diff --git a/include/mach/rockchip/debug_ll.h b/include/mach/rockchip/debug_ll.h
index b68d91165d..4a88113535 100644
--- a/include/mach/rockchip/debug_ll.h
+++ b/include/mach/rockchip/debug_ll.h
@@ -43,19 +43,13 @@
 #define __RK_UART_BASE(soc, num) soc##_UART##num##_BASE
 #define RK_UART_BASE(soc, num) __RK_UART_BASE(soc, num)
 
-static inline uint8_t debug_ll_read_reg(int reg)
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
-	void __iomem *base = IOMEM(RK_UART_BASE(RK_DEBUG_SOC,
-		CONFIG_DEBUG_ROCKCHIP_UART_PORT));
-
 	return readb(base + (reg << 2));
 }
 
-static inline void debug_ll_write_reg(int reg, uint8_t val)
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 {
-	void __iomem *base = IOMEM(RK_UART_BASE(RK_DEBUG_SOC,
-		CONFIG_DEBUG_ROCKCHIP_UART_PORT));
-
 	writeb(val, base + (reg << 2));
 }
 
@@ -63,15 +57,20 @@ static inline void debug_ll_write_reg(int reg, uint8_t val)
 
 static inline void rockchip_debug_ll_init(void)
 {
+	void __iomem *base = IOMEM(RK_UART_BASE(RK_DEBUG_SOC,
+		CONFIG_DEBUG_ROCKCHIP_UART_PORT));
 	unsigned int divisor;
 
 	divisor = debug_ll_ns16550_calc_divisor(RK_DEBUG_UART_CLOCK * 2);
-	debug_ll_ns16550_init(divisor);
+	debug_ll_ns16550_init(base, divisor);
 }
 
 static inline void PUTC_LL(int c)
 {
-	debug_ll_ns16550_putc(c);
+	void __iomem *base = IOMEM(RK_UART_BASE(RK_DEBUG_SOC,
+		CONFIG_DEBUG_ROCKCHIP_UART_PORT));
+
+	debug_ll_ns16550_putc(base, c);
 }
 
 #else
-- 
2.39.2



