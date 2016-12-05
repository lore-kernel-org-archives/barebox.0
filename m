Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDug2-0005eG-Gf
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 14:55:37 +0000
Received: by mail-pg0-x243.google.com with SMTP id e9so16634725pgc.1
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 06:55:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Dec 2016 06:54:39 -0800
Message-Id: <1480949684-18520-12-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/16] i.MX: iomuxv3: Use helper functions in iomux-v3.h
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Avoid code duplication by using helper functions from iomux-v3.h

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pinctrl/imx-iomux-v3.c | 38 ++++----------------------------------
 1 file changed, 4 insertions(+), 34 deletions(-)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 4b3f033..bc93140 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -31,46 +31,17 @@ struct imx_iomux_v3 {
 };
 
 static void __iomem *iomuxv3_base;
-static struct device_d *iomuxv3_dev;
 
-static void imx_iomuxv3_setup_single(void __iomem *base, struct device_d *dev,
-		u32 mux_reg, u32 conf_reg, u32 input_reg,
-		u32 mux_val, u32 conf_val, u32 input_val)
-{
-	dev_dbg(dev,
-		"mux: 0x%08x -> 0x%04x, conf: 0x%08x -> 0x%04x input: 0x%08x -> 0x%04x\n",
-		mux_val, mux_reg, conf_val, conf_reg, input_val, input_reg);
-
-	if (mux_reg)
-		writel(mux_val, base + mux_reg);
-	if (conf_reg)
-		writel(conf_val, base + conf_reg);
-	if (input_reg)
-		writel(input_val, base + input_reg);
-}
 
 /*
  * configures a single pad in the iomuxer
  */
 int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
 {
-	u32 mux_reg = (pad & MUX_CTRL_OFS_MASK) >> MUX_CTRL_OFS_SHIFT;
-	u32 mux_val = (pad & MUX_MODE_MASK) >> MUX_MODE_SHIFT;
-	u32 input_reg = (pad & MUX_SEL_INPUT_OFS_MASK) >> MUX_SEL_INPUT_OFS_SHIFT;
-	u32 input_val = (pad & MUX_SEL_INPUT_MASK) >> MUX_SEL_INPUT_SHIFT;
-	u32 conf_reg = (pad & MUX_PAD_CTRL_OFS_MASK) >> MUX_PAD_CTRL_OFS_SHIFT;
-	u32 conf_val = (pad & MUX_PAD_CTRL_MASK) >> MUX_PAD_CTRL_SHIFT;
-
 	if (!iomuxv3_base)
 		return -EINVAL;
 
-	if (conf_val & NO_PAD_CTRL)
-		conf_reg = 0;
-
-	imx_iomuxv3_setup_single(iomuxv3_base, iomuxv3_dev,
-			mux_reg, conf_reg, input_reg,
-			mux_val, conf_val, input_val);
-
+	imx_setup_pad(iomuxv3_base, pad);
 	return 0;
 }
 EXPORT_SYMBOL(mxc_iomux_v3_setup_pad);
@@ -140,9 +111,9 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
 		if (conf_val & IMX_DT_NO_PAD_CTL)
 			conf_reg = 0;
 
-		imx_iomuxv3_setup_single(iomux->base, iomux->pinctrl.dev,
-				mux_reg, conf_reg, input_reg,
-				mux_val, conf_val, input_val);
+		iomux_v3_setup_pad(iomux->base, 0,
+				   mux_reg, conf_reg, input_reg,
+				   mux_val, conf_val, input_val);
 	}
 
 	return 0;
@@ -183,7 +154,6 @@ static int imx_iomux_v3_probe(struct device_d *dev)
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	iomuxv3_base = IOMEM(iores->start);
-	iomuxv3_dev = dev;
 
 	if (IS_ENABLED(CONFIG_PINCTRL) && dev->device_node)
 		ret = imx_pinctrl_dt(dev, iomuxv3_base);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
