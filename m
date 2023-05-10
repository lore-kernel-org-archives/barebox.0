Delivery-date: Thu, 11 May 2023 01:39:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOw-00DJJX-RO
	for lore@lore.pengutronix.de; Thu, 11 May 2023 01:39:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOu-0000z3-LK
	for lore@pengutronix.de; Thu, 11 May 2023 01:39:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m9llEYsILYpFjUXtTIJwja0CHnpi7K/WbqICO7pxIkc=; b=BiPQ8Sy+VvaSZBEktoYiaFXY4k
	mStJMmE0KNgFeGN3l1ZheKK18hhN9SuxxuGeStwDtBLhIQ0AFxQLuMZlj37f3L4RTwaizYBkseNhO
	0Z4yxpUZciBbCpDSHuugk/bLNjIyOIWj4eic83XfC/AmnR4D0xYn/6rFmNlxdYieldq1U6jKlrHTT
	CrgOrVlZh5Q0sTUIyo+uHd42PGJLI1NJt6ikzHOAceffy1zVny6IMCqlumFnB0dmH2VXkHhPNBm1a
	dSA2ccLcR0D7ErQuiWwjIXwWfTYPBvifQlMOrI7yP73AHHAWU7C7aRKZgPkVfwVuh7ZwzEiH+rLuX
	LXlbRsaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNa-007FwN-1k;
	Wed, 10 May 2023 23:37:54 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNS-007Fsb-0I
	for barebox@lists.infradead.org;
	Wed, 10 May 2023 23:37:49 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 5FFFD1C000C;
	Wed, 10 May 2023 23:37:39 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 11 May 2023 01:37:10 +0200
Message-Id: <20230510233711.37345-11-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230510233711.37345-1-jmaselbas@zdiv.net>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_163746_417353_83521C16 
X-CRM114-Status: GOOD (  18.71  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 10/11] arm: boards: sunxi: Add initial support for the pinephone
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 arch/arm/boards/Makefile                    |   1 +
 arch/arm/boards/pine64-pinephone/Makefile   |   2 +
 arch/arm/boards/pine64-pinephone/board.c    |   0
 arch/arm/boards/pine64-pinephone/lowlevel.c | 119 ++++++++++++++++++++
 arch/arm/configs/pinephone_defconfig        |  11 ++
 arch/arm/dts/Makefile                       |   1 +
 arch/arm/dts/sun50i-a64-pinephone-1_2.dts   |   3 +
 arch/arm/mach-sunxi/Kconfig                 |  21 ++++
 arch/arm/mach-sunxi/cpu_init.c              |  15 ++-
 images/Makefile.sunxi                       |   9 ++
 include/mach/sunxi/init.h                   |   4 +
 11 files changed, 184 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/pine64-pinephone/Makefile
 create mode 100644 arch/arm/boards/pine64-pinephone/board.c
 create mode 100644 arch/arm/boards/pine64-pinephone/lowlevel.c
 create mode 100644 arch/arm/configs/pinephone_defconfig
 create mode 100644 arch/arm/dts/sun50i-a64-pinephone-1_2.dts

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 37b1650e63..083ec2dce6 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -96,6 +96,7 @@ obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
 obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
 obj-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1)	+= phytec-phycore-stm32mp1/
 obj-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ)		+= phytec-som-imx8mq/
+obj-$(CONFIG_MACH_PINE64_PINEPHONE)		+= pine64-pinephone/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
diff --git a/arch/arm/boards/pine64-pinephone/Makefile b/arch/arm/boards/pine64-pinephone/Makefile
new file mode 100644
index 0000000000..092c31d6b2
--- /dev/null
+++ b/arch/arm/boards/pine64-pinephone/Makefile
@@ -0,0 +1,2 @@
+lwl-y += lowlevel.o
+obj-y += board.o
diff --git a/arch/arm/boards/pine64-pinephone/board.c b/arch/arm/boards/pine64-pinephone/board.c
new file mode 100644
index 0000000000..e69de29bb2
diff --git a/arch/arm/boards/pine64-pinephone/lowlevel.c b/arch/arm/boards/pine64-pinephone/lowlevel.c
new file mode 100644
index 0000000000..8e7ba1c0a9
--- /dev/null
+++ b/arch/arm/boards/pine64-pinephone/lowlevel.c
@@ -0,0 +1,119 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include <common.h>
+#include <debug_ll.h>
+#include <linux/sizes.h>
+#include <linux/bitops.h>
+#include <asm/barebox-arm.h>
+#include <asm/cache.h>
+#include <mach/sunxi/init.h>
+#include <mach/sunxi/xload.h>
+#include <mach/sunxi/egon.h>
+#include <mach/sunxi/rmr_switch.h>
+#include <mach/sunxi/sun50i-regs.h>
+#include <mach/sunxi/sunxi-pinctrl.h>
+
+#define STACK_TOP   CONFIG_SUNXI_PBL_STACK_TOP
+
+#ifdef DEBUG
+static void debug_led_rgb(int rgb)
+{
+	void __iomem *piobase = IOMEM(SUN50I_PIO_BASE_ADDR);
+	uint32_t clr, set = 0;
+	int r = rgb & 0xff0000;
+	int g = rgb & 0x00ff00;
+	int b = rgb & 0x0000ff;
+
+	clr = (1 << 19) | (1 << 18) | (1 << 20);
+	set |= r ? 1 << 19 : 0;
+	set |= g ? 1 << 18 : 0;
+	set |= b ? 1 << 20 : 0;
+
+	clrsetbits_le32(piobase + PIO_PD_DATA, clr, set);
+}
+
+static void debug_led_init(void)
+{
+	void __iomem *ccubase = IOMEM(SUN50I_CCU_BASE_ADDR);
+	void __iomem *piobase = IOMEM(SUN50I_PIO_BASE_ADDR);
+
+	/* PIO clock enable */
+	setbits_le32(ccubase + CCU_BUS_CLK_GATE2, 1u << 5);
+	/* LED set output */
+	clrsetbits_le32(piobase + PIO_PD_CFG2, 0x000fff00, 0x00011100);
+}
+#else
+static void debug_led_rgb(int rgb) {}
+static void debug_led_init(void) {}
+#endif
+
+static void setup_uart(void)
+{
+	void __iomem *base = IOMEM(SUN50I_PIO_BASE_ADDR);
+
+	/* UART0 pinmux (PB8 + PB9) */
+	clrsetbits_le32(base + PIO_PB_CFG1, 0x000000ff, 0x00000044);
+
+	debug_ll_init();
+	putc_ll('>');
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_pine64_pinephone_xload, STACK_TOP, r0, r1, r2)
+{
+
+	sunxi_egon_header();
+	sunxi_switch_to_aarch64();
+
+	debug_led_init();
+	debug_led_rgb(0xff0000);
+
+	sun50i_cpu_lowlevel_init();
+	setup_uart();
+	debug_led_rgb(0xffff00);
+
+	relocate_to_current_adr();
+	setup_c();
+
+	sun50i_a64_lpddr3_dram_init();
+
+	debug_led_rgb(0xff0000);
+
+	sun50i_cpu_lowlevel_reset();
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_pine64_pinephone, STACK_TOP, r0, r1, r2)
+{
+	extern char __dtb_z_sun50i_a64_pinephone_1_2_start[];
+	void *fdt;
+	u32 size;
+
+	sunxi_switch_to_aarch64();
+
+	debug_led_init();
+	debug_led_rgb(0xffff00);
+
+	sun50i_cpu_lowlevel_init();
+	setup_uart();
+
+	relocate_to_current_adr();
+	setup_c();
+
+	/* Skip SDRAM initialization if we run from it */
+	if (get_pc() < SUN50I_DRAM_BASE_ADDR) {
+		size = sun50i_a64_lpddr3_dram_init();
+		if (size == 0) {
+			puts_ll("FAIL: dram init\r\n");
+			goto reset;
+		}
+		puthex_ll(size);
+		putc_ll('\r');	putc_ll('\n');
+	}
+
+	puts_ll("now booting\r\n");
+	fdt = __dtb_z_sun50i_a64_pinephone_1_2_start + get_runtime_offset();
+	barebox_arm_entry(SUN50I_DRAM_BASE_ADDR, SZ_1G, fdt);
+
+reset:
+	debug_led_rgb(0xff0000);
+	sun50i_cpu_lowlevel_reset();
+}
diff --git a/arch/arm/configs/pinephone_defconfig b/arch/arm/configs/pinephone_defconfig
new file mode 100644
index 0000000000..b63f8c6ec7
--- /dev/null
+++ b/arch/arm/configs/pinephone_defconfig
@@ -0,0 +1,11 @@
+CONFIG_ARCH_SUNXI=y
+CONFIG_SUNXI_MULTI_BOARDS=y
+CONFIG_MACH_PINE64_PINEPHONE=y
+CONFIG_MACH_PINE64_PINE64=y
+CONFIG_DEBUG_LL=y
+CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_MCI=y
+CONFIG_MCI_SUNXI_SMHC=y
+CONFIG_CMD_DMESG=y
+CONFIG_MCI_STARTUP=y
+CONFIG_FS_FAT=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 0a7cceb461..564a60a0d8 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -81,6 +81,7 @@ lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX6) += imx6q-phytec-phycard.dtb.o \
 lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1) += stm32mp157c-phycore-stm32mp1-3.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
+lwl-$(CONFIG_MACH_PINE64_PINEPHONE) += sun50i-a64-pinephone-1_2.dtb.o
 lwl-$(CONFIG_MACH_PINE64_QUARTZ64) += rk3566-quartz64-a.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
 lwl-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
diff --git a/arch/arm/dts/sun50i-a64-pinephone-1_2.dts b/arch/arm/dts/sun50i-a64-pinephone-1_2.dts
new file mode 100644
index 0000000000..ac6fba1b91
--- /dev/null
+++ b/arch/arm/dts/sun50i-a64-pinephone-1_2.dts
@@ -0,0 +1,3 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <arm64/allwinner/sun50i-a64-pinephone-1.2.dts>
diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
index 2580a9e56a..e2d236f020 100644
--- a/arch/arm/mach-sunxi/Kconfig
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -9,6 +9,22 @@ config SUNXI_RVBAR_IOMAP
 	default 0x017000a0  if ARCH_SUN50I_A64
 	# default 0x09010040 if ARCH_SUN50I_H5
 
+config SUNXI_PBL_STACK_TOP
+       hex
+       default 0x00018000 if ARCH_SUN50I_A64
+
+config ARCH_SUN50I_A64
+	bool
+	select CPU_V8
+	select CPU_SUPPORTS_64BIT_KERNEL
+	select CLOCKSOURCE_ARM_ARCHITECTED_TIMER
+	select PINCTRL_SUN50I_A64
+	select HAS_DEBUG_LL
+	select PBL_RELOCATABLE
+	select PBL_FULLY_PIC
+	help
+	  Allwiner A64 (sun50iw1) SoC
+
 config SUNXI_DEBUG_LL_UART_BASE
 	hex
 	default 0x01c28000
@@ -20,6 +36,11 @@ menuconfig SUNXI_MULTI_BOARDS
 
 if SUNXI_MULTI_BOARDS
 
+config MACH_PINE64_PINEPHONE
+	bool "Allwinner A64 based Pine64 PinePhone"
+	select ARCH_SUN50I_A64
+	select ARM_USE_COMPRESSED_DTB
+
 endif
 
 endif
diff --git a/arch/arm/mach-sunxi/cpu_init.c b/arch/arm/mach-sunxi/cpu_init.c
index f4092d8d5d..52b7a396b3 100644
--- a/arch/arm/mach-sunxi/cpu_init.c
+++ b/arch/arm/mach-sunxi/cpu_init.c
@@ -27,7 +27,18 @@ static void sunxi_ccu_init(void __iomem *ccu)
 	setbits_le32(ccu + CCU_BUS_SOFT_RST4, 1u << 16);
 }
 
-static void sunxi_cpu_lowlevel_init(void)
+void sun50i_cpu_lowlevel_init(void)
 {
-	sunxi_ccu_init(IOMEM(SUNXI_CCU_BASE_ADDR));
+	arm_cpu_lowlevel_init();
+	sunxi_ccu_init(IOMEM(SUN50I_CCU_BASE_ADDR));
+}
+
+void sun50i_cpu_lowlevel_reset(void)
+{
+	void __iomem *reg = IOMEM(SUN50I_TIMER_BASE_ADDR);
+	/* Set the watchdog for its shortest interval (.5s) and wait */
+	writel(1, reg + 0xB4); /* reset whole system */
+	writel(1, reg + 0xB8); /* enable */
+	writel((0xa57 << 1) | 1, reg + 0xB0); /* restart */
+	while (1);
 }
diff --git a/images/Makefile.sunxi b/images/Makefile.sunxi
index 778d6f9bdf..070b1bf00d 100644
--- a/images/Makefile.sunxi
+++ b/images/Makefile.sunxi
@@ -11,3 +11,12 @@ $(obj)/%.egonimg: $(obj)/% FORCE
 	$(call if_changed,egon_image)
 
 # ----------------------------------------------------------------------
+
+pblb-$(CONFIG_MACH_PINE64_PINEPHONE) += start_pine64_pinephone_xload
+MAX_PBL_IMAGE_SIZE_start_pine64_pinephone_xload = 0x8000
+FILE_barebox-pine64-pinephone_xload.img = start_pine64_pinephone_xload.pblb.egonimg
+image-$(CONFIG_MACH_PINE64_PINEPHONE) += barebox-pine64-pinephone_xload.img
+
+pblb-$(CONFIG_MACH_PINE64_PINEPHONE) += start_pine64_pinephone
+FILE_barebox-pine64-pinephone.img = start_pine64_pinephone.pblb
+image-$(CONFIG_MACH_PINE64_PINEPHONE) += barebox-pine64-pinephone.img
diff --git a/include/mach/sunxi/init.h b/include/mach/sunxi/init.h
index 40c072a028..441425be63 100644
--- a/include/mach/sunxi/init.h
+++ b/include/mach/sunxi/init.h
@@ -6,4 +6,8 @@
 unsigned long sun50i_a64_ddr3_dram_init(void);
 unsigned long sun50i_a64_lpddr3_dram_init(void);
 
+void sun50i_cpu_lowlevel_init(void);
+
+void sun50i_cpu_lowlevel_reset(void);
+
 #endif
-- 
2.40.0



