Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004gC-LU
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:18 +0200
Message-Id: <1371711261-10039-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/17] ARM: MXS: octotp: switch to clk support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/ocotp.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index dd98446..6bfa3e2 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -21,11 +21,12 @@
 #include <malloc.h>
 #include <io.h>
 #include <clock.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 
 #include <mach/generic.h>
 #include <mach/ocotp.h>
 #include <mach/imx-regs.h>
-#include <mach/clock-imx28.h>
 #include <mach/power.h>
 
 #define DRIVERNAME "ocotp"
@@ -45,6 +46,7 @@ struct ocotp_priv {
 	struct cdev cdev;
 	void __iomem *base;
 	unsigned int write_enable;
+	struct clk *clk;
 };
 
 static int mxs_ocotp_wait_busy(struct ocotp_priv *priv)
@@ -131,10 +133,10 @@ static ssize_t mxs_ocotp_cdev_write(struct cdev *cdev, const void *buf, size_t c
 		work_buf[offset - aligned_offset + i] |= ((u8 *)buf)[i];
 
 	/* prepare system for OTP write */
-	old_hclk = imx_get_hclk();
+	old_hclk = clk_get_rate(priv->clk);
 	old_vddio = imx_get_vddio();
 
-	imx_set_hclk(24000000);
+	clk_set_rate(priv->clk, 24000000);
 	imx_set_vddio(2800000);
 
 	writel(OCOTP_CTRL_RD_BANK_OPEN, base + OCOTP_CTRL + BIT_CLR);
@@ -162,7 +164,7 @@ static ssize_t mxs_ocotp_cdev_write(struct cdev *cdev, const void *buf, size_t c
 
 restore_system:
 	imx_set_vddio(old_vddio);
-	imx_set_hclk(old_hclk);
+	clk_set_rate(priv->clk, old_hclk);
 free_mem:
 	free(work_buf);
 
@@ -180,6 +182,9 @@ static int mxs_ocotp_probe(struct device_d *dev)
 	struct ocotp_priv *priv = xzalloc(sizeof (*priv));
 
 	priv->base = dev_request_mem_region(dev, 0);
+	priv->clk = clk_get(dev, NULL);
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
 	priv->cdev.dev = dev;
 	priv->cdev.ops = &mxs_ocotp_ops;
 	priv->cdev.priv = priv;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
