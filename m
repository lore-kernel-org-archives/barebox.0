Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og116.obsmtp.com ([64.18.0.147])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4CYL-0007y6-FI
 for barebox@lists.infradead.org; Wed, 22 Aug 2012 15:09:09 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 22 Aug 2012 16:08:52 +0100
Message-Id: <1345648133-31721-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
References: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/3] Freescale I2C driver
To: barebox@lists.infradead.org

This patch introduces the Freescale I2C driver along with its configuration
and build files.
The header file asm/fsl_i2c.h is updated with register offsets and the
structure mapping the i2c registers is removed.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/include/asm/fsl_i2c.h |   80 ++++------
 drivers/i2c/busses/Kconfig     |    4 +
 drivers/i2c/busses/Makefile    |    1 +
 drivers/i2c/busses/i2c-fsl.c   |  356 ++++++++++++++++++++++++++++++++++++++++
 4 files changed, 393 insertions(+), 48 deletions(-)
 create mode 100644 drivers/i2c/busses/i2c-fsl.c

diff --git a/arch/ppc/include/asm/fsl_i2c.h b/arch/ppc/include/asm/fsl_i2c.h
index 4f71341..62b077d 100644
--- a/arch/ppc/include/asm/fsl_i2c.h
+++ b/arch/ppc/include/asm/fsl_i2c.h
@@ -1,6 +1,7 @@
 /*
  * Freescale I2C Controller
  *
+ * Copyright 2012 GE Intelligent Platform, Inc.
  * Copyright 2006 Freescale Semiconductor, Inc.
  *
  * Based on earlier versions by Gleb Natapov <gnatapov@mrv.com>,
@@ -32,55 +33,38 @@
 
 #include <asm/types.h>
 
-typedef struct fsl_i2c {
+#define I2C1_BASE_ADDR (CFG_IMMR + 0x3000)
+#define I2C2_BASE_ADDR (CFG_IMMR + 0x3100)
 
-	u8 adr;		/* I2C slave address */
-	u8 res0[3];
-#define I2C_ADR		0xFE
-#define I2C_ADR_SHIFT	1
-#define I2C_ADR_RES	~(I2C_ADR)
+#define FSL_I2C_ADR		0x00
+#define FSL_I2C_FDR		0x04
+#define FSL_I2C_CR		0x08
+#define		I2C_CR_MEN	0x80
+#define		I2C_CR_MIEN	0x40
+#define		I2C_CR_MSTA	0x20
+#define		I2C_CR_MTX	0x10
+#define		I2C_CR_TXAK	0x08
+#define		I2C_CR_RSTA	0x04
+#define		I2C_CR_BCST	0x01
+#define FSL_I2C_SR		0x0C
+#define		I2C_SR_MCF	0x80
+#define		I2C_SR_MAAS	0x40
+#define		I2C_SR_MBB	0x20
+#define		I2C_SR_MAL	0x10
+#define		I2C_SR_BCSTM	0x08
+#define		I2C_SR_SRW	0x04
+#define		I2C_SR_MIF	0x02
+#define		I2C_SR_RXAK	0x01
+#define FSL_I2C_DR		0x10
+#define FSL_I2C_DFSRR		0x14
 
-	u8 fdr;		/* I2C frequency divider register */
-	u8 res1[3];
-#define IC2_FDR		0x3F
-#define IC2_FDR_SHIFT	0
-#define IC2_FDR_RES	~(IC2_FDR)
-
-	u8 cr;		/* I2C control redister	*/
-	u8 res2[3];
-#define I2C_CR_MEN	0x80
-#define I2C_CR_MIEN	0x40
-#define I2C_CR_MSTA	0x20
-#define I2C_CR_MTX	0x10
-#define I2C_CR_TXAK	0x08
-#define I2C_CR_RSTA	0x04
-#define I2C_CR_BCST	0x01
-
-	u8 sr;		/* I2C status register */
-	u8 res3[3];
-#define I2C_SR_MCF	0x80
-#define I2C_SR_MAAS	0x40
-#define I2C_SR_MBB	0x20
-#define I2C_SR_MAL	0x10
-#define I2C_SR_BCSTM	0x08
-#define I2C_SR_SRW	0x04
-#define I2C_SR_MIF	0x02
-#define I2C_SR_RXAK	0x01
-
-	u8 dr;		/* I2C data register */
-	u8 res4[3];
-#define I2C_DR		0xFF
-#define I2C_DR_SHIFT	0
-#define I2C_DR_RES	~(I2C_DR)
-
-	u8 dfsrr;	/* I2C digital filter sampling rate register */
-	u8 res5[3];
-#define I2C_DFSRR	0x3F
-#define I2C_DFSRR_SHIFT	0
-#define I2C_DFSRR_RES	~(I2C_DR)
-
-	/* Fill out the reserved block */
-	u8 res6[0xE8];
-} fsl_i2c_t;
+/*
+ * Platform data
+ */
+struct fsl_i2c_plat {
+	int bus_num;
+	int slaveaddr;
+	int speed;
+};
 
 #endif	/* _ASM_I2C_H_ */
diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 1ce5c00..d8d677a 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -12,4 +12,8 @@ config I2C_OMAP
 	bool "OMAP I2C Master driver"
 	depends on ARCH_OMAP
 
+config I2C_FSL
+	bool "FSL I2C Master driver"
+	depends on ARCH_MPC85XX
+
 endmenu
diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
index e4c5125..dd4b88d 100644
--- a/drivers/i2c/busses/Makefile
+++ b/drivers/i2c/busses/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_I2C_IMX) += i2c-imx.o
 obj-$(CONFIG_I2C_OMAP) += i2c-omap.o
+obj-$(CONFIG_I2C_FSL) += i2c-fsl.o
diff --git a/drivers/i2c/busses/i2c-fsl.c b/drivers/i2c/busses/i2c-fsl.c
new file mode 100644
index 0000000..17ac7da
--- /dev/null
+++ b/drivers/i2c/busses/i2c-fsl.c
@@ -0,0 +1,356 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * Copyright 2006,2009 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ * This I2C driver is derived from U-boot. It different from the original
+ * code as it does byte-write so that page boundary can be crossed.
+ * A version closer to the Linux driver should be developed.
+ */
+
+#include <common.h>
+#include <clock.h>
+#include <config.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <command.h>
+#include <i2c/i2c.h>
+#include <linux/err.h>
+#include <asm/io.h>
+#include <asm/fsl_i2c.h>
+#include <mach/clocks.h>
+
+#define I2C_READ_BIT  1
+#define I2C_WRITE_BIT 0
+
+struct fsl_i2c_dev  {
+	int bus_num;
+	int slaveaddr;
+	int speed;
+	void __iomem *regs;
+	struct i2c_adapter adapter;
+};
+#define to_fsl_i2c_struct(a)	container_of(a, struct fsl_i2c_dev, adapter)
+
+/*
+ * Set the I2C bus speed for a given I2C device
+ *
+ * param dev: the I2C device
+ * i2c_clk: I2C bus clock frequency
+ * speed: the desired speed of the bus
+ *
+ * The I2C device must be stopped before calling this function.
+ *
+ * The return value is the actual bus speed that is set.
+ */
+static unsigned int fsl_set_i2c_bus_speed(const void __iomem *dev,
+		unsigned int i2c_clk, unsigned int speed)
+{
+	unsigned short divider = min((unsigned short)(i2c_clk / speed),
+					(unsigned short) -1);
+
+	/*
+	 * We want to choose an FDR/DFSR that generates an I2C bus speed that
+	 * is equal to or lower than the requested speed.  That means that we
+	 * want the first divider that is equal to or greater than the
+	 * calculated divider.
+	 */
+	u8 dfsr, fdr = 0x31; /* Default if no FDR found */
+	/* a, b and dfsr matches identifiers A,B and C respectively in AN2919 */
+	unsigned short a, b, ga, gb;
+	unsigned long c_div, est_div;
+
+	/*
+	 * Condition 1: dfsr <= 50ns/T (T=period of I2C source clock in ns).
+	 * or (dfsr * T) <= 50ns.
+	 * Translate to dfsr = 5 * Frequency / 100,000,000
+	 */
+	dfsr = (5 * (i2c_clk / 1000)) / 100000;
+	debug("Requested speed:%d, i3c_clk:%d\n", speed, i2c_clk);
+	if (!dfsr)
+		dfsr = 1;
+
+	est_div = ~0;
+	for (ga = 0x4, a = 10; a <= 30; ga++, a += 2) {
+		for (gb = 0; gb < 8; gb++) {
+			b = 16 << gb;
+			c_div = b * (a + ((3*dfsr)/b)*2);
+			if ((c_div > divider) && (c_div < est_div)) {
+				unsigned short bin_gb, bin_ga;
+
+				est_div = c_div;
+				bin_gb = gb << 2;
+				bin_ga = (ga & 0x3) | ((ga & 0x4) << 3);
+				fdr = bin_gb | bin_ga;
+				speed = i2c_clk / est_div;
+				debug("FDR:0x%.2x, div:%ld, ga:0x%x, gb:0x%x, "
+				      "a:%d, b:%d, speed:%d\n",
+				      fdr, est_div, ga, gb, a, b, speed);
+				/* Condition 2 not accounted for */
+				debug("Tr <= %d ns\n",
+				      (b - 3 * dfsr) * 1000000 /
+				      (i2c_clk / 1000));
+			}
+		}
+		if (a == 20)
+			a += 2;
+		if (a == 24)
+			a += 4;
+	}
+	debug("divider:%d, est_div:%ld, DFSR:%d\n", divider, est_div, dfsr);
+	debug("FDR:0x%.2x, speed:%d\n", fdr, speed);
+	writeb(dfsr, dev + FSL_I2C_DFSRR);	/* set default filter */
+	writeb(fdr, dev + FSL_I2C_FDR);		/* set bus speed */
+
+	return speed;
+}
+
+static void fsl_i2c_init(struct fsl_i2c_dev *i2c_dev)
+{
+	void __iomem *dev = i2c_dev->regs;
+	unsigned int i2c_clk;
+
+	i2c_clk =  fsl_get_i2c_freq();
+
+	writeb(0, dev + FSL_I2C_CR);		/* stop I2C controller */
+	udelay(5);
+	fsl_set_i2c_bus_speed(dev, i2c_clk, i2c_dev->speed);
+	writeb(i2c_dev->slaveaddr << 1, dev + FSL_I2C_ADR);
+	writeb(0x0, dev + FSL_I2C_SR);		/* clear status register */
+	writeb(I2C_CR_MEN, dev + FSL_I2C_CR);	/* start I2C controller  */
+}
+
+static int i2c_wait4bus(void __iomem *i2c)
+{
+	uint64_t start;
+
+	start = get_time_ns();
+	while (readb(i2c + FSL_I2C_SR) & I2C_SR_MBB) {
+		if (is_timeout(start, 100 * MSECOND)) {
+			debug("i2c_wait4bus timeout for I2C bus\n");
+			return -EIO;
+		}
+	}
+
+	return 0;
+}
+
+static inline int i2c_wait(void __iomem *i2c, int write)
+{
+	int csr;
+	uint64_t start;
+
+	start = get_time_ns();
+	while (1) {
+		if (is_timeout(start, 100 * MSECOND)) {
+			debug("timeout waiting for I2C bus\n");
+			return -EIO;
+		}
+
+		csr = readb(i2c + FSL_I2C_SR);
+		if (!(csr & I2C_SR_MIF))
+			continue;
+		/* Read again to allow register to stabilise */
+		csr = readb(i2c + FSL_I2C_SR);
+		writeb(0x0, i2c + FSL_I2C_SR);
+
+		if (csr & I2C_SR_MAL) {
+			debug("i2c_wait: MAL\n");
+			return -EIO;
+		}
+
+		if (!(csr & I2C_SR_MCF)) {
+			debug("i2c_wait: unfinished\n");
+			return -EIO;
+		}
+
+		if (write == I2C_WRITE_BIT && (csr & I2C_SR_RXAK)) {
+			debug("i2c_wait: No RXACK\n");
+			return -EIO;
+		}
+
+		return 0;
+	}
+
+	return -EIO;
+}
+
+static inline int i2c_write_addr(void __iomem *i2c, u8 dev, u8 dir, int rsta)
+{
+	writeb(I2C_CR_MEN | I2C_CR_MSTA | I2C_CR_MTX
+	       | (rsta ? I2C_CR_RSTA : 0), i2c + FSL_I2C_CR);
+
+	writeb((dev << 1) | dir, i2c + FSL_I2C_DR);
+
+	if (i2c_wait(i2c, I2C_WRITE_BIT) < 0) {
+		debug("i2c_write_addr failed i2c_wait\n");
+		return 0;
+	}
+
+	return 1;
+}
+
+static inline int __i2c_write(void __iomem *i2c, u8 *data, int length)
+{
+	int i;
+
+	for (i = 0; i < length; i++) {
+		writeb(data[i], i2c + FSL_I2C_DR);
+
+		if (i2c_wait(i2c, I2C_WRITE_BIT) < 0)
+			break;
+	}
+
+	return i;
+}
+
+static inline int __i2c_read(void __iomem *i2c, u8 *data, int length)
+{
+	int i;
+
+	writeb(I2C_CR_MEN | I2C_CR_MSTA | ((length == 1) ? I2C_CR_TXAK : 0),
+	       i2c + FSL_I2C_CR);
+
+	/* dummy read */
+	readb(i2c + FSL_I2C_DR);
+
+	for (i = 0; i < length; i++) {
+		if (i2c_wait(i2c, I2C_READ_BIT) < 0)
+			break;
+
+		/* Generate ack on last next to last byte */
+		if (i == (length - 2))
+			writeb(I2C_CR_MEN | I2C_CR_MSTA | I2C_CR_TXAK,
+			       i2c + FSL_I2C_CR);
+
+		/* Do not generate stop on last byte */
+		if (i == (length - 1))
+			writeb(I2C_CR_MEN | I2C_CR_MSTA | I2C_CR_MTX,
+			       i2c + FSL_I2C_CR);
+
+		data[i] = readb(i2c +  FSL_I2C_DR);
+	}
+
+	return i;
+}
+
+static inline void fsl_i2c_stop(void __iomem *i2c)
+{
+	writeb(I2C_CR_MEN, i2c + FSL_I2C_CR);
+}
+
+static int fsl_i2c_read(void __iomem *i2c, u8 dev, u8 *data, int len, int rsta)
+{
+	int l = 0;
+
+	if (i2c_write_addr(i2c, dev, I2C_READ_BIT, rsta) != 0)
+		l = __i2c_read(i2c, data, len);
+
+	if (l == len)
+		return 0;
+
+	return -EIO;
+}
+
+static int fsl_i2c_write(void __iomem *i2c, u8 dev, u8 *data, int len, int rsta)
+{
+	if ((i2c_wait4bus(i2c) >= 0) &&
+		(i2c_write_addr(i2c, dev, I2C_WRITE_BIT, rsta) != 0) &&
+		(__i2c_write(i2c, data, len) == len)) {
+		return 0;
+	} else
+		return -EIO;
+}
+
+static int fsl_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
+{
+	struct fsl_i2c_dev *i2cdev = to_fsl_i2c_struct(adap);
+	void __iomem *i2c = i2cdev->regs;
+	struct i2c_msg *pmsg;
+	int ix;
+	int ret = 0;
+
+	for (ix = 0; ret >= 0 && ix < num; ix++) {
+		pmsg = &msgs[ix];
+
+		debug("%s %d bytes to 0x%02x - %d of %d messages\n",
+			pmsg->flags & I2C_M_RD ? "Read" : "Write",
+			pmsg->len, pmsg->addr, ix + 1, num);
+
+		if (pmsg->len == 0)
+			return -EINVAL;
+
+		if (pmsg->flags & I2C_M_RD)
+			ret = fsl_i2c_read(i2c, pmsg->addr, pmsg->buf,
+					pmsg->len, ix);
+		else
+			ret = fsl_i2c_write(i2c, pmsg->addr, pmsg->buf,
+					pmsg->len, ix);
+	}
+
+	fsl_i2c_stop(i2c);
+
+	return (ret < 0) ? ret : num;
+}
+
+static int fsl_i2c_probe(struct device_d *pdev)
+{
+	struct fsl_i2c_dev *i2cdev;
+	struct fsl_i2c_plat *pdata = (struct fsl_i2c_plat *)pdev->platform_data;
+	int ret = 0;
+
+	i2cdev = kzalloc(sizeof(struct fsl_i2c_dev), GFP_KERNEL);
+	if (!i2cdev)
+		return -ENOMEM;
+
+	i2cdev->bus_num = pdata->bus_num;
+	i2cdev->regs = dev_request_mem_region(pdev, 0);
+	i2cdev->speed =  pdata->speed;
+	i2cdev->slaveaddr = pdata->slaveaddr;
+
+	debug(pdev, "bus %d at %d Hz\n", i2cdev->bus_num, i2cdev->speed);
+
+	fsl_i2c_init(i2cdev);
+
+	i2cdev->adapter.master_xfer = fsl_i2c_xfer,
+	i2cdev->adapter.nr = i2cdev->bus_num;
+	i2cdev->adapter.dev = pdev;
+
+	/* Add I2C adapter */
+	ret = i2c_add_numbered_adapter(&i2cdev->adapter);
+	if (ret < 0) {
+		dev_err(pdev, "registration failed\n");
+		goto fail;
+	}
+
+	return 0;
+fail:
+	kfree(i2cdev);
+	return ret;
+}
+
+static struct driver_d i2c_fsl_driver = {
+		.probe = fsl_i2c_probe,
+		.name = "fsl_i2c",
+};
+
+static int __init fsl_i2c_init_driver(void)
+{
+	return register_driver(&i2c_fsl_driver);
+}
+
+device_initcall(fsl_i2c_init_driver);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
