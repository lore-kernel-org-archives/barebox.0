Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD7X-0003tv-5q
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:26:18 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 6AE0AFFA7A0
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:26:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 18:09:05 +0200
Message-Id: <1311091752-9114-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110719160758.GK5727@game.jcrosoft.org>
References: <20110719160758.GK5727@game.jcrosoft.org>
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
Subject: [PATCH 09/16] i2c i.MX: convert to struct resource
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c |   28 +++++++++++++++++-----------
 1 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 93e978e..aaed8c4 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -102,6 +102,7 @@ static u16 i2c_clk_div[50][2] = {
 };
 
 struct imx_i2c_struct {
+	void __iomem		*base;
 	struct i2c_adapter	adapter;
 	unsigned int 		disable_delay;
 	int			stopped;
@@ -140,7 +141,8 @@ static inline void i2c_imx_dump_reg(struct i2c_adapter *adapter)
 
 static int i2c_imx_bus_busy(struct i2c_adapter *adapter, int for_busy)
 {
-	unsigned long base = adapter->dev->map_base;
+	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
+	void __iomem *base = i2c_imx->base;
 	uint64_t start;
 	unsigned int temp;
 
@@ -164,7 +166,8 @@ static int i2c_imx_bus_busy(struct i2c_adapter *adapter, int for_busy)
 
 static int i2c_imx_trx_complete(struct i2c_adapter *adapter)
 {
-	unsigned long base = adapter->dev->map_base;
+	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
+	void __iomem *base = i2c_imx->base;
 	uint64_t start;
 
 	start = get_time_ns();
@@ -185,7 +188,8 @@ static int i2c_imx_trx_complete(struct i2c_adapter *adapter)
 
 static int i2c_imx_acked(struct i2c_adapter *adapter)
 {
-	unsigned long base = adapter->dev->map_base;
+	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
+	void __iomem *base = i2c_imx->base;
 	uint64_t start;
 
 	start = get_time_ns();
@@ -206,7 +210,7 @@ static int i2c_imx_acked(struct i2c_adapter *adapter)
 static int i2c_imx_start(struct i2c_adapter *adapter)
 {
 	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	unsigned long base = adapter->dev->map_base;
+	void __iomem *base = i2c_imx->base;
 	unsigned int temp = 0;
 	int result;
 
@@ -238,7 +242,7 @@ static int i2c_imx_start(struct i2c_adapter *adapter)
 static void i2c_imx_stop(struct i2c_adapter *adapter)
 {
 	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	unsigned long base = adapter->dev->map_base;
+	void __iomem *base = i2c_imx->base;
 	unsigned int temp = 0;
 
 	if (!i2c_imx->stopped) {
@@ -306,7 +310,8 @@ static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
 
 static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
-	unsigned long base = adapter->dev->map_base;
+	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
+	void __iomem *base = i2c_imx->base;
 	int i, result;
 
 	dev_dbg(adapter->dev,
@@ -343,7 +348,7 @@ static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
 	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	unsigned long base = adapter->dev->map_base;
+	void __iomem *base = i2c_imx->base;
 	int i, result;
 	unsigned int temp;
 
@@ -411,7 +416,8 @@ static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 static int i2c_imx_xfer(struct i2c_adapter *adapter,
 			struct i2c_msg *msgs, int num)
 {
-	unsigned long base = adapter->dev->map_base;
+	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
+	void __iomem *base = i2c_imx->base;
 	unsigned int i, temp;
 	int result;
 
@@ -453,7 +459,6 @@ static int __init i2c_imx_probe(struct device_d *pdev)
 {
 	struct imx_i2c_struct *i2c_imx;
 	struct i2c_platform_data *pdata;
-	unsigned long base = pdev->map_base;
 	int ret;
 
 	pdata = pdev->platform_data;
@@ -464,6 +469,7 @@ static int __init i2c_imx_probe(struct device_d *pdev)
 	i2c_imx->adapter.master_xfer = i2c_imx_xfer;
 	i2c_imx->adapter.nr = pdev->id;
 	i2c_imx->adapter.dev = pdev;
+	i2c_imx->base = dev_request_mem_region(pdev, 0);
 
 	/* Set up clock divider */
 	if (pdata && pdata->bitrate)
@@ -472,8 +478,8 @@ static int __init i2c_imx_probe(struct device_d *pdev)
 		i2c_imx_set_clk(i2c_imx, IMX_I2C_BIT_RATE);
 
 	/* Set up chip registers to defaults */
-	writeb(0, base + IMX_I2C_I2CR);
-	writeb(0, base + IMX_I2C_I2SR);
+	writeb(0, i2c_imx->base + IMX_I2C_I2CR);
+	writeb(0, i2c_imx->base + IMX_I2C_I2SR);
 
 	/* Add I2C adapter */
 	ret = i2c_add_numbered_adapter(&i2c_imx->adapter);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
