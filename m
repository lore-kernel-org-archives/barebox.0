Delivery-date: Thu, 25 May 2023 01:45:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAS-00Crha-Mz
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAP-0007B6-Jy
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7PRyrTOSxaTStV07waV2gUYNnDm23y+0RvW8HdTURqk=; b=AYHMXHrKYQ1Yx1KBuBJbML3iE5
	ViLvN2PfQE1CjT2G6v3+DUEyWeyTdSFxECtG3AKbuuympsKb02lMdNBgPIi8Z4qaf3VqAxXcIvgR6
	ExobdGlznMnReaQNZb5kzwGe49alRHlytkNKvoH/xdHsWQe/lnOWbQM/Ic86/kOcOVU700g/gPIxm
	sL3bYHZWIUpDKKVoRv6uAO3ofuRaqnN/2WMorsod5hSJPgRzKBy6DfmZbqF56koomqPviiOKXhQT8
	obEGAXp8UrdZ0f5mOdrOshGCA8vYCyv30I1bloqszMUTh4ONcBdobT/NmNSkT87HPRH3vezA6lYR9
	1mhx1nOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y93-00EzMk-0G;
	Wed, 24 May 2023 23:43:53 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8w-00EzHj-0E
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:48 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 76FC51C0008;
	Wed, 24 May 2023 23:43:37 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:18 +0200
Message-Id: <20230524234328.82741-4-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164346_392976_6AAE6683 
X-CRM114-Status: GOOD (  18.45  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 03/13] ARM: sunxi: introduce mach-sunxi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add kbuild boilerplate and some early init functions and lowlevel
pinctrl functions that will be necessary for early debug uart.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
rfc->v2:
 - removed ARCH_TEXT_BASE
 - add lowlevel pinmux

 arch/arm/Kconfig                   | 14 ++++++
 arch/arm/Makefile                  |  1 +
 arch/arm/mach-sunxi/Kconfig        |  3 ++
 arch/arm/mach-sunxi/Makefile       |  2 +
 arch/arm/mach-sunxi/cpu_init.c     | 57 ++++++++++++++++++++++
 arch/arm/mach-sunxi/sunxi.c        |  0
 images/Makefile                    |  1 +
 images/Makefile.sunxi              | 13 +++++
 include/mach/sunxi/init.h          | 11 +++++
 include/mach/sunxi/sun50i-regs.h   | 43 +++++++++++++++++
 include/mach/sunxi/sunxi-pinctrl.h | 76 ++++++++++++++++++++++++++++++
 11 files changed, 221 insertions(+)
 create mode 100644 arch/arm/mach-sunxi/Kconfig
 create mode 100644 arch/arm/mach-sunxi/Makefile
 create mode 100644 arch/arm/mach-sunxi/cpu_init.c
 create mode 100644 arch/arm/mach-sunxi/sunxi.c
 create mode 100644 images/Makefile.sunxi
 create mode 100644 include/mach/sunxi/init.h
 create mode 100644 include/mach/sunxi/sun50i-regs.h
 create mode 100644 include/mach/sunxi/sunxi-pinctrl.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 5aef8fcd3b..3c6a3133a8 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -155,6 +155,19 @@ config ARCH_SOCFPGA
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
 
+config ARCH_SUNXI
+	bool "Allwinner SoCs"
+	depends on 64BIT
+	select CLKDEV_LOOKUP
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select GPIOLIB
+	select HAVE_PBL_MULTI_IMAGES
+	select OFDEVICE
+	select OFTREE
+	select PINCTRL
+	select RELOCATABLE
+
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	depends on 32BIT
@@ -325,6 +338,7 @@ source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
 source "arch/arm/mach-rockchip/Kconfig"
 source "arch/arm/mach-socfpga/Kconfig"
+source "arch/arm/mach-sunxi/Kconfig"
 source "arch/arm/mach-stm32mp/Kconfig"
 source "arch/arm/mach-versatile/Kconfig"
 source "arch/arm/mach-vexpress/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a506f1e3a3..bb61392e4c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -103,6 +103,7 @@ machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
 machine-$(CONFIG_ARCH_SAMSUNG)		+= samsung
 machine-$(CONFIG_ARCH_SOCFPGA)		+= socfpga
 machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
+machine-$(CONFIG_ARCH_SUNXI)		+= sunxi
 machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
 machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		+= tegra
diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
new file mode 100644
index 0000000000..6094f40e2e
--- /dev/null
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -0,0 +1,3 @@
+if ARCH_SUNXI
+
+endif
diff --git a/arch/arm/mach-sunxi/Makefile b/arch/arm/mach-sunxi/Makefile
new file mode 100644
index 0000000000..d678973ca2
--- /dev/null
+++ b/arch/arm/mach-sunxi/Makefile
@@ -0,0 +1,2 @@
+obj-y += sunxi.o
+lwl-y += cpu_init.o
diff --git a/arch/arm/mach-sunxi/cpu_init.c b/arch/arm/mach-sunxi/cpu_init.c
new file mode 100644
index 0000000000..aa6add243e
--- /dev/null
+++ b/arch/arm/mach-sunxi/cpu_init.c
@@ -0,0 +1,57 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+// #include <asm/errata.h> TODO: errata 843419 ?
+#include <io.h>
+#include <debug_ll.h>
+#include <mach/sunxi/init.h>
+#include <mach/sunxi/sun50i-regs.h>
+#include <mach/sunxi/sunxi-pinctrl.h>
+
+static void sunxi_ccu_init(void __iomem *ccu)
+{
+	/* running from osc24 */
+	set_cntfrq(24 * 1000 * 1000);
+	/* APB2 = 24MHz (UART, I2C) */
+	writel((1 << 24 /* src: 1=osc24 */) |
+	       (0 << 16 /* pre_div (N): 0=/1 1=/2 2=/4 3=/8 */) |
+	       (0 << 0) /* M-1 */,
+	       ccu + CCU_APB2_CFG);
+}
+
+void sun50i_cpu_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+	sunxi_ccu_init(SUN50I_CCU_BASE_ADDR);
+}
+
+void sun50i_cpu_lowlevel_reset(void)
+{
+	void __iomem *reg = SUN50I_TIMER_BASE_ADDR;
+	/* Set the watchdog for its shortest interval (.5s) and wait */
+	writel(1, reg + 0xB4); /* reset whole system */
+	writel(1, reg + 0xB8); /* enable */
+	writel((0xa57 << 1) | 1, reg + 0xB0); /* restart */
+	__hang();
+}
+
+void sun50i_uart_setup(void)
+{
+	void __iomem *ccu = SUN50I_CCU_BASE_ADDR;
+	void __iomem *pio = SUN50I_PIO_BASE_ADDR;
+
+	/* PIO clock enable */
+	setbits_le32(ccu + CCU_BUS_CLK_GATE2, BIT(5));
+	/* UART0 clock enable */
+	setbits_le32(ccu + CCU_BUS_CLK_GATE3, BIT(16));
+	/* UART0 release reset */
+	setbits_le32(ccu + CCU_BUS_SOFT_RST4, BIT(16));
+
+	/* UART0 pinmux (PB8 + PB9) */
+	sunxi_pinmux_set_func(pio, PIO_PB_CFG0, GENMASK(9, 8), 4);
+
+	debug_ll_init();
+	putc_ll('>');
+}
diff --git a/arch/arm/mach-sunxi/sunxi.c b/arch/arm/mach-sunxi/sunxi.c
new file mode 100644
index 0000000000..e69de29bb2
diff --git a/images/Makefile b/images/Makefile
index aa5814710f..3a10fe1abb 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -151,6 +151,7 @@ include $(srctree)/images/Makefile.omap3
 include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.stm32mp
+include $(srctree)/images/Makefile.sunxi
 include $(srctree)/images/Makefile.tegra
 include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.xburst
diff --git a/images/Makefile.sunxi b/images/Makefile.sunxi
new file mode 100644
index 0000000000..778d6f9bdf
--- /dev/null
+++ b/images/Makefile.sunxi
@@ -0,0 +1,13 @@
+#
+# barebox image generation Makefile for Allwinner sunxi eGON boot images
+#
+
+# %.egonimg - convert into eGON.BT0 image
+# ----------------------------------------------------------------------
+quiet_cmd_egon_image = EGON  $@
+      cmd_egon_image = $(objtree)/scripts/egon_mkimage $< $@
+
+$(obj)/%.egonimg: $(obj)/% FORCE
+	$(call if_changed,egon_image)
+
+# ----------------------------------------------------------------------
diff --git a/include/mach/sunxi/init.h b/include/mach/sunxi/init.h
new file mode 100644
index 0000000000..fed9afe6ba
--- /dev/null
+++ b/include/mach/sunxi/init.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef MACH_SUNXI_INIT_H
+#define MACH_SUNXI_INIT_H
+
+void sun50i_cpu_lowlevel_init(void);
+
+void sun50i_cpu_lowlevel_reset(void);
+
+void sun50i_uart_setup(void);
+
+#endif
diff --git a/include/mach/sunxi/sun50i-regs.h b/include/mach/sunxi/sun50i-regs.h
new file mode 100644
index 0000000000..23934601b4
--- /dev/null
+++ b/include/mach/sunxi/sun50i-regs.h
@@ -0,0 +1,43 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef MACH_SUNXI_SUN50I_REGS_H
+#define MACH_SUNXI_SUN50I_REGS_H
+
+#include <linux/sizes.h>
+
+#define SUN50I_A64_RVBAR_IOMAP	0x017000a0
+#define SUN50I_PBL_STACK_TOP	(SUN50I_SRAM_A1_ADDR + SUN50I_SRAM_A1_SIZE)
+
+#define SUN50I_SRAM_A1_ADDR	0x00010000
+#define SUN50I_SRAM_A1_SIZE	SZ_32K
+#define SUN50I_SRAM_A2_ADDR	0x00044000
+#define SUN50I_SRAM_A2_SIZE	SZ_64K
+#define SUN50I_SRAM_C_ADDR	0x00018000
+/* advertised as 160K, but only ~108K can be used */
+#define SUN50I_SRAM_C_SIZE	(108 * SZ_1K)
+
+#define SUN50I_DRAM_ADDR	0x40000000
+
+#define SUN50I_CCU_BASE_ADDR	IOMEM(0x01c20000)
+#define SUN50I_PIO_BASE_ADDR	IOMEM(0x01c20800)
+#define SUN50I_MMC0_BASE_ADDR	IOMEM(0x01c0f000)
+#define SUN50I_MMC1_BASE_ADDR	IOMEM(0x01c10000)
+#define SUN50I_MMC2_BASE_ADDR	IOMEM(0x01c11000)
+#define SUN50I_TIMER_BASE_ADDR	IOMEM(0x01c20c00)
+
+#define CCU_PLL_CPUX		0x00
+#define CCU_PLL_PERIPH0		0x28
+#define CCU_CPUX_AXI_CFG	0x50
+#define CCU_AHB1_APB1_CFG	0x54
+#define CCU_APB2_CFG		0x58
+#define CCU_AHB2_CFG		0x5c
+#define CCU_BUS_CLK_GATE0	0x60
+#define CCU_BUS_CLK_GATE1	0x64
+#define CCU_BUS_CLK_GATE2	0x68
+#define CCU_BUS_CLK_GATE3	0x6c
+#define CCU_CE_CLK		0x9c
+#define CCU_MBUS_CLK		0x15c
+#define CCU_BUS_SOFT_RST0	0x2c0
+#define CCU_BUS_SOFT_RST4	0x2d8
+#define CCU_PLL_LOCK_CTRL	0x320
+
+#endif
diff --git a/include/mach/sunxi/sunxi-pinctrl.h b/include/mach/sunxi/sunxi-pinctrl.h
new file mode 100644
index 0000000000..5e796197bd
--- /dev/null
+++ b/include/mach/sunxi/sunxi-pinctrl.h
@@ -0,0 +1,76 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_SUNXI_PINCTRL_H
+#define __MACH_SUNXI_PINCTRL_H
+
+/* low-level gpio "pio" defines to be used in PBL early init,
+ * pio aka "allwinner,sun8i-h3-pinctrl" */
+
+#define PIO_Pn_CFG0(n) ((n)+0x0)
+#define PIO_Pn_CFG1(n) ((n)+0x4)
+#define PIO_Pn_CFG2(n) ((n)+0x8)
+#define PIO_Pn_CFG3(n) ((n)+0xc)
+
+#define PIO_PB_BASE (0x24*1)
+#define PIO_PC_BASE (0x24*2)
+#define PIO_PD_BASE (0x24*3)
+#define PIO_PE_BASE (0x24*4)
+#define PIO_PF_BASE (0x24*5)
+#define PIO_PG_BASE (0x24*6)
+#define PIO_PH_BASE (0x24*7)
+
+/* PORT B */
+#define PIO_PB_CFG0 PIO_Pn_CFG0(PIO_PB_BASE)
+#define PIO_PB_CFG1 PIO_Pn_CFG1(PIO_PB_BASE)
+/* PORT C */
+#define PIO_PC_CFG0 PIO_Pn_CFG0(PIO_PC_BASE)
+#define PIO_PC_CFG1 PIO_Pn_CFG1(PIO_PC_BASE)
+#define PIO_PC_CFG2 PIO_Pn_CFG2(PIO_PC_BASE)
+/* PORT D */
+#define PIO_PD_CFG0 PIO_Pn_CFG0(PIO_PD_BASE)
+#define PIO_PD_CFG1 PIO_Pn_CFG1(PIO_PD_BASE)
+#define PIO_PD_CFG2 PIO_Pn_CFG2(PIO_PD_BASE)
+#define PIO_PD_CFG3 PIO_Pn_CFG3(PIO_PD_BASE)
+/* PORT E */
+#define PIO_PE_CFG0 PIO_Pn_CFG0(PIO_PE_BASE)
+#define PIO_PE_CFG1 PIO_Pn_CFG1(PIO_PE_BASE)
+#define PIO_PE_CFG2 PIO_Pn_CFG2(PIO_PE_BASE)
+/* PORT F */
+#define PIO_PF_CFG0 PIO_Pn_CFG0(PIO_PF_BASE)
+/* PORT G */
+#define PIO_PG_CFG0 PIO_Pn_CFG0(PIO_PG_BASE)
+#define PIO_PG_CFG1 PIO_Pn_CFG1(PIO_PG_BASE)
+/* PORT H */
+#define PIO_PH_CFG0 PIO_Pn_CFG0(PIO_PH_BASE)
+#define PIO_PH_CFG1 PIO_Pn_CFG1(PIO_PH_BASE)
+
+#define PIO_PA_PULL1 0x20
+#define PIO_PB_PULL0 0x40
+#define PIO_PD_DATA 0x7c
+
+/* static inline so this function can be optimized to a single "call" to clrsetbits */
+static inline void sunxi_pinmux_set_func_port(void __iomem *pio, u32 port, u32 pins, u8 func)
+{
+	u32 i, msk = 0, cfg = 0;
+
+	if (!(pins & 0xff))
+		return;
+
+	for (i = 0; i < 8; i++) {
+		if (pins & (1 << i)) {
+			cfg |= func << (i * 4);
+			msk |= 0xf << (i * 4);
+		}
+	}
+	clrsetbits_le32(pio + port, msk, cfg);
+}
+
+static inline void sunxi_pinmux_set_func(void __iomem *pio, u32 port, u32 pins, u8 func)
+{
+	sunxi_pinmux_set_func_port(pio, PIO_Pn_CFG0(port), pins, func);
+	sunxi_pinmux_set_func_port(pio, PIO_Pn_CFG1(port), pins >> 8, func);
+	sunxi_pinmux_set_func_port(pio, PIO_Pn_CFG2(port), pins >> 16, func);
+	sunxi_pinmux_set_func_port(pio, PIO_Pn_CFG3(port), pins >> 24, func);
+}
+
+#endif
-- 
2.40.1



