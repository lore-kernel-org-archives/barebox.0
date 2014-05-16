Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQ8-0007t5-Rm
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:55 +0200
Message-Id: <1400236258-17924-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/11] ARM: i.MX: iim: move static variables into driver struct
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 4a94a68..decf735 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -32,9 +32,6 @@
 #define DRIVERNAME	"imx_iim"
 #define IIM_NUM_BANKS	8
 
-static int iim_write_enable;
-static int iim_sense_enable;
-
 struct iim_priv;
 
 struct iim_bank {
@@ -50,6 +47,8 @@ struct iim_priv {
 	void __iomem *base;
 	void __iomem *bankbase;
 	struct iim_bank *bank[IIM_NUM_BANKS];
+	int write_enable;
+	int sense_enable;
 };
 
 static int imx_iim_fuse_sense(struct iim_bank *bank, unsigned int row)
@@ -97,7 +96,7 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	struct iim_bank *bank = container_of(cdev, struct iim_bank, cdev);
 
 	size = min((loff_t)count, 32 - offset);
-	if (iim_sense_enable) {
+	if (bank->iim->sense_enable) {
 		for (i = 0; i < size; i++) {
 			int row_val;
 
@@ -178,7 +177,7 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 
 	size = min((loff_t)count, 32 - offset);
 
-	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW) && iim_write_enable) {
+	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW) && bank->iim->write_enable) {
 		for (i = 0; i < size; i++) {
 			int ret;
 
@@ -298,10 +297,10 @@ static int imx_iim_probe(struct device_d *dev)
 
 	if (IS_ENABLED(CONFIG_IMX_IIM_FUSE_BLOW))
 		dev_add_param_bool(&iim->dev, "permanent_write_enable",
-			NULL, NULL, &iim_write_enable, NULL);
+			NULL, NULL, &iim->write_enable, NULL);
 
 	dev_add_param_bool(&iim->dev, "explicit_sense_enable",
-			NULL, NULL, &iim_sense_enable, NULL);
+			NULL, NULL, &iim->sense_enable, NULL);
 
 	return 0;
 }
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
