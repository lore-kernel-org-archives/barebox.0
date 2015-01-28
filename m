Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000FG-3R
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:17 +0100
Message-Id: <1422430339-11969-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/15] ARM: MXS: Add regulator debug print
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/power-init.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/mach-mxs/power-init.c b/arch/arm/mach-mxs/power-init.c
index 407b776..5d4d089 100644
--- a/arch/arm/mach-mxs/power-init.c
+++ b/arch/arm/mach-mxs/power-init.c
@@ -24,6 +24,40 @@
 #include <mach/regs-rtc.h>
 #include <mach/regs-lradc.h>
 
+static void mxs_power_status(void)
+{
+	struct mxs_power_regs *power_regs =
+		(struct mxs_power_regs *)IMX_POWER_BASE;
+	static int linregofs[] = { 0, 1, -1, -2 };
+
+	uint32_t vddio = readl(&power_regs->hw_power_vddioctrl);
+	uint32_t vdda = readl(&power_regs->hw_power_vddactrl);
+	uint32_t vddd = readl(&power_regs->hw_power_vdddctrl);
+	uint32_t vddmem = readl(&power_regs->hw_power_vddmemctrl);
+
+	printf("vddio:  %dmV (BO -%dmV), Linreg enabled, Linreg offset: %d, FET %sabled\n",
+			(vddio & 0x1f) * 50 + 2800,
+			((vddio >> 8) & 0x7) * 50,
+			linregofs[((vdda >> 12) & 0x3)],
+			(vddio & (1 << 16)) ? "dis" : "en");
+	printf("vdda:   %dmV (BO -%dmV), Linreg %sabled, Linreg offset: %d, FET %sabled\n",
+			(vdda & 0x1f) * 25 + 1500,
+			((vdda >> 8) & 0x7) * 25,
+			(vdda & (1 << 17)) ? "en" : "dis",
+			linregofs[((vdda >> 12) & 0x3)],
+			(vdda & (1 << 16)) ? "dis" : "en");
+	printf("vddd:   %dmV (BO -%dmV), Linreg %sabled, Linreg offset: %d, FET %sabled\n",
+			(vddd & 0x1f) * 25 + 800,
+			((vddd >> 8) & 0x7) * 25,
+			(vddd & (1 << 21)) ? "en" : "dis",
+			linregofs[((vdda >> 16) & 0x3)],
+			(vdda & (1 << 20)) ? "dis" : "en");
+	printf("vddmem: %dmV (BO -%dmV), Linreg %sabled\n",
+			(vddmem & 0x1f) * 25 + 1100,
+			((vddmem >> 5) & 0x7) * 25,
+			(vddmem & (1 << 8)) ? "en" : "dis");
+}
+
 /*
  * This delay function is intended to be used only in early stage of boot, where
  * clock are not set up yet. The timer used here is reset on every boot and
@@ -1197,6 +1231,7 @@ static void __mx28_power_init(int has_battery)
 	struct mxs_power_regs *power_regs =
 		(struct mxs_power_regs *)IMX_POWER_BASE;
 
+	mxs_power_status();
 	mxs_power_clock2xtal();
 	mxs_power_set_auto_restart();
 	mxs_power_set_linreg();
@@ -1231,6 +1266,8 @@ static void __mx28_power_init(int has_battery)
 	writel(POWER_5VCTRL_PWDN_5VBRNOUT, &power_regs->hw_power_5vctrl_set);
 
 	mxs_early_delay(1000);
+
+	mxs_power_status();
 }
 
 void mx28_power_init(void)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
