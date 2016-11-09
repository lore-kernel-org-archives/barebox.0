Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4VWx-0002v5-1D
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 16:15:22 +0000
Received: by mail-pf0-x243.google.com with SMTP id i88so781562pfk.2
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2016 08:14:58 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Nov 2016 08:14:06 -0800
Message-Id: <1478708056-7875-19-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 18/28] i.MX: i2c: Use read/write adapter functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use read/write adapter functions instead of directly calling to
readb/writeb. This is needed to prepare driver code to support Vybrid
SoC's variant of this block.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/busses/i2c-imx.c | 88 +++++++++++++++++++++++---------------------
 1 file changed, 46 insertions(+), 42 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index e407896..ec40475 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -115,14 +115,27 @@ struct fsl_i2c_struct {
 };
 #define to_fsl_i2c_struct(a)	container_of(a, struct fsl_i2c_struct, adapter)
 
+static inline void fsl_i2c_write_reg(unsigned int val,
+				     struct fsl_i2c_struct *i2c_fsl,
+				     unsigned int reg)
+{
+	writeb(val, i2c_fsl->base + reg);
+}
+
+static inline unsigned char fsl_i2c_read_reg(struct fsl_i2c_struct *i2c_fsl,
+					     unsigned int reg)
+{
+	return readb(i2c_fsl->base + reg);
+}
+
 #ifdef CONFIG_I2C_DEBUG
 static void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
 	u32 reg_cr, reg_sr;
 
-	reg_cr = readb(i2c_fsl->base + FSL_I2C_I2CR);
-	reg_sr = readb(i2c_fsl->base + FSL_I2C_I2SR);
+	reg_cr = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
+	reg_sr = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2SR);
 
 	dev_dbg(adapter->dev, "CONTROL:\t"
 		"IEN =%d, IIEN=%d, MSTA=%d, MTX =%d, TXAK=%d, RSTA=%d\n",
@@ -144,16 +157,16 @@ static inline void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 }
 #endif
 
+
 static int i2c_fsl_bus_busy(struct i2c_adapter *adapter, int for_busy)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	uint64_t start;
 	unsigned int temp;
 
 	start = get_time_ns();
 	while (1) {
-		temp = readb(base + FSL_I2C_I2SR);
+		temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2SR);
 		if (for_busy && (temp & I2SR_IBB))
 			break;
 		if (!for_busy && !(temp & I2SR_IBB))
@@ -172,12 +185,11 @@ static int i2c_fsl_bus_busy(struct i2c_adapter *adapter, int for_busy)
 static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	uint64_t start;
 
 	start = get_time_ns();
 	while (1) {
-		unsigned int reg = readb(base + FSL_I2C_I2SR);
+		unsigned int reg = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2SR);
 		if (reg & I2SR_IIF)
 			break;
 
@@ -186,7 +198,7 @@ static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
 			return -EIO;
 		}
 	}
-	writeb(0, base + FSL_I2C_I2SR);
+	fsl_i2c_write_reg(0, i2c_fsl, FSL_I2C_I2SR);
 
 	return 0;
 }
@@ -194,12 +206,11 @@ static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
 static int i2c_fsl_acked(struct i2c_adapter *adapter)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	uint64_t start;
 
 	start = get_time_ns();
 	while (1) {
-		unsigned int reg = readb(base + FSL_I2C_I2SR);
+		unsigned int reg = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2SR);
 		if (!(reg & I2SR_RXAK))
 			break;
 
@@ -215,25 +226,24 @@ static int i2c_fsl_acked(struct i2c_adapter *adapter)
 static int i2c_fsl_start(struct i2c_adapter *adapter)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	unsigned int temp = 0;
 	int result;
 
-	writeb(i2c_fsl->ifdr, base + FSL_I2C_IFDR);
+	fsl_i2c_write_reg(i2c_fsl->ifdr, fsl_i2c, FSL_I2C_IFDR);
 	if (i2c_fsl->dfsrr != -1)
-		writeb(i2c_fsl->dfsrr, base + FSL_I2C_DFSRR);
+		fsl_i2c_write_reg(i2c_fsl->dfsrr, fsl_i2c, FSL_I2C_DFSRR);
 
 	/* Enable I2C controller */
-	writeb(0, base + FSL_I2C_I2SR);
-	writeb(I2CR_IEN, base + FSL_I2C_I2CR);
+	fsl_i2c_write_reg(0, fsl_i2c, FSL_I2C_I2SR);
+	fsl_i2c_write_reg(I2CR_IEN, fsl_i2c, FSL_I2C_I2CR);
 
 	/* Wait controller to be stable */
 	udelay(100);
 
 	/* Start I2C transaction */
-	temp = readb(base + FSL_I2C_I2CR);
+	temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 	temp |= I2CR_MSTA;
-	writeb(temp, base + FSL_I2C_I2CR);
+	fsl_i2c_write_reg(temp, fsl_i2c, FSL_I2C_I2CR);
 
 	result = i2c_fsl_bus_busy(adapter, 1);
 	if (result) {
@@ -246,7 +256,7 @@ static int i2c_fsl_start(struct i2c_adapter *adapter)
 	i2c_fsl->stopped = 0;
 
 	temp |= I2CR_MTX | I2CR_TXAK;
-	writeb(temp, base + FSL_I2C_I2CR);
+	fsl_i2c_write_reg(temp, fsl_i2c, FSL_I2C_I2CR);
 
 	return result;
 }
@@ -254,14 +264,13 @@ static int i2c_fsl_start(struct i2c_adapter *adapter)
 static void i2c_fsl_stop(struct i2c_adapter *adapter)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	unsigned int temp = 0;
 
 	if (!i2c_fsl->stopped) {
 		/* Stop I2C transaction */
-		temp = readb(base + FSL_I2C_I2CR);
+		temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 		temp &= ~(I2CR_MSTA | I2CR_MTX);
-		writeb(temp, base + FSL_I2C_I2CR);
+		fsl_i2c_write_reg(temp, fsl_i2c, FSL_I2C_I2CR);
 		/* wait for the stop condition to be send, otherwise the i2c
 		 * controller is disabled before the STOP is sent completely */
 		i2c_fsl->stopped = i2c_fsl_bus_busy(adapter, 0) ? 0 : 1;
@@ -273,14 +282,13 @@ static void i2c_fsl_stop(struct i2c_adapter *adapter)
 	}
 
 	/* Disable I2C controller, and force our state to stopped */
-	writeb(0, base + FSL_I2C_I2CR);
+	fsl_i2c_write_reg(0, fsl_i2c, FSL_I2C_I2CR);
 }
 
 #ifdef CONFIG_PPC
 static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 				    unsigned int rate)
 {
-	void __iomem *base;
 	unsigned int i2c_clk;
 	unsigned short divider;
 	/*
@@ -295,7 +303,6 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 	unsigned long c_div, est_div;
 
 	fdr = 0x31; /* Default if no FDR found */
-	base = i2c_fsl->base;
 	i2c_clk = fsl_get_i2c_freq();
 	divider = min((unsigned short)(i2c_clk / rate), (unsigned short) -1);
 
@@ -387,7 +394,6 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	int i, result;
 
 	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
@@ -396,7 +402,7 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			__func__, msgs->addr << 1);
 
 		/* write slave address */
-		writeb(msgs->addr << 1, base + FSL_I2C_I2DR);
+		fsl_i2c_write_reg(msgs->addr << 1, fsl_i2c, FSL_I2C_I2DR);
 
 		result = i2c_fsl_trx_complete(adapter);
 		if (result)
@@ -411,7 +417,7 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 		dev_dbg(&adapter->dev,
 			"<%s> write byte: B%d=0x%02X\n",
 			__func__, i, msgs->buf[i]);
-		writeb(msgs->buf[i], base + FSL_I2C_I2DR);
+		fsl_i2c_write_reg(msgs->buf[i], fsl_i2c, FSL_I2C_I2DR);
 
 		result = i2c_fsl_trx_complete(adapter);
 		if (result)
@@ -426,12 +432,11 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	int i, result;
 	unsigned int temp;
 
 	/* clear IIF */
-	writeb(0x0, base + FSL_I2C_I2SR);
+	fsl_i2c_write_reg(0x0, fsl_i2c, FSL_I2C_I2SR);
 
 	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
 		dev_dbg(&adapter->dev,
@@ -439,7 +444,7 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			__func__, (msgs->addr << 1) | 0x01);
 
 		/* write slave address */
-		writeb((msgs->addr << 1) | 0x01, base + FSL_I2C_I2DR);
+		fsl_i2c_write_reg((msgs->addr << 1) | 0x01, fsl_i2c, FSL_I2C_I2DR);
 
 		result = i2c_fsl_trx_complete(adapter);
 		if (result)
@@ -450,13 +455,13 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 	}
 
 	/* setup bus to read data */
-	temp = readb(base + FSL_I2C_I2CR);
+	temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 	temp &= ~I2CR_MTX;
 	if (msgs->len - 1)
 		temp &= ~I2CR_TXAK;
-	writeb(temp, base + FSL_I2C_I2CR);
+	fsl_i2c_write_reg(temp, fsl_i2c, FSL_I2C_I2CR);
 
-	readb(base + FSL_I2C_I2DR);	/* dummy read */
+	fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2DR);	/* dummy read */
 
 	/* read data */
 	for (i = 0; i < msgs->len; i++) {
@@ -469,9 +474,9 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			 * It must generate STOP before read I2DR to prevent
 			 * controller from generating another clock cycle
 			 */
-			temp = readb(base + FSL_I2C_I2CR);
+			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 			temp &= ~(I2CR_MSTA | I2CR_MTX);
-			writeb(temp, base + FSL_I2C_I2CR);
+			fsl_i2c_write_reg(temp, fsl_i2c, FSL_I2C_I2CR);
 
 			/*
 			 * adding this delay helps on low bitrates
@@ -481,11 +486,11 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			i2c_fsl_bus_busy(adapter, 0);
 			i2c_fsl->stopped = 1;
 		} else if (i == (msgs->len - 2)) {
-			temp = readb(base + FSL_I2C_I2CR);
+			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 			temp |= I2CR_TXAK;
-			writeb(temp, base + FSL_I2C_I2CR);
+			fsl_i2c_write_reg(temp, fsl_i2c, FSL_I2C_I2CR);
 		}
-		msgs->buf[i] = readb(base + FSL_I2C_I2DR);
+		msgs->buf[i] = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2DR);
 
 		dev_dbg(&adapter->dev, "<%s> read byte: B%d=0x%02X\n",
 			__func__, i, msgs->buf[i]);
@@ -497,7 +502,6 @@ static int i2c_fsl_xfer(struct i2c_adapter *adapter,
 			struct i2c_msg *msgs, int num)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	unsigned int i, temp;
 	int result;
 
@@ -514,9 +518,9 @@ static int i2c_fsl_xfer(struct i2c_adapter *adapter,
 	/* read/write data */
 	for (i = 0; i < num; i++) {
 		if (i && !(msgs[i].flags & I2C_M_DATA_ONLY)) {
-			temp = readb(base + FSL_I2C_I2CR);
+			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 			temp |= I2CR_RSTA;
-			writeb(temp, base + FSL_I2C_I2CR);
+			fsl_i2c_write_reg(temp, fsl_i2c, FSL_I2C_I2CR);
 
 			result = i2c_fsl_bus_busy(adapter, 1);
 			if (result)
@@ -623,8 +627,8 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 		i2c_fsl_set_clk(i2c_fsl, FSL_I2C_BIT_RATE);
 
 	/* Set up chip registers to defaults */
-	writeb(0, i2c_fsl->base + FSL_I2C_I2CR);
-	writeb(0, i2c_fsl->base + FSL_I2C_I2SR);
+	fsl_i2c_write_reg(0, i2c_fsl, FSL_I2C_I2CR);
+	fsl_i2c_write_reg(0, i2c_fsl, FSL_I2C_I2SR);
 
 	/* Add I2C adapter */
 	ret = i2c_add_numbered_adapter(&i2c_fsl->adapter);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
