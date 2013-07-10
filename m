Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4N-0001jk-BV
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 13:59:51 +0200
Message-Id: <1373457601-7225-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
References: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/11] ARM: MXS: introduce stmp device support
To: barebox@lists.infradead.org

MXS specific devices have some common infrastructure in the kernel
known as STMP devices. We have the same in barebox, but with a
mxs_ prefix instead of a stmp_ prefix. As some STMP devices are
also found on i.MX6 move the common infrastructure out of MXS
specific files and use the stmp_ prefix.

This is done in preparation for i.MX6 NAND support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/Kconfig                 |  2 +
 arch/arm/mach-mxs/Makefile                |  2 +-
 arch/arm/mach-mxs/common.c                | 64 -------------------------------
 arch/arm/mach-mxs/imx.c                   |  3 +-
 arch/arm/mach-mxs/include/mach/imx-regs.h |  5 ---
 arch/arm/mach-mxs/include/mach/mxs.h      |  6 ---
 arch/arm/mach-mxs/iomux-imx.c             | 27 +++++++------
 arch/arm/mach-mxs/ocotp.c                 |  9 +++--
 arch/arm/mach-mxs/power.c                 |  5 ++-
 drivers/dma/Kconfig                       |  1 +
 drivers/dma/apbh_dma.c                    | 24 ++++++------
 drivers/mci/mxs.c                         |  4 +-
 drivers/mtd/nand/nand_mxs.c               | 12 +++---
 drivers/serial/serial_auart.c             |  2 +-
 drivers/spi/mxs_spi.c                     | 27 ++++++-------
 drivers/video/stm.c                       | 11 +++---
 include/stmp-device.h                     | 22 +++++++++++
 lib/Kconfig                               |  3 ++
 lib/Makefile                              |  1 +
 lib/stmp-device.c                         | 63 ++++++++++++++++++++++++++++++
 20 files changed, 160 insertions(+), 133 deletions(-)
 delete mode 100644 arch/arm/mach-mxs/common.c
 delete mode 100644 arch/arm/mach-mxs/include/mach/mxs.h
 create mode 100644 include/stmp-device.h
 create mode 100644 lib/stmp-device.c

diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index d1bf8fc..128bf84 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -24,11 +24,13 @@ choice
 
 config ARCH_IMX23
 	bool "i.MX23"
+	select STMP_DEVICE
 	select CPU_ARM926T
 
 config ARCH_IMX28
 	bool "i.MX28"
 	select CPU_ARM926T
+	select STMP_DEVICE
 	select ARCH_HAS_FEC_IMX
 
 endchoice
diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index a183987..bd6892e 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -1,4 +1,4 @@
-obj-y += imx.o iomux-imx.o power.o common.o
+obj-y += imx.o iomux-imx.o power.o
 obj-$(CONFIG_ARCH_IMX23) += clocksource-imx23.o usb-imx23.o soc-imx23.o
 obj-$(CONFIG_ARCH_IMX28) += clocksource-imx28.o usb-imx28.o soc-imx28.o
 obj-$(CONFIG_MXS_OCOTP) += ocotp.o
diff --git a/arch/arm/mach-mxs/common.c b/arch/arm/mach-mxs/common.c
deleted file mode 100644
index 122d883..0000000
--- a/arch/arm/mach-mxs/common.c
+++ /dev/null
@@ -1,64 +0,0 @@
-/*
- * Freescale i.MXS common code
- *
- * Copyright (C) 2012 Wolfram Sang <w.sang@pengutronix.de>
- *
- * Based on code from LTIB:
- * Copyright (C) 2010 Freescale Semiconductor, Inc.
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- */
-
-#include <common.h>
-#include <io.h>
-#include <errno.h>
-#include <clock.h>
-#include <mach/mxs.h>
-#include <mach/imx-regs.h>
-
-#define	MXS_IP_RESET_TIMEOUT	(10 * MSECOND)
-
-#define	MXS_BLOCK_SFTRST				(1 << 31)
-#define	MXS_BLOCK_CLKGATE				(1 << 30)
-
-int mxs_reset_block(void __iomem *reg, int just_enable)
-{
-	/* Clear SFTRST */
-	writel(MXS_BLOCK_SFTRST, reg + BIT_CLR);
-
-	if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, !(readl(reg) & MXS_BLOCK_SFTRST)))
-		goto timeout;
-
-	/* Clear CLKGATE */
-	writel(MXS_BLOCK_CLKGATE, reg + BIT_CLR);
-
-	if (!just_enable) {
-		/* Set SFTRST */
-		writel(MXS_BLOCK_SFTRST, reg + BIT_SET);
-
-		/* Wait for CLKGATE being set */
-		if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, readl(reg) & MXS_BLOCK_CLKGATE))
-			goto timeout;
-	}
-
-	/* Clear SFTRST */
-	writel(MXS_BLOCK_SFTRST, reg + BIT_CLR);
-
-	if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, !(readl(reg) & MXS_BLOCK_SFTRST)))
-		goto timeout;
-
-	/* Clear CLKGATE */
-	writel(MXS_BLOCK_CLKGATE, reg + BIT_CLR);
-
-	if (wait_on_timeout(MXS_IP_RESET_TIMEOUT, !(readl(reg) & MXS_BLOCK_CLKGATE)))
-		goto timeout;
-
-	return 0;
-
-timeout:
-	printf("MXS: Timeout resetting block via register 0x%p\n", reg);
-	return -ETIMEDOUT;
-}
diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
index 9f195e4..b7247b9 100644
--- a/arch/arm/mach-mxs/imx.c
+++ b/arch/arm/mach-mxs/imx.c
@@ -19,6 +19,7 @@
 #include <complete.h>
 #include <init.h>
 #include <io.h>
+#include <stmp-device.h>
 
 #include <mach/generic.h>
 #include <mach/imx-regs.h>
@@ -39,7 +40,7 @@ static int imx_reset_usb_bootstrap(void)
 	 * To prevent this (and boot from the configured bootsource instead)
 	 * clear this bit here.
 	 */
-	writel(0x2, IMX_WDT_BASE + HW_RTC_PERSISTENT1 + BIT_CLR);
+	writel(0x2, IMX_WDT_BASE + HW_RTC_PERSISTENT1 + STMP_OFFSET_REG_CLR);
 
 	return 0;
 }
diff --git a/arch/arm/mach-mxs/include/mach/imx-regs.h b/arch/arm/mach-mxs/include/mach/imx-regs.h
index 39c97b7..f5abd8b 100644
--- a/arch/arm/mach-mxs/include/mach/imx-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx-regs.h
@@ -16,11 +16,6 @@
 #ifndef _IMX_REGS_H
 # define _IMX_REGS_H
 
-/* Note: Some registers do not support this bit change feature! */
-#define BIT_SET 0x04
-#define BIT_CLR 0x08
-#define BIT_TGL 0x0C
-
 #if defined CONFIG_ARCH_IMX23
 # include <mach/imx23-regs.h>
 #endif
diff --git a/arch/arm/mach-mxs/include/mach/mxs.h b/arch/arm/mach-mxs/include/mach/mxs.h
deleted file mode 100644
index 182ed8a..0000000
--- a/arch/arm/mach-mxs/include/mach/mxs.h
+++ /dev/null
@@ -1,6 +0,0 @@
-#ifndef __MACH_MXS_H
-#define __MACH_MXS_H
-
-int mxs_reset_block(void __iomem *reg, int just_enable);
-
-#endif /* __MACH_MXS_H */
diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
index 66ba743..3d26302 100644
--- a/arch/arm/mach-mxs/iomux-imx.c
+++ b/arch/arm/mach-mxs/iomux-imx.c
@@ -18,6 +18,7 @@
 #include <gpio.h>
 #include <errno.h>
 #include <io.h>
+#include <stmp-device.h>
 #include <mach/imx-regs.h>
 
 #define HW_PINCTRL_CTRL 0x000
@@ -112,22 +113,24 @@ void imx_gpio_mode(uint32_t m)
 		reg_offset = calc_strength_reg(gpio_pin);
 		if (GET_VOLTAGE(m) == 1)
 			writel(0x1 << (((gpio_pin % 8) << 2) + 2),
-				IMX_IOMUXC_BASE + reg_offset + BIT_SET);
+				IMX_IOMUXC_BASE + reg_offset + STMP_OFFSET_REG_SET);
 		else
 			writel(0x1 << (((gpio_pin % 8) << 2) + 2),
-				IMX_IOMUXC_BASE + reg_offset + BIT_CLR);
+				IMX_IOMUXC_BASE + reg_offset + STMP_OFFSET_REG_CLR);
 	}
 
 	if (PE_PRESENT(m)) {
 		reg_offset = calc_pullup_reg(gpio_pin);
 		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset +
-				(GET_PULLUP(m) == 1 ? BIT_SET : BIT_CLR));
+				(GET_PULLUP(m) == 1 ?
+				 STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR));
 	}
 
 	if (BK_PRESENT(m)) {
 		reg_offset = calc_pullup_reg(gpio_pin);
 		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset +
-				(GET_BITKEEPER(m) == 1 ? BIT_CLR : BIT_SET));
+				(GET_BITKEEPER(m) == 1 ?
+				 STMP_OFFSET_REG_CLR : STMP_OFFSET_REG_SET));
 	}
 
 	if (GET_FUNC(m) == IS_GPIO) {
@@ -135,16 +138,17 @@ void imx_gpio_mode(uint32_t m)
 			/* first set the output value */
 			reg_offset = calc_output_reg(gpio_pin);
 			writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE +
-				reg_offset + (GET_GPIOVAL(m) == 1 ? BIT_SET : BIT_CLR));
+				reg_offset + (GET_GPIOVAL(m) == 1 ?
+					STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR));
 			/* then the direction */
 			reg_offset = calc_output_enable_reg(gpio_pin);
 			writel(0x1 << (gpio_pin % 32),
-				IMX_IOMUXC_BASE + reg_offset + BIT_SET);
+				IMX_IOMUXC_BASE + reg_offset + STMP_OFFSET_REG_SET);
 		} else {
 			/* then the direction */
 			reg_offset = calc_output_enable_reg(gpio_pin);
 			writel(0x1 << (gpio_pin % 32),
-				IMX_IOMUXC_BASE + reg_offset + BIT_CLR);
+				IMX_IOMUXC_BASE + reg_offset + STMP_OFFSET_REG_CLR);
 		}
 	}
 }
@@ -157,7 +161,7 @@ int gpio_direction_input(unsigned gpio)
 		return -EINVAL;
 
 	reg_offset = calc_output_enable_reg(gpio);
-	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE + reg_offset + BIT_CLR);
+	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE + reg_offset + STMP_OFFSET_REG_CLR);
 
 	return 0;
 }
@@ -172,10 +176,10 @@ int gpio_direction_output(unsigned gpio, int val)
 	/* first set the output value... */
 	reg_offset = calc_output_reg(gpio);
 	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE +
-		reg_offset + (val != 0 ? BIT_SET : BIT_CLR));
+		reg_offset + (val != 0 ? STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR));
 	/* ...then the direction */
 	reg_offset = calc_output_enable_reg(gpio);
-	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE + reg_offset + BIT_SET);
+	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE + reg_offset + STMP_OFFSET_REG_SET);
 
 	return 0;
 }
@@ -186,7 +190,8 @@ void gpio_set_value(unsigned gpio, int val)
 
 	reg_offset = calc_output_reg(gpio);
 	writel(0x1 << (gpio % 32), IMX_IOMUXC_BASE +
-				reg_offset + (val != 0 ? BIT_SET : BIT_CLR));
+				reg_offset + (val != 0 ?
+					STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR));
 }
 
 int gpio_get_value(unsigned gpio)
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 6bfa3e2..59c3b8a 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -20,6 +20,7 @@
 #include <fcntl.h>
 #include <malloc.h>
 #include <io.h>
+#include <stmp-device.h>
 #include <clock.h>
 #include <linux/clk.h>
 #include <linux/err.h>
@@ -75,13 +76,13 @@ static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	 */
 
 	/* try to clear ERROR bit */
-	writel(OCOTP_CTRL_ERROR, base + OCOTP_CTRL + BIT_CLR);
+	writel(OCOTP_CTRL_ERROR, base + OCOTP_CTRL + STMP_OFFSET_REG_CLR);
 
 	if (mxs_ocotp_wait_busy(priv))
 		return -ETIMEDOUT;
 
 	/* open OCOTP banks for read */
-	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + BIT_SET);
+	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + STMP_OFFSET_REG_SET);
 
 	/* approximately wait 32 hclk cycles */
 	udelay(1);
@@ -96,7 +97,7 @@ static ssize_t mxs_ocotp_cdev_read(struct cdev *cdev, void *buf, size_t count,
 				(((i + offset) & 0xfc) << 2) + ((i + offset) & 3));
 
 	/* close banks for power saving */
-	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + BIT_CLR);
+	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + STMP_OFFSET_REG_CLR);
 
 	return size;
 }
@@ -139,7 +140,7 @@ static ssize_t mxs_ocotp_cdev_write(struct cdev *cdev, const void *buf, size_t c
 	clk_set_rate(priv->clk, 24000000);
 	imx_set_vddio(2800000);
 
-	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + BIT_CLR);
+	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + STMP_OFFSET_REG_CLR);
 
 	if (mxs_ocotp_wait_busy(priv)) {
 		ret = -ETIMEDOUT;
diff --git a/arch/arm/mach-mxs/power.c b/arch/arm/mach-mxs/power.c
index f4d0b9e..74c5479 100644
--- a/arch/arm/mach-mxs/power.c
+++ b/arch/arm/mach-mxs/power.c
@@ -11,6 +11,7 @@
  */
 #include <common.h>
 #include <io.h>
+#include <stmp-device.h>
 #include <errno.h>
 #include <mach/imx-regs.h>
 
@@ -72,11 +73,11 @@ void imx_power_prepare_usbphy(void)
 	 * Set these bits so that we can force the OTG bits high
 	 * so the ARC core operates properly
 	 */
-	writel(POWER_CTRL_CLKGATE, POWER_CTRL + BIT_CLR);
+	writel(POWER_CTRL_CLKGATE, POWER_CTRL + STMP_OFFSET_REG_CLR);
 
 	writel(POWER_DEBUG_VBUSVALIDPIOLOCK |
 			   POWER_DEBUG_AVALIDPIOLOCK |
-			   POWER_DEBUG_BVALIDPIOLOCK, POWER_DEBUG + BIT_SET);
+			   POWER_DEBUG_BVALIDPIOLOCK, POWER_DEBUG + STMP_OFFSET_REG_SET);
 
 	reg = readl(POWER_STS);
 	reg |= POWER_STS_BVALID | POWER_STS_AVALID | POWER_STS_VBUSVALID;
diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index a30fa37..c43c93e 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -3,6 +3,7 @@ menu "DMA support"
 config MXS_APBH_DMA
 	tristate "MXS APBH DMA ENGINE"
 	depends on ARCH_IMX23 || ARCH_IMX28
+	select STMP_DEVICE
 	help
 	  Experimental!
 endmenu
diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index d30b8fb..c8b20fb 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -20,12 +20,12 @@
 #include <common.h>
 #include <malloc.h>
 #include <errno.h>
+#include <stmp-device.h>
 #include <asm/mmu.h>
 #include <asm/io.h>
 #include <mach/clock.h>
 #include <mach/imx-regs.h>
 #include <mach/dma.h>
-#include <mach/mxs.h>
 
 #define HW_APBHX_CTRL0				0x000
 #define BM_APBH_CTRL0_APB_BURST8_EN		(1 << 29)
@@ -165,7 +165,7 @@ static int mxs_dma_enable(int channel)
 		writel(pchan->active_num,
 			apbh_regs + HW_APBHX_CHn_SEMA(channel));
 		channel_bit = channel + (apbh_is_old ? BP_APBH_CTRL0_CLKGATE_CHANNEL : 0);
-		writel(1 << channel_bit, apbh_regs + HW_APBHX_CTRL0 + BIT_CLR);
+		writel(1 << channel_bit, apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_CLR);
 	}
 
 	pchan->flags |= MXS_DMA_FLAGS_BUSY;
@@ -202,7 +202,7 @@ static int mxs_dma_disable(int channel)
 		return -EINVAL;
 
 	channel_bit = channel + (apbh_is_old ? BP_APBH_CTRL0_CLKGATE_CHANNEL : 0);
-	writel(1 << channel_bit, apbh_regs + HW_APBHX_CTRL0 + BIT_SET);
+	writel(1 << channel_bit, apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 
 	pchan->flags &= ~MXS_DMA_FLAGS_BUSY;
 	pchan->active_num = 0;
@@ -226,10 +226,10 @@ static int mxs_dma_reset(int channel)
 
 	if (apbh_is_old)
 		writel(1 << (channel + BP_APBH_CTRL0_RESET_CHANNEL),
-			apbh_regs + HW_APBHX_CTRL0 + BIT_SET);
+			apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 	else
 		writel(1 << (channel + BP_APBHX_CHANNEL_CTRL_RESET_CHANNEL),
-			apbh_regs + HW_APBHX_CHANNEL_CTRL + BIT_SET);
+			apbh_regs + HW_APBHX_CHANNEL_CTRL + STMP_OFFSET_REG_SET);
 
 	return 0;
 }
@@ -250,10 +250,10 @@ static int mxs_dma_enable_irq(int channel, int enable)
 
 	if (enable)
 		writel(1 << (channel + BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN),
-			apbh_regs + HW_APBHX_CTRL1 + BIT_SET);
+			apbh_regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_SET);
 	else
 		writel(1 << (channel + BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN),
-			apbh_regs + HW_APBHX_CTRL1 + BIT_CLR);
+			apbh_regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_CLR);
 
 	return 0;
 }
@@ -273,8 +273,8 @@ static int mxs_dma_ack_irq(int channel)
 	if (ret)
 		return ret;
 
-	writel(1 << channel, apbh_regs + HW_APBHX_CTRL1 + BIT_CLR);
-	writel(1 << channel, apbh_regs + HW_APBHX_CTRL2 + BIT_CLR);
+	writel(1 << channel, apbh_regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_CLR);
+	writel(1 << channel, apbh_regs + HW_APBHX_CTRL2 + STMP_OFFSET_REG_CLR);
 
 	return 0;
 }
@@ -555,7 +555,7 @@ int mxs_dma_init(void)
 	int ret, channel;
 	u32 val, reg;
 
-	ret = mxs_reset_block(apbh_regs, 0);
+	ret = stmp_reset_block(apbh_regs, 0);
 	if (ret)
 		return ret;
 
@@ -569,10 +569,10 @@ int mxs_dma_init(void)
 	apbh_is_old = (readl((void *)reg) >> 24) < 3;
 
 	writel(BM_APBH_CTRL0_APB_BURST8_EN,
-		apbh_regs + HW_APBHX_CTRL0 + BIT_SET);
+		apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 
 	writel(BM_APBH_CTRL0_APB_BURST_EN,
-		apbh_regs + HW_APBHX_CTRL0 + BIT_SET);
+		apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 
 	for (channel = 0; channel < MXS_MAX_DMA_CHANNELS; channel++) {
 		pchan = mxs_dma_channels + channel;
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 023f922..1b935f7 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -36,10 +36,10 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <stmp-device.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm/bitops.h>
-#include <mach/mxs.h>
 #include <mach/imx-regs.h>
 #include <mach/mci.h>
 #include <mach/clock.h>
@@ -457,7 +457,7 @@ static int mxs_mci_initialize(struct mci_host *host, struct device_d *mci_dev)
 	writel(SSP_CTRL0_CLKGATE, mxs_mci->regs + HW_SSP_CTRL0 + 8);
 
 	/* reset the unit */
-	mxs_reset_block(mxs_mci->regs + HW_SSP_CTRL0, 0);
+	stmp_reset_block(mxs_mci->regs + HW_SSP_CTRL0, 0);
 
 	/* restore the last settings */
 	mxs_mci_setup_timeout(mxs_mci, 0xffff);
diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
index 56d5ecf..55a0e3e 100644
--- a/drivers/mtd/nand/nand_mxs.c
+++ b/drivers/mtd/nand/nand_mxs.c
@@ -28,12 +28,12 @@
 #include <errno.h>
 #include <driver.h>
 #include <init.h>
+#include <stmp-device.h>
 #include <asm/mmu.h>
 #include <asm/io.h>
 #include <mach/clock.h>
 #include <mach/imx-regs.h>
 #include <mach/dma.h>
-#include <mach/mxs.h>
 
 #define	MX28_BLOCK_SFTRST				(1 << 31)
 #define	MX28_BLOCK_CLKGATE				(1 << 30)
@@ -313,7 +313,7 @@ static int mxs_nand_wait_for_bch_complete(void)
 
 	ret = (timeout == 0) ? -ETIMEDOUT : 0;
 
-	writel(BCH_CTRL_COMPLETE_IRQ, bch_regs + BCH_CTRL + BIT_CLR);
+	writel(BCH_CTRL_COMPLETE_IRQ, bch_regs + BCH_CTRL + STMP_OFFSET_REG_CLR);
 
 	return ret;
 }
@@ -1045,7 +1045,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	int ret;
 
 	/* Reset BCH. Don't use SFTRST on MX23 due to Errata #2847 */
-	ret = mxs_reset_block(bch_regs + BCH_CTRL,
+	ret = stmp_reset_block(bch_regs + BCH_CTRL,
 				nand_info->version == GPMI_VERSION_TYPE_MX23);
 	if (ret)
 		return ret;
@@ -1070,7 +1070,7 @@ static int mxs_nand_scan_bbt(struct mtd_info *mtd)
 	writel(0, bch_regs + BCH_LAYOUTSELECT);
 
 	/* Enable BCH complete interrupt */
-	writel(BCH_CTRL_COMPLETE_IRQ_EN, bch_regs + BCH_CTRL + BIT_SET);
+	writel(BCH_CTRL_COMPLETE_IRQ_EN, bch_regs + BCH_CTRL + STMP_OFFSET_REG_SET);
 
 	/* Hook some operations at the MTD level. */
 	if (mtd->read_oob != mxs_nand_hook_read_oob) {
@@ -1151,7 +1151,7 @@ int mxs_nand_hw_init(struct mxs_nand_info *info)
 	mxs_dma_init();
 
 	/* Reset the GPMI block. */
-	ret = mxs_reset_block(gpmi_regs + GPMI_CTRL0, 0);
+	ret = stmp_reset_block(gpmi_regs + GPMI_CTRL0, 0);
 	if (ret)
 		return ret;
 
@@ -1159,7 +1159,7 @@ int mxs_nand_hw_init(struct mxs_nand_info *info)
 	info->version = val >> GPMI_VERSION_MINOR_OFFSET;
 
 	/* Reset BCH. Don't use SFTRST on MX23 due to Errata #2847 */
-	ret = mxs_reset_block(bch_regs + BCH_CTRL,
+	ret = stmp_reset_block(bch_regs + BCH_CTRL,
 				info->version == GPMI_VERSION_TYPE_MX23);
 	if (ret)
 		return ret;
diff --git a/drivers/serial/serial_auart.c b/drivers/serial/serial_auart.c
index 98f7c75..6518dbb 100644
--- a/drivers/serial/serial_auart.c
+++ b/drivers/serial/serial_auart.c
@@ -171,7 +171,7 @@ static int auart_clocksource_clock_change(struct notifier_block *nb, unsigned lo
 
 static void auart_serial_init_port(struct auart_priv *priv)
 {
-	mxs_reset_block(priv->base + HW_UARTAPP_CTRL0, 0);
+	stmp_reset_block(priv->base + HW_UARTAPP_CTRL0, 0);
 
 	/* Disable UART */
 	writel(0x0, priv->base + HW_UARTAPP_CTRL2);
diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index 8dfd6d5..4e539bf 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -20,6 +20,7 @@
 #include <clock.h>
 #include <errno.h>
 #include <io.h>
+#include <stmp-device.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <asm/mmu.h>
@@ -99,11 +100,11 @@ static int mxs_spi_setup(struct spi_device *spi)
 		return -EINVAL;
 	}
 
-	mxs_reset_block(mxs->regs + HW_SSP_CTRL0, 0);
+	stmp_reset_block(mxs->regs + HW_SSP_CTRL0);
 
 	val |= SSP_CTRL0_SSP_ASSERT_OUT(spi->chip_select);
 	val |= SSP_CTRL0_BUS_WIDTH(0);
-	writel(val, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
+	writel(val, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_SET);
 
 	val = SSP_CTRL1_SSP_MODE(0) | SSP_CTRL1_WORD_LENGTH(7);
 	val |= (mxs->mode & SPI_CPOL) ? SSP_CTRL1_POLARITY : 0;
@@ -120,14 +121,14 @@ static int mxs_spi_setup(struct spi_device *spi)
 
 static void mxs_spi_start_xfer(struct mxs_spi *mxs)
 {
-	writel(SSP_CTRL0_LOCK_CS, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
-	writel(SSP_CTRL0_IGNORE_CRC, mxs->regs + HW_SSP_CTRL0 + BIT_CLR);
+	writel(SSP_CTRL0_LOCK_CS, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_SET);
+	writel(SSP_CTRL0_IGNORE_CRC, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_CLR);
 }
 
 static void mxs_spi_end_xfer(struct mxs_spi *mxs)
 {
-	writel(SSP_CTRL0_LOCK_CS, mxs->regs + HW_SSP_CTRL0 + BIT_CLR);
-	writel(SSP_CTRL0_IGNORE_CRC, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
+	writel(SSP_CTRL0_LOCK_CS, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_CLR);
+	writel(SSP_CTRL0_IGNORE_CRC, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_SET);
 }
 
 static void mxs_spi_set_cs(struct spi_device *spi)
@@ -136,8 +137,8 @@ static void mxs_spi_set_cs(struct spi_device *spi)
 	const uint32_t mask = SSP_CTRL0_WAIT_FOR_CMD | SSP_CTRL0_WAIT_FOR_IRQ;
 	uint32_t select = SSP_CTRL0_SSP_ASSERT_OUT(spi->chip_select);
 
-	writel(mask, mxs->regs + HW_SSP_CTRL0 + BIT_CLR);
-	writel(select, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
+	writel(mask, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_CLR);
+	writel(select, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_SET);
 }
 
 static int mxs_spi_xfer_pio(struct spi_device *spi,
@@ -159,11 +160,11 @@ static int mxs_spi_xfer_pio(struct spi_device *spi,
 		writel(1, mxs->regs + HW_SSP_XFER_COUNT);
 
 		if (write)
-			writel(SSP_CTRL0_READ, mxs->regs + HW_SSP_CTRL0 + BIT_CLR);
+			writel(SSP_CTRL0_READ, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_CLR);
 		else
-			writel(SSP_CTRL0_READ, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
+			writel(SSP_CTRL0_READ, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_SET);
 
-		writel(SSP_CTRL0_RUN, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
+		writel(SSP_CTRL0_RUN, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_SET);
 
 		if (wait_on_timeout(MXS_SPI_MAX_TIMEOUT,
 				(readl(mxs->regs + HW_SSP_CTRL0) & SSP_CTRL0_RUN) == SSP_CTRL0_RUN)) {
@@ -174,7 +175,7 @@ static int mxs_spi_xfer_pio(struct spi_device *spi,
 		if (write)
 			writel(*data++, mxs->regs + HW_SSP_DATA);
 
-		writel(SSP_CTRL0_DATA_XFER, mxs->regs + HW_SSP_CTRL0 + BIT_SET);
+		writel(SSP_CTRL0_DATA_XFER, mxs->regs + HW_SSP_CTRL0 + STMP_OFFSET_REG_SET);
 
 		if (!write) {
 			if (wait_on_timeout(MXS_SPI_MAX_TIMEOUT,
@@ -240,7 +241,7 @@ static int mxs_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
 			}
 		}
 
-		writel(SSP_CTRL1_DMA_ENABLE, mxs->regs + HW_SSP_CTRL1 + BIT_CLR);
+		writel(SSP_CTRL1_DMA_ENABLE, mxs->regs + HW_SSP_CTRL1 + STMP_OFFSET_REG_CLR);
 		ret = mxs_spi_xfer_pio(spi, data, t->len, write, flags);
 		if (ret < 0)
 			return ret;
diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index d5212f8..0875c9b 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -24,6 +24,7 @@
 #include <errno.h>
 #include <xfuncs.h>
 #include <io.h>
+#include <stmp-device.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <mach/imx-regs.h>
@@ -222,7 +223,7 @@ static void stmfb_enable_controller(struct fb_info *fb_info)
 	 * Sometimes some data is still present in the FIFO. This leads into
 	 * a correct but shifted picture. Clearing the FIFO helps
 	 */
-	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + BIT_SET);
+	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + STMP_OFFSET_REG_SET);
 
 	/* if it was disabled, re-enable the mode again */
 	reg = readl(fbi->base + HW_LCDIF_CTRL);
@@ -255,14 +256,14 @@ static void stmfb_enable_controller(struct fb_info *fb_info)
 	}
 
 	/* stop FIFO reset */
-	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + BIT_CLR);
+	writel(CTRL1_FIFO_CLEAR, fbi->base + HW_LCDIF_CTRL1 + STMP_OFFSET_REG_CLR);
 
 	/* enable LCD using LCD_RESET signal*/
 	if (fbi->pdata->flags & USE_LCD_RESET)
-		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + BIT_SET);
+		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + STMP_OFFSET_REG_SET);
 
 	/* start the engine right now */
-	writel(CTRL_RUN, fbi->base + HW_LCDIF_CTRL + BIT_SET);
+	writel(CTRL_RUN, fbi->base + HW_LCDIF_CTRL + STMP_OFFSET_REG_SET);
 
 	if (fbi->pdata->enable)
 		fbi->pdata->enable(1);
@@ -277,7 +278,7 @@ static void stmfb_disable_controller(struct fb_info *fb_info)
 
 	/* disable LCD using LCD_RESET signal*/
 	if (fbi->pdata->flags & USE_LCD_RESET)
-		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + BIT_CLR);
+		writel(CTRL1_RESET,  fbi->base + HW_LCDIF_CTRL1 + STMP_OFFSET_REG_CLR);
 
 	if (fbi->pdata->enable)
 		fbi->pdata->enable(0);
diff --git a/include/stmp-device.h b/include/stmp-device.h
new file mode 100644
index 0000000..9b5bee4
--- /dev/null
+++ b/include/stmp-device.h
@@ -0,0 +1,22 @@
+/*
+ * basic functions for devices following the "stmp" style register layout
+ *
+ * Copyright (C) 2011 Wolfram Sang, Pengutronix e.K.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ */
+
+#ifndef __STMP_DEVICE_H__
+#define __STMP_DEVICE_H__
+
+#include <linux/compiler.h>
+
+#define STMP_OFFSET_REG_SET	0x4
+#define STMP_OFFSET_REG_CLR	0x8
+#define STMP_OFFSET_REG_TOG	0xc
+
+extern int stmp_reset_block(void __iomem *, int just_enable);
+#endif /* __STMP_DEVICE_H__ */
diff --git a/lib/Kconfig b/lib/Kconfig
index 646fdb7..4fa3009 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -43,6 +43,9 @@ config LIBUBIGEN
 config LIBMTD
 	bool
 
+config STMP_DEVICE
+	bool
+
 source lib/gui/Kconfig
 
 source lib/bootstrap/Kconfig
diff --git a/lib/Makefile b/lib/Makefile
index 7c42537..8436d27 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -41,3 +41,4 @@ obj-$(CONFIG_LIBMTD)	+= libmtd.o
 obj-y			+= gui/
 obj-$(CONFIG_XYMODEM)	+= xymodem.o
 obj-y			+= unlink-recursive.o
+obj-$(CONFIG_STMP_DEVICE) += stmp-device.o
diff --git a/lib/stmp-device.c b/lib/stmp-device.c
new file mode 100644
index 0000000..74d4763
--- /dev/null
+++ b/lib/stmp-device.c
@@ -0,0 +1,63 @@
+/*
+ * Freescale i.MXS common code
+ *
+ * Copyright (C) 2012 Wolfram Sang <w.sang@pengutronix.de>
+ *
+ * Based on code from LTIB:
+ * Copyright (C) 2010 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <stmp-device.h>
+#include <errno.h>
+#include <clock.h>
+
+#define	STMP_IP_RESET_TIMEOUT	(10 * MSECOND)
+
+#define	STMP_BLOCK_SFTRST				(1 << 31)
+#define	STMP_BLOCK_CLKGATE				(1 << 30)
+
+int stmp_reset_block(void __iomem *reg, int just_enable)
+{
+	/* Clear SFTRST */
+	writel(STMP_BLOCK_SFTRST, reg + STMP_OFFSET_REG_CLR);
+
+	if (wait_on_timeout(STMP_IP_RESET_TIMEOUT, !(readl(reg) & STMP_BLOCK_SFTRST)))
+		goto timeout;
+
+	/* Clear CLKGATE */
+	writel(STMP_BLOCK_CLKGATE, reg + STMP_OFFSET_REG_CLR);
+
+	if (!just_enable) {
+		/* Set SFTRST */
+		writel(STMP_BLOCK_SFTRST, reg + STMP_OFFSET_REG_SET);
+
+		/* Wait for CLKGATE being set */
+		if (wait_on_timeout(STMP_IP_RESET_TIMEOUT, readl(reg) & STMP_BLOCK_CLKGATE))
+			goto timeout;
+	}
+
+	/* Clear SFTRST */
+	writel(STMP_BLOCK_SFTRST, reg + STMP_OFFSET_REG_CLR);
+
+	if (wait_on_timeout(STMP_IP_RESET_TIMEOUT, !(readl(reg) & STMP_BLOCK_SFTRST)))
+		goto timeout;
+
+	/* Clear CLKGATE */
+	writel(STMP_BLOCK_CLKGATE, reg + STMP_OFFSET_REG_CLR);
+
+	if (wait_on_timeout(STMP_IP_RESET_TIMEOUT, !(readl(reg) & STMP_BLOCK_CLKGATE)))
+		goto timeout;
+
+	return 0;
+
+timeout:
+	printf("MXS: Timeout resetting block via register 0x%p\n", reg);
+	return -ETIMEDOUT;
+}
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
