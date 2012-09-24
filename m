Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BJ-0005Ts-2U
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:18 +0200
Message-Id: <1348483583-12586-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/14] ARM i.MX: Add header file for WEIM cs setup
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    1 +
 arch/arm/boards/imx27ads/imx27ads.c               |    1 +
 arch/arm/boards/pcm038/pcm038.c                   |    1 +
 arch/arm/boards/pcm038/pcm970.c                   |    1 +
 arch/arm/mach-imx/imx27.c                         |    9 +++++++++
 arch/arm/mach-imx/include/mach/imx27-regs.h       |   10 ----------
 arch/arm/mach-imx/include/mach/weim.h             |    7 +++++++
 7 files changed, 20 insertions(+), 10 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/weim.h

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 0ffe43f..cff4f77 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -37,6 +37,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
+#include <mach/weim.h>
 #include <mach/imxfb.h>
 #include <ns16550.h>
 #include <asm/mmu.h>
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index f9416e1..22c6e40 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -23,6 +23,7 @@
 #include <io.h>
 #include <fec.h>
 #include <mach/gpio.h>
+#include <mach/weim.h>
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index a51825b..58b1ec9 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -31,6 +31,7 @@
 #include <io.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-pll.h>
+#include <mach/weim.h>
 #include <mach/imxfb.h>
 #include <i2c/i2c.h>
 #include <mach/spi.h>
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index d392ea4..b8fc65b 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -18,6 +18,7 @@
 #include <platform_ide.h>
 #include <mach/imx-regs.h>
 #include <mach/iomux-mx27.h>
+#include <mach/weim.h>
 #include <mach/gpio.h>
 #include <mach/devices-imx27.h>
 #include <usb/ulpi.h>
diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 76bb910..0c92385 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -13,6 +13,7 @@
 
 #include <common.h>
 #include <mach/imx-regs.h>
+#include <mach/weim.h>
 #include <sizes.h>
 #include <init.h>
 #include <io.h>
@@ -22,6 +23,14 @@ int imx_silicon_revision(void)
 	return CID >> 28;
 }
 
+void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
+		unsigned additional)
+{
+	writel(upper, MX27_WEIM_BASE_ADDR + (cs * 0x10) + 0x0);
+	writel(lower, MX27_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
+	writel(additional, MX27_WEIM_BASE_ADDR + (cs * 0x10) + 0x8);
+}
+
 /*
  * Initialize MAX on i.MX27. necessary to give the DMA engine
  * higher priority to the memory than the CPU. Needed for proper
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 6e47b28..5db1a3c 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -278,14 +278,4 @@
 #define ESDCFG_TWTR		(1 << 20)
 #define ESDCFG_TXP(x)		(((x) & 0x3) << 21)
 
-#ifndef __ASSEMBLY__
-#include <io.h>
-static inline void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower, unsigned additional)
-{
-	writel(upper, MX27_WEIM_BASE_ADDR + (cs * 0x10) + 0x0);
-	writel(lower, MX27_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
-	writel(additional, MX27_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
-}
-#endif /* __ASSEMBLY__ */
-
 #endif /* _IMX27_REGS_H */
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
new file mode 100644
index 0000000..bc9b51e
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/weim.h
@@ -0,0 +1,7 @@
+#ifndef __MACH_WEIM_H
+#define __MACH_WEIM_H
+
+void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
+		unsigned additional);
+
+#endif /* __MACH_WEIM_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
