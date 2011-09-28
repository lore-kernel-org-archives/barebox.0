Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8qGo-0005jU-C5
	for barebox@lists.infradead.org; Wed, 28 Sep 2011 09:17:39 +0000
Received: by mail-bw0-f49.google.com with SMTP id t2so9378109bka.36
	for <barebox@lists.infradead.org>; Wed, 28 Sep 2011 02:17:38 -0700 (PDT)
From: Paul Fertser <fercerpav@gmail.com>
Date: Wed, 28 Sep 2011 13:16:58 +0400
Message-Id: <1317201418-3290-2-git-send-email-fercerpav@gmail.com>
In-Reply-To: <1317201418-3290-1-git-send-email-fercerpav@gmail.com>
References: <1317201418-3290-1-git-send-email-fercerpav@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mach-imx: iim: cosmetic changes to the code to make it
	easier to follow
To: barebox@lists.infradead.org
Cc: Paul Fertser <fercerpav@gmail.com>

This brings consistency to the way variables are named and used
according to the Freescale documentation. Also, since user is
supplying row indicies, and not offsets, it's reasonable to amend the
error message accordingly.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 arch/arm/mach-imx/iim.c |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index ca89710..85bcfdb 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -51,8 +51,8 @@ static int do_fuse_sense(void __iomem *reg_base, unsigned int bank,
 		return -EINVAL;
 	}
 
-	if (row > 0x3ff) {
-		printf("%s: invalid row offset\n", __func__);
+	if (row > 255) {
+		printf("%s: invalid row index\n", __func__);
 		return -EINVAL;
 	}
 
@@ -61,8 +61,8 @@ static int do_fuse_sense(void __iomem *reg_base, unsigned int bank,
 	writeb(0xfe, reg_base + IIM_ERR);
 
 	/* upper and lower address halves */
-	writeb((bank << 3) | (row >> 7), reg_base + IIM_UA);
-	writeb((row << 1) & 0xf8, reg_base + IIM_LA);
+	writeb((bank << 3) | (row >> 5), reg_base + IIM_UA);
+	writeb((row << 3) & 0xf8, reg_base + IIM_LA);
 
 	/* start fuse sensing */
 	writeb(0x08, reg_base + IIM_FCTL);
@@ -100,7 +100,7 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 			int row_val;
 
 			row_val = do_fuse_sense(priv->base,
-				priv->bank, (offset + i) * 4);
+						priv->bank, offset + i);
 			if (row_val < 0)
 				return row_val;
 			((u8 *)buf)[i] = (u8)row_val;
@@ -125,8 +125,8 @@ static int do_fuse_blow(void __iomem *reg_base, unsigned int bank,
 		return -EINVAL;
 	}
 
-	if (row > 0x3ff) {
-		printf("%s: invalid row offset\n", __func__);
+	if (row > 255) {
+		printf("%s: invalid row index\n", __func__);
 		return -EINVAL;
 	}
 
@@ -138,14 +138,14 @@ static int do_fuse_blow(void __iomem *reg_base, unsigned int bank,
 	writeb(0xaa, reg_base + IIM_PREG_P);
 
 	/* upper half address register */
-	writeb((bank << 3) | (row >> 7), reg_base + IIM_UA);
+	writeb((bank << 3) | (row >> 5), reg_base + IIM_UA);
 
 	for (bit = 0; bit < 8; bit++) {
 		if (((value >> bit) & 1) == 0)
 			continue;
 
 		/* lower half address register */
-		writeb(((row << 1) | bit), reg_base + IIM_LA);
+		writeb(((row << 3) | bit), reg_base + IIM_LA);
 
 		/* start fuse programing */
 		writeb(0x71, reg_base + IIM_FCTL);
@@ -193,7 +193,7 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 			int ret;
 
 			ret = do_fuse_blow(priv->base, priv->bank,
-					(offset + i) * 4, ((u8 *)buf)[i]);
+					   offset + i, ((u8 *)buf)[i]);
 			if (ret < 0)
 				return ret;
 		}
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
