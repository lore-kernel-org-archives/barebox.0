Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIjTm-0000LI-Kb
 for barebox@lists.infradead.org; Thu, 30 Jun 2016 21:26:35 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu, 30 Jun 2016 23:24:13 +0200
Message-Id: <1467321854-15090-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/2] eukrea-cpuimx35: Fix wrong clock gating for ESDHC1
To: barebox@lists.infradead.org, eric@eukrea.com
Cc: Alexander Kurz <akurz@blala.de>

With commit 962d8b89d2ce ("imx35-regs: add defines for USB and SD") the
shifter argument for the iMX35 ESDHC1 CGR instance has been erroneously
assigned to CGR1 instead of CGR0. Fix this for the eukrea-cpuimx35 board.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c | 6 ++++--
 arch/arm/mach-imx/include/mach/imx35-regs.h       | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 9c4ea13..8b5514b 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -232,10 +232,12 @@ static int eukrea_cpuimx35_core_init(void)
 {
 	u32 reg;
 
-	/* enable clock for I2C1, SDHC1, USB and FEC */
+	/* enable clock for I2C1, ESDHC1, USB and FEC */
+	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
+	reg |= 0x3 << MX35_CCM_CGR0_ESDHC1_SHIFT;
+	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
 	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
 	reg |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
-	reg |= 0x3 << MX35_CCM_CGR1_SDHC1_SHIFT;
 	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT,
 	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
 	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR2);
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 52e209b..6905400 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -150,9 +150,9 @@
 #define MX35_CCM_CGR3	0x38
 
 #define MX35_CCM_CGR0_CSPI1_SHIFT	10
+#define MX35_CCM_CGR0_ESDHC1_SHIFT	26
 #define MX35_CCM_CGR1_FEC_SHIFT	0
 #define MX35_CCM_CGR1_I2C1_SHIFT	10
-#define MX35_CCM_CGR1_SDHC1_SHIFT	26
 #define MX35_CCM_CGR2_UART2_SHIFT	18
 #define MX35_CCM_CGR2_USB_SHIFT	22
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
