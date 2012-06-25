Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFB-0002O2-Qu
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:24 +0200
Message-Id: <1340645910-15668-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/12] ARM i.MX speed: sparse fixes
To: barebox@lists.infradead.org

- Add missing #include <mach/clock.h>
- add global functions to mach/clock.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/clock.h |    2 ++
 arch/arm/mach-imx/speed-imx35.c        |    2 +-
 arch/arm/mach-imx/speed-imx51.c        |    5 +++--
 arch/arm/mach-imx/speed-imx53.c        |    3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/clock.h b/arch/arm/mach-imx/include/mach/clock.h
index 1082178..060d265 100644
--- a/arch/arm/mach-imx/include/mach/clock.h
+++ b/arch/arm/mach-imx/include/mach/clock.h
@@ -30,6 +30,8 @@ ulong imx_get_lcdclk(void);
 ulong imx_get_i2cclk(void);
 ulong imx_get_mmcclk(void);
 ulong imx_get_cspiclk(void);
+ulong imx_get_ipgclk(void);
+ulong imx_get_usbclk(void);
 
 int imx_clko_set_div(int div);
 void imx_clko_set_src(int src);
diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-imx35.c
index 1e1c39f..2bdcc07 100644
--- a/arch/arm/mach-imx/speed-imx35.c
+++ b/arch/arm/mach-imx/speed-imx35.c
@@ -84,7 +84,7 @@ unsigned long imx_get_ahbclk(void)
 	return fref / aad->ahb;
 }
 
-static unsigned long imx_get_ipgclk(void)
+unsigned long imx_get_ipgclk(void)
 {
 	ulong clk = imx_get_ahbclk();
 
diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index 8d1ecf3..1c3523d 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -2,11 +2,12 @@
 #include <io.h>
 #include <asm-generic/div64.h>
 #include <mach/imx51-regs.h>
+#include <mach/clock.h>
 #include <mach/clock-imx51_53.h>
 
 static u32 ccm_readl(u32 ofs)
 {
-	return readl(MX51_CCM_BASE_ADDR + ofs);
+	return readl(IOMEM(MX51_CCM_BASE_ADDR) + ofs);
 }
 
 static unsigned long ckil_get_rate(void)
@@ -142,7 +143,7 @@ unsigned long imx_get_uartclk(void)
 	return parent_rate / (prediv * podf);
 }
 
-static unsigned long imx_get_ahbclk(void)
+unsigned long imx_get_ahbclk(void)
 {
 	u32 reg, div;
 
diff --git a/arch/arm/mach-imx/speed-imx53.c b/arch/arm/mach-imx/speed-imx53.c
index 634341e..653dae3 100644
--- a/arch/arm/mach-imx/speed-imx53.c
+++ b/arch/arm/mach-imx/speed-imx53.c
@@ -2,6 +2,7 @@
 #include <io.h>
 #include <asm-generic/div64.h>
 #include <mach/imx-regs.h>
+#include <mach/clock.h>
 #include "mach/clock-imx51_53.h"
 
 static u32 ccm_readl(u32 ofs)
@@ -139,7 +140,7 @@ unsigned long imx_get_uartclk(void)
 	return parent_rate / (prediv * podf);
 }
 
-static unsigned long imx_get_ahbclk(void)
+unsigned long imx_get_ahbclk(void)
 {
 	u32 reg, div;
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
