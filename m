Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgJU-0002mb-5o
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:44:26 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJ9-0002nx-TM
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:03 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJ9-0002St-Rp
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:03 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon,  2 Jan 2012 12:43:49 +0100
Message-Id: <1325504642-9324-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
References: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 01/14] MACH SAMSUNG: Rename the whole mach to add more CPUs in
 future
To: barebox@lists.infradead.org

The S3Cxxxx family consists of ARMv4, ARMv5 and ARMv6 types of CPU cores. The
S3C24xx sub family is only one of it. To be able to handle all CPUs in one mach
directory, use a more generic name for it.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/Kconfig                                   |    3 ++-
 arch/arm/Makefile                                  |    2 +-
 arch/arm/{mach-s3c24xx => mach-samsung}/Kconfig    |   15 ++++++++++++---
 arch/arm/{mach-s3c24xx => mach-samsung}/Makefile   |    0
 arch/arm/{mach-s3c24xx => mach-samsung}/generic.c  |    0
 .../{mach-s3c24xx => mach-samsung}/gpio-s3c24x0.c  |    0
 .../include/mach/fb.h                              |    0
 .../include/mach/gpio.h                            |    0
 .../include/mach/iomux-s3c24x0.h                   |    0
 .../include/mach/mci.h                             |    0
 .../include/mach/s3c24x0-iomap.h                   |    0
 .../include/mach/s3c24x0-nand.h                    |    0
 .../include/mach/s3c24xx-generic.h                 |    0
 .../{mach-s3c24xx => mach-samsung}/lowlevel-init.S |    0
 14 files changed, 15 insertions(+), 5 deletions(-)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/Kconfig (91%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/Makefile (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/generic.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/gpio-s3c24x0.c (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/include/mach/fb.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/include/mach/gpio.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/include/mach/iomux-s3c24x0.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/include/mach/mci.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/include/mach/s3c24x0-iomap.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/include/mach/s3c24x0-nand.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/include/mach/s3c24xx-generic.h (100%)
 rename arch/arm/{mach-s3c24xx => mach-samsung}/lowlevel-init.S (100%)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 40677a3..b600179 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -68,6 +68,7 @@ config ARCH_PXA
 
 config ARCH_S3C24xx
 	bool "Samsung S3C2410, S3C2412, S3C2413, S3C2440, S3C2442, S3C2443"
+	select ARCH_SAMSUNG
 	select CPU_ARM920T
 	select GENERIC_GPIO
 
@@ -86,7 +87,7 @@ source arch/arm/mach-netx/Kconfig
 source arch/arm/mach-nomadik/Kconfig
 source arch/arm/mach-omap/Kconfig
 source arch/arm/mach-pxa/Kconfig
-source arch/arm/mach-s3c24xx/Kconfig
+source arch/arm/mach-samsung/Kconfig
 source arch/arm/mach-versatile/Kconfig
 
 config ARM_ASM_UNIFIED
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index b14934c..6c91c22 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -52,7 +52,7 @@ machine-$(CONFIG_ARCH_NOMADIK)		:= nomadik
 machine-$(CONFIG_ARCH_NETX)		:= netx
 machine-$(CONFIG_ARCH_OMAP)		:= omap
 machine-$(CONFIG_ARCH_PXA)		:= pxa
-machine-$(CONFIG_ARCH_S3C24xx)		:= s3c24xx
+machine-$(CONFIG_ARCH_SAMSUNG)		:= samsung
 machine-$(CONFIG_ARCH_VERSATILE)	:= versatile
 
 # Board directory name.  This list is sorted alphanumerically
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-samsung/Kconfig
similarity index 91%
rename from arch/arm/mach-s3c24xx/Kconfig
rename to arch/arm/mach-samsung/Kconfig
index 80b65fb..a800cb8 100644
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ b/arch/arm/mach-samsung/Kconfig
@@ -1,14 +1,21 @@
-if ARCH_S3C24xx
+config ARCH_SAMSUNG
+	bool
+
+if ARCH_SAMSUNG
 
 config ARCH_TEXT_BASE
 	hex
-	default 0x31fc0000
+	default 0x31fc0000 if MACH_MINI2440
+	default 0x31fc0000 if MACH_A9M2440
+	default 0x31fc0000 if MACH_A9M2410
 
 config BOARDINFO
 	default "Mini 2440"    if MACH_MINI2440
 	default "Digi A9M2440" if MACH_A9M2440
 	default "Digi A9M2410" if MACH_A9M2410
 
+if ARCH_S3C24xx
+
 config CPU_S3C2410
 	bool
 
@@ -67,7 +74,7 @@ config MACH_A9M2410DEV
 
 endchoice
 
-source arch/arm/boards/mini2440/Kconfig 
+source arch/arm/boards/mini2440/Kconfig
 
 endmenu
 
@@ -106,3 +113,5 @@ config S3C24XX_NAND_BOOT
 endmenu
 
 endif
+
+endif
diff --git a/arch/arm/mach-s3c24xx/Makefile b/arch/arm/mach-samsung/Makefile
similarity index 100%
rename from arch/arm/mach-s3c24xx/Makefile
rename to arch/arm/mach-samsung/Makefile
diff --git a/arch/arm/mach-s3c24xx/generic.c b/arch/arm/mach-samsung/generic.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/generic.c
rename to arch/arm/mach-samsung/generic.c
diff --git a/arch/arm/mach-s3c24xx/gpio-s3c24x0.c b/arch/arm/mach-samsung/gpio-s3c24x0.c
similarity index 100%
rename from arch/arm/mach-s3c24xx/gpio-s3c24x0.c
rename to arch/arm/mach-samsung/gpio-s3c24x0.c
diff --git a/arch/arm/mach-s3c24xx/include/mach/fb.h b/arch/arm/mach-samsung/include/mach/fb.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/fb.h
rename to arch/arm/mach-samsung/include/mach/fb.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/gpio.h b/arch/arm/mach-samsung/include/mach/gpio.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/gpio.h
rename to arch/arm/mach-samsung/include/mach/gpio.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h b/arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/iomux-s3c24x0.h
rename to arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/mci.h b/arch/arm/mach-samsung/include/mach/mci.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/mci.h
rename to arch/arm/mach-samsung/include/mach/mci.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h b/arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/s3c24x0-iomap.h
rename to arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h b/arch/arm/mach-samsung/include/mach/s3c24x0-nand.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/s3c24x0-nand.h
rename to arch/arm/mach-samsung/include/mach/s3c24x0-nand.h
diff --git a/arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h b/arch/arm/mach-samsung/include/mach/s3c24xx-generic.h
similarity index 100%
rename from arch/arm/mach-s3c24xx/include/mach/s3c24xx-generic.h
rename to arch/arm/mach-samsung/include/mach/s3c24xx-generic.h
diff --git a/arch/arm/mach-s3c24xx/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
similarity index 100%
rename from arch/arm/mach-s3c24xx/lowlevel-init.S
rename to arch/arm/mach-samsung/lowlevel-init.S
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
