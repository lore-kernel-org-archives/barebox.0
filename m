Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3LgV-0006C6-Kg
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 09:55:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 11:55:11 +0200
Message-Id: <1434102911-1063-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: MXS: ocotp: Register a separate device
To: Barebox List <barebox@lists.infradead.org>

With device tree the device name starts with a number, so
the device parameters are not accessible on the shell. Register
a separate device for the ocotp to make the permanent_write_enable
variable accessible again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/ocotp.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 2029b90..0075845 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -43,6 +43,7 @@
 #define OCOTP_WORD_OFFSET		0x20
 
 struct ocotp_priv {
+	struct device_d dev;
 	struct cdev cdev;
 	void __iomem *base;
 	unsigned int write_enable;
@@ -194,13 +195,19 @@ static int mxs_ocotp_probe(struct device_d *dev)
 	priv->cdev.size = cpu_is_mx23() ? 128 : 160;
 	priv->cdev.name = DRIVERNAME;
 
+	strcpy(priv->dev.name, "ocotp");
+	priv->dev.parent = dev;
+	err = register_device(&priv->dev);
+	if (err)
+		return err;
+
 	err = devfs_create(&priv->cdev);
 	if (err < 0)
 		return err;
 
 	if (IS_ENABLED(CONFIG_MXS_OCOTP_WRITABLE)) {
 		mxs_ocotp_ops.write = mxs_ocotp_cdev_write;
-		dev_add_param_bool(dev, "permanent_write_enable",
+		dev_add_param_bool(&priv->dev, "permanent_write_enable",
 			NULL, NULL, &priv->write_enable, NULL);
 	}
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
