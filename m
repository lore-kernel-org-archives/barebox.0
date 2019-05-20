Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmxU-0004jP-Ck
 for barebox@lists.infradead.org; Mon, 20 May 2019 18:24:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id s11so7607081pfm.12
 for <barebox@lists.infradead.org>; Mon, 20 May 2019 11:24:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 May 2019 11:24:01 -0700
Message-Id: <20190520182402.12753-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190520182402.12753-1-andrew.smirnov@gmail.com>
References: <20190520182402.12753-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/5] usb: imx-usb-phy: Disable charger detect during
 initialization
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

I can't find any erratas this is in refernce to, but apparently
external changer detector needs to be disabled to prevent poor USB
data signal quality. The problem manifest itself as a intermittent USB
transfer corruption that happens to some device under and only under
specific circumstances.

In my case the failure was observed with Transcent SD/micro-SD card
reader (05e3:0745 Genesys Logic, Inc. Logilink CR0012) when connected
directly to front panel USB of ZII RDU2 board (the problem would go
away if device was conntecte via a hub/USB-analyzer/male-female
type A extender cable).

Note that this fix is present in Linux kernel as well as some
abandoned Barebox code removed in the next patch.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/imx/imx-usb-phy.c | 37 +++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 306f84374..d4562285c 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -24,6 +24,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <stmp-device.h>
+#include <mfd/syscon.h>
 
 #define HW_USBPHY_PWD				0x00
 #define HW_USBPHY_TX				0x10
@@ -35,12 +36,19 @@
 #define BM_USBPHY_CTRL_ENUTMILEVEL2		BIT(14)
 #define BM_USBPHY_CTRL_ENHOSTDISCONDETECT	BIT(1)
 
+#define ANADIG_USB1_CHRG_DETECT_SET		0x1b4
+#define ANADIG_USB2_CHRG_DETECT_SET		0x214
+#define ANADIG_USB1_CHRG_DETECT_EN_B		BIT(20)
+#define ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B	BIT(19)
+
 struct imx_usbphy {
 	struct usb_phy usb_phy;
 	struct phy *phy;
 	void __iomem *base;
+	void __iomem *anatop;
 	struct clk *clk;
 	struct phy_provider *provider;
+	int port_id;
 };
 
 static int imx_usbphy_phy_init(struct phy *phy)
@@ -61,6 +69,19 @@ static int imx_usbphy_phy_init(struct phy *phy)
 	writel(BM_USBPHY_CTRL_ENUTMILEVEL3 | BM_USBPHY_CTRL_ENUTMILEVEL2,
 	       imxphy->base + HW_USBPHY_CTRL_SET);
 
+	if (imxphy->anatop) {
+		unsigned int reg = imxphy->port_id ?
+			ANADIG_USB1_CHRG_DETECT_SET :
+			ANADIG_USB2_CHRG_DETECT_SET;
+		/*
+		 * The external charger detector needs to be disabled,
+		 * or the signal at DP will be poor
+		 */
+		writel(ANADIG_USB1_CHRG_DETECT_EN_B |
+		       ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B,
+		       imxphy->anatop + reg);
+	}
+
 	return 0;
 }
 
@@ -113,11 +134,27 @@ static const struct phy_ops imx_phy_ops = {
 static int imx_usbphy_probe(struct device_d *dev)
 {
 	struct resource *iores;
+	struct device_node *np = dev->device_node;
 	int ret;
 	struct imx_usbphy *imxphy;
 
 	imxphy = xzalloc(sizeof(*imxphy));
 
+	ret = of_alias_get_id(np, "usbphy");
+	if (ret < 0) {
+		dev_dbg(dev, "failed to get alias id, errno %d\n", ret);
+		goto err_free;
+	}
+	imxphy->port_id = ret;
+
+	if (of_get_property(np, "fsl,anatop", NULL)) {
+		imxphy->anatop =
+			syscon_base_lookup_by_phandle(np, "fsl,anatop");
+		ret = PTR_ERR_OR_ZERO(imxphy->anatop);
+		if (ret)
+			goto err_free;
+	}
+
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores)) {
 		ret = PTR_ERR(iores);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
