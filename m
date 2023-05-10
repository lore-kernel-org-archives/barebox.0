Delivery-date: Thu, 11 May 2023 01:39:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOx-00DJJy-WE
	for lore@lore.pengutronix.de; Thu, 11 May 2023 01:39:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOv-0000zb-LK
	for lore@pengutronix.de; Thu, 11 May 2023 01:39:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B43kTvU4VdUestphnuj+CmZq+H7rWlu86Bu0/MvTM7A=; b=T4I8vzusP8NLqYtLP9GU5GoP5/
	SHU6ZGm1iMndR96PEn91A5TT1sPGk95swTZkMsixN0hEcjodb2gVYYF3ro999BikH63+4tYmFG/Yi
	OlI0rVBQL61n/vuhVCqtvor0WF2c8TVJyHxyff8YEz9EHiOyHdG4dKDn3Y59ugEw6T7KP+EpAgYVs
	pPNxeFEUlBzUkKnEjBqkHddFI0SLsQYYZ+8ZPRyP/j8f912/2cjHV08WkXD8QNmaAY3mrnEulLt2n
	RY9/XMKRL9wjgNYGYZJXZGYLsD5QQJ3RdOpzBW6Yby4NzJfyiw/s7k1dQDidOrxRvFH3rYKu4uxAs
	GskMBpyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNY-007Fv6-1r;
	Wed, 10 May 2023 23:37:52 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNP-007Fq4-2E
	for barebox@lists.infradead.org;
	Wed, 10 May 2023 23:37:49 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id BCEDD1C0006;
	Wed, 10 May 2023 23:37:35 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 11 May 2023 01:37:02 +0200
Message-Id: <20230510233711.37345-3-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230510233711.37345-1-jmaselbas@zdiv.net>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_163744_046406_FBF990EC 
X-CRM114-Status: GOOD (  11.97  )
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
Subject: [RFC PATCH 02/11] sunxi: introduce mach-sunxi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add kbuild boilerplate and some early init functions
---
 arch/arm/Kconfig                   | 12 ++++++++++
 arch/arm/Makefile                  |  1 +
 arch/arm/mach-sunxi/Kconfig        | 16 +++++++++++++
 arch/arm/mach-sunxi/Makefile       |  2 ++
 arch/arm/mach-sunxi/cpu_init.c     | 33 +++++++++++++++++++++++++++
 arch/arm/mach-sunxi/sunxi.c        |  0
 images/Makefile                    |  1 +
 images/Makefile.sunxi              | 13 +++++++++++
 include/mach/sunxi/init.h          |  6 +++++
 include/mach/sunxi/sun50i-regs.h   | 36 ++++++++++++++++++++++++++++++
 include/mach/sunxi/sunxi-pinctrl.h | 13 +++++++++++
 11 files changed, 133 insertions(+)
 create mode 100644 arch/arm/mach-sunxi/Kconfig
 create mode 100644 arch/arm/mach-sunxi/Makefile
 create mode 100644 arch/arm/mach-sunxi/cpu_init.c
 create mode 100644 arch/arm/mach-sunxi/sunxi.c
 create mode 100644 images/Makefile.sunxi
 create mode 100644 include/mach/sunxi/init.h
 create mode 100644 include/mach/sunxi/sun50i-regs.h
 create mode 100644 include/mach/sunxi/sunxi-pinctrl.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index abe649de49..8da03e2703 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -144,6 +144,17 @@ config ARCH_SOCFPGA
 	select COMMON_CLK
 	select CLKDEV_LOOKUP
 
+config ARCH_SUNXI
+	bool "Allwinner SoCs"
+	select OFTREE
+	select OFDEVICE
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select CLKDEV_LOOKUP
+	select GENERIC_GPIO
+	select GPIOLIB
+	select PINCTRL
+
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select GPIOLIB
@@ -311,6 +322,7 @@ source "arch/arm/mach-omap/Kconfig"
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
index 0000000000..0e8d83fedd
--- /dev/null
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -0,0 +1,16 @@
+if ARCH_SUNXI
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x0
+
+menuconfig SUNXI_MULTI_BOARDS
+	bool "Allwinner boards"
+	select HAVE_PBL_MULTI_IMAGES
+	select RELOCATABLE
+
+if SUNXI_MULTI_BOARDS
+
+endif
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
index 0000000000..f4092d8d5d
--- /dev/null
+++ b/arch/arm/mach-sunxi/cpu_init.c
@@ -0,0 +1,33 @@
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
+	/* APB2 = 24MHz (UART, I2C) */
+	writel((1 << 24 /* src: 1=osc24 */) |
+	       (0 << 16 /* pre_div (N): 0=/1 1=/2 2=/4 3=/8 */) |
+	       (0 << 0) /* M-1 */,
+	       ccu + CCU_APB2_CFG);
+	set_cntfrq(24 * 1000 * 1000);
+
+	/* PIO clock enable */
+	setbits_le32(ccu + CCU_BUS_CLK_GATE2, 1u << 5);
+	/* UART0 clock enable */
+	setbits_le32(ccu + CCU_BUS_CLK_GATE3, 1u << 16);
+	/* UART0 release reset */
+	setbits_le32(ccu + CCU_BUS_SOFT_RST4, 1u << 16);
+}
+
+static void sunxi_cpu_lowlevel_init(void)
+{
+	sunxi_ccu_init(IOMEM(SUNXI_CCU_BASE_ADDR));
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
index 0000000000..26cc022fde
--- /dev/null
+++ b/include/mach/sunxi/init.h
@@ -0,0 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_INIT_H
+#define __MACH_INIT_H
+
+#endif
diff --git a/include/mach/sunxi/sun50i-regs.h b/include/mach/sunxi/sun50i-regs.h
new file mode 100644
index 0000000000..68501fa351
--- /dev/null
+++ b/include/mach/sunxi/sun50i-regs.h
@@ -0,0 +1,36 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __MACH_SUN50I_REGS_H
+#define __MACH_SUN50I_REGS_H
+
+#define SUN50I_SRAM_A1_BASE_ADDR 0x00000000
+#define SUN50I_SRAM_A1_SIZE SZ_64K
+#define SUN50I_SRAM_A2_BASE_ADDR 0x00044000
+#define SUN50I_SRAM_A2_SIZE SZ_32K
+
+#define SUN50I_DRAM_BASE_ADDR	0x40000000
+
+#define SUN50I_CCU_BASE_ADDR	0x01c20000
+#define SUN50I_PIO_BASE_ADDR	0x01c20800
+#define SUN50I_MMC0_BASE_ADDR	0x01c0f000
+#define SUN50I_MMC1_BASE_ADDR	0x01c10000
+#define SUN50I_MMC2_BASE_ADDR	0x01c11000
+#define SUN50I_TIMER_BASE_ADDR	0x01c20c00
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
index 0000000000..adb2a24577
--- /dev/null
+++ b/include/mach/sunxi/sunxi-pinctrl.h
@@ -0,0 +1,13 @@
+/* pio aka "allwinner,sun8i-h3-pinctrl" */
+
+#define PIO_PA_CFG0 0x00
+#define PIO_PB_CFG0 0x24
+#define PIO_PB_CFG1 0x28
+#define PIO_PD_CFG0 0x6c
+#define PIO_PD_CFG1 0x70
+#define PIO_PD_CFG2 0x74
+#define PIO_PF_CFG0 0xb4
+
+#define PIO_PA_PULL1 0x20
+#define PIO_PB_PULL0 0x40
+#define PIO_PD_DATA 0x7c
-- 
2.40.0



