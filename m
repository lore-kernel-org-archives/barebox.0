Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XgwR2-00046c-L7
 for barebox@lists.infradead.org; Wed, 22 Oct 2014 13:58:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Oct 2014 15:58:20 +0200
Message-Id: <1413986301-27238-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM i.MX6: mmdc: Only print calibration values of enabled
 phys
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6-mmdc.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 0e706ce..dc60478 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -516,14 +516,18 @@ int mmdc_do_dqs_calibration(void)
 	pr_debug("\nRead DQS Gating calibration\n");
 	pr_debug("MPDGCTRL0 PHY0 (0x021b083c) = 0x%08X\n", readl(P0_IPS + MPDGCTRL0));
 	pr_debug("MPDGCTRL1 PHY0 (0x021b0840) = 0x%08X\n", readl(P0_IPS + MPDGCTRL1));
-	pr_debug("MPDGCTRL0 PHY1 (0x021b483c) = 0x%08X\n", readl(P1_IPS + MPDGCTRL0));
-	pr_debug("MPDGCTRL1 PHY1 (0x021b4840) = 0x%08X\n", readl(P1_IPS + MPDGCTRL1));
+	if (data_bus_size == 0x2) {
+		pr_debug("MPDGCTRL0 PHY1 (0x021b483c) = 0x%08X\n", readl(P1_IPS + MPDGCTRL0));
+		pr_debug("MPDGCTRL1 PHY1 (0x021b4840) = 0x%08X\n", readl(P1_IPS + MPDGCTRL1));
+	}
 	pr_debug("\nRead calibration\n");
 	pr_debug("MPRDDLCTL PHY0 (0x021b0848) = 0x%08X\n", readl(P0_IPS + MPRDDLCTL));
-	pr_debug("MPRDDLCTL PHY1 (0x021b4848) = 0x%08X\n", readl(P1_IPS + MPRDDLCTL));
+	if (data_bus_size == 0x2)
+		pr_debug("MPRDDLCTL PHY1 (0x021b4848) = 0x%08X\n", readl(P1_IPS + MPRDDLCTL));
 	pr_debug("\nWrite calibration\n");
 	pr_debug("MPWRDLCTL PHY0 (0x021b0850) = 0x%08X\n", readl(P0_IPS + MPWRDLCTL));
-	pr_debug("MPWRDLCTL PHY1 (0x021b4850) = 0x%08X\n", readl(P1_IPS + MPWRDLCTL));
+	if (data_bus_size == 0x2)
+		pr_debug("MPWRDLCTL PHY1 (0x021b4850) = 0x%08X\n", readl(P1_IPS + MPWRDLCTL));
 	pr_debug("\n");
 	/*
 	 * registers below are for debugging purposes
@@ -534,10 +538,12 @@ int mmdc_do_dqs_calibration(void)
 	pr_debug("MPDGHWST1 PHY0 (0x021b0880) = 0x%08X\n", readl(P0_IPS + MPDGHWST1));
 	pr_debug("MPDGHWST2 PHY0 (0x021b0884) = 0x%08X\n", readl(P0_IPS + MPDGHWST2));
 	pr_debug("MPDGHWST3 PHY0 (0x021b0888) = 0x%08X\n", readl(P0_IPS + MPDGHWST3));
-	pr_debug("MPDGHWST0 PHY1 (0x021b487c) = 0x%08X\n", readl(P1_IPS + MPDGHWST0));
-	pr_debug("MPDGHWST1 PHY1 (0x021b4880) = 0x%08X\n", readl(P1_IPS + MPDGHWST1));
-	pr_debug("MPDGHWST2 PHY1 (0x021b4884) = 0x%08X\n", readl(P1_IPS + MPDGHWST2));
-	pr_debug("MPDGHWST3 PHY1 (0x021b4888) = 0x%08X\n", readl(P1_IPS + MPDGHWST3));
+	if (data_bus_size == 0x2) {
+		pr_debug("MPDGHWST0 PHY1 (0x021b487c) = 0x%08X\n", readl(P1_IPS + MPDGHWST0));
+		pr_debug("MPDGHWST1 PHY1 (0x021b4880) = 0x%08X\n", readl(P1_IPS + MPDGHWST1));
+		pr_debug("MPDGHWST2 PHY1 (0x021b4884) = 0x%08X\n", readl(P1_IPS + MPDGHWST2));
+		pr_debug("MPDGHWST3 PHY1 (0x021b4888) = 0x%08X\n", readl(P1_IPS + MPDGHWST3));
+	}
 
 	return errorcount;
 }
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
