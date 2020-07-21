Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxlYa-0001tJ-Gi
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 06:15:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Jul 2020 08:14:57 +0200
Message-Id: <20200721061458.26739-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200721061458.26739-1-a.fatoum@pengutronix.de>
References: <20200721061458.26739-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] i2c: at91: extend for sama5d2 support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Port over the Linux v5.8-rc4 bits to support i2c on the sama5d2.
This has been tested by reading the i2c EEPROM on the sama5d27-som1-ek.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-at91.c | 135 +++++++++++++++++++++++++++++-----
 1 file changed, 116 insertions(+), 19 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index 76bb51bf30c2..70e87c1b2cc4 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -48,6 +48,8 @@
 #define	AT91_TWI_IADR		0x000c	/* Internal Address Register */
 
 #define	AT91_TWI_CWGR		0x0010	/* Clock Waveform Generator Reg */
+#define	AT91_TWI_CWGR_HOLD_MAX	0x1f
+#define	AT91_TWI_CWGR_HOLD(x)	(((x) & AT91_TWI_CWGR_HOLD_MAX) << 24)
 
 #define	AT91_TWI_SR		0x0020	/* Status Register */
 #define	AT91_TWI_TXCOMP		0x0001	/* Transmission Complete */
@@ -64,14 +66,27 @@
 #define	AT91_TWI_RHR		0x0030	/* Receive Holding Register */
 #define	AT91_TWI_THR		0x0034	/* Transmit Holding Register */
 
+#define AT91_TWI_FILTR		0x0044
+#define AT91_TWI_FILTR_FILT	BIT(0)
+#define AT91_TWI_FILTR_PADFEN	BIT(1)
+#define AT91_TWI_FILTR_THRES(v)		((v) << 8)
+#define AT91_TWI_FILTR_THRES_MAX	7
+#define AT91_TWI_FILTR_THRES_MASK	GENMASK(10, 8)
+
 struct at91_twi_pdata {
 	unsigned clk_max_div;
 	unsigned clk_offset;
 	bool has_unre_flag;
+	bool has_alt_cmd;
+	bool has_hold_field;
+	bool has_dig_filtr;
+	bool has_adv_dig_filtr;
+	bool has_ana_filtr;
+	bool has_clear_cmd;
 };
 
 struct at91_twi_dev {
-	struct device *dev;
+	struct device_d *dev;
 	void __iomem *base;
 	struct clk *clk;
 	u8 *buf;
@@ -82,6 +97,10 @@ struct at91_twi_dev {
 	struct i2c_adapter adapter;
 	unsigned twi_cwgr_reg;
 	struct at91_twi_pdata *pdata;
+	u32 filter_width;
+
+	bool enable_dig_filt;
+	bool enable_ana_filt;
 };
 
 #define to_at91_twi_dev(a) container_of(a, struct at91_twi_dev, adapter)
@@ -104,11 +123,31 @@ static void at91_disable_twi_interrupts(struct at91_twi_dev *dev)
 
 static void at91_init_twi_bus(struct at91_twi_dev *dev)
 {
+	struct at91_twi_pdata *pdata = dev->pdata;
+	u32 filtr = 0;
+
 	at91_disable_twi_interrupts(dev);
 	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_SWRST);
 	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_MSEN);
 	at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_SVDIS);
 	at91_twi_write(dev, AT91_TWI_CWGR, dev->twi_cwgr_reg);
+
+	/* enable digital filter */
+	if (pdata->has_dig_filtr && dev->enable_dig_filt)
+		filtr |= AT91_TWI_FILTR_FILT;
+
+	/* enable advanced digital filter */
+	if (pdata->has_adv_dig_filtr && dev->enable_dig_filt)
+		filtr |= AT91_TWI_FILTR_FILT |
+			 (AT91_TWI_FILTR_THRES(dev->filter_width) &
+			 AT91_TWI_FILTR_THRES_MASK);
+
+	/* enable analog filter */
+	if (pdata->has_ana_filtr && dev->enable_ana_filt)
+		filtr |= AT91_TWI_FILTR_PADFEN;
+
+	if (filtr)
+		at91_twi_write(dev, AT91_TWI_FILTR, filtr);
 }
 
 /*
@@ -117,10 +156,13 @@ static void at91_init_twi_bus(struct at91_twi_dev *dev)
  */
 static void at91_calc_twi_clock(struct at91_twi_dev *dev, int twi_clk)
 {
-	int ckdiv, cdiv, div;
+	int ckdiv, cdiv, div, hold = 0, filter_width = 0;
 	struct at91_twi_pdata *pdata = dev->pdata;
 	int offset = pdata->clk_offset;
 	int max_ckdiv = pdata->clk_max_div;
+	struct i2c_timings timings, *t = &timings;
+
+	i2c_parse_fw_timings(dev->dev, t, true);
 
 	div = max(0, (int)DIV_ROUND_UP(clk_get_rate(dev->clk),
 				       2 * twi_clk) - offset);
@@ -128,14 +170,54 @@ static void at91_calc_twi_clock(struct at91_twi_dev *dev, int twi_clk)
 	cdiv = div >> ckdiv;
 
 	if (ckdiv > max_ckdiv) {
-		dev_warn(&dev->adapter.dev, "%d exceeds ckdiv max value which is %d.\n",
+		dev_warn(dev->dev, "%d exceeds ckdiv max value which is %d.\n",
 			 ckdiv, max_ckdiv);
 		ckdiv = max_ckdiv;
 		cdiv = 255;
 	}
 
-	dev->twi_cwgr_reg = (ckdiv << 16) | (cdiv << 8) | cdiv;
-	dev_dbg(&dev->adapter.dev, "cdiv %d ckdiv %d\n", cdiv, ckdiv);
+	if (pdata->has_hold_field) {
+		/*
+		 * hold time = HOLD + 3 x T_peripheral_clock
+		 * Use clk rate in kHz to prevent overflows when computing
+		 * hold.
+		 */
+		hold = DIV_ROUND_UP(t->sda_hold_ns
+				    * (clk_get_rate(dev->clk) / 1000), 1000000);
+		hold -= 3;
+		if (hold < 0)
+			hold = 0;
+		if (hold > AT91_TWI_CWGR_HOLD_MAX) {
+			dev_warn(dev->dev,
+				 "HOLD field set to its maximum value (%d instead of %d)\n",
+				 AT91_TWI_CWGR_HOLD_MAX, hold);
+			hold = AT91_TWI_CWGR_HOLD_MAX;
+		}
+	}
+
+	if (pdata->has_adv_dig_filtr) {
+		/*
+		 * filter width = 0 to AT91_TWI_FILTR_THRES_MAX
+		 * peripheral clocks
+		 */
+		filter_width = DIV_ROUND_UP(t->digital_filter_width_ns
+				* (clk_get_rate(dev->clk) / 1000), 1000000);
+		if (filter_width > AT91_TWI_FILTR_THRES_MAX) {
+			dev_warn(dev->dev,
+				"Filter threshold set to its maximum value (%d instead of %d)\n",
+				AT91_TWI_FILTR_THRES_MAX, filter_width);
+			filter_width = AT91_TWI_FILTR_THRES_MAX;
+		}
+	}
+
+	dev->twi_cwgr_reg = (ckdiv << 16) | (cdiv << 8) | cdiv
+			    | AT91_TWI_CWGR_HOLD(hold);
+
+	dev->filter_width = filter_width;
+
+	dev_dbg(dev->dev, "cdiv %d ckdiv %d hold %d (%d ns), filter_width %d (%d ns)\n",
+		cdiv, ckdiv, hold, t->sda_hold_ns, filter_width,
+		t->digital_filter_width_ns);
 }
 
 static void at91_twi_write_next_byte(struct at91_twi_dev *dev)
@@ -149,7 +231,7 @@ static void at91_twi_write_next_byte(struct at91_twi_dev *dev)
 	if (--dev->buf_len == 0)
 		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_STOP);
 
-	dev_dbg(&dev->adapter.dev, "wrote 0x%x, to go %d\n", *dev->buf, dev->buf_len);
+	dev_dbg(dev->dev, "wrote 0x%x, to go %d\n", *dev->buf, dev->buf_len);
 
 	++dev->buf;
 }
@@ -166,7 +248,7 @@ static void at91_twi_read_next_byte(struct at91_twi_dev *dev)
 	if (dev->buf_len == 1)
 		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_STOP);
 
-	dev_dbg(&dev->adapter.dev, "read 0x%x, to go %d\n", *dev->buf, dev->buf_len);
+	dev_dbg(dev->dev, "read 0x%x, to go %d\n", *dev->buf, dev->buf_len);
 
 	++dev->buf;
 }
@@ -183,7 +265,7 @@ static int at91_twi_wait_completion(struct at91_twi_dev *dev)
 
 		if (!(status & irqstatus)) {
 			if (is_timeout(start, AT91_I2C_TIMEOUT)) {
-				dev_warn(&dev->adapter.dev, "timeout waiting for bus ready\n");
+				dev_warn(dev->dev, "timeout waiting for bus ready\n");
 				return -ETIMEDOUT;
 			} else {
 				continue;
@@ -195,7 +277,7 @@ static int at91_twi_wait_completion(struct at91_twi_dev *dev)
 		else if (irqstatus & AT91_TWI_TXRDY)
 			at91_twi_write_next_byte(dev);
 		else
-			dev_warn(&dev->adapter.dev, "neither rx and tx are ready\n");
+			dev_warn(dev->dev, "neither rx and tx are ready\n");
 
 		dev->transfer_status |= status;
 
@@ -211,7 +293,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 	int ret;
 	bool has_unre_flag = dev->pdata->has_unre_flag;
 
-	dev_dbg(&dev->adapter.dev, "transfer: %s %d bytes.\n",
+	dev_dbg(dev->dev, "transfer: %s %d bytes.\n",
 		(dev->msg->flags & I2C_M_RD) ? "read" : "write", dev->buf_len);
 
 	dev->transfer_status = 0;
@@ -223,7 +305,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 		unsigned start_flags = AT91_TWI_START;
 
 		if (at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_RXRDY) {
-			dev_err(&dev->adapter.dev, "RXRDY still set!");
+			dev_err(dev->dev, "RXRDY still set!");
 			at91_twi_read(dev, AT91_TWI_RHR);
 		}
 
@@ -243,27 +325,27 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 
 	ret = at91_twi_wait_completion(dev);
 	if (ret < 0) {
-		dev_err(&dev->adapter.dev, "controller timed out\n");
+		dev_err(dev->dev, "controller timed out\n");
 		at91_init_twi_bus(dev);
 		ret = -ETIMEDOUT;
 		goto error;
 	}
 	if (dev->transfer_status & AT91_TWI_NACK) {
-		dev_dbg(&dev->adapter.dev, "received nack\n");
+		dev_dbg(dev->dev, "received nack\n");
 		ret = -EREMOTEIO;
 		goto error;
 	}
 	if (dev->transfer_status & AT91_TWI_OVRE) {
-		dev_err(&dev->adapter.dev, "overrun while reading\n");
+		dev_err(dev->dev, "overrun while reading\n");
 		ret = -EIO;
 		goto error;
 	}
 	if (has_unre_flag && dev->transfer_status & AT91_TWI_UNRE) {
-		dev_err(&dev->adapter.dev, "underrun while writing\n");
+		dev_err(dev->dev, "underrun while writing\n");
 		ret = -EIO;
 		goto error;
 	}
-	dev_dbg(&dev->adapter.dev, "transfer complete\n");
+	dev_dbg(dev->dev, "transfer complete\n");
 
 	return 0;
 
@@ -285,7 +367,7 @@ static int at91_twi_xfer(struct i2c_adapter *adap, struct i2c_msg *msg, int num)
 	 * repeated start via it's internal address feature.
 	 */
 	if (num > 2) {
-		dev_err(&dev->adapter.dev,
+		dev_err(dev->dev,
 			"cannot handle more than two concatenated messages.\n");
 		return 0;
 	} else if (num == 2) {
@@ -293,11 +375,11 @@ static int at91_twi_xfer(struct i2c_adapter *adap, struct i2c_msg *msg, int num)
 		int i;
 
 		if (msg->flags & I2C_M_RD) {
-			dev_err(&dev->adapter.dev, "first transfer must be write.\n");
+			dev_err(dev->dev, "first transfer must be write.\n");
 			return -EINVAL;
 		}
 		if (msg->len > 3) {
-			dev_err(&dev->adapter.dev, "first message size must be <= 3.\n");
+			dev_err(dev->dev, "first message size must be <= 3.\n");
 			return -EINVAL;
 		}
 
@@ -360,6 +442,17 @@ static struct at91_twi_pdata at91sam9x5_config = {
 	.has_unre_flag = false,
 };
 
+static struct at91_twi_pdata sama5d2_config = {
+	.clk_max_div = 7,
+	.clk_offset = 3,
+	.has_unre_flag = true,
+	.has_alt_cmd = true,
+	.has_hold_field = true,
+	.has_dig_filtr = true,
+	.has_adv_dig_filtr = true,
+	.has_ana_filtr = true,
+};
+
 static struct platform_device_id at91_twi_devtypes[] = {
 	{
 		.name = "at91rm9200-i2c",
@@ -403,6 +496,9 @@ static struct of_device_id at91_twi_dt_ids[] = {
 	}, {
 		.compatible = "atmel,at91sam9x5-i2c",
 		.data = &at91sam9x5_config,
+	}, {
+		.compatible = "atmel,sama5d2-i2c",
+		.data = &sama5d2_config,
 	}, {
 		/* sentinel */
 	}
@@ -417,6 +513,7 @@ static int at91_twi_probe(struct device_d *dev)
 	u32 bus_clk_rate;
 
 	i2c_at91 = xzalloc(sizeof(struct at91_twi_dev));
+	i2c_at91->dev = dev;
 
 	rc = dev_get_drvdata(dev, (const void **)&i2c_data);
 	if (rc < 0) {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
