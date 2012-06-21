Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShdRC-0008H1-3b
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:12:27 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ShdR9-0006RL-S2
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 11:12:23 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1ShdR9-0007b5-QN
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 11:12:23 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 21 Jun 2012 11:12:22 +0200
Message-Id: <1340269942-25253-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1340269942-25253-1-git-send-email-jbe@pengutronix.de>
References: <1340269942-25253-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/2] ARM/MXS: remove the now obsolete mxs reset routine
To: barebox@lists.infradead.org

Remove the old reset routine from the buildsystem and build the new one
instead according to the selected architecture

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/mach-mxs/Makefile    |    6 ++--
 arch/arm/mach-mxs/reset-imx.c |   61 -----------------------------------------
 2 files changed, 3 insertions(+), 64 deletions(-)
 delete mode 100644 arch/arm/mach-mxs/reset-imx.c

diff --git a/arch/arm/mach-mxs/Makefile b/arch/arm/mach-mxs/Makefile
index 9255d15..73ce1c8 100644
--- a/arch/arm/mach-mxs/Makefile
+++ b/arch/arm/mach-mxs/Makefile
@@ -1,6 +1,6 @@
-obj-y += imx.o iomux-imx.o reset-imx.o common.o power.o
+obj-y += imx.o iomux-imx.o common.o power.o
 obj-$(CONFIG_DRIVER_VIDEO_STM) += imx_lcd_clk.o
-obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o usb.o
-obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o
+obj-$(CONFIG_ARCH_IMX23) += speed-imx23.o clocksource-imx23.o usb.o  soc-imx23.o
+obj-$(CONFIG_ARCH_IMX28) += speed-imx28.o clocksource-imx28.o soc-imx28.o
 obj-$(CONFIG_MXS_OCOTP) += ocotp.o
 obj-$(CONFIG_MXS_CMD_BCB) += bcb.o
diff --git a/arch/arm/mach-mxs/reset-imx.c b/arch/arm/mach-mxs/reset-imx.c
deleted file mode 100644
index cfb3548..0000000
--- a/arch/arm/mach-mxs/reset-imx.c
+++ /dev/null
@@ -1,61 +0,0 @@
-/*
- * (C) Copyright 2010 Juergen Beisert - Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
- */
-
-#include <common.h>
-#include <init.h>
-#include <notifier.h>
-#include <mach/imx-regs.h>
-#include <io.h>
-
-#define HW_RTC_CTRL     0x000
-# define BM_RTC_CTRL_WATCHDOGEN (1 << 4)
-#define HW_RTC_CTRL_SET 0x004
-#define HW_RTC_CTRL_CLR 0x008
-#define HW_RTC_CTRL_TOG 0x00C
-
-#define HW_RTC_WATCHDOG     0x050
-#define HW_RTC_WATCHDOG_SET 0x054
-#define HW_RTC_WATCHDOG_CLR 0x058
-#define HW_RTC_WATCHDOG_TOG 0x05C
-
-#define WDOG_COUNTER_RATE	1000 /* 1 kHz clock */
-
-#define HW_RTC_PERSISTENT1     0x070
-# define BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER 0x80000000
-#define HW_RTC_PERSISTENT1_SET 0x074
-#define HW_RTC_PERSISTENT1_CLR 0x078
-#define HW_RTC_PERSISTENT1_TOG 0x07C
-
-/*
- * Reset the cpu by setting up the watchdog timer and let it time out
- *
- * TODO There is a much easier way to reset the CPU: Refer bit 2 in
- *       the HW_CLKCTRL_RESET register, data sheet page 106/4-30
- */
-void __noreturn reset_cpu (unsigned long addr)
-{
-	writel(WDOG_COUNTER_RATE, IMX_WDT_BASE + HW_RTC_WATCHDOG);
-	writel(BM_RTC_CTRL_WATCHDOGEN, IMX_WDT_BASE + HW_RTC_CTRL_SET);
-	writel(BV_RTC_PERSISTENT1_GENERAL__RTC_FORCE_UPDATER, IMX_WDT_BASE + HW_RTC_PERSISTENT1);
-
-	while (1)
-		;
-	/*NOTREACHED*/
-}
-EXPORT_SYMBOL(reset_cpu);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
