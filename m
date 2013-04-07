Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MP-DN
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:51 +0200
Message-Id: <1365343255-26497-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/21] ARM: i.MX: iim: Use dev_add_param_bool for parameters
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 65 +++++++++++--------------------------------------
 1 file changed, 14 insertions(+), 51 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 69ddc4d..ce2bbaf 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -33,6 +33,9 @@
 
 static unsigned long mac_addr_base;
 
+static int iim_write_enable;
+static int iim_sense_enable;
+
 struct iim_priv {
 	struct cdev cdev;
 	void __iomem *base;
@@ -88,14 +91,9 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 {
 	ulong size, i;
 	struct iim_priv *priv = cdev->priv;
-	const char *sense_param;
-	unsigned long explicit_sense = 0;
-
-	if ((sense_param = dev_get_param(cdev->dev, "explicit_sense_enable")))
-		explicit_sense = simple_strtoul(sense_param, NULL, 0);
 
 	size = min((loff_t)count, priv->banksize - offset);
-	if (explicit_sense) {
+	if (iim_sense_enable) {
 		for (i = 0; i < size; i++) {
 			int row_val;
 
@@ -113,7 +111,6 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	return size;
 }
 
-#ifdef CONFIG_IMX_IIM_FUSE_BLOW
 static int do_fuse_blow(void __iomem *reg_base, unsigned int bank,
 		unsigned int row, u8 value)
 {
@@ -173,22 +170,16 @@ out:
 	writeb(0, reg_base + IIM_PREG_P);
 	return ret;
 }
-#endif /* CONFIG_IMX_IIM_FUSE_BLOW */
 
 static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t count,
 		loff_t offset, ulong flags)
 {
 	ulong size, i;
 	struct iim_priv *priv = cdev->priv;
-	const char *write_param;
-	unsigned int blow_enable = 0;
-
-	if ((write_param = dev_get_param(cdev->dev, "permanent_write_enable")))
-		blow_enable = simple_strtoul(write_param, NULL, 0);
 
 	size = min((loff_t)count, priv->banksize - offset);
-#ifdef CONFIG_IMX_IIM_FUSE_BLOW
-	if (blow_enable) {
+
+	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW) && iim_write_enable) {
 		for (i = 0; i < size; i++) {
 			int ret;
 
@@ -197,9 +188,7 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 			if (ret < 0)
 				return ret;
 		}
-	} else
-#endif /* CONFIG_IMX_IIM_FUSE_BLOW */
-	{
+	} else {
 		for (i = 0; i < size; i++)
 			((u8 *)priv->bankbase)[(offset+i)*4] = ((u8 *)buf)[i];
 	}
@@ -213,21 +202,6 @@ static struct file_operations imx_iim_ops = {
 	.lseek	= dev_lseek_default,
 };
 
-static int imx_iim_blow_enable_set(struct device_d *dev, struct param_d *param,
-		const char *val)
-{
-	unsigned long blow_enable;
-
-	if (val == NULL)
-		return -EINVAL;
-
-	blow_enable = simple_strtoul(val, NULL, 0);
-	if (blow_enable > 1)
-		return -EINVAL;
-
-	return dev_param_set_generic(dev, param, blow_enable ? "1" : "0");
-}
-
 static int imx_iim_add_bank(struct device_d *dev, void __iomem *base, int num)
 {
 	struct iim_priv *priv;
@@ -254,7 +228,6 @@ static int imx_iim_add_bank(struct device_d *dev, void __iomem *base, int num)
 static int imx_iim_probe(struct device_d *dev)
 {
 	struct imx_iim_platform_data *pdata = dev->platform_data;
-	int err;
 	int i;
 	void __iomem *base;
 
@@ -267,23 +240,13 @@ static int imx_iim_probe(struct device_d *dev)
 		imx_iim_add_bank(dev, base, i);
 	}
 
-#ifdef CONFIG_IMX_IIM_FUSE_BLOW
-	err = dev_add_param(dev, "permanent_write_enable",
-			imx_iim_blow_enable_set, NULL, 0);
-	if (err < 0)
-		return err;
-	err = dev_set_param(dev, "permanent_write_enable", "0");
-	if (err < 0)
-		return err;
-#endif /* CONFIG_IMX_IIM_FUSE_BLOW */
-
-	err = dev_add_param(dev, "explicit_sense_enable",
-			imx_iim_blow_enable_set, NULL, 0);
-	if (err < 0)
-		return err;
-	err = dev_set_param(dev, "explicit_sense_enable", "1");
-	if (err < 0)
-		return err;
+
+	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW))
+		dev_add_param_bool(dev, "permanent_write_enable",
+			NULL, NULL, &iim_write_enable, NULL);
+
+	dev_add_param_bool(dev, "explicit_sense_enable",
+			NULL, NULL, &iim_sense_enable, NULL);
 
 	return 0;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
