Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIXrG-0007wc-SX
 for barebox@lists.infradead.org; Wed, 16 Sep 2020 13:52:27 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Sep 2020 15:50:32 +0200
Message-Id: <20200916135035.7089-8-a.fatoum@pengutronix.de>
In-Reply-To: <20200916135035.7089-1-a.fatoum@pengutronix.de>
References: <20200916135035.7089-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/10] ARM: stm32mp: remove custom reboot mode logic from arch
 code
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This was ported from U-Boot to support st32mp_get_forced_boot_mode(),
which allows board code to customize boot according to values the kernel
places in the reboot mode region on the TAMP syscon.

We no have a syscon-reboot-mode driver, a device node in the
stm32mp151.dtsi, a ${global.system.reboot_mode} variable and a common
reboot_mode_get(), which together achieve the same, but in a generic
manner. Drop the now duplicate code. There has been no in-tree users so
far, so we don't need to touch anything else.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-stm32mp/include/mach/bootsource.h | 12 ------------
 arch/arm/mach-stm32mp/init.c                    | 16 ++--------------
 2 files changed, 2 insertions(+), 26 deletions(-)

diff --git a/arch/arm/mach-stm32mp/include/mach/bootsource.h b/arch/arm/mach-stm32mp/include/mach/bootsource.h
index 1b6f562ac301..5750dc14482f 100644
--- a/arch/arm/mach-stm32mp/include/mach/bootsource.h
+++ b/arch/arm/mach-stm32mp/include/mach/bootsource.h
@@ -18,16 +18,4 @@ enum stm32mp_boot_device {
 	STM32MP_BOOT_SERIAL_USB_OTG	= 0x62,
 };
 
-enum stm32mp_forced_boot_mode {
-	STM32MP_BOOT_NORMAL	= 0x00,
-	STM32MP_BOOT_FASTBOOT	= 0x01,
-	STM32MP_BOOT_RECOVERY	= 0x02,
-	STM32MP_BOOT_STM32PROG	= 0x03,
-	STM32MP_BOOT_UMS_MMC0	= 0x10,
-	STM32MP_BOOT_UMS_MMC1	= 0x11,
-	STM32MP_BOOT_UMS_MMC2	= 0x12,
-};
-
-enum stm32mp_forced_boot_mode st32mp_get_forced_boot_mode(void);
-
 #endif
diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 7f687fa4f29a..7094e0e7dd08 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -80,12 +80,6 @@
 #define FIXUP_CPU_NUM(mask) ((mask) >> 16)
 #define FIXUP_CPU_HZ(mask) (((mask) & GENMASK(15, 0)) * 1000UL * 1000UL)
 
-static enum stm32mp_forced_boot_mode __stm32mp_forced_boot_mode;
-enum stm32mp_forced_boot_mode st32mp_get_forced_boot_mode(void)
-{
-	return __stm32mp_forced_boot_mode;
-}
-
 static void setup_boot_mode(void)
 {
 	u32 boot_ctx = readl(TAMP_BOOT_CONTEXT);
@@ -121,17 +115,11 @@ static void setup_boot_mode(void)
 		break;
 	}
 
-	__stm32mp_forced_boot_mode = boot_ctx & TAMP_BOOT_FORCED_MASK;
-
-	pr_debug("[boot_ctx=0x%x] => mode=0x%x, instance=%d forced=0x%x\n",
-		 boot_ctx, boot_mode, instance, __stm32mp_forced_boot_mode);
+	pr_debug("[boot_ctx=0x%x] => mode=0x%x, instance=%d\n",
+		 boot_ctx, boot_mode, instance);
 
 	bootsource_set(src);
 	bootsource_set_instance(instance);
-
-	/* clear TAMP for next reboot */
-	clrsetbits_le32(TAMP_BOOT_CONTEXT, TAMP_BOOT_FORCED_MASK,
-			STM32MP_BOOT_NORMAL);
 }
 
 static int __stm32mp_cputype;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
