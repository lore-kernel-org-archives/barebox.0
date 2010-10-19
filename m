Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj7-0005rR-6u
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:06 +0200
Message-Id: <1287492930-15716-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/42] speed-imx35: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/speed-imx35.c |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-imx35.c
index 324cc29..8937ef1 100644
--- a/arch/arm/mach-imx/speed-imx35.c
+++ b/arch/arm/mach-imx/speed-imx35.c
@@ -19,6 +19,7 @@
 #include <mach/imx-regs.h>
 #include <asm/io.h>
 #include <mach/clock.h>
+#include <mach/generic.h>
 #include <init.h>
 
 unsigned long imx_get_mpllclk(void)
@@ -27,7 +28,7 @@ unsigned long imx_get_mpllclk(void)
 	return imx_decode_pll(mpctl, CONFIG_MX35_HCLK_FREQ);
 }
 
-unsigned long imx_get_ppllclk(void)
+static unsigned long imx_get_ppllclk(void)
 {
 	ulong ppctl = readl(IMX_CCM_BASE + CCM_PPCTL);
 	return imx_decode_pll(ppctl, CONFIG_MX35_HCLK_FREQ);
@@ -56,7 +57,7 @@ static struct arm_ahb_div clk_consumer[] = {
 	{ .arm = 0, .ahb = 0, .sel = 0},
 };
 
-unsigned long imx_get_armclk(void)
+static unsigned long imx_get_armclk(void)
 {
 	unsigned long pdr0 = readl(IMX_CCM_BASE + CCM_PDR0);
 	struct arm_ahb_div *aad;
@@ -83,7 +84,7 @@ unsigned long imx_get_ahbclk(void)
 	return fref / aad->ahb;
 }
 
-unsigned long imx_get_ipgclk(void)
+static unsigned long imx_get_ipgclk(void)
 {
 	ulong clk = imx_get_ahbclk();
 
@@ -95,7 +96,7 @@ static unsigned long get_3_3_div(unsigned long in)
 	return (((in >> 3) & 0x7) + 1) * ((in & 0x7) + 1);
 }
 
-unsigned long imx_get_ipg_perclk(void)
+static unsigned long imx_get_ipg_perclk(void)
 {
 	ulong pdr0 = readl(IMX_CCM_BASE + CCM_PDR0);
 	ulong pdr4 = readl(IMX_CCM_BASE + CCM_PDR4);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
