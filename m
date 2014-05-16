Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQD-0007uK-KY
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:56 +0200
Message-Id: <1400236258-17924-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] ARM: i.MX: iim: don't make detour over cdev API
To: barebox@lists.infradead.org

imx_iim_read is a iim internal function, so access the
internal functions rather than using the cdev API.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 41 +++++++++++++++++++++++------------------
 1 file changed, 23 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index decf735..dba416a 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -51,6 +51,8 @@ struct iim_priv {
 	int sense_enable;
 };
 
+static struct iim_priv *imx_iim;
+
 static int imx_iim_fuse_sense(struct iim_bank *bank, unsigned int row)
 {
 	struct iim_priv *iim = bank->iim;
@@ -113,6 +115,22 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	return size;
 }
 
+int imx_iim_read(unsigned int banknum, int offset, void *buf, int count)
+{
+	struct iim_priv *iim = imx_iim;
+	struct iim_bank *bank;
+
+	if (!imx_iim)
+		return -ENODEV;
+
+	if (banknum > IIM_NUM_BANKS)
+		return -EINVAL;
+
+	bank = iim->bank[banknum];
+
+	return imx_iim_cdev_read(&bank->cdev, buf, count, offset, 0);
+}
+
 static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned int row, u8 value)
 {
 	struct iim_priv *iim = bank->iim;
@@ -274,8 +292,13 @@ static int imx_iim_probe(struct device_d *dev)
 	struct iim_priv *iim;
 	int i, ret;
 
+	if (imx_iim)
+		return -EBUSY;
+
 	iim = xzalloc(sizeof(*iim));
 
+	imx_iim = iim;
+
 	strcpy(iim->dev.name, "iim");
 	iim->dev.parent = dev;
 	iim->dev.id = DEVICE_ID_SINGLE;
@@ -326,21 +349,3 @@ static int imx_iim_init(void)
 	return 0;
 }
 coredevice_initcall(imx_iim_init);
-
-int imx_iim_read(unsigned int bank, int offset, void *buf, int count)
-{
-	struct cdev *cdev;
-	char *name = asprintf(DRIVERNAME "_bank%d", bank);
-	int ret;
-
-	cdev = cdev_open(name, O_RDONLY);
-	if (!cdev)
-		return -ENODEV;
-
-	ret = cdev_read(cdev, buf, count, offset, 0);
-
-	cdev_close(cdev);
-	free(name);
-
-	return ret;
-}
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
