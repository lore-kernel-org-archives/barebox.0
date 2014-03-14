Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOSCC-0003Hu-Gt
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 13:30:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 14:30:20 +0100
Message-Id: <1394803820-29277-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
References: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ARM: pfla02: Set new ethernet phy tx timings
To: barebox@lists.infradead.org

From: Christian Hemp <c.hemp@phytec.de>

TX_CLK line is approx. 54mm longer than other TX lines which adds
a delay of 0.36ns. RGMII need a delay of min. 1.0ns. This mean we have to add
a delay of 0.64ns. We choose 0.78 to have a little gap. This can be done by
setting GTX pad skew value to 11100
 => Set register 2.8 (RGMII Clock Pad Skew) to 0x038F.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-phyflex-imx6/board.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
index f510407..3db88da 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/board.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/board.c
@@ -21,6 +21,9 @@
 #include <gpio.h>
 #include <init.h>
 #include <of.h>
+#include <fec.h>
+
+#include <linux/micrel_phy.h>
 
 #include <mach/imx6.h>
 
@@ -36,6 +39,21 @@ static int eth_phy_reset(void)
 	return 0;
 }
 
+static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
+{
+	phy_write(dev, 0x0d, device);
+	phy_write(dev, 0x0e, reg);
+	phy_write(dev, 0x0d, (1 << 14) | device);
+	phy_write(dev, 0x0e, val);
+}
+
+static int ksz9031rn_phy_fixup(struct phy_device *dev)
+{
+	mmd_write_reg(dev, 2, 8, 0x039F);
+
+	return 0;
+}
+
 static int phytec_pfla02_init(void)
 {
 	if (!of_machine_is_compatible("phytec,imx6q-pfla02") &&
@@ -44,6 +62,8 @@ static int phytec_pfla02_init(void)
 		return 0;
 
 	eth_phy_reset();
+	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
+					   ksz9031rn_phy_fixup);
 
 	return 0;
 }
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
