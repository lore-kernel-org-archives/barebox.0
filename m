Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgT61-0006I3-6q
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 01:48:45 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Aug 2010 03:43:57 +0200
Message-Id: <1280886239-19133-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1280886239-19133-3-git-send-email-plagnioj@jcrosoft.com>
References: <20100804014227.GA16337@game.jcrosoft.org>
	<1280886239-19133-1-git-send-email-plagnioj@jcrosoft.com>
	<1280886239-19133-2-git-send-email-plagnioj@jcrosoft.com>
	<1280886239-19133-3-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/6] arm: add Nomadik 8815 SoC support
To: barebox@lists.infradead.org
Cc: Andrea GALLO <andrea.gallo@stericsson.com>

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Andrea GALLO <andrea.gallo@stericsson.com>
Cc: Gael SALLES <gael.salles@stericsson.com>
---
 arch/arm/Kconfig                              |    7 ++
 arch/arm/Makefile                             |    1 +
 arch/arm/mach-nomadik/8815.c                  |   76 +++++++++++++++++++++
 arch/arm/mach-nomadik/Kconfig                 |   11 +++
 arch/arm/mach-nomadik/Makefile                |    3 +
 arch/arm/mach-nomadik/clock.c                 |   52 ++++++++++++++
 arch/arm/mach-nomadik/clock.h                 |   14 ++++
 arch/arm/mach-nomadik/include/mach/board.h    |   28 ++++++++
 arch/arm/mach-nomadik/include/mach/clkdev.h   |    7 ++
 arch/arm/mach-nomadik/include/mach/fsmc.h     |   28 ++++++++
 arch/arm/mach-nomadik/include/mach/hardware.h |   91 +++++++++++++++++++++++++
 arch/arm/mach-nomadik/include/mach/mtu.h      |   46 +++++++++++++
 arch/arm/mach-nomadik/include/mach/timex.h    |    6 ++
 arch/arm/mach-nomadik/reset.c                 |   36 ++++++++++
 arch/arm/mach-nomadik/timer.c                 |   81 ++++++++++++++++++++++
 15 files changed, 487 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/mach-nomadik/8815.c
 create mode 100644 arch/arm/mach-nomadik/Kconfig
 create mode 100644 arch/arm/mach-nomadik/Makefile
 create mode 100644 arch/arm/mach-nomadik/clock.c
 create mode 100644 arch/arm/mach-nomadik/clock.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/board.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/fsmc.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/hardware.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/mtu.h
 create mode 100644 arch/arm/mach-nomadik/include/mach/timex.h
 create mode 100644 arch/arm/mach-nomadik/reset.c
 create mode 100644 arch/arm/mach-nomadik/timer.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 53b7783..82dbfda 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -47,6 +47,12 @@ config ARCH_NETX
 	bool "Hilscher NetX based"
 	select CPU_ARM926T
 
+config ARCH_NOMADIK
+	bool "STMicroelectronics Nomadik"
+	select CPU_ARM926T
+	help
+	 Support for the Nomadik platform by ST-Ericsson
+
 config ARCH_OMAP
 	bool "TI OMAP"
 
@@ -63,6 +69,7 @@ source arch/arm/mach-at91rm9200/Kconfig
 source arch/arm/mach-ep93xx/Kconfig
 source arch/arm/mach-imx/Kconfig
 source arch/arm/mach-netx/Kconfig
+source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
 source arch/arm/mach-s3c24xx/Kconfig
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index bd78259..4d6a76d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -42,6 +42,7 @@ machine-$(CONFIG_ARCH_AT91)		:= at91
 machine-$(CONFIG_ARCH_AT91RM9200)	:= at91rm9200
 machine-$(CONFIG_ARCH_EP93XX)		:= ep93xx
 machine-$(CONFIG_ARCH_IMX)		:= imx
+machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
 machine-$(CONFIG_ARCH_S3C24xx)		:= s3c24xx
diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
new file mode 100644
index 0000000..8598f14
--- /dev/null
+++ b/arch/arm/mach-nomadik/8815.c
@@ -0,0 +1,76 @@
+/*
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/hardware.h>
+#include <mach/hardware.h>
+#include <asm/armlinux.h>
+#include <asm/mach-types.h>
+
+#include "clock.h"
+
+static struct clk st8815_clk_48 = {
+       .rate = 48 * 1000 * 1000,
+};
+
+static struct memory_platform_data ram_pdata = {
+	.name = "ram0",
+	.flags = DEVFS_RDWR,
+};
+
+static struct device_d sdram_dev = {
+	.name = "mem",
+	.map_base = 0x00000000,
+	.platform_data = &ram_pdata,
+};
+
+void st8815_add_device_sdram(u32 size)
+{
+	sdram_dev.size = size;
+	register_device(&sdram_dev);
+	armlinux_add_dram(&sdram_dev);
+}
+
+static struct device_d uart0_serial_device = {
+	.name = "uart-pl011",
+	.map_base = NOMADIK_UART0_BASE,
+	.size = 4096,
+};
+
+static struct device_d uart1_serial_device = {
+	.name = "uart-pl011",
+	.map_base = NOMADIK_UART1_BASE,
+	.size = 4096,
+};
+
+void st8815_register_uart(unsigned id)
+{
+	switch (id) {
+	case 0:
+		nmdk_clk_create(&st8815_clk_48, uart0_serial_device.name);
+		register_device(&uart0_serial_device);
+		break;
+	case 1:
+		nmdk_clk_create(&st8815_clk_48, uart1_serial_device.name);
+		register_device(&uart1_serial_device);
+		break;
+	}
+}
diff --git a/arch/arm/mach-nomadik/Kconfig b/arch/arm/mach-nomadik/Kconfig
new file mode 100644
index 0000000..4cf3f7b
--- /dev/null
+++ b/arch/arm/mach-nomadik/Kconfig
@@ -0,0 +1,11 @@
+if ARCH_NOMADIK
+
+choice
+	prompt "Nomadik boards"
+
+endchoice
+
+config NOMADIK_8815
+	bool
+
+endif
diff --git a/arch/arm/mach-nomadik/Makefile b/arch/arm/mach-nomadik/Makefile
new file mode 100644
index 0000000..1d77c4c
--- /dev/null
+++ b/arch/arm/mach-nomadik/Makefile
@@ -0,0 +1,3 @@
+
+obj-y	+= clock.o reset.o timer.o
+obj-y	+= 8815.o
diff --git a/arch/arm/mach-nomadik/clock.c b/arch/arm/mach-nomadik/clock.c
new file mode 100644
index 0000000..c74e0c1
--- /dev/null
+++ b/arch/arm/mach-nomadik/clock.c
@@ -0,0 +1,52 @@
+/*
+ * linux/arch/arm/mach-nomadik/clock.c
+ *
+ * Copyright (C) 2009 Alessandro Rubini
+ */
+#include <common.h>
+#include <errno.h>
+#include <linux/err.h>
+#include <linux/clk.h>
+#include <init.h>
+#include <asm/clkdev.h>
+
+#include "clock.h"
+
+/*
+ * The nomadik board uses generic clocks, but the serial pl011 file
+ * calls clk_enable(), clk_disable(), clk_get_rate(), so we provide them
+ */
+unsigned long clk_get_rate(struct clk *clk)
+{
+	return clk->rate;
+}
+EXPORT_SYMBOL(clk_get_rate);
+
+/* enable and disable do nothing */
+int clk_enable(struct clk *clk)
+{
+	return 0;
+}
+EXPORT_SYMBOL(clk_enable);
+
+void clk_disable(struct clk *clk)
+{
+}
+EXPORT_SYMBOL(clk_disable);
+
+int __clk_get(struct clk *clk)
+{
+	return 1;
+}
+
+/* Create a clock structure with the given name */
+int nmdk_clk_create(struct clk *clk, const char *dev_id)
+{
+	struct clk_lookup *clkdev;
+
+	clkdev = clkdev_alloc(clk, NULL, dev_id);
+	if (!clkdev)
+		return -ENOMEM;
+	clkdev_add(clkdev);
+	return 0;
+}
diff --git a/arch/arm/mach-nomadik/clock.h b/arch/arm/mach-nomadik/clock.h
new file mode 100644
index 0000000..eade4a6
--- /dev/null
+++ b/arch/arm/mach-nomadik/clock.h
@@ -0,0 +1,14 @@
+/*
+ * linux/arch/arm/mach-nomadik/clock.h
+ *
+ * Copyright (C) 2009 Alessandro Rubini
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+struct clk {
+	unsigned long	rate;
+};
+
+int nmdk_clk_create(struct clk *clk, const char *dev_id);
diff --git a/arch/arm/mach-nomadik/include/mach/board.h b/arch/arm/mach-nomadik/include/mach/board.h
new file mode 100644
index 0000000..b4979fe
--- /dev/null
+++ b/arch/arm/mach-nomadik/include/mach/board.h
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2009 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#ifndef __ASM_ARCH_BOARD_H
+#define __ASM_ARCH_BOARD_H
+
+void st8815_add_device_sdram(u32 size);
+
+void st8815_register_uart(unsigned id);
+
+#endif
diff --git a/arch/arm/mach-nomadik/include/mach/clkdev.h b/arch/arm/mach-nomadik/include/mach/clkdev.h
new file mode 100644
index 0000000..04b37a8
--- /dev/null
+++ b/arch/arm/mach-nomadik/include/mach/clkdev.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_MACH_CLKDEV_H
+#define __ASM_MACH_CLKDEV_H
+
+#define __clk_get(clk) ({ 1; })
+#define __clk_put(clk) do { } while (0)
+
+#endif
diff --git a/arch/arm/mach-nomadik/include/mach/fsmc.h b/arch/arm/mach-nomadik/include/mach/fsmc.h
new file mode 100644
index 0000000..e010c72
--- /dev/null
+++ b/arch/arm/mach-nomadik/include/mach/fsmc.h
@@ -0,0 +1,28 @@
+/* Definitions for the Nomadik FSMC "Flexible Static Memory controller" */
+
+#ifndef __ASM_ARCH_FSMC_H
+#define __ASM_ARCH_FSMC_H
+
+#include <mach/hardware.h>
+/*
+ * Register list
+ */
+
+/* bus control reg. and bus timing reg. for CS0..CS3 */
+#define FSMC_BCR(x)     (NOMADIK_FSMC_VA + (x << 3))
+#define FSMC_BTR(x)     (NOMADIK_FSMC_VA + (x << 3) + 0x04)
+
+/* PC-card and NAND:
+ * PCR = control register
+ * PMEM = memory timing
+ * PATT = attribute timing
+ * PIO = I/O timing
+ * PECCR = ECC result
+ */
+#define FSMC_PCR(x)     (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x00)
+#define FSMC_PMEM(x)    (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x08)
+#define FSMC_PATT(x)    (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x0c)
+#define FSMC_PIO(x)     (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x10)
+#define FSMC_PECCR(x)   (NOMADIK_FSMC_VA + ((2 + x) << 5) + 0x14)
+
+#endif /* __ASM_ARCH_FSMC_H */
diff --git a/arch/arm/mach-nomadik/include/mach/hardware.h b/arch/arm/mach-nomadik/include/mach/hardware.h
new file mode 100644
index 0000000..0f9bd95
--- /dev/null
+++ b/arch/arm/mach-nomadik/include/mach/hardware.h
@@ -0,0 +1,91 @@
+/*
+ * This file contains the hardware definitions of the Nomadik.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * YOU should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ */
+#ifndef __ASM_ARCH_HARDWARE_H
+#define __ASM_ARCH_HARDWARE_H
+
+/* Nomadik registers live from 0x1000.0000 to 0x1023.0000 -- currently */
+#define NOMADIK_IO_VIRTUAL	0xF0000000	/* VA of IO */
+#define NOMADIK_IO_PHYSICAL	0x10000000	/* PA of IO */
+#define NOMADIK_IO_SIZE		0x00300000	/* 3MB for all regs */
+
+#ifndef CONFIG_MMU
+#define io_p2v(x) (x)
+#define io_v2p(x) (x)
+#else
+#define io_p2v(x) ((x) - NOMADIK_IO_PHYSICAL + NOMADIK_IO_VIRTUAL)
+#define io_v2p(x) ((x) - NOMADIK_IO_VIRTUAL + NOMADIK_IO_PHYSICAL)
+#endif
+
+#define IO_ADDRESS(x) (io_p2v(x)) /* used in asm and more */
+
+/*
+ * Base address defination for Nomadik Onchip Logic Block
+ */
+#define NOMADIK_FSMC_BASE	0x10100000	/* FSMC registers */
+#define NOMADIK_SDRAMC_BASE	0x10110000	/* SDRAM Controller */
+#define NOMADIK_CLCDC_BASE	0x10120000	/* CLCD Controller */
+#define NOMADIK_MDIF_BASE	0x10120000	/* MDIF */
+#define NOMADIK_DMA0_BASE	0x10130000	/* DMA0 Controller */
+#define NOMADIK_IC_BASE		0x10140000	/* Vectored Irq Controller */
+#define NOMADIK_DMA1_BASE	0x10150000	/* DMA1 Controller */
+#define NOMADIK_USB_BASE	0x10170000	/* USB-OTG conf reg base */
+#define NOMADIK_CRYP_BASE	0x10180000	/* Crypto processor */
+#define NOMADIK_SHA1_BASE	0x10190000	/* SHA-1 Processor */
+#define NOMADIK_XTI_BASE	0x101A0000	/* XTI */
+#define NOMADIK_RNG_BASE	0x101B0000	/* Random number generator */
+#define NOMADIK_SRC_BASE	0x101E0000	/* SRC base */
+#define NOMADIK_WDOG_BASE	0x101E1000	/* Watchdog */
+#define NOMADIK_MTU0_BASE	0x101E2000	/* Multiple Timer 0 */
+#define NOMADIK_MTU1_BASE	0x101E3000	/* Multiple Timer 1 */
+#define NOMADIK_GPIO0_BASE	0x101E4000	/* GPIO0 */
+#define NOMADIK_GPIO1_BASE	0x101E5000	/* GPIO1 */
+#define NOMADIK_GPIO2_BASE	0x101E6000	/* GPIO2 */
+#define NOMADIK_GPIO3_BASE	0x101E7000	/* GPIO3 */
+#define NOMADIK_RTC_BASE	0x101E8000	/* Real Time Clock base */
+#define NOMADIK_PMU_BASE	0x101E9000	/* Power Management Unit */
+#define NOMADIK_OWM_BASE	0x101EA000	/* One wire master */
+#define NOMADIK_SCR_BASE	0x101EF000	/* Secure Control registers */
+#define NOMADIK_MSP2_BASE	0x101F0000	/* MSP 2 interface */
+#define NOMADIK_MSP1_BASE	0x101F1000	/* MSP 1 interface */
+#define NOMADIK_UART2_BASE	0x101F2000	/* UART 2 interface */
+#define NOMADIK_SSIRx_BASE	0x101F3000	/* SSI 8-ch rx interface */
+#define NOMADIK_SSITx_BASE	0x101F4000	/* SSI 8-ch tx interface */
+#define NOMADIK_MSHC_BASE	0x101F5000	/* Memory Stick(Pro) Host */
+#define NOMADIK_SDI_BASE	0x101F6000	/* SD-card/MM-Card */
+#define NOMADIK_I2C1_BASE	0x101F7000	/* I2C1 interface */
+#define NOMADIK_I2C0_BASE	0x101F8000	/* I2C0 interface */
+#define NOMADIK_MSP0_BASE	0x101F9000	/* MSP 0 interface */
+#define NOMADIK_FIRDA_BASE	0x101FA000	/* FIrDA interface */
+#define NOMADIK_UART1_BASE	0x101FB000	/* UART 1 interface */
+#define NOMADIK_SSP_BASE	0x101FC000	/* SSP interface */
+#define NOMADIK_UART0_BASE	0x101FD000	/* UART 0 interface */
+#define NOMADIK_SGA_BASE	0x101FE000	/* SGA interface */
+#define NOMADIK_L2CC_BASE	0x10210000	/* L2 Cache controller */
+
+/* Other ranges, not for p2v/v2p */
+#define NOMADIK_BACKUP_RAM	0x80010000
+#define NOMADIK_EBROM		0x80000000	/* Embedded boot ROM */
+#define NOMADIK_HAMACV_DMEM_BASE 0xA0100000	/* HAMACV Data Memory Start */
+#define NOMADIK_HAMACV_DMEM_END	0xA01FFFFF	/* HAMACV Data Memory End */
+#define NOMADIK_HAMACA_DMEM	0xA0200000	/* HAMACA Data Memory Space */
+
+#define NOMADIK_FSMC_VA		IO_ADDRESS(NOMADIK_FSMC_BASE)
+#define NOMADIK_MTU0_VA		IO_ADDRESS(NOMADIK_MTU0_BASE)
+#define NOMADIK_MTU1_VA		IO_ADDRESS(NOMADIK_MTU1_BASE)
+
+#endif /* __ASM_ARCH_HARDWARE_H */
diff --git a/arch/arm/mach-nomadik/include/mach/mtu.h b/arch/arm/mach-nomadik/include/mach/mtu.h
new file mode 100644
index 0000000..9095d86
--- /dev/null
+++ b/arch/arm/mach-nomadik/include/mach/mtu.h
@@ -0,0 +1,46 @@
+#ifndef __ASM_ARCH_MTU_H
+#define __ASM_ARCH_MTU_H
+
+/*
+ * The MTU device hosts four different counters, with 4 set of
+ * registers. These are register names.
+ */
+
+#define MTU_IMSC	0x00	/* Interrupt mask set/clear */
+#define MTU_RIS		0x04	/* Raw interrupt status */
+#define MTU_MIS		0x08	/* Masked interrupt status */
+#define MTU_ICR		0x0C	/* Interrupt clear register */
+
+/* per-timer registers take 0..3 as argument */
+#define MTU_LR(x)	(0x10 + 0x10 * (x) + 0x00)	/* Load value */
+#define MTU_VAL(x)	(0x10 + 0x10 * (x) + 0x04)	/* Current value */
+
+#define MTU_CR(x)	(0x10 + 0x10 * (x) + 0x08)	/* Control reg */
+#define MTU_BGLR(x)	(0x10 + 0x10 * (x) + 0x0c)	/* At next overflow */
+
+
+/* bits for the control register */
+#define MTU_CRn_ENA		0x80
+#define MTU_CRn_PERIODIC	0x40	/* if 0 = free-running */
+#define MTU_CRn_PRESCALE_MASK	0x0c
+#define MTU_CRn_PRESCALE_1	0x00
+#define MTU_CRn_PRESCALE_16	0x04
+#define MTU_CRn_PRESCALE_256	0x08
+#define MTU_CRn_32BITS		0x02
+#define MTU_CRn_ONESHOT		0x01	/* if 0 = wraps reloading from BGLR*/
+
+/* Other registers are usual amba/primecell registers, currently not used */
+#define MTU_ITCR	0xff0
+#define MTU_ITOP	0xff4
+
+#define MTU_PERIPH_ID0	0xfe0
+#define MTU_PERIPH_ID1	0xfe4
+#define MTU_PERIPH_ID2	0xfe8
+#define MTU_PERIPH_ID3	0xfeC
+
+#define MTU_PCELL0	0xff0
+#define MTU_PCELL1	0xff4
+#define MTU_PCELL2	0xff8
+#define MTU_PCELL3	0xffC
+
+#endif /* __ASM_ARCH_MTU_H */
diff --git a/arch/arm/mach-nomadik/include/mach/timex.h b/arch/arm/mach-nomadik/include/mach/timex.h
new file mode 100644
index 0000000..b2b41fa
--- /dev/null
+++ b/arch/arm/mach-nomadik/include/mach/timex.h
@@ -0,0 +1,6 @@
+#ifndef __ASM_ARCH_TIMEX_H
+#define __ASM_ARCH_TIMEX_H
+
+#define CLOCK_TICK_RATE	2400000
+
+#endif
diff --git a/arch/arm/mach-nomadik/reset.c b/arch/arm/mach-nomadik/reset.c
new file mode 100644
index 0000000..d55f278
--- /dev/null
+++ b/arch/arm/mach-nomadik/reset.c
@@ -0,0 +1,36 @@
+/*
+ *  mach-nomadik/include/mach/system.h
+ *
+ *  Copyright (C) 2008 STMicroelectronics
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <asm/io.h>
+#include <mach/hardware.h>
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+	void __iomem *src_rstsr = (void *)(NOMADIK_SRC_BASE + 0x18);
+
+	/* FIXME: use egpio when implemented */
+
+	/* Write anything to Reset status register */
+	writel(1, src_rstsr);
+
+	/* Not reached */
+	while (1);
+}
+EXPORT_SYMBOL(reset_cpu);
diff --git a/arch/arm/mach-nomadik/timer.c b/arch/arm/mach-nomadik/timer.c
new file mode 100644
index 0000000..12e56f0
--- /dev/null
+++ b/arch/arm/mach-nomadik/timer.c
@@ -0,0 +1,81 @@
+/*
+ * linux/arch/arm/mach-nomadik/timer.c
+ *
+ * Copyright (C) 2008 STMicroelectronics
+ * Copyright (C) 2009 Alessandro Rubini, somewhat based on at91sam926x
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2, as
+ * published by the Free Software Foundation.
+ */
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <asm/io.h>
+#include <mach/hardware.h>
+#include <mach/mtu.h>
+#include <mach/timex.h>
+
+/* Initial value for SRC control register: all timers use MXTAL/8 source */
+#define SRC_CR_INIT_MASK	0x00007fff
+#define SRC_CR_INIT_VAL		0x2aaa8000
+
+static u32	nmdk_cycle;		/* write-once */
+static __iomem void *mtu_base;
+
+/*
+ * clocksource: the MTU device is a decrementing counters, so we negate
+ * the value being read.
+ */
+static uint64_t nmdk_read_timer(void)
+{
+	return nmdk_cycle - readl(mtu_base + MTU_VAL(0));
+}
+
+static struct clocksource nmdk_clksrc = {
+	.read	= nmdk_read_timer,
+	.shift	= 20,
+	.mask	= 0xffffffff,
+};
+
+static void nmdk_timer_reset(void)
+{
+	u32 cr;
+
+	writel(0, mtu_base + MTU_CR(0)); /* off */
+
+	/* configure load and background-load, and fire it up */
+	writel(nmdk_cycle, mtu_base + MTU_LR(0));
+	writel(nmdk_cycle, mtu_base + MTU_BGLR(0));
+	cr = MTU_CRn_PRESCALE_1 | MTU_CRn_32BITS;
+	writel(cr, mtu_base + MTU_CR(0));
+	writel(cr | MTU_CRn_ENA, mtu_base + MTU_CR(0));
+}
+
+static int nmdk_timer_init(void)
+{
+	u32 src_cr;
+	unsigned long rate;
+
+	rate = CLOCK_TICK_RATE; /* 2.4MHz */
+	nmdk_cycle = (rate + 1000 / 2) / 1000;
+
+	/* Configure timer sources in "system reset controller" ctrl reg */
+	src_cr = readl(NOMADIK_SRC_BASE);
+	src_cr &= SRC_CR_INIT_MASK;
+	src_cr |= SRC_CR_INIT_VAL;
+	writel(src_cr, NOMADIK_SRC_BASE);
+
+	/* Save global pointer to mtu, used by functions above */
+	mtu_base = (void *)NOMADIK_MTU0_BASE;
+
+	/* Init the timer and register clocksource */
+	nmdk_timer_reset();
+
+	nmdk_clksrc.mult = clocksource_hz2mult(rate, nmdk_clksrc.shift);
+
+	init_clock(&nmdk_clksrc);
+
+	return 0;
+}
+core_initcall(nmdk_timer_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
