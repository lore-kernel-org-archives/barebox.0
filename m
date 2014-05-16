Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQ8-0007t0-Rl
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:49 +0200
Message-Id: <1400236258-17924-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400236258-17924-1-git-send-email-s.hauer@pengutronix.de>
References: <1400236258-17924-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] ARM: i.MX: iim: introduce private data struct
To: barebox@lists.infradead.org

Instead of duplicating data shared between the banks in a bank
specific struct, use a iim struct and a bank struct.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 70 +++++++++++++++++++++++++++++--------------------
 1 file changed, 42 insertions(+), 28 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 8e37cd7..95db531 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -30,16 +30,25 @@
 #include <mach/iim.h>
 
 #define DRIVERNAME	"imx_iim"
+#define IIM_NUM_BANKS	8
 
 static int iim_write_enable;
 static int iim_sense_enable;
 
+struct iim_priv;
+
+struct iim_bank {
+	struct cdev cdev;
+	void __iomem *bankbase;
+	int bank;
+	struct iim_priv *iim;
+};
+
 struct iim_priv {
 	struct cdev cdev;
 	void __iomem *base;
 	void __iomem *bankbase;
-	int bank;
-	int banksize;
+	struct iim_bank *bank[IIM_NUM_BANKS];
 };
 
 static int do_fuse_sense(void __iomem *reg_base, unsigned int bank,
@@ -88,22 +97,23 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 		loff_t offset, ulong flags)
 {
 	ulong size, i;
-	struct iim_priv *priv = cdev->priv;
+	struct iim_bank *bank = container_of(cdev, struct iim_bank, cdev);
+	struct iim_priv *iim = bank->iim;
 
-	size = min((loff_t)count, priv->banksize - offset);
+	size = min((loff_t)count, 32 - offset);
 	if (iim_sense_enable) {
 		for (i = 0; i < size; i++) {
 			int row_val;
 
-			row_val = do_fuse_sense(priv->base,
-						priv->bank, offset + i);
+			row_val = do_fuse_sense(iim->base,
+						bank->bank, offset + i);
 			if (row_val < 0)
 				return row_val;
 			((u8 *)buf)[i] = (u8)row_val;
 		}
 	} else {
 		for (i = 0; i < size; i++)
-			((u8 *)buf)[i] = ((u8 *)priv->bankbase)[(offset+i)*4];
+			((u8 *)buf)[i] = ((u8 *)bank->bankbase)[(offset+i)*4];
 	}
 
 	return size;
@@ -173,22 +183,23 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 		loff_t offset, ulong flags)
 {
 	ulong size, i;
-	struct iim_priv *priv = cdev->priv;
+	struct iim_bank *bank = container_of(cdev, struct iim_bank, cdev);
+	struct iim_priv *iim = bank->iim;
 
-	size = min((loff_t)count, priv->banksize - offset);
+	size = min((loff_t)count, 32 - offset);
 
 	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW) && iim_write_enable) {
 		for (i = 0; i < size; i++) {
 			int ret;
 
-			ret = do_fuse_blow(priv->base, priv->bank,
+			ret = do_fuse_blow(iim->base, bank->bank,
 					   offset + i, ((u8 *)buf)[i]);
 			if (ret < 0)
 				return ret;
 		}
 	} else {
 		for (i = 0; i < size; i++)
-			((u8 *)priv->bankbase)[(offset+i)*4] = ((u8 *)buf)[i];
+			((u8 *)bank->bankbase)[(offset+i)*4] = ((u8 *)buf)[i];
 	}
 
 	return size;
@@ -200,26 +211,25 @@ static struct file_operations imx_iim_ops = {
 	.lseek	= dev_lseek_default,
 };
 
-static int imx_iim_add_bank(struct device_d *dev, void __iomem *base, int num)
+static int imx_iim_add_bank(struct iim_priv *iim, int num)
 {
-	struct iim_priv *priv;
+	struct iim_bank *bank;
 	struct cdev *cdev;
 
-	priv = xzalloc(sizeof (*priv));
+	bank = xzalloc(sizeof (*bank));
 
-	priv->base	= base;
-	priv->bankbase	= priv->base + 0x800 + 0x400 * num;
-	priv->bank	= num;
-	priv->banksize	= 32;
-	cdev = &priv->cdev;
-	cdev->dev	= dev;
+	bank->bankbase	= iim->base + 0x800 + 0x400 * num;
+	bank->bank	= num;
+	bank->iim	= iim;
+	cdev = &bank->cdev;
 	cdev->ops	= &imx_iim_ops;
-	cdev->priv	= priv;
 	cdev->size	= 32;
 	cdev->name	= asprintf(DRIVERNAME "_bank%d", num);
 	if (cdev->name == NULL)
 		return -ENOMEM;
 
+	iim->bank[num] = bank;
+
 	return devfs_create(cdev);
 }
 
@@ -273,18 +283,22 @@ static inline void imx_iim_init_dt(struct device_d *dev)
 
 static int imx_iim_probe(struct device_d *dev)
 {
-	int i;
-	void __iomem *base;
+	struct iim_priv *iim;
+	int i, ret;
+
+	iim = xzalloc(sizeof(*iim));
 
-	base = dev_request_mem_region(dev, 0);
-	if (!base)
+	iim->base = dev_request_mem_region(dev, 0);
+	if (!iim->base)
 		return -EBUSY;
 
-	for (i = 0; i < 8; i++) {
-		imx_iim_add_bank(dev, base, i);
+	for (i = 0; i < IIM_NUM_BANKS; i++) {
+		ret = imx_iim_add_bank(iim, i);
+		if (ret)
+			return ret;
 	}
 
-	imx_iim_init_dt(dev);
+	imx_iim_init_dt(dev, iim);
 
 	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW))
 		dev_add_param_bool(dev, "permanent_write_enable",
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
