Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baO8g-0000Q4-H4
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 14:17:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Aug 2016 16:17:22 +0200
Message-Id: <1471529842-14479-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1471529842-14479-1-git-send-email-s.hauer@pengutronix.de>
References: <1471529842-14479-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] mtd: nand-imx: Optimize timing for i.MX25
To: Barebox List <barebox@lists.infradead.org>

So far we relied on the clock rate as configured by reset default or
board code. Also we did not touch the symmetric mode bit. Use
the ONFI provided timing parameters to configure the clock rate for
the Nand controller. Also symmetric mode (EDO mode) when needed.
This is done for v2 controllers (i.MX25/35) only, other controllers
need other setup code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index 47d9d9a..6f31c28 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -24,6 +24,7 @@
 #include <init.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
+#include <linux/clk.h>
 #include <mach/generic.h>
 #include <mach/imx-nand.h>
 #include <io.h>
@@ -811,6 +812,32 @@ static void preset_v2(struct mtd_info *mtd)
 	struct nand_chip *nand_chip = mtd->priv;
 	struct imx_nand_host *host = nand_chip->priv;
 	uint16_t config1 = 0;
+	int mode;
+
+	mode = onfi_get_async_timing_mode(nand_chip);
+	if (mode != ONFI_TIMING_MODE_UNKNOWN && !IS_ERR(host->clk)) {
+		const struct nand_sdr_timings *timings;
+
+		mode = fls(mode) - 1;
+		if (mode < 0)
+			mode = 0;
+
+		timings = onfi_async_timing_mode_to_sdr_timings(mode);
+		if (!IS_ERR(timings)) {
+			unsigned long rate;
+			int tRC_min_ns = timings->tRC_min / 1000;
+
+			rate = 1000000000 / tRC_min_ns;
+			if (tRC_min_ns < 30)
+				/* If tRC is smaller than 30ns we have to use EDO timing */
+				config1 |= NFC_V1_V2_CONFIG1_ONE_CYCLE;
+			else
+				/* Otherwise we have two clock cycles per access */
+				rate *= 2;
+
+			clk_set_rate(host->clk, rate);
+		}
+	}
 
 	config1 |= NFC_V2_CONFIG1_FP_INT;
 
@@ -1181,6 +1208,9 @@ static int __init imxnd_probe(struct device_d *dev)
 
 	host->data_buf = (uint8_t *)(host + 1);
 
+	/* No error check, not all SoCs provide a clk yet */
+	host->clk = clk_get(dev, NULL);
+
 	if (nfc_is_v1() || nfc_is_v21()) {
 		host->send_cmd = send_cmd_v1_v2;
 		host->send_addr = send_addr_v1_v2;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
