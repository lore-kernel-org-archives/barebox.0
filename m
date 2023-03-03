Delivery-date: Fri, 03 Mar 2023 10:29:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1jE-007NwM-CH
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:29:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1jD-0003sQ-5L
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:29:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/ocQc6t3AoZJFc+ptToR5vnOFYK9c7wJECfEZt7Ick8=; b=1mXleoaacuOxxeGHqvSaNxUlXz
	bq9Amht+dGx2yFIMlQqag3WtnNdS1XGu7utfHn95NykDhlVql2NdpfPu/mEDmJ613hliyYg2U0F8g
	+aBmy4TO81uRtdw7qmY4Uj+fgBsyACjWpa+Zqgvaf5c6KEDmC92C8O7rWUiVviDXBl5lwDt16Itbp
	SqUsOzXHbzIyTlIzWKaKpan9CqJWC5Vhft3gqIvtuXIkptIicDy9OQxHLYVSiwxjAflwX0tOCOaar
	LOvt6lzEasoAhJtu5G4TOyWz3QK9lsZppUzPdagEjuvaetuB8m+BwIJaunWDfgpcHzBBFM65Uwkdb
	sFPNFZug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1hw-005j1B-FC; Fri, 03 Mar 2023 09:28:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bq-005eUM-HW
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bh-0000EC-7t; Fri, 03 Mar 2023 10:21:41 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bg-001Wid-DX; Fri, 03 Mar 2023 10:21:40 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2hQ-N3; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:05 +0100
Message-Id: <20230303092131.3063587-25-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012151_001126_D1FB7F32 
X-CRM114-Status: GOOD (  14.49  )
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
Subject: [PATCH 24/50] include/mach/: use unique double inclusion protectors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many macro names used for double inclusion protection in incliude/mach/
are not unique. That may become a problem with multi-arch support.
Fix several of them, more may still be present.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/at91/debug_ll.h       | 6 +++---
 include/mach/at91/hardware.h       | 6 +++---
 include/mach/at91/xload.h          | 6 +++---
 include/mach/clps711x/debug_ll.h   | 6 +++---
 include/mach/davinci/debug_ll.h    | 6 +++---
 include/mach/davinci/hardware.h    | 6 +++---
 include/mach/digic/debug_ll.h      | 6 +++---
 include/mach/imx/bbu.h             | 6 +++---
 include/mach/imx/debug_ll.h        | 6 +++---
 include/mach/imx/xload.h           | 6 +++---
 include/mach/layerscape/debug_ll.h | 6 +++---
 include/mach/layerscape/xload.h    | 6 +++---
 include/mach/mvebu/debug_ll.h      | 6 +++---
 include/mach/mxs/debug_ll.h        | 6 +++---
 include/mach/nomadik/hardware.h    | 6 +++---
 include/mach/omap/bbu.h            | 6 +++---
 include/mach/omap/debug_ll.h       | 6 +++---
 include/mach/rockchip/debug_ll.h   | 6 +++---
 include/mach/socfpga/debug_ll.h    | 6 +++---
 include/mach/tegra/debug_ll.h      | 6 +++---
 include/mach/uemd/debug_ll.h       | 6 +++---
 include/mach/uemd/hardware.h       | 6 +++---
 include/mach/versatile/debug_ll.h  | 6 +++---
 include/mach/vexpress/debug_ll.h   | 6 +++---
 include/mach/zynq/debug_ll.h       | 6 +++---
 include/mach/zynqmp/debug_ll.h     | 6 +++---
 26 files changed, 78 insertions(+), 78 deletions(-)

diff --git a/include/mach/at91/debug_ll.h b/include/mach/at91/debug_ll.h
index b09ba5f64a..06b05fa045 100644
--- a/include/mach/at91/debug_ll.h
+++ b/include/mach/at91/debug_ll.h
@@ -5,8 +5,8 @@
  * Under GPLv2
  */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __MACH_AT91_DEBUG_LL_H__
+#define __MACH_AT91_DEBUG_LL_H__
 
 #include <asm/io.h>
 #include <mach/at91/gpio.h>
@@ -40,4 +40,4 @@ static inline void PUTC_LL(char c)
 	at91_dbgu_putc(IOMEM(CONFIG_DEBUG_AT91_UART_BASE), c);
 }
 
-#endif
+#endif /* __MACH_AT91_DEBUG_LL_H__ */
diff --git a/include/mach/at91/hardware.h b/include/mach/at91/hardware.h
index c34868cc9f..5d2fd872ab 100644
--- a/include/mach/at91/hardware.h
+++ b/include/mach/at91/hardware.h
@@ -4,8 +4,8 @@
 
 /* [origin: Linux kernel include/asm-arm/arch-at91/hardware.h] */
 
-#ifndef __ASM_ARCH_HARDWARE_H
-#define __ASM_ARCH_HARDWARE_H
+#ifndef __MACH_AT91_HARDWARE_H
+#define __MACH_AT91_HARDWARE_H
 
 /* DBGU base */
 /* rm9200, 9260/9g20, 9261/9g10, 9rl */
@@ -45,4 +45,4 @@
 /* Clocks */
 #define AT91_SLOW_CLOCK		32768		/* slow clock */
 
-#endif
+#endif /* __MACH_AT91_HARDWARE_H */
diff --git a/include/mach/at91/xload.h b/include/mach/at91/xload.h
index 6b9492193b..2886490246 100644
--- a/include/mach/at91/xload.h
+++ b/include/mach/at91/xload.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __MACH_XLOAD_H
-#define __MACH_XLOAD_H
+#ifndef __MACH_AT91_XLOAD_H
+#define __MACH_AT91_XLOAD_H
 
 #include <linux/compiler.h>
 #include <pbl/bio.h>
@@ -19,4 +19,4 @@ void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
 					  bool slot_b);
 
 
-#endif /* __MACH_XLOAD_H */
+#endif /* __MACH_AT91_XLOAD_H */
diff --git a/include/mach/clps711x/debug_ll.h b/include/mach/clps711x/debug_ll.h
index 1af7cb4f65..9b7d21d165 100644
--- a/include/mach/clps711x/debug_ll.h
+++ b/include/mach/clps711x/debug_ll.h
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 // SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru>
 
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __MACH_CLPS711X_DEBUG_LL_H__
+#define __MACH_CLPS711X_DEBUG_LL_H__
 
 #include <asm/io.h>
 #include <mach/clps711x/clps711x.h>
@@ -18,4 +18,4 @@ static inline void PUTC_LL(char c)
 	} while (readl(SYSFLG1) & SYSFLG_UBUSY);
 }
 
-#endif
+#endif /* __MACH_CLPS711X_DEBUG_LL_H__ */
diff --git a/include/mach/davinci/debug_ll.h b/include/mach/davinci/debug_ll.h
index 5867da8544..1539bf8ee4 100644
--- a/include/mach/davinci/debug_ll.h
+++ b/include/mach/davinci/debug_ll.h
@@ -4,8 +4,8 @@
 /** @file
  *  This File contains declaration for early output support
  */
-#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
-#define __INCLUDE_ARCH_DEBUG_LL_H__
+#ifndef __MACH_DAVINCI_DEBUG_LL_H__
+#define __MACH_DAVINCI_DEBUG_LL_H__
 
 #include <asm/io.h>
 #include <mach/davinci/serial.h>
@@ -25,4 +25,4 @@ static inline void PUTC_LL(char ch)
 	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
 }
 
-#endif /* __INCLUDE_ARCH_DEBUG_LL_H__ */
+#endif /* __MACH_DAVINCI_DEBUG_LL_H__ */
diff --git a/include/mach/davinci/hardware.h b/include/mach/davinci/hardware.h
index 8ab824800e..a0a1918444 100644
--- a/include/mach/davinci/hardware.h
+++ b/include/mach/davinci/hardware.h
@@ -6,8 +6,8 @@
  *
  * Author: Kevin Hilman, Deep Root Systems, LLC
  */
-#ifndef __ASM_ARCH_HARDWARE_H
-#define __ASM_ARCH_HARDWARE_H
+#ifndef __MACH_DAVINCI_HARDWARE_H
+#define __MACH_DAVINCI_HARDWARE_H
 
 #include <asm/memory.h>
 
@@ -24,4 +24,4 @@
  */
 #define IO_PHYS				UL(0x01c00000)
 
-#endif /* __ASM_ARCH_HARDWARE_H */
+#endif /* __MACH_DAVINCI_HARDWARE_H */
diff --git a/include/mach/digic/debug_ll.h b/include/mach/digic/debug_ll.h
index 1af1a27e91..f4d99f68c1 100644
--- a/include/mach/digic/debug_ll.h
+++ b/include/mach/digic/debug_ll.h
@@ -14,8 +14,8 @@
  *
  */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __MACH_DIGIC_DEBUG_LL_H__
+#define __MACH_DIGIC_DEBUG_LL_H__
 
 #include <io.h>
 #include <mach/digic/digic4.h>
@@ -36,4 +36,4 @@ static inline void PUTC_LL(char ch)
 	writel(ch, DEBUG_LL_UART_TX);
 }
 
-#endif /* __MACH_DEBUG_LL_H__ */
+#endif /* __MACH_DIGIC_DEBUG_LL_H__ */
diff --git a/include/mach/imx/bbu.h b/include/mach/imx/bbu.h
index 207d46e5d1..c9b239c698 100644
--- a/include/mach/imx/bbu.h
+++ b/include/mach/imx/bbu.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __MACH_BBU_H
-#define __MACH_BBU_H
+#ifndef __MACH_IMX_BBU_H
+#define __MACH_IMX_BBU_H
 
 #include <bbu.h>
 #include <errno.h>
@@ -209,4 +209,4 @@ static inline int imx_bbu_external_nand_register_handler(const char *name, const
 }
 #endif
 
-#endif
+#endif /* __MACH_IMX_BBU_H */
diff --git a/include/mach/imx/debug_ll.h b/include/mach/imx/debug_ll.h
index 1b554b2d22..33e3e3afe3 100644
--- a/include/mach/imx/debug_ll.h
+++ b/include/mach/imx/debug_ll.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __MACH_IMX_DEBUG_LL_H__
+#define __MACH_IMX_DEBUG_LL_H__
 
 #include <io.h>
 #include <config.h>
@@ -164,4 +164,4 @@ static inline void vf610_ungate_all_peripherals(void)
 		writel(0xffffffff, ccmbase + i);
 }
 
-#endif /* __MACH_DEBUG_LL_H__ */
+#endif /* __MACH_IMX_DEBUG_LL_H__ */
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index aa2fa5129a..86270b03dc 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __MACH_XLOAD_H
-#define __MACH_XLOAD_H
+#ifndef __MACH_IMX_XLOAD_H
+#define __MACH_IMX_XLOAD_H
 
 #include <linux/compiler.h>
 #include <linux/types.h>
@@ -42,4 +42,4 @@ struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth);
 #define imx8mn_scratch_space() __imx8m_scratch_space(16)
 #define imx8mp_scratch_space() __imx8m_scratch_space(32)
 
-#endif /* __MACH_XLOAD_H */
+#endif /* __MACH_IMX_XLOAD_H */
diff --git a/include/mach/layerscape/debug_ll.h b/include/mach/layerscape/debug_ll.h
index b6630af143..e731de29b6 100644
--- a/include/mach/layerscape/debug_ll.h
+++ b/include/mach/layerscape/debug_ll.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
-#define __INCLUDE_ARCH_DEBUG_LL_H__
+#ifndef __MACH_LAYERSCAPE_DEBUG_LL_H__
+#define __MACH_LAYERSCAPE_DEBUG_LL_H__
 
 #include <io.h>
 #include <soc/fsl/immap_lsch2.h>
@@ -33,4 +33,4 @@ static inline void debug_ll_init(void)
 	debug_ll_ns16550_init(divisor);
 }
 
-#endif /* __INCLUDE_ARCH_DEBUG_LL_H__ */
+#endif /* __MACH_LAYERSCAPE_DEBUG_LL_H__ */
diff --git a/include/mach/layerscape/xload.h b/include/mach/layerscape/xload.h
index 0731681b43..2d4d744d89 100644
--- a/include/mach/layerscape/xload.h
+++ b/include/mach/layerscape/xload.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __MACH_XLOAD_H
-#define __MACH_XLOAD_H
+#ifndef __MACH_LAYERSCAPE_XLOAD_H
+#define __MACH_LAYERSCAPE_XLOAD_H
 
 int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long r2);
 int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
@@ -9,4 +9,4 @@ int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
 int ls1046a_xload_start_image(unsigned long r0, unsigned long r1,
 			      unsigned long r2);
 
-#endif /* __MACH_XLOAD_H */
+#endif /* __MACH_LAYERSCAPE_XLOAD_H */
diff --git a/include/mach/mvebu/debug_ll.h b/include/mach/mvebu/debug_ll.h
index d213771573..9197cd68eb 100644
--- a/include/mach/mvebu/debug_ll.h
+++ b/include/mach/mvebu/debug_ll.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
 /* SPDX-FileCopyrightText: 2013 Thomas Petazzoni <thomas.petazzoni@free-electrons.com> */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __MACH_MVEBU_DEBUG_LL_H__
+#define __MACH_MVEBU_DEBUG_LL_H__
 
 #include <io.h>
 
@@ -27,4 +27,4 @@ static inline void PUTC_LL(char c)
 	while (!(readl(EARLY_UART + UART_LSR) & LSR_THRE))
 		;
 }
-#endif
+#endif /* __MACH_MVEBU_DEBUG_LL_H__ */
diff --git a/include/mach/mxs/debug_ll.h b/include/mach/mxs/debug_ll.h
index 49c8503765..41658ba0c5 100644
--- a/include/mach/mxs/debug_ll.h
+++ b/include/mach/mxs/debug_ll.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __MACH_MXS_DEBUG_LL_H__
+#define __MACH_MXS_DEBUG_LL_H__
 
 #include <io.h>
 #include <mach/mxs/imx-regs.h>
@@ -21,4 +21,4 @@ static inline void PUTC_LL(int c)
 	writel(c, base + UARTDBGDR);
 }
 
-#endif /* __MACH_DEBUG_LL_H__ */
+#endif /* __MACH_MXS_DEBUG_LL_H__ */
diff --git a/include/mach/nomadik/hardware.h b/include/mach/nomadik/hardware.h
index c050b2f421..00b42cd1ff 100644
--- a/include/mach/nomadik/hardware.h
+++ b/include/mach/nomadik/hardware.h
@@ -11,8 +11,8 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  */
-#ifndef __ASM_ARCH_HARDWARE_H
-#define __ASM_ARCH_HARDWARE_H
+#ifndef __MACH_NOMADIK_HARDWARE_H
+#define __MACH_NOMADIK_HARDWARE_H
 
 /* Nomadik registers live from 0x1000.0000 to 0x1023.0000 -- currently */
 #define NOMADIK_IO_VIRTUAL	0xF0000000	/* VA of IO */
@@ -84,4 +84,4 @@
 #define NOMADIK_MTU0_VA		IO_ADDRESS(NOMADIK_MTU0_BASE)
 #define NOMADIK_MTU1_VA		IO_ADDRESS(NOMADIK_MTU1_BASE)
 
-#endif /* __ASM_ARCH_HARDWARE_H */
+#endif /* __MACH_NOMADIK_HARDWARE_H */
diff --git a/include/mach/omap/bbu.h b/include/mach/omap/bbu.h
index 5ca7ec43cc..122dadb892 100644
--- a/include/mach/omap/bbu.h
+++ b/include/mach/omap/bbu.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __MACH_BBU_H
-#define __MACH_BBU_H
+#ifndef __MACH_OMAP_BBU_H
+#define __MACH_OMAP_BBU_H
 
 #include <bbu.h>
 
@@ -65,4 +65,4 @@ static inline int am33xx_bbu_emmc_register_handler(const char *name,
 #endif
 
 
-#endif
+#endif /* __MACH_OMAP_BBU_H */
diff --git a/include/mach/omap/debug_ll.h b/include/mach/omap/debug_ll.h
index b0a3b0abde..2e723dcb82 100644
--- a/include/mach/omap/debug_ll.h
+++ b/include/mach/omap/debug_ll.h
@@ -14,8 +14,8 @@
  * GNU General Public License for more details.
  */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define   __MACH_DEBUG_LL_H__
+#ifndef __MACH_OMAP_DEBUG_LL_H__
+#define   __MACH_OMAP_DEBUG_LL_H__
 
 #include <io.h>
 #include <mach/omap/omap3-silicon.h>
@@ -77,4 +77,4 @@ static inline void PUTC_LL(char c)
 }
 #endif
 
-#endif
+#endif /* __MACH_OMAP_DEBUG_LL_H__ */
diff --git a/include/mach/rockchip/debug_ll.h b/include/mach/rockchip/debug_ll.h
index c7a5b2f7d9..c859c3f199 100644
--- a/include/mach/rockchip/debug_ll.h
+++ b/include/mach/rockchip/debug_ll.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __MACH_ROCKCHIP_DEBUG_LL_H__
+#define __MACH_ROCKCHIP_DEBUG_LL_H__
 
 #include <common.h>
 #include <io.h>
@@ -96,4 +96,4 @@ static inline void INIT_LL(void)
 }
 #endif
 
-#endif
+#endif /* __MACH_ROCKCHIP_DEBUG_LL_H__ */
diff --git a/include/mach/socfpga/debug_ll.h b/include/mach/socfpga/debug_ll.h
index 44f56640e8..25b3581634 100644
--- a/include/mach/socfpga/debug_ll.h
+++ b/include/mach/socfpga/debug_ll.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define   __MACH_DEBUG_LL_H__
+#ifndef __MACH_SOCFPGA_DEBUG_LL_H__
+#define   __MACH_SOCFPGA_DEBUG_LL_H__
 
 #include <io.h>
 #include <errno.h>
@@ -83,4 +83,4 @@ static inline unsigned int ns16550_calc_divisor(unsigned int clk,
 static inline void INIT_LL(void) {}
 static inline void PUTC_LL(char c) {}
 #endif
-#endif
+#endif /* __MACH_SOCFPGA_DEBUG_LL_H__ */
diff --git a/include/mach/tegra/debug_ll.h b/include/mach/tegra/debug_ll.h
index ff0439e5f3..f8d0d13e2c 100644
--- a/include/mach/tegra/debug_ll.h
+++ b/include/mach/tegra/debug_ll.h
@@ -17,8 +17,8 @@
 /** @file
  *  This File contains declaration for early output support
  */
-#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
-#define __INCLUDE_ARCH_DEBUG_LL_H__
+#ifndef __MACH_TEGRA_DEBUG_LL_H__
+#define __MACH_TEGRA_DEBUG_LL_H__
 
 #include <asm/io.h>
 #include <mach/tegra/iomap.h>
@@ -38,4 +38,4 @@ static inline void PUTC_LL(char ch)
 	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
 }
 
-#endif /* __INCLUDE_ARCH_DEBUG_LL_H__ */
+#endif /* __MACH_TEGRA_DEBUG_LL_H__ */
diff --git a/include/mach/uemd/debug_ll.h b/include/mach/uemd/debug_ll.h
index df24e1d938..c6ae3fe294 100644
--- a/include/mach/uemd/debug_ll.h
+++ b/include/mach/uemd/debug_ll.h
@@ -17,8 +17,8 @@
 /** @file
  *  This File contains declaration for early output support
  */
-#ifndef __INCLUDE_ARCH_DEBUG_LL_H__
-#define __INCLUDE_ARCH_DEBUG_LL_H__
+#ifndef __MACH_UEMD_DEBUG_LL_H__
+#define __MACH_UEMD_DEBUG_LL_H__
 
 #include <asm/io.h>
 #include <mach/uemd/hardware.h>
@@ -38,4 +38,4 @@ static inline void PUTC_LL(char ch)
 	__raw_writeb(ch, DEBUG_LL_UART_ADDR + rbr);
 }
 
-#endif /* __INCLUDE_ARCH_DEBUG_LL_H__ */
+#endif /* __MACH_UEMD_DEBUG_LL_H__ */
diff --git a/include/mach/uemd/hardware.h b/include/mach/uemd/hardware.h
index 5c75b35dde..5cdf4403ad 100644
--- a/include/mach/uemd/hardware.h
+++ b/include/mach/uemd/hardware.h
@@ -1,9 +1,9 @@
 /* SPDX-License-Identifier: GPL-2.0-only */
 
-#ifndef __ASM_ARCH_HARDWARE_H
-#define __ASM_ARCH_HARDWARE_H
+#ifndef __MACH_UEMD_HARDWARE_H
+#define __MACH_UEMD_HARDWARE_H
 
 #define UEMD_EHCI_BASE	0x10040000
 #define UEMD_UART0_BASE	0x2002b000
 
-#endif /* __ASM_ARCH_HARDWARE_H */
+#endif /* __MACH_UEMD_HARDWARE_H */
diff --git a/include/mach/versatile/debug_ll.h b/include/mach/versatile/debug_ll.h
index 073402c51a..0c46e2a6bb 100644
--- a/include/mach/versatile/debug_ll.h
+++ b/include/mach/versatile/debug_ll.h
@@ -13,11 +13,11 @@
  * GNU General Public License for more details.
  */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define   __MACH_DEBUG_LL_H__
+#ifndef __MACH_VERSATILE_DEBUG_LL_H__
+#define   __MACH_VERSATILE_DEBUG_LL_H__
 
 #define DEBUG_LL_UART_ADDR 0x101F1000
 
 #include <debug_ll/pl011.h>
 
-#endif
+#endif /* __MACH_VERSATILE_DEBUG_LL_H__ */
diff --git a/include/mach/vexpress/debug_ll.h b/include/mach/vexpress/debug_ll.h
index d59f68ea19..cd01d5d018 100644
--- a/include/mach/vexpress/debug_ll.h
+++ b/include/mach/vexpress/debug_ll.h
@@ -4,8 +4,8 @@
  * GPLv2 only
  */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define   __MACH_DEBUG_LL_H__
+#ifndef __MACH_VEXPRESS_DEBUG_LL_H__
+#define   __MACH_VEXPRESS_DEBUG_LL_H__
 
 #include <linux/amba/serial.h>
 #include <io.h>
@@ -21,4 +21,4 @@
 
 #include <debug_ll/pl011.h>
 
-#endif
+#endif /* __MACH_VEXPRESS_DEBUG_LL_H__ */
diff --git a/include/mach/zynq/debug_ll.h b/include/mach/zynq/debug_ll.h
index e360fee15e..3105211c1b 100644
--- a/include/mach/zynq/debug_ll.h
+++ b/include/mach/zynq/debug_ll.h
@@ -4,8 +4,8 @@
  * based on mach-imx/include/mach/debug_ll.h
  */
 
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __MACH_ZYNQ_DEBUG_LL_H__
+#define __MACH_ZYNQ_DEBUG_LL_H__
 
 #include <io.h>
 #include <mach/zynq/zynq7000-regs.h>
@@ -36,4 +36,4 @@ static inline void PUTC_LL(int c)
 	writel(c, base + ZYNQ_UART_RXTXFIFO);
 }
 
-#endif
+#endif /* __MACH_ZYNQ_DEBUG_LL_H__ */
diff --git a/include/mach/zynqmp/debug_ll.h b/include/mach/zynqmp/debug_ll.h
index 67571fe2e1..7642e37a4e 100644
--- a/include/mach/zynqmp/debug_ll.h
+++ b/include/mach/zynqmp/debug_ll.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: GPL-2.0-or-later */
-#ifndef __MACH_DEBUG_LL_H__
-#define __MACH_DEBUG_LL_H__
+#ifndef __MACH_ZYNQMP_DEBUG_LL_H__
+#define __MACH_ZYNQMP_DEBUG_LL_H__
 
 #include <io.h>
 
@@ -28,4 +28,4 @@ static inline void PUTC_LL(int c)
 	writel(c, base + 0x30);
 }
 
-#endif
+#endif /* __MACH_ZYNQMP_DEBUG_LL_H__ */
-- 
2.30.2



