Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvIo-0006Y3-G5
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:43:00 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 17:42:46 +0200
Message-Id: <20200928154247.15619-6-a.fatoum@pengutronix.de>
In-Reply-To: <20200928154247.15619-1-a.fatoum@pengutronix.de>
References: <20200928154247.15619-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/7] video: imx-hdmi: fix dev_get_drvdata misuse
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The driver has a couple of issues in how it handles match data:

 - First use of dev_get_drvdata is superfluous as result is unused
 - Second use of dev_get_drvdata stores a sizeof(const void *)
   into an enum typed object
 - hdmi->dev_type contains a truncated pointer to a struct
   dw_hdmi_data and compares it with an enum, which will always fail

Fix these and while it, refactor the code a bit to get rid of
dw_hdmi_data, whose only other member is unused.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-hdmi.c | 39 ++++++-----------------------
 1 file changed, 8 insertions(+), 31 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-hdmi.c b/drivers/video/imx-ipu-v3/imx-hdmi.c
index 17b6e4cc257d..1e55c97d2426 100644
--- a/drivers/video/imx-ipu-v3/imx-hdmi.c
+++ b/drivers/video/imx-ipu-v3/imx-hdmi.c
@@ -1083,19 +1083,18 @@ static void dw_hdmi_enable_video_path(struct dw_hdmi *hdmi)
 /* Workaround to clear the overflow condition */
 static void dw_hdmi_clear_overflow(struct dw_hdmi *hdmi)
 {
-	int count;
+	int count = 4;
 	u8 val;
 
 	/* TMDS software reset */
 	hdmi_writeb(hdmi, (u8)~HDMI_MC_SWRSTZ_TMDSSWRST_REQ, HDMI_MC_SWRSTZ);
 
 	val = hdmi_readb(hdmi, HDMI_FC_INVIDCONF);
-	if (hdmi->dev_type == IMX6DL_HDMI) {
-		hdmi_writeb(hdmi, val, HDMI_FC_INVIDCONF);
-		return;
-	}
 
-	for (count = 0; count < 4; count++)
+	if (hdmi->dev_type == IMX6DL_HDMI)
+		count = 1;
+
+	while (count--)
 		hdmi_writeb(hdmi, val, HDMI_FC_INVIDCONF);
 }
 
@@ -1193,28 +1192,13 @@ static void initialize_hdmi_ih_mutes(struct dw_hdmi *hdmi)
 	hdmi_writeb(hdmi, ih_mute, HDMI_IH_MUTE);
 }
 
-struct dw_hdmi_data {
-	unsigned ipu_mask;
-	enum dw_hdmi_devtype devtype;
-};
-
-static struct dw_hdmi_data imx6q_hdmi_data = {
-	.ipu_mask = 0xf,
-	.devtype = IMX6Q_HDMI,
-};
-
-static struct dw_hdmi_data imx6dl_hdmi_data = {
-	.ipu_mask = 0x3,
-	.devtype = IMX6DL_HDMI,
-};
-
 static struct of_device_id dw_hdmi_dt_ids[] = {
 	{
 		.compatible = "fsl,imx6q-hdmi",
-		.data = &imx6q_hdmi_data,
+		.data = (void *)IMX6Q_HDMI,
 	}, {
 		.compatible = "fsl,imx6dl-hdmi",
-		.data = &imx6dl_hdmi_data,
+		.data = (void *)IMX6DL_HDMI,
 	}, {
 		/* sentinel */
 	}
@@ -1276,11 +1260,6 @@ static int dw_hdmi_probe(struct device_d *dev)
 	struct device_node *np = dev->device_node;
 	struct dw_hdmi *hdmi;
 	int ret;
-	const struct dw_hdmi_data *devtype;
-
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
 
 	hdmi = xzalloc(sizeof(*hdmi));
 
@@ -1289,9 +1268,7 @@ static int dw_hdmi_probe(struct device_d *dev)
 	hdmi->sample_rate = 48000;
 	hdmi->ratio = 100;
 
-	ret = dev_get_drvdata(dev, (const void **)&hdmi->dev_type);
-	if (ret)
-		return ret;
+	hdmi->dev_type = (enum dw_hdmi_devtype)device_get_match_data(dev);
 
 	hdmi->ddc_node = of_parse_phandle(np, "ddc-i2c-bus", 0);
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
