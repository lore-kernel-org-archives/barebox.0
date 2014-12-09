Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyIcK-0003ZT-V9
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 11:06:10 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XyIby-0008IO-S0
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 12:05:46 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  9 Dec 2014 12:05:43 +0100
Message-Id: <1418123146-13235-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
References: <1418123146-13235-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/5] video: imx-hdmi: search for DDC node only when EDID
 support is enabled
To: barebox@lists.infradead.org

This uses i2c functions that may not be available in every configuration
and is only needed if EDID support is enabled, which in turn already
selects I2C.

Fixes:
drivers/video/imx-ipu-v3/imx-hdmi.c:
undefined reference to `of_find_i2c_adapter_by_node'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-hdmi.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index 4f462889a873..2da76a4b7a74 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -1190,16 +1190,18 @@ static int imx_hdmi_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
-	if (ddc_node) {
-		hdmi->ddc = of_find_i2c_adapter_by_node(ddc_node);
-		if (!hdmi->ddc)
-			dev_dbg(hdmi->dev, "failed to read ddc node\n");
-	} else {
-		dev_dbg(hdmi->dev, "no ddc property found\n");
-	}
+	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_EDID)) {
+		ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
+		if (ddc_node) {
+			hdmi->ddc = of_find_i2c_adapter_by_node(ddc_node);
+			if (!hdmi->ddc)
+				dev_dbg(hdmi->dev, "failed to read ddc node\n");
+		} else {
+			dev_dbg(hdmi->dev, "no ddc property found\n");
+		}
 
-	ddc_node = NULL;
+		ddc_node = NULL;
+	}
 
 	hdmi->regs = dev_request_mem_region(dev, 0);
 	if (!hdmi->regs)
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
