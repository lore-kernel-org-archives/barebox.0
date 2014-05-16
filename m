Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQ8-0007t2-Ro
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:52 +0200
Message-Id: <1400236258-17924-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] ARM: i.MX: iim: pass private data struct to
 imx_iim_fuse_blow
To: barebox@lists.infradead.org

To make all struct members available and to reduce the argument
count.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 432e5d6..72ed3c0 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -120,17 +120,13 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	return size;
 }
 
-static int imx_iim_fuse_blow(void __iomem *reg_base, unsigned int bank,
-		unsigned int row, u8 value)
+static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned int row, u8 value)
 {
+	struct iim_priv *iim = bank->iim;
+	void __iomem *reg_base = iim->base;
 	int bit, ret = 0;
 	u8 err, stat;
 
-	if (bank > 7) {
-		printf("%s: invalid bank number\n", __func__);
-		return -EINVAL;
-	}
-
 	if (row > 255) {
 		printf("%s: invalid row index\n", __func__);
 		return -EINVAL;
@@ -144,7 +140,7 @@ static int imx_iim_fuse_blow(void __iomem *reg_base, unsigned int bank,
 	writeb(0xaa, reg_base + IIM_PREG_P);
 
 	/* upper half address register */
-	writeb((bank << 3) | (row >> 5), reg_base + IIM_UA);
+	writeb((bank->bank << 3) | (row >> 5), reg_base + IIM_UA);
 
 	for (bit = 0; bit < 8; bit++) {
 		if (((value >> bit) & 1) == 0)
@@ -167,7 +163,7 @@ static int imx_iim_fuse_blow(void __iomem *reg_base, unsigned int bank,
 		err = readb(reg_base + IIM_ERR);
 		if (err) {
 			printf("%s: bank %u, row %u, bit %d program error "
-					"(0x%02x)\n", __func__, bank, row, bit,
+					"(0x%02x)\n", __func__, bank->bank, row, bit,
 					err);
 			ret = -EIO;
 			goto out;
@@ -185,7 +181,6 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 {
 	ulong size, i;
 	struct iim_bank *bank = container_of(cdev, struct iim_bank, cdev);
-	struct iim_priv *iim = bank->iim;
 
 	size = min((loff_t)count, 32 - offset);
 
@@ -193,8 +188,7 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 		for (i = 0; i < size; i++) {
 			int ret;
 
-			ret = imx_iim_fuse_blow(iim->base, bank->bank,
-					   offset + i, ((u8 *)buf)[i]);
+			ret = imx_iim_fuse_blow(bank, offset + i, ((u8 *)buf)[i]);
 			if (ret < 0)
 				return ret;
 		}
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
