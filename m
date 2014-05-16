Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQ8-0007t4-Rt
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:53 +0200
Message-Id: <1400236258-17924-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] ARM: i.MX: iim: pass private data struct to
 imx_iim_fuse_sense
To: barebox@lists.infradead.org

To make all struct members available and to reduce the argument
count.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 72ed3c0..ea36f84 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -52,16 +52,12 @@ struct iim_priv {
 	struct iim_bank *bank[IIM_NUM_BANKS];
 };
 
-static int imx_iim_fuse_sense(void __iomem *reg_base, unsigned int bank,
-		unsigned int row)
+static int imx_iim_fuse_sense(struct iim_bank *bank, unsigned int row)
 {
+	struct iim_priv *iim = bank->iim;
+	void __iomem *reg_base = iim->base;
 	u8 err, stat;
 
-	if (bank > 7) {
-		printf("%s: invalid bank number\n", __func__);
-		return -EINVAL;
-	}
-
 	if (row > 255) {
 		printf("%s: invalid row index\n", __func__);
 		return -EINVAL;
@@ -72,7 +68,7 @@ static int imx_iim_fuse_sense(void __iomem *reg_base, unsigned int bank,
 	writeb(0xfe, reg_base + IIM_ERR);
 
 	/* upper and lower address halves */
-	writeb((bank << 3) | (row >> 5), reg_base + IIM_UA);
+	writeb((bank->bank << 3) | (row >> 5), reg_base + IIM_UA);
 	writeb((row << 3) & 0xf8, reg_base + IIM_LA);
 
 	/* start fuse sensing */
@@ -99,15 +95,13 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 {
 	ulong size, i;
 	struct iim_bank *bank = container_of(cdev, struct iim_bank, cdev);
-	struct iim_priv *iim = bank->iim;
 
 	size = min((loff_t)count, 32 - offset);
 	if (iim_sense_enable) {
 		for (i = 0; i < size; i++) {
 			int row_val;
 
-			row_val = imx_iim_fuse_sense(iim->base,
-						bank->bank, offset + i);
+			row_val = imx_iim_fuse_sense(bank, offset + i);
 			if (row_val < 0)
 				return row_val;
 			((u8 *)buf)[i] = (u8)row_val;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
