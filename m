Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXkNy-0000Nn-W7
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 11:12:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Nov 2019 12:12:26 +0100
Message-Id: <20191121111226.5036-5-s.hauer@pengutronix.de>
In-Reply-To: <20191121111226.5036-1-s.hauer@pengutronix.de>
References: <20191121111226.5036-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] usb: musb: use usb_register_otg_device()
To: Barebox List <barebox@lists.infradead.org>

We now have usb_register_otg_device() to register an "otg" device. Use
it and drop the custom code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/musb/Kconfig     |  1 +
 drivers/usb/musb/musb_dsps.c | 44 ++++++------------------------------
 2 files changed, 8 insertions(+), 37 deletions(-)

diff --git a/drivers/usb/musb/Kconfig b/drivers/usb/musb/Kconfig
index b795f30275..127d6d1955 100644
--- a/drivers/usb/musb/Kconfig
+++ b/drivers/usb/musb/Kconfig
@@ -6,6 +6,7 @@ if USB_MUSB
 config USB_MUSB_DSPS
 	tristate
 	select OFDEVICE
+	select USB_OTGDEV
 
 config USB_MUSB_AM335X
 	tristate "AM335x USB support"
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 5fe3bcb7cd..3b76b6cc61 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -303,50 +303,20 @@ static int get_musb_port_mode(struct device_d *dev)
 	}
 }
 
-static int dsps_set_mode(struct param_d *param, void *priv)
+static int dsps_set_mode(void *ctx, enum usb_dr_mode mode)
 {
-	struct dsps_glue *glue = priv;
+	struct dsps_glue *glue = ctx;
 
-	if (glue->pdata.mode != MUSB_PORT_MODE_DUAL_ROLE)
-		return -EBUSY;
-
-	switch (glue->otgmode) {
-	case 0:
-	default:
-		return -EINVAL;
-	case 1:
+	if (mode == USB_DR_MODE_HOST)
 		glue->pdata.mode = MUSB_PORT_MODE_HOST;
-		break;
-	case 2:
+	else if (mode == USB_DR_MODE_PERIPHERAL)
 		glue->pdata.mode = MUSB_PORT_MODE_GADGET;
-		break;
-	}
+	else
+		return -EINVAL;
 
 	return musb_init_controller(&glue->musb, &glue->pdata);
 }
 
-static const char *dsps_mode_names[] = {
-	"otg", "host", "peripheral"
-};
-
-static int dsps_register_otg_device(struct dsps_glue *glue)
-{
-	int ret;
-
-	dev_set_name(&glue->otg_dev, "otg");
-	glue->otg_dev.id = DEVICE_ID_DYNAMIC,
-	glue->otg_dev.parent = glue->dev;
-
-	ret = register_device(&glue->otg_dev);
-	if (ret)
-		return ret;
-
-	dev_add_param_enum(&glue->otg_dev, "mode",
-			dsps_set_mode, NULL, &glue->otgmode,
-			dsps_mode_names, ARRAY_SIZE(dsps_mode_names), glue);
-	return 0;
-}
-
 static int dsps_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -405,7 +375,7 @@ static int dsps_probe(struct device_d *dev)
 	config->multipoint = of_property_read_bool(dn, "mentor,multipoint");
 
 	if (pdata->mode == MUSB_PORT_MODE_DUAL_ROLE) {
-		ret = dsps_register_otg_device(glue);
+		ret = usb_register_otg_device(dev, dsps_set_mode, glue);
 		if (ret)
 			return ret;
 		return 0;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
