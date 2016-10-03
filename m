Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qz-0008Gg-8E
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:52 +0000
Received: by mail-pa0-x241.google.com with SMTP id hh10so1403796pac.0
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:51 -0700
Message-Id: <1475505657-898-15-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/20] i.MX: i2c-imx: Add Vybrid support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Vybrid flavour of the I2C controller requires some additional quirks on
part of the driver. This commit ports those quirks code from analogous
Linux kernel driver.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/busses/i2c-imx.c | 215 ++++++++++++++++++++++++++++++++-----------
 1 file changed, 160 insertions(+), 55 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index e407896..dbc76c2 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -43,6 +43,7 @@
 #include <linux/err.h>
 #include <pinctrl.h>
 #include <of_gpio.h>
+#include <of_device.h>
 
 #include <io.h>
 #include <i2c/i2c.h>
@@ -54,14 +55,25 @@
 /* Default value */
 #define FSL_I2C_BIT_RATE	100000	/* 100kHz */
 
-/* FSL I2C registers */
+/* IMX I2C registers:
+ * the I2C register offset is different between SoCs,
+ * to provid support for all these chips, split the
+ * register offset into a fixed base address and a
+ * variable shift value, then the full register offset
+ * will be calculated by
+ * reg_off = ( reg_base_addr << reg_shift)
+ */
 #define FSL_I2C_IADR	0x00	/* i2c slave address */
-#define FSL_I2C_IFDR	0x04	/* i2c frequency divider */
-#define FSL_I2C_I2CR	0x08	/* i2c control */
-#define FSL_I2C_I2SR	0x0C	/* i2c status */
-#define FSL_I2C_I2DR	0x10	/* i2c transfer data */
+#define FSL_I2C_IFDR	0x01	/* i2c frequency divider */
+#define FSL_I2C_I2CR	0x02	/* i2c control */
+#define FSL_I2C_I2SR	0x03	/* i2c status */
+#define FSL_I2C_I2DR	0x04	/* i2c transfer data */
 #define FSL_I2C_DFSRR	0x14	/* i2c digital filter sampling rate */
 
+#define IMX_I2C_REGSHIFT	2
+#define VF610_I2C_REGSHIFT	0
+
+
 /* Bits of FSL I2C registers */
 #define I2SR_RXAK	0x01
 #define I2SR_IIF	0x02
@@ -77,6 +89,22 @@
 #define I2CR_IIEN	0x40
 #define I2CR_IEN	0x80
 
+/* register bits different operating codes definition:
+ * 1) I2SR: Interrupt flags clear operation differ between SoCs:
+ * - write zero to clear(w0c) INT flag on i.MX,
+ * - but write one to clear(w1c) INT flag on Vybrid.
+ * 2) I2CR: I2C module enable operation also differ between SoCs:
+ * - set I2CR_IEN bit enable the module on i.MX,
+ * - but clear I2CR_IEN bit enable the module on Vybrid.
+ */
+#define I2SR_CLR_OPCODE_W0C	0x0
+#define I2SR_CLR_OPCODE_W1C	(I2SR_IAL | I2SR_IIF)
+#define I2CR_IEN_OPCODE_0	0x0
+#define I2CR_IEN_OPCODE_1	I2CR_IEN
+
+#define I2C_PM_TIMEOUT		10 /* ms */
+
+
 /*
  * sorted list of clock divider, register value pairs
  * taken from table 26-5, p.26-9, Freescale i.MX
@@ -85,8 +113,14 @@
  *
  * Duplicated divider values removed from list
  */
+struct fsl_i2c_clk_pair {
+	u16	div;
+	u16	val;
+};
+
 #ifndef CONFIG_PPC
-static u16 i2c_clk_div[50][2] = {
+
+static struct fsl_i2c_clk_pair imx_i2c_clk_div[] = {
 	{ 22,	0x20 }, { 24,	0x21 }, { 26,	0x22 }, { 28,	0x23 },
 	{ 30,	0x00 },	{ 32,	0x24 }, { 36,	0x25 }, { 40,	0x26 },
 	{ 42,	0x03 }, { 44,	0x27 },	{ 48,	0x28 }, { 52,	0x05 },
@@ -101,8 +135,36 @@ static u16 i2c_clk_div[50][2] = {
 	{ 1920,	0x1B },	{ 2048,	0x3F }, { 2304,	0x1C }, { 2560,	0x1D },
 	{ 3072,	0x1E }, { 3840,	0x1F }
 };
+
+/* Vybrid VF610 clock divider, register value pairs */
+static struct fsl_i2c_clk_pair vf610_i2c_clk_div[] = {
+	{ 20,   0x00 }, { 22,   0x01 }, { 24,   0x02 }, { 26,   0x03 },
+	{ 28,   0x04 }, { 30,   0x05 }, { 32,   0x09 }, { 34,   0x06 },
+	{ 36,   0x0A }, { 40,   0x07 }, { 44,   0x0C }, { 48,   0x0D },
+	{ 52,   0x43 }, { 56,   0x0E }, { 60,   0x45 }, { 64,   0x12 },
+	{ 68,   0x0F }, { 72,   0x13 }, { 80,   0x14 }, { 88,   0x15 },
+	{ 96,   0x19 }, { 104,  0x16 }, { 112,  0x1A }, { 128,  0x17 },
+	{ 136,  0x4F }, { 144,  0x1C }, { 160,  0x1D }, { 176,  0x55 },
+	{ 192,  0x1E }, { 208,  0x56 }, { 224,  0x22 }, { 228,  0x24 },
+	{ 240,  0x1F }, { 256,  0x23 }, { 288,  0x5C }, { 320,  0x25 },
+	{ 384,  0x26 }, { 448,  0x2A }, { 480,  0x27 }, { 512,  0x2B },
+	{ 576,  0x2C }, { 640,  0x2D }, { 768,  0x31 }, { 896,  0x32 },
+	{ 960,  0x2F }, { 1024, 0x33 }, { 1152, 0x34 }, { 1280, 0x35 },
+	{ 1536, 0x36 }, { 1792, 0x3A }, { 1920, 0x37 }, { 2048, 0x3B },
+	{ 2304, 0x3C }, { 2560, 0x3D }, { 3072, 0x3E }, { 3584, 0x7A },
+	{ 3840, 0x3F }, { 4096, 0x7B }, { 5120, 0x7D }, { 6144, 0x7E },
+};
+
 #endif
 
+struct fsl_i2c_hwdata {
+	unsigned		regshift;
+	struct fsl_i2c_clk_pair	*clk_div;
+	unsigned		ndivs;
+	unsigned		i2sr_clr_opcode;
+	unsigned		i2cr_ien_opcode;
+};
+
 struct fsl_i2c_struct {
 	void __iomem		*base;
 	struct clk		*clk;
@@ -112,6 +174,7 @@ struct fsl_i2c_struct {
 	unsigned int		ifdr;	/* FSL_I2C_IFDR */
 	unsigned int		dfsrr;  /* FSL_I2C_DFSRR */
 	struct i2c_bus_recovery_info rinfo;
+	const struct fsl_i2c_hwdata *hwdata;
 };
 #define to_fsl_i2c_struct(a)	container_of(a, struct fsl_i2c_struct, adapter)
 
@@ -144,16 +207,28 @@ static inline void i2c_fsl_dump_reg(struct i2c_adapter *adapter)
 }
 #endif
 
+static inline void fsl_i2c_write_reg(unsigned int val,
+				     struct fsl_i2c_struct *i2c_fsl,
+				     unsigned int reg)
+{
+	writeb(val, i2c_fsl->base + (reg << i2c_fsl->hwdata->regshift));
+}
+
+static inline unsigned char fsl_i2c_read_reg(struct fsl_i2c_struct *i2c_fsl,
+					     unsigned int reg)
+{
+	return readb(i2c_fsl->base + (reg << i2c_fsl->hwdata->regshift));
+}
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
@@ -172,12 +247,11 @@ static int i2c_fsl_bus_busy(struct i2c_adapter *adapter, int for_busy)
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
 
@@ -186,7 +260,9 @@ static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
 			return -EIO;
 		}
 	}
-	writeb(0, base + FSL_I2C_I2SR);
+
+	fsl_i2c_write_reg(i2c_fsl->hwdata->i2sr_clr_opcode,
+			  i2c_fsl, FSL_I2C_I2SR);
 
 	return 0;
 }
@@ -194,12 +270,11 @@ static int i2c_fsl_trx_complete(struct i2c_adapter *adapter)
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
 
@@ -215,25 +290,28 @@ static int i2c_fsl_acked(struct i2c_adapter *adapter)
 static int i2c_fsl_start(struct i2c_adapter *adapter)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	unsigned int temp = 0;
 	int result;
 
-	writeb(i2c_fsl->ifdr, base + FSL_I2C_IFDR);
+	fsl_i2c_write_reg(i2c_fsl->ifdr, i2c_fsl, FSL_I2C_IFDR);
+#ifdef CONFIG_PPC
 	if (i2c_fsl->dfsrr != -1)
 		writeb(i2c_fsl->dfsrr, base + FSL_I2C_DFSRR);
+#endif
 
 	/* Enable I2C controller */
-	writeb(0, base + FSL_I2C_I2SR);
-	writeb(I2CR_IEN, base + FSL_I2C_I2CR);
+	fsl_i2c_write_reg(i2c_fsl->hwdata->i2sr_clr_opcode,
+			  i2c_fsl, FSL_I2C_I2SR);
+	fsl_i2c_write_reg(i2c_fsl->hwdata->i2cr_ien_opcode,
+			  i2c_fsl, FSL_I2C_I2CR);
 
 	/* Wait controller to be stable */
 	udelay(100);
 
 	/* Start I2C transaction */
-	temp = readb(base + FSL_I2C_I2CR);
+	temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 	temp |= I2CR_MSTA;
-	writeb(temp, base + FSL_I2C_I2CR);
+	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 
 	result = i2c_fsl_bus_busy(adapter, 1);
 	if (result) {
@@ -246,7 +324,7 @@ static int i2c_fsl_start(struct i2c_adapter *adapter)
 	i2c_fsl->stopped = 0;
 
 	temp |= I2CR_MTX | I2CR_TXAK;
-	writeb(temp, base + FSL_I2C_I2CR);
+	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 
 	return result;
 }
@@ -254,14 +332,13 @@ static int i2c_fsl_start(struct i2c_adapter *adapter)
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
+		fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 		/* wait for the stop condition to be send, otherwise the i2c
 		 * controller is disabled before the STOP is sent completely */
 		i2c_fsl->stopped = i2c_fsl_bus_busy(adapter, 0) ? 0 : 1;
@@ -273,7 +350,8 @@ static void i2c_fsl_stop(struct i2c_adapter *adapter)
 	}
 
 	/* Disable I2C controller, and force our state to stopped */
-	writeb(0, base + FSL_I2C_I2CR);
+	temp = i2c_fsl->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
+	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 }
 
 #ifdef CONFIG_PPC
@@ -349,6 +427,7 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 			    unsigned int rate)
 {
+	struct fsl_i2c_clk_pair *i2c_clk_div = i2c_fsl->hwdata->clk_div;
 	unsigned int i2c_clk_rate;
 	unsigned int div;
 	int i;
@@ -356,16 +435,16 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 	/* Divider value calculation */
 	i2c_clk_rate = clk_get_rate(i2c_fsl->clk);
 	div = (i2c_clk_rate + rate - 1) / rate;
-	if (div < i2c_clk_div[0][0])
+	if (div < i2c_clk_div[0].div)
 		i = 0;
-	else if (div > i2c_clk_div[ARRAY_SIZE(i2c_clk_div) - 1][0])
-		i = ARRAY_SIZE(i2c_clk_div) - 1;
+	else if (div > i2c_clk_div[i2c_fsl->hwdata->ndivs - 1].div)
+		i = i2c_clk_div[i2c_fsl->hwdata->ndivs - 1].div - 1;
 	else
-		for (i = 0; i2c_clk_div[i][0] < div; i++)
+		for (i = 0; i2c_clk_div[i].div < div; i++)
 			;
 
 	/* Store divider value */
-	i2c_fsl->ifdr = i2c_clk_div[i][1];
+	i2c_fsl->ifdr = i2c_clk_div[i].val;
 
 	/*
 	 * There dummy delay is calculated.
@@ -374,20 +453,19 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 	 * to fix chip hardware bug.
 	 */
 	i2c_fsl->disable_delay =
-		(500000U * i2c_clk_div[i][0] + (i2c_clk_rate / 2) - 1) /
+		(500000U * i2c_clk_div[i].div + (i2c_clk_rate / 2) - 1) /
 		(i2c_clk_rate / 2);
 
 	dev_dbg(&i2c_fsl->adapter.dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
 		__func__, i2c_clk_rate, div);
 	dev_dbg(&i2c_fsl->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
-		__func__, i2c_clk_div[i][1], i2c_clk_div[i][0]);
+		__func__, i2c_clk_div[i].val, i2c_clk_div[i].div);
 }
 #endif
 
 static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	int i, result;
 
 	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
@@ -396,7 +474,8 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			__func__, msgs->addr << 1);
 
 		/* write slave address */
-		writeb(msgs->addr << 1, base + FSL_I2C_I2DR);
+		fsl_i2c_write_reg(msgs->addr << 1, i2c_fsl,
+				  FSL_I2C_I2DR);
 
 		result = i2c_fsl_trx_complete(adapter);
 		if (result)
@@ -411,7 +490,8 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 		dev_dbg(&adapter->dev,
 			"<%s> write byte: B%d=0x%02X\n",
 			__func__, i, msgs->buf[i]);
-		writeb(msgs->buf[i], base + FSL_I2C_I2DR);
+		fsl_i2c_write_reg(msgs->buf[i], i2c_fsl,
+				  FSL_I2C_I2DR);
 
 		result = i2c_fsl_trx_complete(adapter);
 		if (result)
@@ -426,12 +506,12 @@ static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
 	int i, result;
 	unsigned int temp;
 
 	/* clear IIF */
-	writeb(0x0, base + FSL_I2C_I2SR);
+	fsl_i2c_write_reg(i2c_fsl->hwdata->i2sr_clr_opcode,
+			  i2c_fsl, FSL_I2C_I2SR);
 
 	if ( !(msgs->flags & I2C_M_DATA_ONLY) ) {
 		dev_dbg(&adapter->dev,
@@ -439,7 +519,8 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			__func__, (msgs->addr << 1) | 0x01);
 
 		/* write slave address */
-		writeb((msgs->addr << 1) | 0x01, base + FSL_I2C_I2DR);
+		fsl_i2c_write_reg((msgs->addr << 1) | 0x01, i2c_fsl,
+				  FSL_I2C_I2DR);
 
 		result = i2c_fsl_trx_complete(adapter);
 		if (result)
@@ -450,13 +531,13 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 	}
 
 	/* setup bus to read data */
-	temp = readb(base + FSL_I2C_I2CR);
+	temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 	temp &= ~I2CR_MTX;
 	if (msgs->len - 1)
 		temp &= ~I2CR_TXAK;
-	writeb(temp, base + FSL_I2C_I2CR);
+	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 
-	readb(base + FSL_I2C_I2DR);	/* dummy read */
+	fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2DR); /* dummy read */
 
 	/* read data */
 	for (i = 0; i < msgs->len; i++) {
@@ -469,9 +550,9 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			 * It must generate STOP before read I2DR to prevent
 			 * controller from generating another clock cycle
 			 */
-			temp = readb(base + FSL_I2C_I2CR);
+			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 			temp &= ~(I2CR_MSTA | I2CR_MTX);
-			writeb(temp, base + FSL_I2C_I2CR);
+			fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 
 			/*
 			 * adding this delay helps on low bitrates
@@ -481,11 +562,11 @@ static int i2c_fsl_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
 			i2c_fsl_bus_busy(adapter, 0);
 			i2c_fsl->stopped = 1;
 		} else if (i == (msgs->len - 2)) {
-			temp = readb(base + FSL_I2C_I2CR);
+			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 			temp |= I2CR_TXAK;
-			writeb(temp, base + FSL_I2C_I2CR);
+			fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 		}
-		msgs->buf[i] = readb(base + FSL_I2C_I2DR);
+		msgs->buf[i] = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2DR);
 
 		dev_dbg(&adapter->dev, "<%s> read byte: B%d=0x%02X\n",
 			__func__, i, msgs->buf[i]);
@@ -497,7 +578,7 @@ static int i2c_fsl_xfer(struct i2c_adapter *adapter,
 			struct i2c_msg *msgs, int num)
 {
 	struct fsl_i2c_struct *i2c_fsl = to_fsl_i2c_struct(adapter);
-	void __iomem *base = i2c_fsl->base;
+
 	unsigned int i, temp;
 	int result;
 
@@ -514,9 +595,9 @@ static int i2c_fsl_xfer(struct i2c_adapter *adapter,
 	/* read/write data */
 	for (i = 0; i < num; i++) {
 		if (i && !(msgs[i].flags & I2C_M_DATA_ONLY)) {
-			temp = readb(base + FSL_I2C_I2CR);
+			temp = fsl_i2c_read_reg(i2c_fsl, FSL_I2C_I2CR);
 			temp |= I2CR_RSTA;
-			writeb(temp, base + FSL_I2C_I2CR);
+			fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
 
 			result = i2c_fsl_bus_busy(adapter, 1);
 			if (result)
@@ -600,6 +681,13 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 		goto fail;
 	}
 #endif
+
+	i2c_fsl->hwdata = of_device_get_match_data(pdev);
+	if (!i2c_fsl->hwdata) {
+		ret = -EINVAL;
+		goto fail;
+	}
+
 	/* Setup i2c_fsl driver structure */
 	i2c_fsl->adapter.master_xfer = i2c_fsl_xfer;
 	i2c_fsl->adapter.nr = pdev->id;
@@ -623,8 +711,9 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 		i2c_fsl_set_clk(i2c_fsl, FSL_I2C_BIT_RATE);
 
 	/* Set up chip registers to defaults */
-	writeb(0, i2c_fsl->base + FSL_I2C_I2CR);
-	writeb(0, i2c_fsl->base + FSL_I2C_I2SR);
+	fsl_i2c_write_reg(i2c_fsl->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
+			  i2c_fsl, FSL_I2C_I2CR);
+	fsl_i2c_write_reg(i2c_fsl->hwdata->i2sr_clr_opcode, i2c_fsl, FSL_I2C_I2SR);
 
 	/* Add I2C adapter */
 	ret = i2c_add_numbered_adapter(&i2c_fsl->adapter);
@@ -640,12 +729,28 @@ fail:
 	return ret;
 }
 
+static const struct fsl_i2c_hwdata imx21_i2c_hwdata = {
+	.regshift		= IMX_I2C_REGSHIFT,
+	.clk_div		= imx_i2c_clk_div,
+	.ndivs			= ARRAY_SIZE(imx_i2c_clk_div),
+	.i2sr_clr_opcode	= I2SR_CLR_OPCODE_W0C,
+	.i2cr_ien_opcode	= I2CR_IEN_OPCODE_1,
+
+};
+
+static const struct fsl_i2c_hwdata vf610_i2c_hwdata = {
+	.regshift		= VF610_I2C_REGSHIFT,
+	.clk_div		= vf610_i2c_clk_div,
+	.ndivs			= ARRAY_SIZE(vf610_i2c_clk_div),
+	.i2sr_clr_opcode	= I2SR_CLR_OPCODE_W1C,
+	.i2cr_ien_opcode	= I2CR_IEN_OPCODE_0,
+
+};
+
 static __maybe_unused struct of_device_id imx_i2c_dt_ids[] = {
-	{
-		.compatible = "fsl,imx21-i2c",
-	}, {
-		/* sentinel */
-	}
+	{ .compatible = "fsl,imx21-i2c", .data = &imx21_i2c_hwdata, },
+	{ .compatible = "fsl,vf610-i2c", .data = &vf610_i2c_hwdata, },
+	{ /* sentinel */ }
 };
 
 static struct driver_d i2c_fsl_driver = {
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
