Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0GE-0002x6-TT
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:06:34 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 58020FFA310
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:07:15 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Jul 2011 16:49:08 +0200
Message-Id: <1311518949-6990-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110724144441.GA10295@game.jcrosoft.org>
References: <20110724144441.GA10295@game.jcrosoft.org>
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
Subject: [PATCH 11/12] i2c: convert to struct resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/i2c/busses/i2c-imx.c  |    6 +++---
 drivers/i2c/busses/i2c-omap.c |    3 +--
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index aaed8c4..2d075f7 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -113,11 +113,11 @@ struct imx_i2c_struct {
 #ifdef CONFIG_I2C_DEBUG
 static void i2c_imx_dump_reg(struct i2c_adapter *adapter)
 {
-	unsigned long base = adapter->dev->map_base;
+	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
 	u32 reg_cr, reg_sr;
 
-	reg_cr = readb(base + IMX_I2C_I2CR);
-	reg_sr = readb(base + IMX_I2C_I2SR);
+	reg_cr = readb(i2c_imx->base + IMX_I2C_I2CR);
+	reg_sr = readb(i2c_imx->base + IMX_I2C_I2SR);
 
 	dev_dbg(adapter->dev, "CONTROL:\t"
 		"IEN =%d, IIEN=%d, MSTA=%d, MTX =%d, TXAK=%d, RSTA=%d\n",
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 8e7a8b5..95c4fdf 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -716,7 +716,6 @@ i2c_omap_probe(struct device_d *pdev)
 {
 	struct omap_i2c_struct	*i2c_omap;
 	/* struct i2c_platform_data *pdata; */
-	/* unsigned long base = pdev->map_base; */
 	int r;
 	u32 speed = 0;
 
@@ -732,7 +731,7 @@ i2c_omap_probe(struct device_d *pdev)
 		speed = 100;	/* Defualt speed */
 
 	i2c_omap->speed = speed;
-	i2c_omap->base = (void*)pdev->map_base;
+	i2c_omap->base = dev_request_mem_region(pdev, 0);
 	printf ("I2C probe\n");
 	omap_i2c_unidle(i2c_omap);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
