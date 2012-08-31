Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og108.obsmtp.com ([64.18.0.186])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7Rvu-0005BU-3Z
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 14:10:54 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 31 Aug 2012 15:10:33 +0100
Message-Id: <1346422235-3949-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
References: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/6] IMX driver: replace imx -> fsl
To: barebox@lists.infradead.org

The IMX i2c driver is to be used by SOCs on both the ARM and PPC architetures.
Use a more neutral name for the structure, function names and #define.
The driver name is now "i2c-fsl".

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 drivers/i2c/busses/i2c-imx.c |  235 +++++++++++++++++++++---------------------
 1 files changed, 118 insertions(+), 117 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index da6218f..8bbe87b 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -1,4 +1,5 @@
 /*
+ * Copyright 2012 GE Intelligent Platforms, Inc
  * Copyright (C) 2002 Motorola GSG-China
  *               2009 Marc Kleine-Budde, Pengutronix
  *
@@ -50,19 +51,19 @@
 #include <mach/clock.h>
 
 /* This will be the driver name */
-#define DRIVER_NAME "i2c-imx"
+#define DRIVER_NAME "i2c-fsl"
 
 /* Default value */
-#define IMX_I2C_BIT_RATE	100000	/* 100kHz */
+#define FSL_I2C_BIT_RATE	100000	/* 100kHz */
 
-/* IMX I2C registers */
-#define IMX_I2C_IADR	0x00	/* i2c slave address */
-#define IMX_I2C_IFDR	0x04	/* i2c frequency divider */
-#define IMX_I2C_I2CR	0x08	/* i2c control */
-#define IMX_I2C_I2SR	0x0C	/* i2c status */
-#define IMX_I2C_I2DR	0x10	/* i2c transfer data */
+/* FSL I2C registers */
+#define FSL_I2C_IADR	0x00	/* i2c slave address */
+#define FSL_I2C_IFDR	0x04	/* i2c frequency divider */
+#define FSL_I2C_I2CR	0x08	/* i2c control */
+#define FSL_I2C_I2SR	0x0C	/* i2c status */
+#define FSL_I2C_I2DR	0x10	/* i2c transfer data */
 
-/* Bits of IMX I2C registers */
+/* Bits of FSL I2C registers */
 #define I2SR_RXAK	0x01
 #define I2SR_IIF	0x02
 #define I2SR_SRW	0x04
@@ -101,23 +102,23 @@ static u16 i2c_clk_div[50][2] = {
 	{ 3072,	0x1E }, { 3840,	0x1F }
 };
 
-struct imx_i2c_struct {
+struct fsl_i2c_struct {
 	void __iomem		*base;
 	struct i2c_adapter	adapter;
 	unsigned int 		disable_delay;
 	int			stopped;
-	unsigned int		ifdr;	/* IMX_I2C_IFDR */
+	unsigned int		ifdr;	/* FSL_I2C_IFDR */
 };
-#define to_imx_i2c_struct(a)	container_of(a, struct imx_i2c_struct, adapter)
+#define to_fsl_i2c_struct(a)	container_of(a, struct fsl_i2c_struct, adapter)
 
 #ifdef CONFIG_I2C_DEBUG
-static void i2c_imx_dump_reg(struct i2c_adapter *adapter)
+static void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 {
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
+	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
 	u32 reg_cr, reg_sr;
 
-	reg_cr = readb(i2c_imx->base + IMX_I2C_I2CR);
-	reg_sr = readb(i2c_imx->base + IMX_I2C_I2SR);
+	reg_cr = readb(i2c_fsl->base + FSL_I2C_I2CR);
+	reg_sr = readb(i2c_fsl->base + FSL_I2C_I2SR);
 
 	dev_dbg(adapter->dev, "CONTROL:\t"
 		"IEN =%d, IIEN=%d, MSTA=%d, MTX =%d, TXAK=%d, RSTA=%d\n",
@@ -133,22 +134,22 @@ static void i2c_imx_dump_reg(struct i2c_adapter *adapter)
 		(reg_sr & I2SR_RXAK ? 1 : 0));
 }
 #else
-static inline void i2c_imx_dump_reg(struct i2c_adapter *adapter)
+static inline void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 {
 	return;
 }
 #endif
 
-static int i2c_imx_bus_busy(struct i2c_adapter *adapter, int for_busy)
+static int i2c_fsl_bus_busy(struct i2c_adapter *adapter, int for_busy)
 {
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	void __iomem *base = i2c_imx->base;
+	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
+	void __iomem *base = i2c_fsl->base;
 	uint64_t start;
 	unsigned int temp;
 
 	start = get_time_ns();
 	while (1) {
-		temp = readb(base + IMX_I2C_I2SR);
+		temp = readb(base + FSL_I2C_I2SR);
 		if (for_busy && (temp & I2SR_IBB))
 			break;
 		if (!for_busy && !(temp & I2SR_IBB))
@@ -164,15 +165,15 @@ static int i2c_imx_bus_busy(struct i2c_adapter *adapter, int for_busy)
 	return 0;
 }
 
-static int i2c_imx_trx_complete(struct i2c_adapter *adapter)
+static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
 {
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	void __iomem *base = i2c_imx->base;
+	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
+	void __iomem *base = i2c_fsl->base;
 	uint64_t start;
 
 	start = get_time_ns();
 	while (1) {
-		unsigned int reg = readb(base + IMX_I2C_I2SR);
+		unsigned int reg = readb(base + FSL_I2C_I2SR);
 		if (reg & I2SR_IIF)
 			break;
 
@@ -181,20 +182,20 @@ static int i2c_imx_trx_complete(struct i2c_adapter *adapter)
 			return -EIO;
 		}
 	}
-	writeb(0, base + IMX_I2C_I2SR);
+	writeb(0, base + FSL_I2C_I2SR);
 
 	return 0;
 }
 
-static int i2c_imx_acked(struct i2c_adapter *adapter)
+static int i2c_fsl_acked(struct i2c_adapter *adapter)
 {
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	void __iomem *base = i2c_imx->base;
+	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
+	void __iomem *base = i2c_fsl->base;
 	uint64_t start;
 
 	start = get_time_ns();
 	while (1) {
-		unsigned int reg = readb(base + IMX_I2C_I2SR);
+		unsigned int reg = readb(base + FSL_I2C_I2SR);
 		if (!(reg & I2SR_RXAK))
 			break;
 
@@ -207,71 +208,71 @@ static int i2c_imx_acked(struct i2c_adapter *adapter)
 	return 0;
 }
 
-static int i2c_imx_start(struct i2c_adapter *adapter)
+static int i2c_fsl_start(struct i2c_adapter *adapter)
 {
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	void __iomem *base = i2c_imx->base;
+	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
+	void __iomem *base = i2c_fsl->base;
 	unsigned int temp = 0;
 	int result;
 
-	writeb(i2c_imx->ifdr, base + IMX_I2C_IFDR);
+	writeb(i2c_fsl->ifdr, base + FSL_I2C_IFDR);
 	/* Enable I2C controller */
-	writeb(0, base + IMX_I2C_I2SR);
-	writeb(I2CR_IEN, base + IMX_I2C_I2CR);
+	writeb(0, base + FSL_I2C_I2SR);
+	writeb(I2CR_IEN, base + FSL_I2C_I2CR);
 
 	/* Wait controller to be stable */
 	udelay(100);
 
 	/* Start I2C transaction */
-	temp = readb(base + IMX_I2C_I2CR);
+	temp = readb(base + FSL_I2C_I2CR);
 	temp |= I2CR_MSTA;
-	writeb(temp, base + IMX_I2C_I2CR);
+	writeb(temp, base + FSL_I2C_I2CR);
 
-	result = i2c_imx_bus_busy(adapter, 1);
+	result = i2c_fsl_bus_busy(adapter, 1);
 	if (result)
 		return result;
 
-	i2c_imx->stopped = 0;
+	i2c_fsl->stopped = 0;
 
 	temp |= I2CR_MTX | I2CR_TXAK;
-	writeb(temp, base + IMX_I2C_I2CR);
+	writeb(temp, base + FSL_I2C_I2CR);
 
 	return result;
 }
 
-static void i2c_imx_stop(struct i2c_adapter *adapter)
+static void i2c_fsl_stop(struct i2c_adapter *adapter)
 {
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	void __iomem *base = i2c_imx->base;
+	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
+	void __iomem *base = i2c_fsl->base;
 	unsigned int temp = 0;
 
-	if (!i2c_imx->stopped) {
+	if (!i2c_fsl->stopped) {
 		/* Stop I2C transaction */
-		temp = readb(base + IMX_I2C_I2CR);
+		temp = readb(base + FSL_I2C_I2CR);
 		temp &= ~(I2CR_MSTA | I2CR_MTX);
-		writeb(temp, base + IMX_I2C_I2CR);
+		writeb(temp, base + FSL_I2C_I2CR);
 		/* wait for the stop condition to be send, otherwise the i2c
 		 * controller is disabled before the STOP is sent completely */
-		i2c_imx->stopped = i2c_imx_bus_busy(adapter, 0) ? 0 : 1;
+		i2c_fsl->stopped = i2c_fsl_bus_busy(adapter, 0) ? 0 : 1;
 	}
 	if (cpu_is_mx1()) {
 		/*
 		 * This delay caused by an i.MXL hardware bug.
 		 * If no (or too short) delay, no "STOP" bit will be generated.
 		 */
-		udelay(i2c_imx->disable_delay);
+		udelay(i2c_fsl->disable_delay);
 	}
 
-	if (!i2c_imx->stopped) {
-		i2c_imx_bus_busy(adapter, 0);
-		i2c_imx->stopped = 1;
+	if (!i2c_fsl->stopped) {
+		i2c_fsl_bus_busy(adapter, 0);
+		i2c_fsl->stopped = 1;
 	}
 
 	/* Disable I2C controller, and force our state to stopped */
-	writeb(0, base + IMX_I2C_I2CR);
+	writeb(0, base + FSL_I2C_I2CR);
 }
 
-static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
+static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 			    unsigned int rate)
 {
 	unsigned int i2c_clk_rate;
@@ -279,7 +280,7 @@ static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
 	int i;
 
 	/* Divider value calculation */
-	i2c_clk_rate = imx_get_i2cclk();
+	i2c_clk_rate = fsl_get_i2cclk();
 	div = (i2c_clk_rate + rate - 1) / rate;
 	if (div < i2c_clk_div[0][0])
 		i = 0;
@@ -290,7 +291,7 @@ static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
 			;
 
 	/* Store divider value */
-	i2c_imx->ifdr = i2c_clk_div[i][1];
+	i2c_fsl->ifdr = i2c_clk_div[i][1];
 
 	/*
 	 * There dummy delay is calculated.
@@ -298,20 +299,20 @@ static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
 	 * This delay is used in I2C bus disable function
 	 * to fix chip hardware bug.
 	 */
-	i2c_imx->disable_delay =
+	i2c_fsl->disable_delay =
 		(500000U * i2c_clk_div[i][0] + (i2c_clk_rate / 2) - 1) /
 		(i2c_clk_rate / 2);
 
-	dev_dbg(i2c_imx->adapter.dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
+	dev_dbg(i2c_fsl->adapter.dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
 		__func__, i2c_clk_rate, div);
-	dev_dbg(i2c_imx->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
+	dev_dbg(i2c_fsl->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
 		__func__, i2c_clk_div[i][1], i2c_clk_div[i][0]);
 }
 
-static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
+static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	void __iomem *base = i2c_imx->base;
+	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
+	void __iomem *base = i2c_fsl->base;
 	int i, result;
 
 	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
@@ -320,12 +321,12 @@ static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			__func__, msgs->addr << 1);
 
 		/* write slave address */
-		writeb(msgs->addr << 1, base + IMX_I2C_I2DR);
+		writeb(msgs->addr << 1, base + FSL_I2C_I2DR);
 
-		result = i2c_imx_trx_complete(adapter);
+		result = i2c_fsl_trx_complete(adapter);
 		if (result)
 			return result;
-		result = i2c_imx_acked(adapter);
+		result = i2c_fsl_acked(adapter);
 		if (result)
 			return result;
 	}
@@ -335,27 +336,27 @@ static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 		dev_dbg(adapter->dev,
 			"<%s> write byte: B%d=0x%02X\n",
 			__func__, i, msgs->buf[i]);
-		writeb(msgs->buf[i], base + IMX_I2C_I2DR);
+		writeb(msgs->buf[i], base + FSL_I2C_I2DR);
 
-		result = i2c_imx_trx_complete(adapter);
+		result = i2c_fsl_trx_complete(adapter);
 		if (result)
 			return result;
-		result = i2c_imx_acked(adapter);
+		result = i2c_fsl_acked(adapter);
 		if (result)
 			return result;
 	}
 	return 0;
 }
 
-static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
+static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	void __iomem *base = i2c_imx->base;
+	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
+	void __iomem *base = i2c_fsl->base;
 	int i, result;
 	unsigned int temp;
 
 	/* clear IIF */
-	writeb(0x0, base + IMX_I2C_I2SR);
+	writeb(0x0, base + FSL_I2C_I2SR);
 
 	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
 		dev_dbg(adapter->dev,
@@ -363,28 +364,28 @@ static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			__func__, (msgs->addr << 1) | 0x01);
 
 		/* write slave address */
-		writeb((msgs->addr << 1) | 0x01, base + IMX_I2C_I2DR);
+		writeb((msgs->addr << 1) | 0x01, base + FSL_I2C_I2DR);
 
-		result = i2c_imx_trx_complete(adapter);
+		result = i2c_fsl_trx_complete(adapter);
 		if (result)
 			return result;
-		result = i2c_imx_acked(adapter);
+		result = i2c_fsl_acked(adapter);
 		if (result)
 			return result;
 	}
 
 	/* setup bus to read data */
-	temp = readb(base + IMX_I2C_I2CR);
+	temp = readb(base + FSL_I2C_I2CR);
 	temp &= ~I2CR_MTX;
 	if (msgs->len - 1)
 		temp &= ~I2CR_TXAK;
-	writeb(temp, base + IMX_I2C_I2CR);
+	writeb(temp, base + FSL_I2C_I2CR);
 
-	readb(base + IMX_I2C_I2DR);	/* dummy read */
+	readb(base + FSL_I2C_I2DR);	/* dummy read */
 
 	/* read data */
 	for (i = 0; i < msgs->len; i++) {
-		result = i2c_imx_trx_complete(adapter);
+		result = i2c_fsl_trx_complete(adapter);
 		if (result)
 			return result;
 
@@ -393,23 +394,23 @@ static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			 * It must generate STOP before read I2DR to prevent
 			 * controller from generating another clock cycle
 			 */
-			temp = readb(base + IMX_I2C_I2CR);
+			temp = readb(base + FSL_I2C_I2CR);
 			temp &= ~(I2CR_MSTA | I2CR_MTX);
-			writeb(temp, base + IMX_I2C_I2CR);
+			writeb(temp, base + FSL_I2C_I2CR);
 
 			/*
 			 * adding this delay helps on low bitrates
 			 */
-			udelay(i2c_imx->disable_delay);
+			udelay(i2c_fsl->disable_delay);
 
-			i2c_imx_bus_busy(adapter, 0);
-			i2c_imx->stopped = 1;
+			i2c_fsl_bus_busy(adapter, 0);
+			i2c_fsl->stopped = 1;
 		} else if (i == (msgs->len - 2)) {
-			temp = readb(base + IMX_I2C_I2CR);
+			temp = readb(base + FSL_I2C_I2CR);
 			temp |= I2CR_TXAK;
-			writeb(temp, base + IMX_I2C_I2CR);
+			writeb(temp, base + FSL_I2C_I2CR);
 		}
-		msgs->buf[i] = readb(base + IMX_I2C_I2DR);
+		msgs->buf[i] = readb(base + FSL_I2C_I2DR);
 
 		dev_dbg(adapter->dev, "<%s> read byte: B%d=0x%02X\n",
 			__func__, i, msgs->buf[i]);
@@ -417,76 +418,76 @@ static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 	return 0;
 }
 
-static int i2c_imx_xfer(struct i2c_adapter *adapter,
+static int i2c_fsl_xfer(struct i2c_adapter *adapter,
 			struct i2c_msg *msgs, int num)
 {
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	void __iomem *base = i2c_imx->base;
+	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
+	void __iomem *base = i2c_fsl->base;
 	unsigned int i, temp;
 	int result;
 
 	/* Start I2C transfer */
-	result = i2c_imx_start(adapter);
+	result = i2c_fsl_start(adapter);
 	if (result)
 		goto fail0;
 
 	/* read/write data */
 	for (i = 0; i < num; i++) {
 		if (i && !(msgs[i].flags & I2C_M_DATA_ONLY)) {
-			temp = readb(base + IMX_I2C_I2CR);
+			temp = readb(base + FSL_I2C_I2CR);
 			temp |= I2CR_RSTA;
-			writeb(temp, base + IMX_I2C_I2CR);
+			writeb(temp, base + FSL_I2C_I2CR);
 
-			result = i2c_imx_bus_busy(adapter, 1);
+			result = i2c_fsl_bus_busy(adapter, 1);
 			if (result)
 				goto fail0;
 		}
-		i2c_imx_dump_reg(adapter);
+		i2c_fsl_dump_reg(adapter);
 
 		/* write/read data */
 		if (msgs[i].flags & I2C_M_RD)
-			result = i2c_imx_read(adapter, &msgs[i]);
+			result = i2c_fsl_read(adapter, &msgs[i]);
 		else
-			result = i2c_imx_write(adapter, &msgs[i]);
+			result = i2c_fsl_write(adapter, &msgs[i]);
 		if (result)
 			goto fail0;
 	}
 
 fail0:
 	/* Stop I2C transfer */
-	i2c_imx_stop(adapter);
+	i2c_fsl_stop(adapter);
 
 	return (result < 0) ? result : num;
 }
 
-static int __init i2c_imx_probe(struct device_d *pdev)
+static int __init i2c_fsl_probe(struct device_d *pdev)
 {
-	struct imx_i2c_struct *i2c_imx;
+	struct fsl_i2c_struct *i2c_fsl;
 	struct i2c_platform_data *pdata;
 	int ret;
 
 	pdata = pdev->platform_data;
 
-	i2c_imx = kzalloc(sizeof(struct imx_i2c_struct), GFP_KERNEL);
+	i2c_fsl = kzalloc(sizeof(struct fsl_i2c_struct), GFP_KERNEL);
 
-	/* Setup i2c_imx driver structure */
-	i2c_imx->adapter.master_xfer = i2c_imx_xfer;
-	i2c_imx->adapter.nr = pdev->id;
-	i2c_imx->adapter.dev = pdev;
-	i2c_imx->base = dev_request_mem_region(pdev, 0);
+	/* Setup i2c_fsl driver structure */
+	i2c_fsl->adapter.master_xfer = i2c_fsl_xfer;
+	i2c_fsl->adapter.nr = pdev->id;
+	i2c_fsl->adapter.dev = pdev;
+	i2c_fsl->base = dev_request_mem_region(pdev, 0);
 
 	/* Set up clock divider */
 	if (pdata && pdata->bitrate)
-		i2c_imx_set_clk(i2c_imx, pdata->bitrate);
+		i2c_fsl_set_clk(i2c_fsl, pdata->bitrate);
 	else
-		i2c_imx_set_clk(i2c_imx, IMX_I2C_BIT_RATE);
+		i2c_fsl_set_clk(i2c_fsl, FSL_I2C_BIT_RATE);
 
 	/* Set up chip registers to defaults */
-	writeb(0, i2c_imx->base + IMX_I2C_I2CR);
-	writeb(0, i2c_imx->base + IMX_I2C_I2SR);
+	writeb(0, i2c_fsl->base + FSL_I2C_I2CR);
+	writeb(0, i2c_fsl->base + FSL_I2C_I2SR);
 
 	/* Add I2C adapter */
-	ret = i2c_add_numbered_adapter(&i2c_imx->adapter);
+	ret = i2c_add_numbered_adapter(&i2c_fsl->adapter);
 	if (ret < 0) {
 		dev_err(pdev, "registration failed\n");
 		goto fail;
@@ -495,17 +496,17 @@ static int __init i2c_imx_probe(struct device_d *pdev)
 	return 0;
 
 fail:
-	kfree(i2c_imx);
+	kfree(i2c_fsl);
 	return ret;
 }
 
-static struct driver_d i2c_imx_driver = {
-	.probe	= i2c_imx_probe,
+static struct driver_d i2c_fsl_driver = {
+	.probe	= i2c_fsl_probe,
 	.name	= DRIVER_NAME,
 };
 
-static int __init i2c_adap_imx_init(void)
+static int __init i2c_adap_fsl_init(void)
 {
-	return register_driver(&i2c_imx_driver);
+	return register_driver(&i2c_fsl_driver);
 }
-device_initcall(i2c_adap_imx_init);
+device_initcall(i2c_adap_fsl_init);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
