Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TC-0000el-9Q
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:49 +0200
Message-Id: <1348484692-24993-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/23] i2c i.MX: Switch to clock support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c |   23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 2ac043b..98c06f0 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -37,7 +37,7 @@
 #include <malloc.h>
 #include <types.h>
 #include <xfuncs.h>
-
+#include <linux/clk.h>
 #include <linux/err.h>
 
 #include <io.h>
@@ -101,6 +101,7 @@ static u16 i2c_clk_div[50][2] = {
 
 struct fsl_i2c_struct {
 	void __iomem		*base;
+	struct clk		*clk;
 	struct i2c_adapter	adapter;
 	unsigned int 		disable_delay;
 	int			stopped;
@@ -109,6 +110,19 @@ struct fsl_i2c_struct {
 };
 #define to_fsl_i2c_struct(a)	container_of(a, struct fsl_i2c_struct, adapter)
 
+#ifdef CONFIG_COMMON_CLK
+static inline unsigned long i2c_fsl_clk_get_rate(struct fsl_i2c_struct *i2c_fsl)
+{
+	return clk_get_rate(i2c_fsl->clk);
+}
+
+#else
+static inline unsigned long i2c_fsl_clk_get_rate(struct fsl_i2c_struct *i2c_fsl)
+{
+	return fsl_get_i2cclk();
+}
+#endif
+
 #ifdef CONFIG_I2C_DEBUG
 static void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 {
@@ -344,7 +358,7 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 	int i;
 
 	/* Divider value calculation */
-	i2c_clk_rate = fsl_get_i2cclk();
+	i2c_clk_rate = i2c_fsl_clk_get_rate(i2c_fsl);
 	div = (i2c_clk_rate + rate - 1) / rate;
 	if (div < i2c_clk_div[0][0])
 		i = 0;
@@ -535,6 +549,11 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 
 	i2c_fsl = kzalloc(sizeof(struct fsl_i2c_struct), GFP_KERNEL);
 
+#ifdef CONFIG_COMMON_CLK
+	i2c_fsl->clk = clk_get(pdev, NULL);
+	if (IS_ERR(i2c_fsl->clk))
+		return PTR_ERR(i2c_fsl->clk);
+#endif
 	/* Setup i2c_fsl driver structure */
 	i2c_fsl->adapter.master_xfer = i2c_fsl_xfer;
 	i2c_fsl->adapter.nr = pdev->id;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
