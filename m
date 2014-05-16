Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQ8-0007t7-Rr
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:54 +0200
Message-Id: <1400236258-17924-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] ARM: i.MX: iim: use dev_* for messages
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index ea36f84..4a94a68 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -59,7 +59,7 @@ static int imx_iim_fuse_sense(struct iim_bank *bank, unsigned int row)
 	u8 err, stat;
 
 	if (row > 255) {
-		printf("%s: invalid row index\n", __func__);
+		dev_err(&iim->dev, "%s: invalid row index\n", __func__);
 		return -EINVAL;
 	}
 
@@ -83,7 +83,7 @@ static int imx_iim_fuse_sense(struct iim_bank *bank, unsigned int row)
 
 	err = readb(reg_base + IIM_ERR);
 	if (err) {
-		printf("%s: sense error (0x%02x)\n", __func__, err);
+		dev_err(&iim->dev, "sense error (0x%02x)\n", err);
 		return -EIO;
 	}
 
@@ -122,7 +122,7 @@ static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned int row, u8 value)
 	u8 err, stat;
 
 	if (row > 255) {
-		printf("%s: invalid row index\n", __func__);
+		dev_err(&iim->dev, "%s: invalid row index\n", __func__);
 		return -EINVAL;
 	}
 
@@ -156,8 +156,8 @@ static int imx_iim_fuse_blow(struct iim_bank *bank, unsigned int row, u8 value)
 
 		err = readb(reg_base + IIM_ERR);
 		if (err) {
-			printf("%s: bank %u, row %u, bit %d program error "
-					"(0x%02x)\n", __func__, bank->bank, row, bit,
+			dev_err(&iim->dev, "bank %u, row %u, bit %d program error "
+					"(0x%02x)\n", bank->bank, row, bit,
 					err);
 			ret = -EIO;
 			goto out;
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
