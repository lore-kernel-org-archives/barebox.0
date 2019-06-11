Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadJL-00046i-RI
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 09:43:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hadJK-000791-9N
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:43:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hadJK-00058Z-08
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:43:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2019 11:43:14 +0200
Message-Id: <20190611094319.9143-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190611094319.9143-1-a.fatoum@pengutronix.de>
References: <20190611094319.9143-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 1/6] ARM: stm32mp1: rename to stm32mp
To: barebox@lists.infradead.org

Serial and clk driver both depend on CONFIG_ARCH_STM32MP1,
so either the Kconfig symbol or their depend needs to change.

Patches posted by the vendor to Linux, U-Boot and their BSP
Yocto-Layer speak of a STM32MP-Family of which the STM32MP1
is the first series, thus rename the arch by dropping the 1.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                                              | 4 ++--
 arch/arm/Makefile                                             | 2 +-
 arch/arm/configs/{stm32mp1_defconfig => stm32mp_defconfig}    | 2 +-
 arch/arm/{mach-stm32mp1 => mach-stm32mp}/Kconfig              | 2 +-
 arch/arm/{mach-stm32mp1 => mach-stm32mp}/Makefile             | 0
 .../{mach-stm32mp1 => mach-stm32mp}/include/mach/debug_ll.h   | 0
 arch/arm/{mach-stm32mp1 => mach-stm32mp}/include/mach/stm32.h | 0
 images/Makefile                                               | 2 +-
 images/{Makefile.stm32mp1 => Makefile.stm32mp}                | 0
 9 files changed, 6 insertions(+), 6 deletions(-)
 rename arch/arm/configs/{stm32mp1_defconfig => stm32mp_defconfig} (98%)
 rename arch/arm/{mach-stm32mp1 => mach-stm32mp}/Kconfig (87%)
 rename arch/arm/{mach-stm32mp1 => mach-stm32mp}/Makefile (100%)
 rename arch/arm/{mach-stm32mp1 => mach-stm32mp}/include/mach/debug_ll.h (100%)
 rename arch/arm/{mach-stm32mp1 => mach-stm32mp}/include/mach/stm32.h (100%)
 rename images/{Makefile.stm32mp1 => Makefile.stm32mp} (100%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 480c6f011797..1d4b6e09ce79 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -207,7 +207,7 @@ config ARCH_S3C64xx
 	select CPU_V6
 	select GENERIC_GPIO
 
-config ARCH_STM32MP1
+config ARCH_STM32MP
 	bool "ST stm32mp1xx"
 	select CPU_V7
 	select HAVE_PBL_MULTI_IMAGES
@@ -304,7 +304,7 @@ source "arch/arm/mach-pxa/Kconfig"
 source "arch/arm/mach-rockchip/Kconfig"
 source "arch/arm/mach-samsung/Kconfig"
 source "arch/arm/mach-socfpga/Kconfig"
-source "arch/arm/mach-stm32mp1/Kconfig"
+source "arch/arm/mach-stm32mp/Kconfig"
 source "arch/arm/mach-versatile/Kconfig"
 source "arch/arm/mach-vexpress/Kconfig"
 source "arch/arm/mach-tegra/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4d54f339f15c..5cb46f661335 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -98,7 +98,7 @@ machine-$(CONFIG_ARCH_PXA)		:= pxa
 machine-$(CONFIG_ARCH_ROCKCHIP)		:= rockchip
 machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
 machine-$(CONFIG_ARCH_SOCFPGA)		:= socfpga
-machine-$(CONFIG_ARCH_STM32MP1)		:= stm32mp1
+machine-$(CONFIG_ARCH_STM32MP)		:= stm32mp
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		:= tegra
diff --git a/arch/arm/configs/stm32mp1_defconfig b/arch/arm/configs/stm32mp_defconfig
similarity index 98%
rename from arch/arm/configs/stm32mp1_defconfig
rename to arch/arm/configs/stm32mp_defconfig
index 2922ce3632e1..657b2edf57f2 100644
--- a/arch/arm/configs/stm32mp1_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -1,4 +1,4 @@
-CONFIG_ARCH_STM32MP1=y
+CONFIG_ARCH_STM32MP=y
 CONFIG_MACH_STM32MP157C_DK2=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
diff --git a/arch/arm/mach-stm32mp1/Kconfig b/arch/arm/mach-stm32mp/Kconfig
similarity index 87%
rename from arch/arm/mach-stm32mp1/Kconfig
rename to arch/arm/mach-stm32mp/Kconfig
index cc7cf23cfb31..bcf7293c465b 100644
--- a/arch/arm/mach-stm32mp1/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -1,4 +1,4 @@
-if ARCH_STM32MP1
+if ARCH_STM32MP
 
 config ARCH_STM32MP1157
 	bool
diff --git a/arch/arm/mach-stm32mp1/Makefile b/arch/arm/mach-stm32mp/Makefile
similarity index 100%
rename from arch/arm/mach-stm32mp1/Makefile
rename to arch/arm/mach-stm32mp/Makefile
diff --git a/arch/arm/mach-stm32mp1/include/mach/debug_ll.h b/arch/arm/mach-stm32mp/include/mach/debug_ll.h
similarity index 100%
rename from arch/arm/mach-stm32mp1/include/mach/debug_ll.h
rename to arch/arm/mach-stm32mp/include/mach/debug_ll.h
diff --git a/arch/arm/mach-stm32mp1/include/mach/stm32.h b/arch/arm/mach-stm32mp/include/mach/stm32.h
similarity index 100%
rename from arch/arm/mach-stm32mp1/include/mach/stm32.h
rename to arch/arm/mach-stm32mp/include/mach/stm32.h
diff --git a/images/Makefile b/images/Makefile
index 479647a82726..293e644319ea 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -140,7 +140,7 @@ include $(srctree)/images/Makefile.mxs
 include $(srctree)/images/Makefile.omap3
 include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
-include $(srctree)/images/Makefile.stm32mp1
+include $(srctree)/images/Makefile.stm32mp
 include $(srctree)/images/Makefile.tegra
 include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.xburst
diff --git a/images/Makefile.stm32mp1 b/images/Makefile.stm32mp
similarity index 100%
rename from images/Makefile.stm32mp1
rename to images/Makefile.stm32mp
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
