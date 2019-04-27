Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKKGg-0003Hi-Me
 for barebox@lists.infradead.org; Sat, 27 Apr 2019 10:09:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id b1so8006483wru.3
 for <barebox@lists.infradead.org>; Sat, 27 Apr 2019 03:09:12 -0700 (PDT)
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <96430d9a-d2dc-d5a4-ce9d-caedf4977f0d@gmail.com>
Date: Sat, 27 Apr 2019 12:09:05 +0200
MIME-Version: 1.0
Content-Language: en-US
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
Subject: [PATCH] clk: vf610: improve handling case that cpu frequency can't be
 changed
To: Sascha Hauer <s.hauer@pengutronix.de>, Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Currently we get a nasty error message if the cpu clock can't be
changed:
DDRC is clocked by PLL1, can't switch CPU clockinitcall vf610_switch_cpu_clock+0x1/0x198 failed: Invalid argument

So let's do the following:
- factor out the check from vf610_switch_cpu_clock_to_500mhz() and
  vf610_switch_cpu_clock_to_400mhz
- if clock can't be changed, don't treat it as an error
- don't call clock notifier chain if clock can't be changed
- add trailing newline to the warning message

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/clk/imx/clk-vf610.c | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index 1b1b881..d70f441 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -459,26 +459,30 @@ enum {
 	DDRMC_CR117_AXI0_FITYPEREG_SYNC = 0b01 << 16,
 };
 
-static int vf610_switch_cpu_clock_to_500mhz(void)
+static bool vf610_cpu_clk_changeable(void)
 {
-	int ret;
-
 	/*
 	 * When switching A5 CPU to 500Mhz we expect DDRC to be
 	 * clocked by PLL2_PFD2 and the system to be configured in
 	 * asynchronous mode.
-	 *
-	 * We also can't just use default PFD1 output of PLL1 due to
-	 * Errata e6235, so we have to re-clock the PLL itself and use
-	 * its output to clock the CPU directly.
 	 */
-
 	if (clk_get_parent(clk[VF610_CLK_DDR_SEL]) != clk[VF610_CLK_PLL2_PFD2]) {
-		pr_warn("DDRC is clocked by PLL1, can't switch CPU clock");
-		return -EINVAL;
+		pr_warn("DDRC is clocked by PLL1, can't switch CPU clock\n");
+		return false;
 	}
 
+	return true;
+}
+
+static int vf610_switch_cpu_clock_to_500mhz(void)
+{
+	int ret;
+
 	/*
+	 * We can't just use default PFD1 output of PLL1 due to
+	 * Errata e6235, so we have to re-clock the PLL itself and use
+	 * its output to clock the CPU directly.
+	 *
 	 * Code below alters the frequency of PLL1, and doing so would
 	 * require us to wait for PLL1 lock before proceeding to
 	 * select it as a clock source again.
@@ -533,11 +537,6 @@ static int vf610_switch_cpu_clock_to_400mhz(void)
 	uint32_t cr117;
 	void * __iomem ddrmc = IOMEM(VF610_DDR_BASE_ADDR);
 
-	if (clk_get_parent(clk[VF610_CLK_DDR_SEL]) != clk[VF610_CLK_PLL2_PFD2]) {
-		pr_warn("DDRC is clocked by PLL1, can't switch CPU clock");
-		return -EINVAL;
-	}
-
 	ret = clk_set_parent(clk[VF610_CLK_PLL2_PFD_SEL], clk[VF610_CLK_PLL2_PFD2]);
 	if (ret < 0) {
 		pr_crit("Unable to re-parent '%s'\n",
@@ -595,10 +594,14 @@ static int vf610_switch_cpu_clock(void)
 		return 0;
 
 	case VF610_SPEED_500:
+		if (!vf610_cpu_clk_changeable())
+			return 0;
 		ret = vf610_switch_cpu_clock_to_500mhz();
 		break;
 
 	case VF610_SPEED_400:
+		if (!vf610_cpu_clk_changeable())
+			return 0;
 		ret = vf610_switch_cpu_clock_to_400mhz();
 		break;
 	}
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
