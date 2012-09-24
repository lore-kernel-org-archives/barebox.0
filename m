Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BJ-0005Ti-1I
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:16 +0200
Message-Id: <1348483583-12586-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
References: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] ARM i.MX/MXS: Allow to include imx*-regs.h directly
To: barebox@lists.infradead.org

In fact we can be happy about everyone including the files directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx1-regs.h  |    4 ----
 arch/arm/mach-imx/include/mach/imx21-regs.h |    4 ----
 arch/arm/mach-imx/include/mach/imx25-regs.h |    7 -------
 arch/arm/mach-imx/include/mach/imx27-regs.h |    4 ----
 arch/arm/mach-imx/include/mach/imx31-regs.h |    7 -------
 arch/arm/mach-imx/include/mach/imx35-regs.h |    7 -------
 arch/arm/mach-mxs/include/mach/imx23-regs.h |    7 -------
 arch/arm/mach-mxs/include/mach/imx28-regs.h |    7 -------
 8 files changed, 47 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/arch/arm/mach-imx/include/mach/imx1-regs.h
index 52d2dfe..0e07dcd 100644
--- a/arch/arm/mach-imx/include/mach/imx1-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx1-regs.h
@@ -1,10 +1,6 @@
 #ifndef _IMX1_REGS_H
 #define _IMX1_REGS_H
 
-#ifndef _IMX_REGS_H
-#error "Please do not include directly"
-#endif
-
 #define MX1_IO_BASE_ADDR	0x00200000
 #define MX1_IO_SIZE		SZ_1M
 
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index e58af72..6f2000b 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -1,10 +1,6 @@
 #ifndef _IMX21_REGS_H
 #define _IMX21_REGS_H
 
-#ifndef _IMX_REGS_H
-#error "Please do not include directly"
-#endif
-
 #define MX21_AIPI_BASE_ADDR		0x10000000
 #define MX21_AIPI_SIZE			SZ_1M
 #define MX21_DMA_BASE_ADDR			(MX21_AIPI_BASE_ADDR + 0x01000)
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index aca9849..8e7ff85 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -19,13 +19,6 @@
 #ifndef __ASM_ARCH_MX25_REGS_H
 #define __ASM_ARCH_MX25_REGS_H
 
-/*
- * sanity check
- */
-#ifndef _IMX_REGS_H
-# error "Please do not include directly. Use imx-regs.h instead."
-#endif
-
 #define MX25_AIPS1_BASE_ADDR		0x43f00000
 #define MX25_AIPS1_SIZE			SZ_1M
 #define MX25_AIPS2_BASE_ADDR		0x53f00000
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 907afa4..6e47b28 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -1,10 +1,6 @@
 #ifndef _IMX27_REGS_H
 #define _IMX27_REGS_H
 
-#ifndef _IMX_REGS_H
-#error "Please do not include directly"
-#endif
-
 #define MX27_AIPI_BASE_ADDR		0x10000000
 #define MX27_AIPI_SIZE			SZ_1M
 #define MX27_DMA_BASE_ADDR			(MX27_AIPI_BASE_ADDR + 0x01000)
diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/arch/arm/mach-imx/include/mach/imx31-regs.h
index 4d0efd5..e912665 100644
--- a/arch/arm/mach-imx/include/mach/imx31-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx31-regs.h
@@ -21,13 +21,6 @@
 
 #include <sizes.h>
 
-/*
- * sanity check
- */
-#ifndef _IMX_REGS_H
-# error "Please do not include directly. Use imx-regs.h instead."
-#endif
-
 #define MX31_AIPS1_BASE_ADDR		0x43f00000
 #define MX31_AIPS1_SIZE			SZ_1M
 #define MX31_MAX_BASE_ADDR			(MX31_AIPS1_BASE_ADDR + 0x04000)
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 0a4f423..223e629 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -21,13 +21,6 @@
 
 #include <sizes.h>
 
-/*
- * sanity check
- */
-#ifndef _IMX_REGS_H
-# error "Please do not include directly. Use imx-regs.h instead."
-#endif
-
 #define MX35_IRAM_BASE_ADDR		0x10000000	/* internal ram */
 #define MX35_IRAM_SIZE			SZ_128K
 
diff --git a/arch/arm/mach-mxs/include/mach/imx23-regs.h b/arch/arm/mach-mxs/include/mach/imx23-regs.h
index ade3139..7fb664b 100644
--- a/arch/arm/mach-mxs/include/mach/imx23-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx23-regs.h
@@ -15,13 +15,6 @@
 #ifndef __ASM_ARCH_MX23_REGS_H
 #define __ASM_ARCH_MX23_REGS_H
 
-/*
- * sanity check
- */
-#ifndef _IMX_REGS_H
-# error "Please do not include directly. Use imx-regs.h instead."
-#endif
-
 #define IMX_MEMORY_BASE		0x40000000
 #define MXS_APBH_BASE		0x80004000
 #define MXS_BCH_BASE		0x8000a000
diff --git a/arch/arm/mach-mxs/include/mach/imx28-regs.h b/arch/arm/mach-mxs/include/mach/imx28-regs.h
index 16bf5f7..fa8edd7 100644
--- a/arch/arm/mach-mxs/include/mach/imx28-regs.h
+++ b/arch/arm/mach-mxs/include/mach/imx28-regs.h
@@ -13,13 +13,6 @@
 #ifndef __ASM_ARCH_MX28_REGS_H
 #define __ASM_ARCH_MX28_REGS_H
 
-/*
- * sanity check
- */
-#ifndef _IMX_REGS_H
-# error "Please do not include directly. Use imx-regs.h instead."
-#endif
-
 #define IMX_SRAM_BASE		0x00000000
 #define IMX_MEMORY_BASE		0x40000000
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
