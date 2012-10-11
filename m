Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMCxm-0008QF-Us
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 07:13:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Oct 2012 09:13:40 +0200
Message-Id: <1349939621-17793-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
References: <1349939621-17793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/13] ARM i.MX27: remove duplicate ESDCTL registers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S |    5 ++--
 arch/arm/mach-imx/include/mach/imx27-regs.h     |   36 -----------------------
 2 files changed, 3 insertions(+), 38 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index bab5c8c..be9a4f4 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -1,6 +1,7 @@
 #include <config.h>
 #include <asm-generic/memory_layout.h>
 #include <mach/imx-regs.h>
+#include <mach/esdctl.h>
 #include <asm/barebox-arm-head.h>
 
 #define writel(val, reg) \
@@ -9,10 +10,10 @@
 	str		r1,   [r0];
 
 #if defined CONFIG_EUKREA_CPUIMX27_SDRAM_256MB
-#define ROWS0	ESDCTL_ROW14
+#define ROWS0	ESDCTL0_ROW14
 #define CFG0	0x0029572D
 #elif defined CONFIG_EUKREA_CPUIMX27_SDRAM_128MB
-#define ROWS0	ESDCTL_ROW13
+#define ROWS0	ESDCTL0_ROW13
 #define CFG0	0x00095728
 #endif
 
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index 1f4a743..90b4614 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -162,40 +162,4 @@
 #define MX27_MPCTL1_BRMO	(1 << 6)
 #define MX27_MPCTL1_LF		(1 << 15)
 
-/* SDRAM Controller registers bitfields */
-#define ESDCTL_PRCT(x)		(((x) & 3f) << 0)
-#define ESDCTL_BL		(1 << 7)
-#define ESDCTL_FP		(1 << 8)
-#define ESDCTL_PWDT(x)		(((x) & 3) << 10)
-#define ESDCTL_SREFR(x)		(((x) & 7) << 13)
-#define ESDCTL_DSIZ_16_UPPER	(0 << 16)
-#define ESDCTL_DSIZ_16_LOWER	(0 << 16)
-#define ESDCTL_DSIZ_32		(0 << 16)
-#define ESDCTL_COL8		(0 << 20)
-#define ESDCTL_COL9		(1 << 20)
-#define ESDCTL_COL10		(2 << 20)
-#define ESDCTL_ROW11		(0 << 24)
-#define ESDCTL_ROW12		(1 << 24)
-#define ESDCTL_ROW13		(2 << 24)
-#define ESDCTL_ROW14		(3 << 24)
-#define ESDCTL_ROW15		(4 << 24)
-#define ESDCTL_SP		(1 << 27)
-#define ESDCTL_SMODE_NORMAL	(0 << 28)
-#define ESDCTL_SMODE_PRECHAGRE	(1 << 28)
-#define ESDCTL_SMODE_AUTO_REF	(2 << 28)
-#define ESDCTL_SMODE_LOAD_MODE	(3 << 28)
-#define ESDCTL_SMODE_MAN_REF	(4 << 28)
-#define ESDCTL_SDE		(1 << 31)
-
-#define ESDCFG_TRC(x)		(((x) & 0xf) << 0)
-#define ESDCFG_TRCD(x)		(((x) & 0x7) << 4)
-#define ESDCFG_TCAS(x)		(((x) & 0x3) << 8)
-#define ESDCFG_TRRD(x)		(((x) & 0x3) << 10)
-#define ESDCFG_TRAS(x)		(((x) & 0x7) << 12)
-#define ESDCFG_TWR		(1 << 15)
-#define ESDCFG_TMRD(x)		(((x) & 0x3) << 16)
-#define ESDCFG_TRP(x)		(((x) & 0x3) << 18)
-#define ESDCFG_TWTR		(1 << 20)
-#define ESDCFG_TXP(x)		(((x) & 0x3) << 21)
-
 #endif /* _IMX27_REGS_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
