Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLVV-0007jQ-2m
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:59:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:59:37 +0200
Message-Id: <1311839985-11285-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
References: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/9] ARM i.MX: IIM rework
To: barebox@lists.infradead.org

The IIM module uses two drivers, one for the general IIM
module and one for the individual banks.
This patch turns this into a single driver to ease registration
of the resources. This changes the user visible behaviour in
the way that the explicit_sense_enable and permanent_write_enable
device parameters are no longer bank specific but for the
whole device. Also, the IIM module supports a maximum of
8 fuse banks, with these patch all of them are registered, even
if they are not present in a SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c |   99 +++++++++++++++++++++++------------------------
 1 files changed, 49 insertions(+), 50 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 0774ebb..1d23fd3 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -31,7 +31,15 @@
 
 static unsigned long mac_addr_base;
 
-static int do_fuse_sense(unsigned long reg_base, unsigned int bank,
+struct iim_priv {
+	struct cdev cdev;
+	void __iomem *base;
+	void __iomem *bankbase;
+	int bank;
+	int banksize;
+};
+
+static int do_fuse_sense(void __iomem *reg_base, unsigned int bank,
 		unsigned int row)
 {
 	u8 err, stat;
@@ -77,37 +85,34 @@ static ssize_t imx_iim_read(struct cdev *cdev, void *buf, size_t count,
 		ulong offset, ulong flags)
 {
 	ulong size, i;
-	struct device_d *dev = cdev->dev;
+	struct iim_priv *priv = cdev->priv;
 	const char *sense_param;
 	unsigned long explicit_sense = 0;
 
-	if (dev == NULL)
-		return -EINVAL;
-
-	if ((sense_param = dev_get_param(dev, "explicit_sense_enable")))
+	if ((sense_param = dev_get_param(cdev->dev, "explicit_sense_enable")))
 		explicit_sense = simple_strtoul(sense_param, NULL, 0);
 
-	size = min((ulong)count, dev->size - offset);
+	size = min((ulong)count, priv->banksize - offset);
 	if (explicit_sense) {
 		for (i = 0; i < size; i++) {
 			int row_val;
 
-			row_val = do_fuse_sense(dev->parent->map_base,
-				dev->id, (offset+i)*4);
+			row_val = do_fuse_sense(priv->base,
+				priv->bank, (offset + i) * 4);
 			if (row_val < 0)
 				return row_val;
 			((u8 *)buf)[i] = (u8)row_val;
 		}
 	} else {
 		for (i = 0; i < size; i++)
-			((u8 *)buf)[i] = ((u8 *)dev->map_base)[(offset+i)*4];
+			((u8 *)buf)[i] = ((u8 *)priv->bankbase)[(offset+i)*4];
 	}
 
 	return size;
 }
 
 #ifdef CONFIG_IMX_IIM_FUSE_BLOW
-static int do_fuse_blow(unsigned long reg_base, unsigned int bank,
+static int do_fuse_blow(void __iomem *reg_base, unsigned int bank,
 		unsigned int row, u8 value)
 {
 	int bit, ret = 0;
@@ -172,24 +177,21 @@ static ssize_t imx_iim_write(struct cdev *cdev, const void *buf, size_t count,
 		ulong offset, ulong flags)
 {
 	ulong size, i;
-	struct device_d *dev = cdev->dev;
+	struct iim_priv *priv = cdev->priv;
 	const char *write_param;
 	unsigned int blow_enable = 0;
 
-	if (dev == NULL)
-		return -EINVAL;
-
-	if ((write_param = dev_get_param(dev, "permanent_write_enable")))
+	if ((write_param = dev_get_param(cdev->dev, "permanent_write_enable")))
 		blow_enable = simple_strtoul(write_param, NULL, 0);
 
-	size = min((ulong)count, dev->size - offset);
+	size = min((ulong)count, priv->banksize - offset);
 #ifdef CONFIG_IMX_IIM_FUSE_BLOW
 	if (blow_enable) {
 		for (i = 0; i < size; i++) {
 			int ret;
 
-			ret = do_fuse_blow(dev->parent->map_base, dev->id,
-					(offset+i)*4, ((u8 *)buf)[i]);
+			ret = do_fuse_blow(priv->base, priv->bank,
+					(offset + i) * 4, ((u8 *)buf)[i]);
 			if (ret < 0)
 				return ret;
 		}
@@ -197,7 +199,7 @@ static ssize_t imx_iim_write(struct cdev *cdev, const void *buf, size_t count,
 #endif /* CONFIG_IMX_IIM_FUSE_BLOW */
 	{
 		for (i = 0; i < size; i++)
-			((u8 *)dev->map_base)[(offset+i)*4] = ((u8 *)buf)[i];
+			((u8 *)priv->bankbase)[(offset+i)*4] = ((u8 *)buf)[i];
 	}
 
 	return size;
@@ -224,38 +226,41 @@ static int imx_iim_blow_enable_set(struct device_d *dev, struct param_d *param,
 	return dev_param_set_generic(dev, param, blow_enable ? "1" : "0");
 }
 
-static int imx_iim_probe(struct device_d *dev)
-{
-	struct imx_iim_platform_data *pdata = dev->platform_data;
-
-	if (pdata)
-		mac_addr_base = pdata->mac_addr_base;
-
-	return 0;
-}
-
-static int imx_iim_bank_probe(struct device_d *dev)
+static int imx_iim_add_bank(struct device_d *dev, int num)
 {
+	struct iim_priv *priv;
 	struct cdev *cdev;
-	struct device_d *parent;
-	int err;
 
-	cdev = xzalloc(sizeof (struct cdev));
-	dev->priv = cdev;
+	priv = xzalloc(sizeof (*priv));
 
+	priv->base	= (void __iomem *)dev->map_base;
+	priv->bankbase	= priv->base + 0x800 + 0x400 * num;
+	priv->bank	= num;
+	priv->banksize	= 32;
+	cdev = &priv->cdev;
 	cdev->dev	= dev;
 	cdev->ops	= &imx_iim_ops;
-	cdev->size	= dev->size;
-	cdev->name	= asprintf(DRIVERNAME "_bank%d", dev->id);
+	cdev->priv	= priv;
+	cdev->size	= 32;
+	cdev->name	= asprintf(DRIVERNAME "_bank%d", num);
 	if (cdev->name == NULL)
 		return -ENOMEM;
 
-	parent = get_device_by_name(DRIVERNAME "0");
-	if (parent == NULL)
-		return -ENODEV;
-	err = dev_add_child(parent, dev);
-	if (err < 0)
-		return err;
+	return devfs_create(cdev);
+}
+
+static int imx_iim_probe(struct device_d *dev)
+{
+	struct imx_iim_platform_data *pdata = dev->platform_data;
+	int err;
+	int i;
+
+	if (pdata)
+		mac_addr_base = pdata->mac_addr_base;
+
+	for (i = 0; i < 8; i++) {
+		imx_iim_add_bank(dev, i);
+	}
 
 #ifdef CONFIG_IMX_IIM_FUSE_BLOW
 	err = dev_add_param(dev, "permanent_write_enable",
@@ -275,7 +280,7 @@ static int imx_iim_bank_probe(struct device_d *dev)
 	if (err < 0)
 		return err;
 
-	return devfs_create(cdev);
+	return 0;
 }
 
 static struct driver_d imx_iim_driver = {
@@ -283,15 +288,9 @@ static struct driver_d imx_iim_driver = {
 	.probe	= imx_iim_probe,
 };
 
-static struct driver_d imx_iim_bank_driver = {
-	.name	= DRIVERNAME "_bank",
-	.probe	= imx_iim_bank_probe,
-};
-
 static int imx_iim_init(void)
 {
 	register_driver(&imx_iim_driver);
-	register_driver(&imx_iim_bank_driver);
 
 	return 0;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
