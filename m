Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA1t-0007kI-Rm
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:25:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:31 +0200
Message-Id: <20200915122539.18744-3-s.hauer@pengutronix.de>
In-Reply-To: <20200915122539.18744-1-s.hauer@pengutronix.de>
References: <20200915122539.18744-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] arm: Add prototypes for functions called from assembly
To: Barebox List <barebox@lists.infradead.org>

Some functions are called from assembly only. There's no prototype
for them so this leads to -Wmissing-prototypes warnings. Add a prototype
right aboce the functions to avoid these warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/edb93xx/flash_cfg.c | 3 +++
 arch/arm/boards/edb93xx/pll_cfg.c   | 3 +++
 arch/arm/boards/edb93xx/sdram_cfg.c | 3 +++
 arch/arm/mach-ep93xx/header.c       | 2 ++
 4 files changed, 11 insertions(+)

diff --git a/arch/arm/boards/edb93xx/flash_cfg.c b/arch/arm/boards/edb93xx/flash_cfg.c
index 6b742f967c..8400db69de 100644
--- a/arch/arm/boards/edb93xx/flash_cfg.c
+++ b/arch/arm/boards/edb93xx/flash_cfg.c
@@ -11,6 +11,9 @@
 				SMC_BCR_BLE | 2 << SMC_BCR_WST2_SHIFT | \
 				1 << SMC_BCR_MW_SHIFT)
 
+/* Called from assembly */
+void flash_cfg(void);
+
 void flash_cfg(void)
 {
 	struct smc_regs *smc = (struct smc_regs *)SMC_BASE;
diff --git a/arch/arm/boards/edb93xx/pll_cfg.c b/arch/arm/boards/edb93xx/pll_cfg.c
index 1f03acf915..1a1c01aba2 100644
--- a/arch/arm/boards/edb93xx/pll_cfg.c
+++ b/arch/arm/boards/edb93xx/pll_cfg.c
@@ -9,6 +9,9 @@
 #include "pll_cfg.h"
 #include "early_udelay.h"
 
+/* Called from assembly */
+void pll_cfg(void);
+
 void pll_cfg(void)
 {
 	struct syscon_regs *syscon = (struct syscon_regs *)SYSCON_BASE;
diff --git a/arch/arm/boards/edb93xx/sdram_cfg.c b/arch/arm/boards/edb93xx/sdram_cfg.c
index a9f591f197..3cee834910 100644
--- a/arch/arm/boards/edb93xx/sdram_cfg.c
+++ b/arch/arm/boards/edb93xx/sdram_cfg.c
@@ -17,6 +17,9 @@ static void precharge_all_banks(void);
 static void setup_refresh_timer(void);
 static void program_mode_registers(void);
 
+/* Called from assembly */
+void sdram_cfg(void);
+
 void sdram_cfg(void)
 {
 	struct sdram_regs *sdram = (struct sdram_regs *)SDRAM_BASE;
diff --git a/arch/arm/mach-ep93xx/header.c b/arch/arm/mach-ep93xx/header.c
index 4e6a2e57c8..a9dde2d8b0 100644
--- a/arch/arm/mach-ep93xx/header.c
+++ b/arch/arm/mach-ep93xx/header.c
@@ -2,6 +2,8 @@
 #include <linux/compiler.h>
 #include <asm/barebox-arm-head.h>
 
+void go(void);
+
 void __naked __section(.flash_header_start) go(void)
 {
         barebox_arm_head();
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
