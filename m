Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQN-0007vE-K2
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:57 +0200
Message-Id: <1400236258-17924-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] ARM: i.MX: iim: make fuse blowing work on i.MX5
To: barebox@lists.infradead.org

The i.MX5 iim has an additional bit in the CCM module which
enables the supply. Add support for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 64 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index dba416a..e87f5bc 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -28,6 +28,9 @@
 #include <io.h>
 
 #include <mach/iim.h>
+#include <mach/imx51-regs.h>
+#include <mach/imx53-regs.h>
+#include <mach/clock-imx51_53.h>
 
 #define DRIVERNAME	"imx_iim"
 #define IIM_NUM_BANKS	8
@@ -49,6 +52,11 @@ struct iim_priv {
 	struct iim_bank *bank[IIM_NUM_BANKS];
 	int write_enable;
 	int sense_enable;
+	void (*supply)(int enable);
+};
+
+struct imx_iim_drvdata {
+	void (*supply)(int enable);
 };
 
 static struct iim_priv *imx_iim;
@@ -192,10 +200,14 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 {
 	ulong size, i;
 	struct iim_bank *bank = container_of(cdev, struct iim_bank, cdev);
+	struct iim_priv *iim = bank->iim;
 
 	size = min((loff_t)count, 32 - offset);
 
 	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW) && bank->iim->write_enable) {
+		if (iim->supply)
+			iim->supply(1);
+
 		for (i = 0; i < size; i++) {
 			int ret;
 
@@ -203,6 +215,10 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 			if (ret < 0)
 				return ret;
 		}
+
+		if (iim->supply)
+			iim->supply(0);
+
 	} else {
 		for (i = 0; i < size; i++)
 			((u8 *)bank->bankbase)[(offset+i)*4] = ((u8 *)buf)[i];
@@ -291,12 +307,18 @@ static int imx_iim_probe(struct device_d *dev)
 {
 	struct iim_priv *iim;
 	int i, ret;
+	struct imx_iim_drvdata *drvdata = NULL;
 
 	if (imx_iim)
 		return -EBUSY;
 
 	iim = xzalloc(sizeof(*iim));
 
+	dev_get_drvdata(dev, (unsigned long *)&drvdata);
+
+	if (drvdata && drvdata->supply)
+		iim->supply = drvdata->supply;
+
 	imx_iim = iim;
 
 	strcpy(iim->dev.name, "iim");
@@ -328,9 +350,51 @@ static int imx_iim_probe(struct device_d *dev)
 	return 0;
 }
 
+static void imx5_iim_supply(void __iomem *ccm_base, int enable)
+{
+	uint32_t val;
+
+	val = readl(ccm_base + MX5_CCM_CGPR);
+
+	if (enable)
+		val |= 1 << 4;
+	else
+		val &= ~(1 << 4);
+
+	writel(val, ccm_base + MX5_CCM_CGPR);
+}
+
+static void imx51_iim_supply(int enable)
+{
+	imx5_iim_supply((void __iomem *)MX51_CCM_BASE_ADDR, enable);
+}
+
+static void imx53_iim_supply(int enable)
+{
+	imx5_iim_supply((void __iomem *)MX53_CCM_BASE_ADDR, enable);
+}
+
+static struct imx_iim_drvdata imx27_drvdata = {
+};
+
+static struct imx_iim_drvdata imx51_drvdata = {
+	.supply = imx51_iim_supply,
+};
+
+static struct imx_iim_drvdata imx53_drvdata = {
+	.supply = imx53_iim_supply,
+};
+
 static __maybe_unused struct of_device_id imx_iim_dt_ids[] = {
 	{
+		.compatible = "fsl,imx53-iim",
+		.data = (unsigned long)&imx53_drvdata,
+	}, {
+		.compatible = "fsl,imx51-iim",
+		.data = (unsigned long)&imx51_drvdata,
+	}, {
 		.compatible = "fsl,imx27-iim",
+		.data = (unsigned long)&imx27_drvdata,
 	}, {
 		/* sentinel */
 	}
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
