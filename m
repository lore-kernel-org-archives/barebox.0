Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MQ-Dl
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:55 +0200
Message-Id: <1365343255-26497-22-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/21] ARM: MXS: ocotp: Use dev_add_param_bool for parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/ocotp.c | 34 ++++------------------------------
 1 file changed, 4 insertions(+), 30 deletions(-)

diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index 84f38b5..dd98446 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -44,6 +44,7 @@
 struct ocotp_priv {
 	struct cdev cdev;
 	void __iomem *base;
+	unsigned int write_enable;
 };
 
 static int mxs_ocotp_wait_busy(struct ocotp_priv *priv)
@@ -103,18 +104,12 @@ static ssize_t mxs_ocotp_cdev_write(struct cdev *cdev, const void *buf, size_t c
 {
 	struct ocotp_priv *priv = cdev->priv;
 	void __iomem *base = priv->base;
-	const char *write_param;
-	unsigned int write_enabled = 0;
 	unsigned long old_hclk, aligned_offset;
 	int old_vddio, num_words, num_bytes, i, ret = 0;
 	u8 *work_buf;
 	u32 reg;
 
-	write_param = dev_get_param(cdev->dev, "permanent_write_enable");
-	if (write_param)
-		write_enabled = simple_strtoul(write_param, NULL, 0);
-
-	if (!write_param || !write_enabled)
+	if (!priv->write_enable)
 		return -EPERM;
 
 	/* we can only work on u32, so calc some helpers */
@@ -179,21 +174,6 @@ static struct file_operations mxs_ocotp_ops = {
 	.lseek	= dev_lseek_default,
 };
 
-static int mxs_ocotp_write_enable_set(struct device_d *dev, struct param_d *param,
-		const char *val)
-{
-	unsigned long write_enable;
-
-	if (!val)
-		return -EINVAL;
-
-	write_enable = simple_strtoul(val, NULL, 0);
-	if (write_enable > 1)
-		return -EINVAL;
-
-	return dev_param_set_generic(dev, param, write_enable ? "1" : "0");
-}
-
 static int mxs_ocotp_probe(struct device_d *dev)
 {
 	int err;
@@ -212,14 +192,8 @@ static int mxs_ocotp_probe(struct device_d *dev)
 
 	if (IS_ENABLED(CONFIG_MXS_OCOTP_WRITABLE)) {
 		mxs_ocotp_ops.write = mxs_ocotp_cdev_write;
-
-		err = dev_add_param(dev, "permanent_write_enable",
-				mxs_ocotp_write_enable_set, NULL, 0);
-		if (err < 0)
-			return err;
-		err = dev_set_param(dev, "permanent_write_enable", "0");
-		if (err < 0)
-			return err;
+		dev_add_param_bool(dev, "permanent_write_enable",
+			NULL, NULL, &priv->write_enable, NULL);
 	}
 
 	return 0;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
