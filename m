Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsjh-0000H2-Us
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 10:25:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Jul 2019 12:24:53 +0200
Message-Id: <20190712102457.15339-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: stm32mp: fix some misnomers/typos
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

The arch was renamed to stm32mp, so it doesn't look out of place when
the stm32mp2 is released. Fix spotted comments/labels with the old
name. While at it, fix a typo about the SoC name on the DK2 board.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig              | 2 +-
 arch/arm/mach-stm32mp/Kconfig | 4 ++--
 images/Makefile.stm32mp       | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1d4b6e09ce79..915a06cd7639 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -208,7 +208,7 @@ config ARCH_S3C64xx
 	select GENERIC_GPIO
 
 config ARCH_STM32MP
-	bool "ST stm32mp1xx"
+	bool "STMicroelectronics STM32MP"
 	select CPU_V7
 	select HAVE_PBL_MULTI_IMAGES
 	select CLKDEV_LOOKUP
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index be16294f5ad7..af0bf6a74ba3 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -1,10 +1,10 @@
 if ARCH_STM32MP
 
-config ARCH_STM32MP1157
+config ARCH_STM32MP157
 	bool
 
 config MACH_STM32MP157C_DK2
-	select ARCH_STM32MP1157
+	select ARCH_STM32MP157
 	select ARM_USE_COMPRESSED_DTB
 	bool "STM32MP157C-DK2 board"
 
diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index c49b1d72b788..bc3e7394d729 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-or-later
 #
-# barebox image generation Makefile for STMicroelectronics MP1
+# barebox image generation Makefile for STMicroelectronics MP
 #
 
 pblb-$(CONFIG_MACH_STM32MP157C_DK2) += start_stm32mp157c_dk2
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
