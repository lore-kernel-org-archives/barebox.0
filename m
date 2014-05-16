Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlHwk-00010Y-Gg
 for barebox@lists.infradead.org; Fri, 16 May 2014 13:13:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 15:12:43 +0200
Message-Id: <1400245963-1811-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: iim: Add regulator support
To: barebox@lists.infradead.org

The voltage for programming the fuses is external to the SoC and
on some boards this is controllable with a regulator, so add regulator
support to the iim driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 60 ++++++++++++++++++++++++++++++++++++-------------
 1 file changed, 44 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 294f41c..16ba678 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -26,6 +26,8 @@
 #include <malloc.h>
 #include <of.h>
 #include <io.h>
+#include <regulator.h>
+#include <linux/err.h>
 
 #include <mach/iim.h>
 #include <mach/imx51-regs.h>
@@ -53,6 +55,7 @@ struct iim_priv {
 	int write_enable;
 	int sense_enable;
 	void (*supply)(int enable);
+	struct regulator *fuse_supply;
 };
 
 struct imx_iim_drvdata {
@@ -139,7 +142,7 @@ int imx_iim_read(unsigned int banknum, int offset, void *buf, int count)
 	return imx_iim_cdev_read(&bank->cdev, buf, count, offset, 0);
 }
 
-static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned int row, u8 value)
+static int imx_iim_fuse_blow_one(struct iim_bank *bank, unsigned int row, u8 value)
 {
 	struct iim_priv *iim = bank->iim;
 	void __iomem *reg_base = iim->base;
@@ -195,30 +198,53 @@ out:
 	return ret;
 }
 
+static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned offset, const void *buf,
+		unsigned size)
+{
+	struct iim_priv *iim = bank->iim;
+	int ret, i;
+
+	if (IS_ERR(iim->fuse_supply)) {
+		iim->fuse_supply = regulator_get(iim->dev.parent, "vdd-fuse");
+		dev_info(iim->dev.parent, "regul: %p\n", iim->fuse_supply);
+		if (IS_ERR(iim->fuse_supply))
+			return PTR_ERR(iim->fuse_supply);
+	}
+
+	ret = regulator_enable(iim->fuse_supply);
+	if (ret < 0)
+		return ret;
+
+	if (iim->supply)
+		iim->supply(1);
+
+	for (i = 0; i < size; i++) {
+		ret = imx_iim_fuse_blow_one(bank, offset + i, ((u8 *)buf)[i]);
+		if (ret < 0)
+			goto err_out;
+	}
+
+	if (iim->supply)
+		iim->supply(0);
+
+	ret = 0;
+
+err_out:
+	regulator_disable(iim->fuse_supply);
+
+	return ret;
+}
+
 static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t count,
 		loff_t offset, ulong flags)
 {
 	ulong size, i;
 	struct iim_bank *bank = container_of(cdev, struct iim_bank, cdev);
-	struct iim_priv *iim = bank->iim;
 
 	size = min((loff_t)count, 32 - offset);
 
 	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW) && bank->iim->write_enable) {
-		if (iim->supply)
-			iim->supply(1);
-
-		for (i = 0; i < size; i++) {
-			int ret;
-
-			ret = imx_iim_fuse_blow(bank, offset + i, ((u8 *)buf)[i]);
-			if (ret < 0)
-				return ret;
-		}
-
-		if (iim->supply)
-			iim->supply(0);
-
+		return imx_iim_fuse_blow(bank, offset, buf, size);
 	} else {
 		for (i = 0; i < size; i++)
 			((u8 *)bank->bankbase)[(offset+i)*4] = ((u8 *)buf)[i];
@@ -382,6 +408,8 @@ static int imx_iim_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
+	iim->fuse_supply = ERR_PTR(-ENODEV);
+
 	iim->base = dev_request_mem_region(dev, 0);
 	if (!iim->base)
 		return -EBUSY;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
