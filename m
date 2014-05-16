Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQ8-0007t3-Rp
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:51 +0200
Message-Id: <1400236258-17924-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] ARM: i.MX: iim: register iim device
To: barebox@lists.infradead.org

With devicetree devicenames start with numbers. Parameters on these
devices are not accessible since variables can't start with numbers.
Register a logical 'iim' device which makes the permanent_write_enable
and explicit_sense_enable parameters accessible again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index e2c971a..432e5d6 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -46,6 +46,7 @@ struct iim_bank {
 
 struct iim_priv {
 	struct cdev cdev;
+	struct device_d dev;
 	void __iomem *base;
 	void __iomem *bankbase;
 	struct iim_bank *bank[IIM_NUM_BANKS];
@@ -288,6 +289,13 @@ static int imx_iim_probe(struct device_d *dev)
 
 	iim = xzalloc(sizeof(*iim));
 
+	strcpy(iim->dev.name, "iim");
+	iim->dev.parent = dev;
+	iim->dev.id = DEVICE_ID_SINGLE;
+	ret = register_device(&iim->dev);
+	if (ret)
+		return ret;
+
 	iim->base = dev_request_mem_region(dev, 0);
 	if (!iim->base)
 		return -EBUSY;
@@ -301,10 +309,10 @@ static int imx_iim_probe(struct device_d *dev)
 	imx_iim_init_dt(dev, iim);
 
 	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW))
-		dev_add_param_bool(dev, "permanent_write_enable",
+		dev_add_param_bool(&iim->dev, "permanent_write_enable",
 			NULL, NULL, &iim_write_enable, NULL);
 
-	dev_add_param_bool(dev, "explicit_sense_enable",
+	dev_add_param_bool(&iim->dev, "explicit_sense_enable",
 			NULL, NULL, &iim_sense_enable, NULL);
 
 	return 0;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
