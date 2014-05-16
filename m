Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQ8-0007t1-Rk
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:50 +0200
Message-Id: <1400236258-17924-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] ARM: i.MX: iim: Add namespace to functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 95db531..e2c971a 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -51,7 +51,7 @@ struct iim_priv {
 	struct iim_bank *bank[IIM_NUM_BANKS];
 };
 
-static int do_fuse_sense(void __iomem *reg_base, unsigned int bank,
+static int imx_iim_fuse_sense(void __iomem *reg_base, unsigned int bank,
 		unsigned int row)
 {
 	u8 err, stat;
@@ -105,7 +105,7 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 		for (i = 0; i < size; i++) {
 			int row_val;
 
-			row_val = do_fuse_sense(iim->base,
+			row_val = imx_iim_fuse_sense(iim->base,
 						bank->bank, offset + i);
 			if (row_val < 0)
 				return row_val;
@@ -119,7 +119,7 @@ static ssize_t imx_iim_cdev_read(struct cdev *cdev, void *buf, size_t count,
 	return size;
 }
 
-static int do_fuse_blow(void __iomem *reg_base, unsigned int bank,
+static int imx_iim_fuse_blow(void __iomem *reg_base, unsigned int bank,
 		unsigned int row, u8 value)
 {
 	int bit, ret = 0;
@@ -192,7 +192,7 @@ static ssize_t imx_iim_cdev_write(struct cdev *cdev, const void *buf, size_t cou
 		for (i = 0; i < size; i++) {
 			int ret;
 
-			ret = do_fuse_blow(iim->base, bank->bank,
+			ret = imx_iim_fuse_blow(iim->base, bank->bank,
 					   offset + i, ((u8 *)buf)[i]);
 			if (ret < 0)
 				return ret;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
