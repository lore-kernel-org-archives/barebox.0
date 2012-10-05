Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK5Gc-0004P2-HN
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 10:36:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 12:36:21 +0200
Message-Id: <1349433383-8469-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349433383-8469-1-git-send-email-s.hauer@pengutronix.de>
References: <1349433383-8469-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] serial i.MX: Use devtype data to determine uart version
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/devices.c                    |    9 ++-
 arch/arm/mach-imx/include/mach/devices-imx1.h  |    4 +-
 arch/arm/mach-imx/include/mach/devices-imx21.h |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx25.h |   10 +--
 arch/arm/mach-imx/include/mach/devices-imx27.h |    8 +-
 arch/arm/mach-imx/include/mach/devices-imx31.h |   10 +--
 arch/arm/mach-imx/include/mach/devices-imx35.h |    6 +-
 arch/arm/mach-imx/include/mach/devices-imx51.h |    6 +-
 arch/arm/mach-imx/include/mach/devices-imx53.h |    6 +-
 arch/arm/mach-imx/include/mach/devices-imx6.h  |    8 +-
 arch/arm/mach-imx/include/mach/devices.h       |    3 +-
 drivers/serial/serial_imx.c                    |   98 +++++++++++++-----------
 12 files changed, 97 insertions(+), 79 deletions(-)

diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 9fde84f..dcef576 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -23,9 +23,14 @@ struct device_d *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata
 	return imx_add_device("i2c-fsl", id, base, 0x1000, pdata);
 }
 
-struct device_d *imx_add_uart(void *base, int id)
+struct device_d *imx_add_uart_imx1(void *base, int id)
 {
-	return imx_add_device("imx_serial", id, base, 0x1000, NULL);
+	return imx_add_device("imx1-uart", id, base, 0x1000, NULL);
+}
+
+struct device_d *imx_add_uart_imx21(void *base, int id)
+{
+	return imx_add_device("imx21-uart", id, base, 0x1000, NULL);
 }
 
 struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx1.h b/arch/arm/mach-imx/include/mach/devices-imx1.h
index c73113c..391c1a9 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx1.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx1.h
@@ -2,10 +2,10 @@
 
 static inline struct device_d *imx1_add_uart0(void)
 {
-	return imx_add_uart((void *)MX1_UART1_BASE_ADDR, 0);
+	return imx_add_uart_imx1((void *)MX1_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx1_add_uart1(void)
 {
-	return imx_add_uart((void *)MX1_UART2_BASE_ADDR, 1);
+	return imx_add_uart_imx1((void *)MX1_UART2_BASE_ADDR, 1);
 }
diff --git a/arch/arm/mach-imx/include/mach/devices-imx21.h b/arch/arm/mach-imx/include/mach/devices-imx21.h
index 31c5f8c..ad7ee5e 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx21.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx21.h
@@ -3,22 +3,22 @@
 
 static inline struct device_d *imx21_add_uart0(void)
 {
-	return imx_add_uart((void *)MX21_UART1_BASE_ADDR, 0);
+	return imx_add_uart_imx21((void *)MX21_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx21_add_uart1(void)
 {
-	return imx_add_uart((void *)MX21_UART2_BASE_ADDR, 1);
+	return imx_add_uart_imx21((void *)MX21_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx21_add_uart2(void)
 {
-	return imx_add_uart((void *)MX21_UART2_BASE_ADDR, 2);
+	return imx_add_uart_imx21((void *)MX21_UART2_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx21_add_uart3(void)
 {
-	return imx_add_uart((void *)MX21_UART2_BASE_ADDR, 3);
+	return imx_add_uart_imx21((void *)MX21_UART2_BASE_ADDR, 3);
 }
 
 static inline struct device_d *imx21_add_nand(struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
index 86cda35..f082178 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx25.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -33,27 +33,27 @@ static inline struct device_d *imx25_add_spi2(struct spi_imx_master *pdata)
 
 static inline struct device_d *imx25_add_uart0(void)
 {
-	return imx_add_uart((void *)MX25_UART1_BASE_ADDR, 0);
+	return imx_add_uart_imx21((void *)MX25_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx25_add_uart1(void)
 {
-	return imx_add_uart((void *)MX25_UART2_BASE_ADDR, 1);
+	return imx_add_uart_imx21((void *)MX25_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx25_add_uart2(void)
 {
-	return imx_add_uart((void *)MX25_UART3_BASE_ADDR, 2);
+	return imx_add_uart_imx21((void *)MX25_UART3_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx25_add_uart3(void)
 {
-	return imx_add_uart((void *)MX25_UART4_BASE_ADDR, 3);
+	return imx_add_uart_imx21((void *)MX25_UART4_BASE_ADDR, 3);
 }
 
 static inline struct device_d *imx25_add_uart4(void)
 {
-	return imx_add_uart((void *)MX25_UART5_BASE_ADDR, 4);
+	return imx_add_uart_imx21((void *)MX25_UART5_BASE_ADDR, 4);
 }
 
 static inline struct device_d *imx25_add_nand(struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
index 2799343..f143785 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx27.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -23,22 +23,22 @@ static inline struct device_d *imx27_add_i2c1(struct i2c_platform_data *pdata)
 
 static inline struct device_d *imx27_add_uart0(void)
 {
-	return imx_add_uart((void *)MX27_UART1_BASE_ADDR, 0);
+	return imx_add_uart_imx21((void *)MX27_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx27_add_uart1(void)
 {
-	return imx_add_uart((void *)MX27_UART2_BASE_ADDR, 1);
+	return imx_add_uart_imx21((void *)MX27_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx27_add_uart2(void)
 {
-	return imx_add_uart((void *)MX27_UART3_BASE_ADDR, 2);
+	return imx_add_uart_imx21((void *)MX27_UART3_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx27_add_uart3(void)
 {
-	return imx_add_uart((void *)MX27_UART4_BASE_ADDR, 3);
+	return imx_add_uart_imx21((void *)MX27_UART4_BASE_ADDR, 3);
 }
 
 static inline struct device_d *imx27_add_nand(struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
index d45e4e1..72167b0 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx31.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -19,27 +19,27 @@ static inline struct device_d *imx31_add_spi2(struct spi_imx_master *pdata)
 
 static inline struct device_d *imx31_add_uart0(void)
 {
-	return imx_add_uart((void *)MX31_UART1_BASE_ADDR, 0);
+	return imx_add_uart_imx21((void *)MX31_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx31_add_uart1(void)
 {
-	return imx_add_uart((void *)MX31_UART2_BASE_ADDR, 1);
+	return imx_add_uart_imx21((void *)MX31_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx31_add_uart2(void)
 {
-	return imx_add_uart((void *)MX31_UART3_BASE_ADDR, 2);
+	return imx_add_uart_imx21((void *)MX31_UART3_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx31_add_uart3(void)
 {
-	return imx_add_uart((void *)MX31_UART4_BASE_ADDR, 3);
+	return imx_add_uart_imx21((void *)MX31_UART4_BASE_ADDR, 3);
 }
 
 static inline struct device_d *imx31_add_uart4(void)
 {
-	return imx_add_uart((void *)MX31_UART5_BASE_ADDR, 4);
+	return imx_add_uart_imx21((void *)MX31_UART5_BASE_ADDR, 4);
 }
 
 static inline struct device_d *imx31_add_nand(struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
index 27c49e7..06393d4 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx35.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -28,17 +28,17 @@ static inline struct device_d *imx35_add_spi(struct spi_imx_master *pdata)
 
 static inline struct device_d *imx35_add_uart0(void)
 {
-	return imx_add_uart((void *)MX35_UART1_BASE_ADDR, 0);
+	return imx_add_uart_imx21((void *)MX35_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx35_add_uart1(void)
 {
-	return imx_add_uart((void *)MX35_UART2_BASE_ADDR, 1);
+	return imx_add_uart_imx21((void *)MX35_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx35_add_uart2(void)
 {
-	return imx_add_uart((void *)MX35_UART3_BASE_ADDR, 2);
+	return imx_add_uart_imx21((void *)MX35_UART3_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx35_add_nand(struct imx_nand_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
index 4b35c96..83b5a66 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx51.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -29,17 +29,17 @@ static inline struct device_d *imx51_add_i2c1(struct i2c_platform_data *pdata)
 
 static inline struct device_d *imx51_add_uart0(void)
 {
-	return imx_add_uart((void *)MX51_UART1_BASE_ADDR, 0);
+	return imx_add_uart_imx21((void *)MX51_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx51_add_uart1(void)
 {
-	return imx_add_uart((void *)MX51_UART2_BASE_ADDR, 1);
+	return imx_add_uart_imx21((void *)MX51_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx51_add_uart2(void)
 {
-	return imx_add_uart((void *)MX51_UART3_BASE_ADDR, 2);
+	return imx_add_uart_imx21((void *)MX51_UART3_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx51_add_fec(struct fec_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
index 54d7b27..5c3c093 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx53.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
@@ -23,17 +23,17 @@ static inline struct device_d *imx53_add_i2c1(struct i2c_platform_data *pdata)
 
 static inline struct device_d *imx53_add_uart0(void)
 {
-	return imx_add_uart((void *)MX53_UART1_BASE_ADDR, 0);
+	return imx_add_uart_imx21((void *)MX53_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx53_add_uart1(void)
 {
-	return imx_add_uart((void *)MX53_UART2_BASE_ADDR, 1);
+	return imx_add_uart_imx21((void *)MX53_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx53_add_uart2(void)
 {
-	return imx_add_uart((void *)MX53_UART3_BASE_ADDR, 2);
+	return imx_add_uart_imx21((void *)MX53_UART3_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx53_add_fec(struct fec_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices-imx6.h b/arch/arm/mach-imx/include/mach/devices-imx6.h
index c73e488..9310938 100644
--- a/arch/arm/mach-imx/include/mach/devices-imx6.h
+++ b/arch/arm/mach-imx/include/mach/devices-imx6.h
@@ -2,22 +2,22 @@
 
 static inline struct device_d *imx6_add_uart0(void)
 {
-	return imx_add_uart((void *)MX6_UART1_BASE_ADDR, 0);
+	return imx_add_uart_imx21((void *)MX6_UART1_BASE_ADDR, 0);
 }
 
 static inline struct device_d *imx6_add_uart1(void)
 {
-	return imx_add_uart((void *)MX6_UART2_BASE_ADDR, 1);
+	return imx_add_uart_imx21((void *)MX6_UART2_BASE_ADDR, 1);
 }
 
 static inline struct device_d *imx6_add_uart2(void)
 {
-	return imx_add_uart((void *)MX6_UART3_BASE_ADDR, 2);
+	return imx_add_uart_imx21((void *)MX6_UART3_BASE_ADDR, 2);
 }
 
 static inline struct device_d *imx6_add_uart3(void)
 {
-	return imx_add_uart((void *)MX6_UART4_BASE_ADDR, 3);
+	return imx_add_uart_imx21((void *)MX6_UART4_BASE_ADDR, 3);
 }
 
 static inline struct device_d *imx6_add_mmc0(struct esdhc_platform_data *pdata)
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
index da91646..8679ade 100644
--- a/arch/arm/mach-imx/include/mach/devices.h
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -11,7 +11,8 @@
 struct device_d *imx_add_fec(void *base, struct fec_platform_data *pdata);
 struct device_d *imx_add_spi(void *base, int id, struct spi_imx_master *pdata);
 struct device_d *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata);
-struct device_d *imx_add_uart(void *base, int id);
+struct device_d *imx_add_uart_imx1(void *base, int id);
+struct device_d *imx_add_uart_imx21(void *base, int id);
 struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata);
 struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
 struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index a711940..e3fe6ad 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -38,20 +38,6 @@
 #define UBIR	0xa4	/* BRM Incremental Register */
 #define UBMR	0xa8	/* BRM Modulator Register */
 #define UBRC	0xac	/* Baud Rate Count Register */
-#ifdef CONFIG_ARCH_IMX1
-#define BIPR1	0xb0	/* Incremental Preset Register 1 */
-#define BIPR2	0xb4	/* Incremental Preset Register 2 */
-#define BIPR3	0xb8	/* Incremental Preset Register 3 */
-#define BIPR4	0xbc	/* Incremental Preset Register 4 */
-#define BMPR1	0xc0	/* BRM Modulator Register 1 */
-#define BMPR2	0xc4	/* BRM Modulator Register 2 */
-#define BMPR3	0xc8	/* BRM Modulator Register 3 */
-#define BMPR4	0xcc	/* BRM Modulator Register 4 */
-#define UTS	0xd0	/* UART Test Register */
-#else
-#define ONEMS	0xb0 /* One Millisecond register */
-#define UTS	0xb4 /* UART Test Register */
-#endif
 
 /* UART Control Register Bit Fields.*/
 #define  URXD_CHARRDY    (1<<15)
@@ -148,23 +134,29 @@
 /*
  * create default values for different platforms
  */
-#ifdef CONFIG_ARCH_IMX1
-# define	UCR1_VAL (UCR1_UARTCLKEN)
-# define	UCR3_VAL 0
-# define	UCR4_VAL (UCR4_CTSTL_32 | UCR4_REF16)
-#endif
-#if defined CONFIG_ARCH_IMX21 || defined CONFIG_ARCH_IMX27
-# define	UCR1_VAL (UCR1_UARTCLKEN)
-# define	UCR3_VAL (0x700 | UCR3_RXDMUXSEL)
-# define	UCR4_VAL UCR4_CTSTL_32
-#endif
-#if defined CONFIG_ARCH_IMX31 || defined CONFIG_ARCH_IMX35 || \
-	defined CONFIG_ARCH_IMX25 || defined CONFIG_ARCH_IMX51 || \
-	defined CONFIG_ARCH_IMX53 || defined CONFIG_ARCH_IMX6
-# define	UCR1_VAL (0)
-# define	UCR3_VAL (0x700 | UCR3_RXDMUXSEL)
-# define	UCR4_VAL UCR4_CTSTL_32
-#endif
+struct imx_serial_devtype_data {
+	u32 ucr1_val;
+	u32 ucr3_val;
+	u32 ucr4_val;
+	u32 uts;
+	u32 onems;
+};
+
+struct imx_serial_devtype_data imx1_data = {
+	.ucr1_val = UCR1_UARTCLKEN,
+	.ucr3_val = 0,
+	.ucr4_val = UCR4_CTSTL_32 | UCR4_REF16,
+	.uts = 0xd0,
+	.onems = 0,
+};
+
+struct imx_serial_devtype_data imx21_data = {
+	.ucr1_val = 0,
+	.ucr3_val = 0x700 | UCR3_RXDMUXSEL,
+	.ucr4_val = UCR4_CTSTL_32,
+	.uts = 0xb4,
+	.onems = 0xb0,
+};
 
 struct imx_serial_priv {
 	struct console_device cdev;
@@ -172,6 +164,7 @@ struct imx_serial_priv {
 	struct notifier_block notify;
 	void __iomem *regs;
 	struct clk *clk;
+	struct imx_serial_devtype_data *devtype;
 };
 
 static int imx_serial_reffreq(struct imx_serial_priv *priv)
@@ -196,23 +189,23 @@ static int imx_serial_init_port(struct console_device *cdev)
 	void __iomem *regs = priv->regs;
 	uint32_t val;
 
-	writel(UCR1_VAL, regs + UCR1);
+	writel(priv->devtype->ucr1_val, regs + UCR1);
 	writel(UCR2_WS | UCR2_IRTS, regs + UCR2);
-	writel(UCR3_VAL, regs + UCR3);
-	writel(UCR4_VAL, regs + UCR4);
+	writel(priv->devtype->ucr3_val, regs + UCR3);
+	writel(priv->devtype->ucr4_val, regs + UCR4);
 	writel(0x0000002B, regs + UESC);
 	writel(0, regs + UTIM);
 	writel(0, regs + UBIR);
 	writel(0, regs + UBMR);
-	writel(0, regs + UTS);
+	writel(0, regs + priv->devtype->uts);
 
 
 	/* Configure FIFOs */
 	writel(0xa81, regs + UFCR);
 
-#ifdef ONEMS
-	writel(imx_serial_reffreq(priv) / 1000, regs + ONEMS);
-#endif
+
+	if (priv->devtype->onems)
+		writel(imx_serial_reffreq(priv) / 1000, regs + priv->devtype->onems);
 
 	/* Enable FIFOs */
 	val = readl(regs + UCR2);
@@ -240,7 +233,7 @@ static void imx_serial_putc(struct console_device *cdev, char c)
 					struct imx_serial_priv, cdev);
 
 	/* Wait for Tx FIFO not full */
-	while (readl(priv->regs + UTS) & UTS_TXFULL);
+	while (readl(priv->regs + priv->devtype->uts) & UTS_TXFULL);
 
         writel(c, priv->regs + URTX0);
 }
@@ -251,7 +244,7 @@ static int imx_serial_tstc(struct console_device *cdev)
 					struct imx_serial_priv, cdev);
 
 	/* If receive fifo is empty, return false */
-	if (readl(priv->regs + UTS) & UTS_RXEMPTY)
+	if (readl(priv->regs + priv->devtype->uts) & UTS_RXEMPTY)
 		return 0;
 	return 1;
 }
@@ -262,7 +255,7 @@ static int imx_serial_getc(struct console_device *cdev)
 					struct imx_serial_priv, cdev);
 	unsigned char ch;
 
-	while (readl(priv->regs + UTS) & UTS_RXEMPTY);
+	while (readl(priv->regs + priv->devtype->uts) & UTS_RXEMPTY);
 
 	ch = readl(priv->regs + URXD0);
 
@@ -318,9 +311,15 @@ static int imx_serial_probe(struct device_d *dev)
 	struct console_device *cdev;
 	struct imx_serial_priv *priv;
 	uint32_t val;
+	struct imx_serial_devtype_data *devtype;
 	int ret;
 
+	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	if (ret)
+		return ret;
+
 	priv = xzalloc(sizeof(*priv));
+	priv->devtype = devtype;
 	cdev = &priv->cdev;
 	dev->priv = priv;
 
@@ -371,20 +370,33 @@ static void imx_serial_remove(struct device_d *dev)
 static __maybe_unused struct of_device_id imx_serial_dt_ids[] = {
 	{
 		.compatible = "fsl,imx1-uart",
-		.data = 0,
+		.data = (unsigned long)&imx1_data,
 	}, {
 		.compatible = "fsl,imx21-uart",
-		.data = 1,
+		.data = (unsigned long)&imx21_data,
 	}, {
 		/* sentinel */
 	}
 };
 
+static struct platform_device_id imx_serial_ids[] = {
+	{
+		.name = "imx1-uart",
+		.driver_data = (unsigned long)&imx1_data,
+	}, {
+		.name = "imx21-uart",
+		.driver_data = (unsigned long)&imx21_data,
+	}, {
+		/* sentinel */
+	},
+};
+
 static struct driver_d imx_serial_driver = {
 	.name   = "imx_serial",
 	.probe  = imx_serial_probe,
 	.remove = imx_serial_remove,
 	.of_compatible = DRV_OF_COMPAT(imx_serial_dt_ids),
+	.id_table = imx_serial_ids,
 };
 
 static int imx_serial_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
