Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OvAIy-0007iK-2r
	for barebox@lists.infradead.org; Mon, 13 Sep 2010 14:46:54 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 13 Sep 2010 16:45:43 +0200
Message-Id: <1284389143-23630-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1284389143-23630-1-git-send-email-plagnioj@jcrosoft.com>
References: <1284389143-23630-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============2144624427=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] i2c: move busses to drivers/i2c/busses
To: barebox@lists.infradead.org

--===============2144624427==
Content-Type: text/plain

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/i2c/Kconfig           |    8 +-
 drivers/i2c/Makefile          |    5 +-
 drivers/i2c/busses/Kconfig    |   15 +
 drivers/i2c/busses/Makefile   |    2 +
 drivers/i2c/busses/i2c-imx.c  |  520 ++++++++++++++++++++++++++
 drivers/i2c/busses/i2c-omap.c |  803 +++++++++++++++++++++++++++++++++++++++++
 drivers/i2c/i2c-imx.c         |  520 --------------------------
 drivers/i2c/i2c-omap.c        |  803 -----------------------------------------
 8 files changed, 1342 insertions(+), 1334 deletions(-)
 create mode 100644 drivers/i2c/busses/Kconfig
 create mode 100644 drivers/i2c/busses/Makefile
 create mode 100644 drivers/i2c/busses/i2c-imx.c
 create mode 100644 drivers/i2c/busses/i2c-omap.c
 delete mode 100644 drivers/i2c/i2c-imx.c
 delete mode 100644 drivers/i2c/i2c-omap.c

diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index a6138aa..9ce1655 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -3,13 +3,7 @@ menuconfig I2C
 
 if I2C
 
-config I2C_IMX
-	bool "i.MX I2C Master driver"
-	depends on ARCH_IMX
-
-config I2C_OMAP
-	bool "OMAP I2C Master driver"
-	depends on ARCH_OMAP
+source drivers/i2c/busses/Kconfig
 
 config I2C_MC13892
 	bool "MC13892 a.k.a. PMIC driver"
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index daa79dd..0584b55 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -1,7 +1,4 @@
-obj-$(CONFIG_I2C) += i2c.o
-
-obj-$(CONFIG_I2C_IMX) += i2c-imx.o
-obj-$(CONFIG_I2C_OMAP) += i2c-omap.o
+obj-$(CONFIG_I2C) += i2c.o busses/
 
 obj-$(CONFIG_I2C_MC13892) += mc13892.o
 obj-$(CONFIG_I2C_MC34704) += mc34704.o
diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
new file mode 100644
index 0000000..4b170ca
--- /dev/null
+++ b/drivers/i2c/busses/Kconfig
@@ -0,0 +1,15 @@
+#
+# Sensor device configuration
+#
+
+menu "I2C Hardware Bus support"
+
+config I2C_IMX
+	bool "i.MX I2C Master driver"
+	depends on ARCH_IMX
+
+config I2C_OMAP
+	bool "OMAP I2C Master driver"
+	depends on ARCH_OMAP
+
+endmenu
diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
new file mode 100644
index 0000000..e4c5125
--- /dev/null
+++ b/drivers/i2c/busses/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_I2C_IMX) += i2c-imx.o
+obj-$(CONFIG_I2C_OMAP) += i2c-omap.o
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
new file mode 100644
index 0000000..cc64d94
--- /dev/null
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -0,0 +1,520 @@
+/*
+ * Copyright (C) 2002 Motorola GSG-China
+ *               2009 Marc Kleine-Budde, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
+ * USA.
+ *
+ * Author:
+ *	Darius Augulis, Teltonika Inc.
+ *
+ * Desc.:
+ *  Implementation of I2C Adapter/Algorithm Driver
+ *  for I2C Bus integrated in Freescale i.MX/MXC processors
+ *
+ * Derived from Motorola GSG China I2C example driver
+ *
+ * Copyright (C) 2005 Torsten Koschorrek <koschorrek at synertronixx.de
+ * Copyright (C) 2005 Matthias Blaschke <blaschke at synertronixx.de
+ * Copyright (C) 2007 RightHand Technologies, Inc.
+ * Copyright (C) 2008 Darius Augulis <darius.augulis at teltonika.lt>
+ *
+ */
+
+#include <clock.h>
+#include <common.h>
+#include <driver.h>
+#include <gpio.h>
+#include <init.h>
+#include <malloc.h>
+#include <types.h>
+#include <xfuncs.h>
+
+#include <linux/err.h>
+
+#include <asm/io.h>
+#include <i2c/i2c.h>
+#include <mach/generic.h>
+#include <mach/clock.h>
+
+/* This will be the driver name */
+#define DRIVER_NAME "i2c-imx"
+
+/* Default value */
+#define IMX_I2C_BIT_RATE	100000	/* 100kHz */
+
+/* IMX I2C registers */
+#define IMX_I2C_IADR	0x00	/* i2c slave address */
+#define IMX_I2C_IFDR	0x04	/* i2c frequency divider */
+#define IMX_I2C_I2CR	0x08	/* i2c control */
+#define IMX_I2C_I2SR	0x0C	/* i2c status */
+#define IMX_I2C_I2DR	0x10	/* i2c transfer data */
+
+/* Bits of IMX I2C registers */
+#define I2SR_RXAK	0x01
+#define I2SR_IIF	0x02
+#define I2SR_SRW	0x04
+#define I2SR_IAL	0x10
+#define I2SR_IBB	0x20
+#define I2SR_IAAS	0x40
+#define I2SR_ICF	0x80
+#define I2CR_RSTA	0x04
+#define I2CR_TXAK	0x08
+#define I2CR_MTX	0x10
+#define I2CR_MSTA	0x20
+#define I2CR_IIEN	0x40
+#define I2CR_IEN	0x80
+
+/*
+ * sorted list of clock divider, register value pairs
+ * taken from table 26-5, p.26-9, Freescale i.MX
+ * Integrated Portable System Processor Reference Manual
+ * Document Number: MC9328MXLRM, Rev. 5.1, 06/2007
+ *
+ * Duplicated divider values removed from list
+ */
+static u16 i2c_clk_div[50][2] = {
+	{ 22,	0x20 }, { 24,	0x21 }, { 26,	0x22 }, { 28,	0x23 },
+	{ 30,	0x00 },	{ 32,	0x24 }, { 36,	0x25 }, { 40,	0x26 },
+	{ 42,	0x03 }, { 44,	0x27 },	{ 48,	0x28 }, { 52,	0x05 },
+	{ 56,	0x29 }, { 60,	0x06 }, { 64,	0x2A },	{ 72,	0x2B },
+	{ 80,	0x2C }, { 88,	0x09 }, { 96,	0x2D }, { 104,	0x0A },
+	{ 112,	0x2E }, { 128,	0x2F }, { 144,	0x0C }, { 160,	0x30 },
+	{ 192,	0x31 },	{ 224,	0x32 }, { 240,	0x0F }, { 256,	0x33 },
+	{ 288,	0x10 }, { 320,	0x34 },	{ 384,	0x35 }, { 448,	0x36 },
+	{ 480,	0x13 }, { 512,	0x37 }, { 576,	0x14 },	{ 640,	0x38 },
+	{ 768,	0x39 }, { 896,	0x3A }, { 960,	0x17 }, { 1024,	0x3B },
+	{ 1152,	0x18 }, { 1280,	0x3C }, { 1536,	0x3D }, { 1792,	0x3E },
+	{ 1920,	0x1B },	{ 2048,	0x3F }, { 2304,	0x1C }, { 2560,	0x1D },
+	{ 3072,	0x1E }, { 3840,	0x1F }
+};
+
+struct imx_i2c_struct {
+	struct i2c_adapter	adapter;
+	unsigned int 		disable_delay;
+	int			stopped;
+	unsigned int		ifdr;	/* IMX_I2C_IFDR */
+};
+#define to_imx_i2c_struct(a)	container_of(a, struct imx_i2c_struct, adapter)
+
+#ifdef CONFIG_I2C_DEBUG
+static void i2c_imx_dump_reg(struct i2c_adapter *adapter)
+{
+	unsigned long base = adapter->dev->map_base;
+	u32 reg_cr, reg_sr;
+
+	reg_cr = readb(base + IMX_I2C_I2CR);
+	reg_sr = readb(base + IMX_I2C_I2SR);
+
+	dev_dbg(adapter->dev, "CONTROL:\t"
+		"IEN =%d, IIEN=%d, MSTA=%d, MTX =%d, TXAK=%d, RSTA=%d\n",
+		(reg_cr & I2CR_IEN  ? 1 : 0), (reg_cr & I2CR_IIEN ? 1 : 0),
+		(reg_cr & I2CR_MSTA ? 1 : 0), (reg_cr & I2CR_MTX  ? 1 : 0),
+		(reg_cr & I2CR_TXAK ? 1 : 0), (reg_cr & I2CR_RSTA ? 1 : 0));
+
+	dev_dbg(adapter->dev, "STATUS:\t"
+		"ICF =%d, IAAS=%d, IB  =%d, IAL =%d, SRW =%d, IIF =%d, RXAK=%d\n",
+		(reg_sr & I2SR_ICF  ? 1 : 0), (reg_sr & I2SR_IAAS ? 1 : 0),
+		(reg_sr & I2SR_IBB  ? 1 : 0), (reg_sr & I2SR_IAL  ? 1 : 0),
+		(reg_sr & I2SR_SRW  ? 1 : 0), (reg_sr & I2SR_IIF  ? 1 : 0),
+		(reg_sr & I2SR_RXAK ? 1 : 0));
+}
+#else
+static inline void i2c_imx_dump_reg(struct i2c_adapter *adapter)
+{
+	return;
+}
+#endif
+
+static int i2c_imx_bus_busy(struct i2c_adapter *adapter, int for_busy)
+{
+	unsigned long base = adapter->dev->map_base;
+	uint64_t start;
+	unsigned int temp;
+
+	start = get_time_ns();
+	while (1) {
+		temp = readb(base + IMX_I2C_I2SR);
+		if (for_busy && (temp & I2SR_IBB))
+			break;
+		if (!for_busy && !(temp & I2SR_IBB))
+			break;
+		if (is_timeout(start, MSECOND)) {
+			dev_err(adapter->dev,
+				 "<%s> timeout waiting for I2C bus %s\n",
+				 __func__,for_busy ? "busy" : "not busy");
+			return -EIO;
+		}
+	}
+
+	return 0;
+}
+
+static int i2c_imx_trx_complete(struct i2c_adapter *adapter)
+{
+	unsigned long base = adapter->dev->map_base;
+	uint64_t start;
+
+	start = get_time_ns();
+	while (1) {
+		unsigned int reg = readb(base + IMX_I2C_I2SR);
+		if (reg & I2SR_ICF)
+			break;
+
+		if (is_timeout(start, 100 * MSECOND)) {
+			dev_err(adapter->dev, "<%s> TXR timeout\n", __func__);
+			return -EIO;
+		}
+	}
+
+	return 0;
+}
+
+static int i2c_imx_wait_iif(struct i2c_adapter *adapter)
+{
+	unsigned long base = adapter->dev->map_base;
+	uint64_t start;
+
+	start = get_time_ns();
+	while (1) {
+		unsigned int reg = readb(base + IMX_I2C_I2SR);
+		if (reg & I2SR_IIF)
+			break;
+
+		if (is_timeout(start, 100 * MSECOND)) {
+			dev_err(adapter->dev, "<%s> IIF timeout\n", __func__);
+			return -EIO;
+		}
+	}
+
+	return 0;
+}
+
+static int i2c_imx_acked(struct i2c_adapter *adapter)
+{
+	unsigned long base = adapter->dev->map_base;
+	uint64_t start;
+
+	start = get_time_ns();
+	while (1) {
+		unsigned int reg = readb(base + IMX_I2C_I2SR);
+		if (!(reg & I2SR_RXAK))
+			break;
+
+		if (is_timeout(start, MSECOND)) {
+			dev_dbg(adapter->dev, "<%s> No ACK\n", __func__);
+			return -EIO;
+		}
+	}
+
+	return 0;
+}
+
+static int i2c_imx_start(struct i2c_adapter *adapter)
+{
+	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
+	unsigned long base = adapter->dev->map_base;
+	unsigned int temp = 0;
+	int result;
+
+	writeb(i2c_imx->ifdr, base + IMX_I2C_IFDR);
+	/* Enable I2C controller */
+	writeb(0, base + IMX_I2C_I2SR);
+	writeb(I2CR_IEN, base + IMX_I2C_I2CR);
+
+	/* Wait controller to be stable */
+	udelay(100);
+
+	/* Start I2C transaction */
+	temp = readb(base + IMX_I2C_I2CR);
+	temp |= I2CR_MSTA;
+	writeb(temp, base + IMX_I2C_I2CR);
+
+	result = i2c_imx_bus_busy(adapter, 1);
+	if (result)
+		return result;
+
+	i2c_imx->stopped = 0;
+
+	temp |= I2CR_MTX | I2CR_TXAK;
+	writeb(temp, base + IMX_I2C_I2CR);
+
+	return result;
+}
+
+static void i2c_imx_stop(struct i2c_adapter *adapter)
+{
+	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
+	unsigned long base = adapter->dev->map_base;
+	unsigned int temp = 0;
+
+	if (!i2c_imx->stopped) {
+		/* Stop I2C transaction */
+		temp = readb(base + IMX_I2C_I2CR);
+		temp &= ~(I2CR_MSTA | I2CR_MTX);
+		writeb(temp, base + IMX_I2C_I2CR);
+		i2c_imx->stopped = 1;
+	}
+	if (cpu_is_mx1()) {
+		/*
+		 * This delay caused by an i.MXL hardware bug.
+		 * If no (or too short) delay, no "STOP" bit will be generated.
+		 */
+		udelay(i2c_imx->disable_delay);
+	}
+
+	if (!i2c_imx->stopped)
+		i2c_imx_bus_busy(adapter, 0);
+
+	/* Disable I2C controller */
+	writeb(0, base + IMX_I2C_I2CR);
+}
+
+static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
+			    unsigned int rate)
+{
+	unsigned int i2c_clk_rate;
+	unsigned int div;
+	int i;
+
+	/* Divider value calculation */
+	i2c_clk_rate = imx_get_i2cclk();
+	div = (i2c_clk_rate + rate - 1) / rate;
+	if (div < i2c_clk_div[0][0])
+		i = 0;
+	else if (div > i2c_clk_div[ARRAY_SIZE(i2c_clk_div) - 1][0])
+		i = ARRAY_SIZE(i2c_clk_div) - 1;
+	else
+		for (i = 0; i2c_clk_div[i][0] < div; i++)
+			;
+
+	/* Store divider value */
+	i2c_imx->ifdr = i2c_clk_div[i][1];
+
+	/*
+	 * There dummy delay is calculated.
+	 * It should be about one I2C clock period long.
+	 * This delay is used in I2C bus disable function
+	 * to fix chip hardware bug.
+	 */
+	i2c_imx->disable_delay =
+		(500000U * i2c_clk_div[i][0] + (i2c_clk_rate / 2) - 1) /
+		(i2c_clk_rate / 2);
+
+	dev_dbg(i2c_imx->adapter.dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
+		__func__, i2c_clk_rate, div);
+	dev_dbg(i2c_imx->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
+		__func__, i2c_clk_div[i][1], i2c_clk_div[i][0]);
+}
+
+static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
+{
+	unsigned long base = adapter->dev->map_base;
+	int i, result;
+
+	dev_dbg(adapter->dev,
+		"<%s> write slave address: addr=0x%02x\n",
+		__func__, msgs->addr << 1);
+
+	/* write slave address */
+	writeb(msgs->addr << 1, base + IMX_I2C_I2DR);
+
+	result = i2c_imx_trx_complete(adapter);
+	if (result)
+		return result;
+	result = i2c_imx_acked(adapter);
+	if (result)
+		return result;
+
+	/* write data */
+	for (i = 0; i < msgs->len; i++) {
+		dev_dbg(adapter->dev,
+			"<%s> write byte: B%d=0x%02X\n",
+			__func__, i, msgs->buf[i]);
+		writeb(msgs->buf[i], base + IMX_I2C_I2DR);
+
+		result = i2c_imx_trx_complete(adapter);
+		if (result)
+			return result;
+		result = i2c_imx_acked(adapter);
+		if (result)
+			return result;
+	}
+	return 0;
+}
+
+static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
+{
+	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
+	unsigned long base = adapter->dev->map_base;
+	int i, result;
+	unsigned int temp;
+
+	dev_dbg(adapter->dev,
+		"<%s> write slave address: addr=0x%02x\n",
+		__func__, (msgs->addr << 1) | 0x01);
+
+	/* clear IIF */
+	writeb(0x0, base + IMX_I2C_I2SR);
+
+	/* write slave address */
+	writeb((msgs->addr << 1) | 0x01, base + IMX_I2C_I2DR);
+
+	result = i2c_imx_trx_complete(adapter);
+	if (result)
+		return result;
+	result = i2c_imx_acked(adapter);
+	if (result)
+		return result;
+
+	result = i2c_imx_wait_iif(adapter);
+	if (result)
+		return result;
+
+	/* setup bus to read data */
+	temp = readb(base + IMX_I2C_I2CR);
+	temp &= ~I2CR_MTX;
+	if (msgs->len - 1)
+		temp &= ~I2CR_TXAK;
+	writeb(temp, base + IMX_I2C_I2CR);
+
+	readb(base + IMX_I2C_I2DR);	/* dummy read */
+
+	/* read data */
+	for (i = 0; i < msgs->len; i++) {
+		result = i2c_imx_trx_complete(adapter);
+		if (result)
+			return result;
+
+		if (i == (msgs->len - 1)) {
+			/*
+			 * It must generate STOP before read I2DR to prevent
+			 * controller from generating another clock cycle
+			 */
+			temp = readb(base + IMX_I2C_I2CR);
+			temp &= ~(I2CR_MSTA | I2CR_MTX);
+			writeb(temp, base + IMX_I2C_I2CR);
+
+			/*
+			 * adding this delay helps on low bitrates
+			 */
+			udelay(i2c_imx->disable_delay);
+
+			i2c_imx_bus_busy(adapter, 0);
+			i2c_imx->stopped = 1;
+		} else if (i == (msgs->len - 2)) {
+			temp = readb(base + IMX_I2C_I2CR);
+			temp |= I2CR_TXAK;
+			writeb(temp, base + IMX_I2C_I2CR);
+		}
+		msgs->buf[i] = readb(base + IMX_I2C_I2DR);
+
+		dev_dbg(adapter->dev, "<%s> read byte: B%d=0x%02X\n",
+			__func__, i, msgs->buf[i]);
+	}
+	return 0;
+}
+
+static int i2c_imx_xfer(struct i2c_adapter *adapter,
+			struct i2c_msg *msgs, int num)
+{
+	unsigned long base = adapter->dev->map_base;
+	unsigned int i, temp;
+	int result;
+
+	/* Start I2C transfer */
+	result = i2c_imx_start(adapter);
+	if (result)
+		goto fail0;
+
+	/* read/write data */
+	for (i = 0; i < num; i++) {
+		if (i) {
+			temp = readb(base + IMX_I2C_I2CR);
+			temp |= I2CR_RSTA;
+			writeb(temp, base + IMX_I2C_I2CR);
+
+			result = i2c_imx_bus_busy(adapter, 1);
+			if (result)
+				goto fail0;
+		}
+		i2c_imx_dump_reg(adapter);
+
+		/* write/read data */
+		if (msgs[i].flags & I2C_M_RD)
+			result = i2c_imx_read(adapter, &msgs[i]);
+		else
+			result = i2c_imx_write(adapter, &msgs[i]);
+		if (result)
+			goto fail0;
+	}
+
+fail0:
+	/* Stop I2C transfer */
+	i2c_imx_stop(adapter);
+
+	return (result < 0) ? result : num;
+}
+
+static int __init i2c_imx_probe(struct device_d *pdev)
+{
+	struct imx_i2c_struct *i2c_imx;
+	struct i2c_platform_data *pdata;
+	unsigned long base = pdev->map_base;
+	int ret;
+
+	pdata = pdev->platform_data;
+
+	i2c_imx = kzalloc(sizeof(struct imx_i2c_struct), GFP_KERNEL);
+
+	/* Setup i2c_imx driver structure */
+	i2c_imx->adapter.master_xfer = i2c_imx_xfer;
+	i2c_imx->adapter.nr = pdev->id;
+	i2c_imx->adapter.dev = pdev;
+
+	/* Set up clock divider */
+	if (pdata && pdata->bitrate)
+		i2c_imx_set_clk(i2c_imx, pdata->bitrate);
+	else
+		i2c_imx_set_clk(i2c_imx, IMX_I2C_BIT_RATE);
+
+	/* Set up chip registers to defaults */
+	writeb(0, base + IMX_I2C_I2CR);
+	writeb(0, base + IMX_I2C_I2SR);
+
+	/* Add I2C adapter */
+	ret = i2c_add_numbered_adapter(&i2c_imx->adapter);
+	if (ret < 0) {
+		dev_err(pdev, "registration failed\n");
+		goto fail;
+	}
+
+	return 0;
+
+fail:
+	kfree(i2c_imx);
+	return ret;
+}
+
+static struct driver_d i2c_imx_driver = {
+	.probe	= i2c_imx_probe,
+	.name	= DRIVER_NAME,
+};
+
+static int __init i2c_adap_imx_init(void)
+{
+	return register_driver(&i2c_imx_driver);
+}
+device_initcall(i2c_adap_imx_init);
diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
new file mode 100644
index 0000000..8e7a8b5
--- /dev/null
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -0,0 +1,803 @@
+/*
+ * TI OMAP I2C master mode driver
+ *
+ * Copyright (C) 2003 MontaVista Software, Inc.
+ * Copyright (C) 2005 Nokia Corporation
+ * Copyright (C) 2004 - 2007 Texas Instruments.
+ *
+ * Originally written by MontaVista Software, Inc.
+ * Additional contributions by:
+ *	Tony Lindgren <tony@atomide.com>
+ *	Imre Deak <imre.deak@nokia.com>
+ *	Juha Yrj��l�� <juha.yrjola@solidboot.com>
+ *	Syed Khasim <x0khasim@ti.com>
+ *	Nishant Menon <nm@ti.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+
+/* #include <linux/delay.h> */
+
+
+#include <clock.h>
+#include <common.h>
+#include <driver.h>
+#include <gpio.h>
+#include <init.h>
+#include <malloc.h>
+#include <types.h>
+#include <xfuncs.h>
+
+#include <linux/err.h>
+
+#include <asm/io.h>
+#include <i2c/i2c.h>
+#include <mach/generic.h>
+#include <mach/omap3-clock.h>
+
+#define OMAP_I2C_SIZE		0x3f
+#define OMAP1_I2C_BASE		0xfffb3800
+#define OMAP2_I2C_BASE1		0x48070000
+#define OMAP2_I2C_BASE2		0x48072000
+#define OMAP2_I2C_BASE3		0x48060000
+
+/* This will be the driver name */
+#define DRIVER_NAME "i2c-omap"
+
+#define OMAP_I2C_REV_REG		0x00
+#define OMAP_I2C_IE_REG			0x04
+#define OMAP_I2C_STAT_REG		0x08
+#define OMAP_I2C_IV_REG			0x0c
+/* For OMAP3 I2C_IV has changed to I2C_WE (wakeup enable) */
+#define OMAP_I2C_WE_REG			0x0c
+#define OMAP_I2C_SYSS_REG		0x10
+#define OMAP_I2C_BUF_REG		0x14
+#define OMAP_I2C_CNT_REG		0x18
+#define OMAP_I2C_DATA_REG		0x1c
+#define OMAP_I2C_SYSC_REG		0x20
+#define OMAP_I2C_CON_REG		0x24
+#define OMAP_I2C_OA_REG			0x28
+#define OMAP_I2C_SA_REG			0x2c
+#define OMAP_I2C_PSC_REG		0x30
+#define OMAP_I2C_SCLL_REG		0x34
+#define OMAP_I2C_SCLH_REG		0x38
+#define OMAP_I2C_SYSTEST_REG		0x3c
+#define OMAP_I2C_BUFSTAT_REG		0x40
+
+/* I2C Interrupt Enable Register (OMAP_I2C_IE): */
+#define OMAP_I2C_IE_XDR		(1 << 14)	/* TX Buffer drain int enable */
+#define OMAP_I2C_IE_RDR		(1 << 13)	/* RX Buffer drain int enable */
+#define OMAP_I2C_IE_XRDY	(1 << 4)	/* TX data ready int enable */
+#define OMAP_I2C_IE_RRDY	(1 << 3)	/* RX data ready int enable */
+#define OMAP_I2C_IE_ARDY	(1 << 2)	/* Access ready int enable */
+#define OMAP_I2C_IE_NACK	(1 << 1)	/* No ack interrupt enable */
+#define OMAP_I2C_IE_AL		(1 << 0)	/* Arbitration lost int ena */
+
+/* I2C Status Register (OMAP_I2C_STAT): */
+#define OMAP_I2C_STAT_XDR	(1 << 14)	/* TX Buffer draining */
+#define OMAP_I2C_STAT_RDR	(1 << 13)	/* RX Buffer draining */
+#define OMAP_I2C_STAT_BB	(1 << 12)	/* Bus busy */
+#define OMAP_I2C_STAT_ROVR	(1 << 11)	/* Receive overrun */
+#define OMAP_I2C_STAT_XUDF	(1 << 10)	/* Transmit underflow */
+#define OMAP_I2C_STAT_AAS	(1 << 9)	/* Address as slave */
+#define OMAP_I2C_STAT_AD0	(1 << 8)	/* Address zero */
+#define OMAP_I2C_STAT_XRDY	(1 << 4)	/* Transmit data ready */
+#define OMAP_I2C_STAT_RRDY	(1 << 3)	/* Receive data ready */
+#define OMAP_I2C_STAT_ARDY	(1 << 2)	/* Register access ready */
+#define OMAP_I2C_STAT_NACK	(1 << 1)	/* No ack interrupt enable */
+#define OMAP_I2C_STAT_AL	(1 << 0)	/* Arbitration lost int ena */
+
+/* I2C WE wakeup enable register */
+#define OMAP_I2C_WE_XDR_WE	(1 << 14)	/* TX drain wakup */
+#define OMAP_I2C_WE_RDR_WE	(1 << 13)	/* RX drain wakeup */
+#define OMAP_I2C_WE_AAS_WE	(1 << 9)	/* Address as slave wakeup*/
+#define OMAP_I2C_WE_BF_WE	(1 << 8)	/* Bus free wakeup */
+#define OMAP_I2C_WE_STC_WE	(1 << 6)	/* Start condition wakeup */
+#define OMAP_I2C_WE_GC_WE	(1 << 5)	/* General call wakeup */
+#define OMAP_I2C_WE_DRDY_WE	(1 << 3)	/* TX/RX data ready wakeup */
+#define OMAP_I2C_WE_ARDY_WE	(1 << 2)	/* Reg access ready wakeup */
+#define OMAP_I2C_WE_NACK_WE	(1 << 1)	/* No acknowledgment wakeup */
+#define OMAP_I2C_WE_AL_WE	(1 << 0)	/* Arbitration lost wakeup */
+
+#define OMAP_I2C_WE_ALL		(OMAP_I2C_WE_XDR_WE | OMAP_I2C_WE_RDR_WE | \
+				OMAP_I2C_WE_AAS_WE | OMAP_I2C_WE_BF_WE | \
+				OMAP_I2C_WE_STC_WE | OMAP_I2C_WE_GC_WE | \
+				OMAP_I2C_WE_DRDY_WE | OMAP_I2C_WE_ARDY_WE | \
+				OMAP_I2C_WE_NACK_WE | OMAP_I2C_WE_AL_WE)
+
+/* I2C Buffer Configuration Register (OMAP_I2C_BUF): */
+#define OMAP_I2C_BUF_RDMA_EN	(1 << 15)	/* RX DMA channel enable */
+#define OMAP_I2C_BUF_RXFIF_CLR	(1 << 14)	/* RX FIFO Clear */
+#define OMAP_I2C_BUF_XDMA_EN	(1 << 7)	/* TX DMA channel enable */
+#define OMAP_I2C_BUF_TXFIF_CLR	(1 << 6)	/* TX FIFO Clear */
+
+/* I2C Configuration Register (OMAP_I2C_CON): */
+#define OMAP_I2C_CON_EN		(1 << 15)	/* I2C module enable */
+#define OMAP_I2C_CON_BE		(1 << 14)	/* Big endian mode */
+#define OMAP_I2C_CON_OPMODE_HS	(1 << 12)	/* High Speed support */
+#define OMAP_I2C_CON_STB	(1 << 11)	/* Start byte mode (master) */
+#define OMAP_I2C_CON_MST	(1 << 10)	/* Master/slave mode */
+#define OMAP_I2C_CON_TRX	(1 << 9)	/* TX/RX mode (master only) */
+#define OMAP_I2C_CON_XA		(1 << 8)	/* Expand address */
+#define OMAP_I2C_CON_RM		(1 << 2)	/* Repeat mode (master only) */
+#define OMAP_I2C_CON_STP	(1 << 1)	/* Stop cond (master only) */
+#define OMAP_I2C_CON_STT	(1 << 0)	/* Start condition (master) */
+
+/* I2C SCL time value when Master */
+#define OMAP_I2C_SCLL_HSSCLL	8
+#define OMAP_I2C_SCLH_HSSCLH	8
+
+/* I2C System Test Register (OMAP_I2C_SYSTEST): */
+#ifdef DEBUG
+#define OMAP_I2C_SYSTEST_ST_EN		(1 << 15)	/* System test enable */
+#define OMAP_I2C_SYSTEST_FREE		(1 << 14)	/* Free running mode */
+#define OMAP_I2C_SYSTEST_TMODE_MASK	(3 << 12)	/* Test mode select */
+#define OMAP_I2C_SYSTEST_TMODE_SHIFT	(12)		/* Test mode select */
+#define OMAP_I2C_SYSTEST_SCL_I		(1 << 3)	/* SCL line sense in */
+#define OMAP_I2C_SYSTEST_SCL_O		(1 << 2)	/* SCL line drive out */
+#define OMAP_I2C_SYSTEST_SDA_I		(1 << 1)	/* SDA line sense in */
+#define OMAP_I2C_SYSTEST_SDA_O		(1 << 0)	/* SDA line drive out */
+#endif
+
+/* OCP_SYSSTATUS bit definitions */
+#define SYSS_RESETDONE_MASK		(1 << 0)
+
+/* OCP_SYSCONFIG bit definitions */
+#define SYSC_CLOCKACTIVITY_MASK		(0x3 << 8)
+#define SYSC_SIDLEMODE_MASK		(0x3 << 3)
+#define SYSC_ENAWAKEUP_MASK		(1 << 2)
+#define SYSC_SOFTRESET_MASK		(1 << 1)
+#define SYSC_AUTOIDLE_MASK		(1 << 0)
+
+#define SYSC_IDLEMODE_SMART		0x2
+#define SYSC_CLOCKACTIVITY_FCLK		0x2
+
+
+struct omap_i2c_struct {
+	void 			*base;
+	struct resource		*ioarea;
+	u32			speed;		/* Speed of bus in Khz */
+	u16			cmd_err;
+	u8			*buf;
+	size_t			buf_len;
+	struct i2c_adapter	adapter;
+	u8			fifo_size;	/* use as flag and value
+						 * fifo_size==0 implies no fifo
+						 * if set, should be trsh+1
+						 */
+	u8			rev;
+	unsigned		b_hw:1;		/* bad h/w fixes */
+	u16			iestate;	/* Saved interrupt register */
+	u16			pscstate;
+	u16			scllstate;
+	u16			sclhstate;
+	u16			bufstate;
+	u16			syscstate;
+	u16			westate;
+};
+#define to_omap_i2c_struct(a)	container_of(a, struct omap_i2c_struct, adapter)
+
+
+static inline void omap_i2c_write_reg(struct omap_i2c_struct *i2c_omap,
+				      int reg, u16 val)
+{
+	__raw_writew(val, i2c_omap->base + reg);
+}
+
+static inline u16 omap_i2c_read_reg(struct omap_i2c_struct *i2c_omap, int reg)
+{
+	return __raw_readw(i2c_omap->base + reg);
+}
+
+static void omap_i2c_unidle(struct omap_i2c_struct *i2c_omap)
+{
+	if (cpu_is_omap34xx()) {
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, 0);
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_PSC_REG, i2c_omap->pscstate);
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLL_REG, i2c_omap->scllstate);
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLH_REG, i2c_omap->sclhstate);
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_BUF_REG, i2c_omap->bufstate);
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG, i2c_omap->syscstate);
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_WE_REG, i2c_omap->westate);
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
+	}
+
+	/*
+	 * Don't write to this register if the IE state is 0 as it can
+	 * cause deadlock.
+	 */
+	if (i2c_omap->iestate)
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, i2c_omap->iestate);
+}
+
+static void omap_i2c_idle(struct omap_i2c_struct *i2c_omap)
+{
+	u16 iv;
+
+	i2c_omap->iestate = omap_i2c_read_reg(i2c_omap, OMAP_I2C_IE_REG);
+	/* omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, 0); */
+	if (i2c_omap->rev < OMAP_I2C_REV_2) {
+		iv = omap_i2c_read_reg(i2c_omap, OMAP_I2C_IV_REG); /* Read clears */
+	} else {
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_STAT_REG, i2c_omap->iestate);
+
+		/* Flush posted write before the i2c_omap->idle store occurs */
+		omap_i2c_read_reg(i2c_omap, OMAP_I2C_STAT_REG);
+	}
+}
+
+static int omap_i2c_init(struct omap_i2c_struct *i2c_omap)
+{
+	u16 psc = 0, scll = 0, sclh = 0, buf = 0;
+	u16 fsscll = 0, fssclh = 0, hsscll = 0, hssclh = 0;
+	uint64_t start;
+
+	unsigned long fclk_rate = 12000000;
+	unsigned long internal_clk = 0;
+
+	if (i2c_omap->rev >= OMAP_I2C_REV_2) {
+		/* Disable I2C controller before soft reset */
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG,
+			omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG) &
+				~(OMAP_I2C_CON_EN));
+
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG, SYSC_SOFTRESET_MASK);
+		/* For some reason we need to set the EN bit before the
+		 * reset done bit gets set. */
+		start = get_time_ns();
+
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
+		while (!(omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSS_REG) &
+			 SYSS_RESETDONE_MASK)) {
+			if (is_timeout(start, MSECOND)) {
+				dev_warn(i2c_omap->adapter.dev, "timeout waiting "
+						"for controller reset\n");
+				return -ETIMEDOUT;
+			}
+			mdelay(1);
+		}
+
+		/* SYSC register is cleared by the reset; rewrite it */
+		if (i2c_omap->rev == OMAP_I2C_REV_ON_2430) {
+
+			omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG,
+					   SYSC_AUTOIDLE_MASK);
+
+		} else if (i2c_omap->rev >= OMAP_I2C_REV_ON_3430) {
+			i2c_omap->syscstate = SYSC_AUTOIDLE_MASK;
+			i2c_omap->syscstate |= SYSC_ENAWAKEUP_MASK;
+			i2c_omap->syscstate |= (SYSC_IDLEMODE_SMART <<
+			      __ffs(SYSC_SIDLEMODE_MASK));
+			i2c_omap->syscstate |= (SYSC_CLOCKACTIVITY_FCLK <<
+			      __ffs(SYSC_CLOCKACTIVITY_MASK));
+
+			omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG,
+							i2c_omap->syscstate);
+			/*
+			 * Enabling all wakup sources to stop I2C freezing on
+			 * WFI instruction.
+			 * REVISIT: Some wkup sources might not be needed.
+			 */
+			i2c_omap->westate = OMAP_I2C_WE_ALL;
+			omap_i2c_write_reg(i2c_omap, OMAP_I2C_WE_REG, i2c_omap->westate);
+		}
+	}
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, 0);
+
+	/* omap1 handling is missing here */
+
+	if (cpu_is_omap2430() || cpu_is_omap34xx()) {
+
+		/*
+		 * HSI2C controller internal clk rate should be 19.2 Mhz for
+		 * HS and for all modes on 2430. On 34xx we can use lower rate
+		 * to get longer filter period for better noise suppression.
+		 * The filter is iclk (fclk for HS) period.
+		 */
+		if (i2c_omap->speed > 400 || cpu_is_omap2430())
+			internal_clk = 19200;
+		else if (i2c_omap->speed > 100)
+			internal_clk = 9600;
+		else
+			internal_clk = 4000;
+		fclk_rate = 96000000 / 1000;
+
+		/* Compute prescaler divisor */
+		psc = fclk_rate / internal_clk;
+		psc = psc - 1;
+
+		/* If configured for High Speed */
+		if (i2c_omap->speed > 400) {
+			unsigned long scl;
+
+			/* For first phase of HS mode */
+			scl = internal_clk / 400;
+			fsscll = scl - (scl / 3) - 7;
+			fssclh = (scl / 3) - 5;
+
+			/* For second phase of HS mode */
+			scl = fclk_rate / i2c_omap->speed;
+			hsscll = scl - (scl / 3) - 7;
+			hssclh = (scl / 3) - 5;
+		} else if (i2c_omap->speed > 100) {
+			unsigned long scl;
+
+			/* Fast mode */
+			scl = internal_clk / i2c_omap->speed;
+			fsscll = scl - (scl / 3) - 7;
+			fssclh = (scl / 3) - 5;
+		} else {
+			/* Standard mode */
+			fsscll = internal_clk / (i2c_omap->speed * 2) - 7;
+			fssclh = internal_clk / (i2c_omap->speed * 2) - 5;
+		}
+		scll = (hsscll << OMAP_I2C_SCLL_HSSCLL) | fsscll;
+		sclh = (hssclh << OMAP_I2C_SCLH_HSSCLH) | fssclh;
+	} else {
+		/* Program desired operating rate */
+		fclk_rate /= (psc + 1) * 1000;
+		if (psc > 2)
+			psc = 2;
+		scll = fclk_rate / (i2c_omap->speed * 2) - 7 + psc;
+		sclh = fclk_rate / (i2c_omap->speed * 2) - 7 + psc;
+	}
+
+	/* Setup clock prescaler to obtain approx 12MHz I2C module clock: */
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_PSC_REG, psc);
+
+	/* SCL low and high time values */
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLL_REG, scll);
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLH_REG, sclh);
+
+	if (i2c_omap->fifo_size) {
+		/* Note: setup required fifo size - 1. RTRSH and XTRSH */
+		buf = (i2c_omap->fifo_size - 1) << 8 | OMAP_I2C_BUF_RXFIF_CLR |
+			(i2c_omap->fifo_size - 1) | OMAP_I2C_BUF_TXFIF_CLR;
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_BUF_REG, buf);
+	}
+
+	/* Take the I2C module out of reset: */
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
+
+	/* Enable interrupts */
+	i2c_omap->iestate = (OMAP_I2C_IE_XRDY | OMAP_I2C_IE_RRDY |
+			OMAP_I2C_IE_ARDY | OMAP_I2C_IE_NACK |
+			OMAP_I2C_IE_AL)  | ((i2c_omap->fifo_size) ?
+				(OMAP_I2C_IE_RDR | OMAP_I2C_IE_XDR) : 0);
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, i2c_omap->iestate);
+	if (cpu_is_omap34xx()) {
+		i2c_omap->pscstate = psc;
+		i2c_omap->scllstate = scll;
+		i2c_omap->sclhstate = sclh;
+		i2c_omap->bufstate = buf;
+	}
+	return 0;
+}
+
+/*
+ * Waiting on Bus Busy
+ */
+static int omap_i2c_wait_for_bb(struct i2c_adapter *adapter)
+{
+	uint64_t start;
+	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
+
+	start = get_time_ns();
+	while (omap_i2c_read_reg(i2c_omap, OMAP_I2C_STAT_REG) & OMAP_I2C_STAT_BB) {
+		if (is_timeout(start, MSECOND)) {
+			dev_warn(adapter->dev, "timeout waiting for bus ready\n");
+			return -ETIMEDOUT;
+		}
+	}
+
+	return 0;
+}
+
+static inline void
+omap_i2c_ack_stat(struct omap_i2c_struct *i2c_omap, u16 stat)
+{
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_STAT_REG, stat);
+}
+
+static int
+omap_i2c_isr(struct omap_i2c_struct *dev)
+{
+	u16 bits;
+	u16 stat, w;
+	int err, count = 0;
+
+	bits = omap_i2c_read_reg(dev, OMAP_I2C_IE_REG);
+	while ((stat = (omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG))) & bits) {
+		dev_dbg(dev->adapter.dev, "IRQ (ISR = 0x%04x)\n", stat);
+		if (count++ == 100) {
+			dev_warn(dev->adapter.dev, "Too much work in one IRQ\n");
+			break;
+		}
+
+		err = 0;
+complete:
+		/*
+		 * Ack the stat in one go, but [R/X]DR and [R/X]RDY should be
+		 * acked after the data operation is complete.
+		 * Ref: TRM SWPU114Q Figure 18-31
+		 */
+		omap_i2c_write_reg(dev, OMAP_I2C_STAT_REG, stat &
+				~(OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR |
+				OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
+
+		if (stat & OMAP_I2C_STAT_NACK) {
+			err |= OMAP_I2C_STAT_NACK;
+			omap_i2c_write_reg(dev, OMAP_I2C_CON_REG,
+					   OMAP_I2C_CON_STP);
+		}
+		if (stat & OMAP_I2C_STAT_AL) {
+			dev_err(dev->adapter.dev, "Arbitration lost\n");
+			err |= OMAP_I2C_STAT_AL;
+		}
+		if (stat & (OMAP_I2C_STAT_ARDY | OMAP_I2C_STAT_NACK |
+					OMAP_I2C_STAT_AL)) {
+			omap_i2c_ack_stat(dev, stat &
+				(OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR |
+				OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
+			return 0;
+		}
+		if (stat & (OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR)) {
+			u8 num_bytes = 1;
+			if (dev->fifo_size) {
+				if (stat & OMAP_I2C_STAT_RRDY)
+					num_bytes = dev->fifo_size;
+				else    /* read RXSTAT on RDR interrupt */
+					num_bytes = (omap_i2c_read_reg(dev,
+							OMAP_I2C_BUFSTAT_REG)
+							>> 8) & 0x3F;
+			}
+			while (num_bytes) {
+				num_bytes--;
+				w = omap_i2c_read_reg(dev, OMAP_I2C_DATA_REG);
+				if (dev->buf_len) {
+					*dev->buf++ = w;
+					dev->buf_len--;
+					/* Data reg from 2430 is 8 bit wide */
+					if (!cpu_is_omap2430() &&
+							!cpu_is_omap34xx()) {
+						if (dev->buf_len) {
+							*dev->buf++ = w >> 8;
+							dev->buf_len--;
+						}
+					}
+				} else {
+					if (stat & OMAP_I2C_STAT_RRDY)
+						dev_err(dev->adapter.dev,
+							"RRDY IRQ while no data"
+								" requested\n");
+					if (stat & OMAP_I2C_STAT_RDR)
+						dev_err(dev->adapter.dev,
+							"RDR IRQ while no data"
+								" requested\n");
+					break;
+				}
+			}
+			omap_i2c_ack_stat(dev,
+				stat & (OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR));
+			continue;
+		}
+		if (stat & (OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR)) {
+			u8 num_bytes = 1;
+			if (dev->fifo_size) {
+				if (stat & OMAP_I2C_STAT_XRDY)
+					num_bytes = dev->fifo_size;
+				else    /* read TXSTAT on XDR interrupt */
+					num_bytes = omap_i2c_read_reg(dev,
+							OMAP_I2C_BUFSTAT_REG)
+							& 0x3F;
+			}
+			while (num_bytes) {
+				num_bytes--;
+				w = 0;
+				if (dev->buf_len) {
+					w = *dev->buf++;
+					dev->buf_len--;
+					/* Data reg from  2430 is 8 bit wide */
+					if (!cpu_is_omap2430() &&
+							!cpu_is_omap34xx()) {
+						if (dev->buf_len) {
+							w |= *dev->buf++ << 8;
+							dev->buf_len--;
+						}
+					}
+				} else {
+					if (stat & OMAP_I2C_STAT_XRDY)
+						dev_err(dev->adapter.dev,
+							"XRDY IRQ while no "
+							"data to send\n");
+					if (stat & OMAP_I2C_STAT_XDR)
+						dev_err(dev->adapter.dev,
+							"XDR IRQ while no "
+							"data to send\n");
+					break;
+				}
+
+				/*
+				 * OMAP3430 Errata 1.153: When an XRDY/XDR
+				 * is hit, wait for XUDF before writing data
+				 * to DATA_REG. Otherwise some data bytes can
+				 * be lost while transferring them from the
+				 * memory to the I2C interface.
+				 */
+
+				if (dev->rev <= OMAP_I2C_REV_ON_3430) {
+						while (!(stat & OMAP_I2C_STAT_XUDF)) {
+							if (stat & (OMAP_I2C_STAT_NACK | OMAP_I2C_STAT_AL)) {
+								omap_i2c_ack_stat(dev, stat & (OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
+								err |= OMAP_I2C_STAT_XUDF;
+								goto complete;
+							}
+							stat = omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG);
+						}
+				}
+
+				omap_i2c_write_reg(dev, OMAP_I2C_DATA_REG, w);
+			}
+			omap_i2c_ack_stat(dev,
+				stat & (OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
+			continue;
+		}
+		if (stat & OMAP_I2C_STAT_ROVR) {
+			dev_err(dev->adapter.dev, "Receive overrun\n");
+			dev->cmd_err |= OMAP_I2C_STAT_ROVR;
+		}
+		if (stat & OMAP_I2C_STAT_XUDF) {
+			dev_err(dev->adapter.dev, "Transmit underflow\n");
+			dev->cmd_err |= OMAP_I2C_STAT_XUDF;
+		}
+	}
+
+	return -EBUSY;
+}
+
+
+/*
+ * Low level master read/write transaction.
+ */
+static int omap_i2c_xfer_msg(struct i2c_adapter *adapter,
+			     struct i2c_msg *msg, int stop)
+{
+	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
+	uint64_t start;
+	u16 con;
+	u16 w;
+	int ret = 0;
+
+
+	dev_dbg(adapter->dev, "addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\n",
+		msg->addr, msg->len, msg->flags, stop);
+
+	if (msg->len == 0)
+		return -EINVAL;
+
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SA_REG, msg->addr);
+
+	/* REVISIT: Could the STB bit of I2C_CON be used with probing? */
+	i2c_omap->buf = msg->buf;
+	i2c_omap->buf_len = msg->len;
+
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CNT_REG, i2c_omap->buf_len);
+
+	/* Clear the FIFO Buffers */
+	w = omap_i2c_read_reg(i2c_omap, OMAP_I2C_BUF_REG);
+	w |= OMAP_I2C_BUF_RXFIF_CLR | OMAP_I2C_BUF_TXFIF_CLR;
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_BUF_REG, w);
+
+	i2c_omap->cmd_err = 0;
+
+	w = OMAP_I2C_CON_EN | OMAP_I2C_CON_MST | OMAP_I2C_CON_STT;
+
+	/* High speed configuration */
+	if (i2c_omap->speed > 400)
+		w |= OMAP_I2C_CON_OPMODE_HS;
+
+	if (msg->flags & I2C_M_TEN)
+		w |= OMAP_I2C_CON_XA;
+	if (!(msg->flags & I2C_M_RD))
+		w |= OMAP_I2C_CON_TRX;
+
+	if (!i2c_omap->b_hw && stop)
+		w |= OMAP_I2C_CON_STP;
+
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, w);
+
+	/*
+	 * Don't write stt and stp together on some hardware.
+	 */
+	if (i2c_omap->b_hw && stop) {
+		start = get_time_ns();
+		con = omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG);
+		while (con & OMAP_I2C_CON_STT) {
+			con = omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG);
+
+			/* Let the user know if i2c is in a bad state */
+			if (is_timeout(start, MSECOND)) {
+				dev_err(adapter->dev, "controller timed out "
+				"waiting for start condition to finish\n");
+				return -ETIMEDOUT;
+			}
+		}
+
+		w |= OMAP_I2C_CON_STP;
+		w &= ~OMAP_I2C_CON_STT;
+		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, w);
+	}
+
+	/*
+	 * REVISIT: We should abort the transfer on signals, but the bus goes
+	 * into arbitration and we're currently unable to recover from it.
+	 */
+	start = get_time_ns();
+	ret = omap_i2c_isr(i2c_omap);
+	while (ret){
+		ret = omap_i2c_isr(i2c_omap);
+		if (is_timeout(start, MSECOND)) {
+				dev_err(adapter->dev, "timed out on polling for"
+				"open i2c message handling\n");
+				return -ETIMEDOUT;
+			}
+	}
+
+	i2c_omap->buf_len = 0;
+	if (likely(!i2c_omap->cmd_err))
+		return 0;
+
+	/* We have an error */
+	if (i2c_omap->cmd_err & (OMAP_I2C_STAT_AL | OMAP_I2C_STAT_ROVR |
+			    OMAP_I2C_STAT_XUDF)) {
+		omap_i2c_init(i2c_omap);
+		return -EIO;
+	}
+
+	if (i2c_omap->cmd_err & OMAP_I2C_STAT_NACK) {
+		if (msg->flags & I2C_M_IGNORE_NAK)
+			return 0;
+		if (stop) {
+			w = omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG);
+			w |= OMAP_I2C_CON_STP;
+			omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, w);
+		}
+		return -EREMOTEIO;
+	}
+	return -EIO;
+}
+
+
+/*
+ * Prepare controller for a transaction and call omap_i2c_xfer_msg
+ * to do the work during IRQ processing.
+ */
+static int
+omap_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg msgs[], int num)
+{
+	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
+	int i;
+	int r;
+
+	omap_i2c_unidle(i2c_omap);
+
+	r = omap_i2c_wait_for_bb(adapter);
+	if (r < 0)
+		goto out;
+
+	for (i = 0; i < num; i++) {
+		r = omap_i2c_xfer_msg(adapter, &msgs[i], (i == (num - 1)));
+		if (r != 0)
+			break;
+	}
+
+	if (r == 0)
+		r = num;
+out:
+	omap_i2c_idle(i2c_omap);
+	return r;
+}
+
+static int __init
+i2c_omap_probe(struct device_d *pdev)
+{
+	struct omap_i2c_struct	*i2c_omap;
+	/* struct i2c_platform_data *pdata; */
+	/* unsigned long base = pdev->map_base; */
+	int r;
+	u32 speed = 0;
+
+	i2c_omap = kzalloc(sizeof(struct omap_i2c_struct), GFP_KERNEL);
+	if (!i2c_omap) {
+		r = -ENOMEM;
+		goto err_free_mem;
+	}
+
+	if (pdev->platform_data != NULL)
+		speed = *(u32 *)pdev->platform_data;
+	else
+		speed = 100;	/* Defualt speed */
+
+	i2c_omap->speed = speed;
+	i2c_omap->base = (void*)pdev->map_base;
+	printf ("I2C probe\n");
+	omap_i2c_unidle(i2c_omap);
+
+	i2c_omap->rev = omap_i2c_read_reg(i2c_omap, OMAP_I2C_REV_REG) & 0xff;
+	/* i2c_omap->base = OMAP2_I2C_BASE3; */
+
+	if (cpu_is_omap2430() || cpu_is_omap34xx()) {
+		u16 s;
+
+		/* Set up the fifo size - Get total size */
+		s = (omap_i2c_read_reg(i2c_omap, OMAP_I2C_BUFSTAT_REG) >> 14) & 0x3;
+		i2c_omap->fifo_size = 0x8 << s;
+
+		/*
+		 * Set up notification threshold as half the total available
+		 * size. This is to ensure that we can handle the status on int
+		 * call back latencies.
+		 */
+		i2c_omap->fifo_size = (i2c_omap->fifo_size / 2);
+		i2c_omap->b_hw = 1; /* Enable hardware fixes */
+	}
+
+	/* reset ASAP, clearing any IRQs */
+	omap_i2c_init(i2c_omap);
+
+	dev_info(pdev, "bus %d rev%d.%d at %d kHz\n",
+		 pdev->id, i2c_omap->rev >> 4, i2c_omap->rev & 0xf, i2c_omap->speed);
+
+	omap_i2c_idle(i2c_omap);
+
+	i2c_omap->adapter.master_xfer	= omap_i2c_xfer,
+	i2c_omap->adapter.nr = pdev->id;
+	i2c_omap->adapter.dev = pdev;
+
+	/* i2c device drivers may be active on return from add_adapter() */
+	r = i2c_add_numbered_adapter(&i2c_omap->adapter);
+	if (r) {
+		dev_err(pdev, "failure adding adapter\n");
+		goto err_unuse_clocks;
+	}
+
+	return 0;
+
+err_unuse_clocks:
+	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, 0);
+	omap_i2c_idle(i2c_omap);
+
+err_free_mem:
+	kfree(i2c_omap);
+
+	return r;
+}
+
+static struct driver_d omap_i2c_driver = {
+	.probe		= i2c_omap_probe,
+	.name		= DRIVER_NAME,
+};
+
+/* I2C may be needed to bring up other drivers */
+static int __init omap_i2c_init_driver(void)
+{
+	return register_driver(&omap_i2c_driver);
+}
+device_initcall(omap_i2c_init_driver);
+
+MODULE_AUTHOR("MontaVista Software, Inc. (and others)");
+MODULE_DESCRIPTION("TI OMAP I2C bus adapter");
+MODULE_LICENSE("GPL");
diff --git a/drivers/i2c/i2c-imx.c b/drivers/i2c/i2c-imx.c
deleted file mode 100644
index cc64d94..0000000
--- a/drivers/i2c/i2c-imx.c
+++ /dev/null
@@ -1,520 +0,0 @@
-/*
- * Copyright (C) 2002 Motorola GSG-China
- *               2009 Marc Kleine-Budde, Pengutronix
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * as published by the Free Software Foundation; either version 2
- * of the License, or (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
- * USA.
- *
- * Author:
- *	Darius Augulis, Teltonika Inc.
- *
- * Desc.:
- *  Implementation of I2C Adapter/Algorithm Driver
- *  for I2C Bus integrated in Freescale i.MX/MXC processors
- *
- * Derived from Motorola GSG China I2C example driver
- *
- * Copyright (C) 2005 Torsten Koschorrek <koschorrek at synertronixx.de
- * Copyright (C) 2005 Matthias Blaschke <blaschke at synertronixx.de
- * Copyright (C) 2007 RightHand Technologies, Inc.
- * Copyright (C) 2008 Darius Augulis <darius.augulis at teltonika.lt>
- *
- */
-
-#include <clock.h>
-#include <common.h>
-#include <driver.h>
-#include <gpio.h>
-#include <init.h>
-#include <malloc.h>
-#include <types.h>
-#include <xfuncs.h>
-
-#include <linux/err.h>
-
-#include <asm/io.h>
-#include <i2c/i2c.h>
-#include <mach/generic.h>
-#include <mach/clock.h>
-
-/* This will be the driver name */
-#define DRIVER_NAME "i2c-imx"
-
-/* Default value */
-#define IMX_I2C_BIT_RATE	100000	/* 100kHz */
-
-/* IMX I2C registers */
-#define IMX_I2C_IADR	0x00	/* i2c slave address */
-#define IMX_I2C_IFDR	0x04	/* i2c frequency divider */
-#define IMX_I2C_I2CR	0x08	/* i2c control */
-#define IMX_I2C_I2SR	0x0C	/* i2c status */
-#define IMX_I2C_I2DR	0x10	/* i2c transfer data */
-
-/* Bits of IMX I2C registers */
-#define I2SR_RXAK	0x01
-#define I2SR_IIF	0x02
-#define I2SR_SRW	0x04
-#define I2SR_IAL	0x10
-#define I2SR_IBB	0x20
-#define I2SR_IAAS	0x40
-#define I2SR_ICF	0x80
-#define I2CR_RSTA	0x04
-#define I2CR_TXAK	0x08
-#define I2CR_MTX	0x10
-#define I2CR_MSTA	0x20
-#define I2CR_IIEN	0x40
-#define I2CR_IEN	0x80
-
-/*
- * sorted list of clock divider, register value pairs
- * taken from table 26-5, p.26-9, Freescale i.MX
- * Integrated Portable System Processor Reference Manual
- * Document Number: MC9328MXLRM, Rev. 5.1, 06/2007
- *
- * Duplicated divider values removed from list
- */
-static u16 i2c_clk_div[50][2] = {
-	{ 22,	0x20 }, { 24,	0x21 }, { 26,	0x22 }, { 28,	0x23 },
-	{ 30,	0x00 },	{ 32,	0x24 }, { 36,	0x25 }, { 40,	0x26 },
-	{ 42,	0x03 }, { 44,	0x27 },	{ 48,	0x28 }, { 52,	0x05 },
-	{ 56,	0x29 }, { 60,	0x06 }, { 64,	0x2A },	{ 72,	0x2B },
-	{ 80,	0x2C }, { 88,	0x09 }, { 96,	0x2D }, { 104,	0x0A },
-	{ 112,	0x2E }, { 128,	0x2F }, { 144,	0x0C }, { 160,	0x30 },
-	{ 192,	0x31 },	{ 224,	0x32 }, { 240,	0x0F }, { 256,	0x33 },
-	{ 288,	0x10 }, { 320,	0x34 },	{ 384,	0x35 }, { 448,	0x36 },
-	{ 480,	0x13 }, { 512,	0x37 }, { 576,	0x14 },	{ 640,	0x38 },
-	{ 768,	0x39 }, { 896,	0x3A }, { 960,	0x17 }, { 1024,	0x3B },
-	{ 1152,	0x18 }, { 1280,	0x3C }, { 1536,	0x3D }, { 1792,	0x3E },
-	{ 1920,	0x1B },	{ 2048,	0x3F }, { 2304,	0x1C }, { 2560,	0x1D },
-	{ 3072,	0x1E }, { 3840,	0x1F }
-};
-
-struct imx_i2c_struct {
-	struct i2c_adapter	adapter;
-	unsigned int 		disable_delay;
-	int			stopped;
-	unsigned int		ifdr;	/* IMX_I2C_IFDR */
-};
-#define to_imx_i2c_struct(a)	container_of(a, struct imx_i2c_struct, adapter)
-
-#ifdef CONFIG_I2C_DEBUG
-static void i2c_imx_dump_reg(struct i2c_adapter *adapter)
-{
-	unsigned long base = adapter->dev->map_base;
-	u32 reg_cr, reg_sr;
-
-	reg_cr = readb(base + IMX_I2C_I2CR);
-	reg_sr = readb(base + IMX_I2C_I2SR);
-
-	dev_dbg(adapter->dev, "CONTROL:\t"
-		"IEN =%d, IIEN=%d, MSTA=%d, MTX =%d, TXAK=%d, RSTA=%d\n",
-		(reg_cr & I2CR_IEN  ? 1 : 0), (reg_cr & I2CR_IIEN ? 1 : 0),
-		(reg_cr & I2CR_MSTA ? 1 : 0), (reg_cr & I2CR_MTX  ? 1 : 0),
-		(reg_cr & I2CR_TXAK ? 1 : 0), (reg_cr & I2CR_RSTA ? 1 : 0));
-
-	dev_dbg(adapter->dev, "STATUS:\t"
-		"ICF =%d, IAAS=%d, IB  =%d, IAL =%d, SRW =%d, IIF =%d, RXAK=%d\n",
-		(reg_sr & I2SR_ICF  ? 1 : 0), (reg_sr & I2SR_IAAS ? 1 : 0),
-		(reg_sr & I2SR_IBB  ? 1 : 0), (reg_sr & I2SR_IAL  ? 1 : 0),
-		(reg_sr & I2SR_SRW  ? 1 : 0), (reg_sr & I2SR_IIF  ? 1 : 0),
-		(reg_sr & I2SR_RXAK ? 1 : 0));
-}
-#else
-static inline void i2c_imx_dump_reg(struct i2c_adapter *adapter)
-{
-	return;
-}
-#endif
-
-static int i2c_imx_bus_busy(struct i2c_adapter *adapter, int for_busy)
-{
-	unsigned long base = adapter->dev->map_base;
-	uint64_t start;
-	unsigned int temp;
-
-	start = get_time_ns();
-	while (1) {
-		temp = readb(base + IMX_I2C_I2SR);
-		if (for_busy && (temp & I2SR_IBB))
-			break;
-		if (!for_busy && !(temp & I2SR_IBB))
-			break;
-		if (is_timeout(start, MSECOND)) {
-			dev_err(adapter->dev,
-				 "<%s> timeout waiting for I2C bus %s\n",
-				 __func__,for_busy ? "busy" : "not busy");
-			return -EIO;
-		}
-	}
-
-	return 0;
-}
-
-static int i2c_imx_trx_complete(struct i2c_adapter *adapter)
-{
-	unsigned long base = adapter->dev->map_base;
-	uint64_t start;
-
-	start = get_time_ns();
-	while (1) {
-		unsigned int reg = readb(base + IMX_I2C_I2SR);
-		if (reg & I2SR_ICF)
-			break;
-
-		if (is_timeout(start, 100 * MSECOND)) {
-			dev_err(adapter->dev, "<%s> TXR timeout\n", __func__);
-			return -EIO;
-		}
-	}
-
-	return 0;
-}
-
-static int i2c_imx_wait_iif(struct i2c_adapter *adapter)
-{
-	unsigned long base = adapter->dev->map_base;
-	uint64_t start;
-
-	start = get_time_ns();
-	while (1) {
-		unsigned int reg = readb(base + IMX_I2C_I2SR);
-		if (reg & I2SR_IIF)
-			break;
-
-		if (is_timeout(start, 100 * MSECOND)) {
-			dev_err(adapter->dev, "<%s> IIF timeout\n", __func__);
-			return -EIO;
-		}
-	}
-
-	return 0;
-}
-
-static int i2c_imx_acked(struct i2c_adapter *adapter)
-{
-	unsigned long base = adapter->dev->map_base;
-	uint64_t start;
-
-	start = get_time_ns();
-	while (1) {
-		unsigned int reg = readb(base + IMX_I2C_I2SR);
-		if (!(reg & I2SR_RXAK))
-			break;
-
-		if (is_timeout(start, MSECOND)) {
-			dev_dbg(adapter->dev, "<%s> No ACK\n", __func__);
-			return -EIO;
-		}
-	}
-
-	return 0;
-}
-
-static int i2c_imx_start(struct i2c_adapter *adapter)
-{
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	unsigned long base = adapter->dev->map_base;
-	unsigned int temp = 0;
-	int result;
-
-	writeb(i2c_imx->ifdr, base + IMX_I2C_IFDR);
-	/* Enable I2C controller */
-	writeb(0, base + IMX_I2C_I2SR);
-	writeb(I2CR_IEN, base + IMX_I2C_I2CR);
-
-	/* Wait controller to be stable */
-	udelay(100);
-
-	/* Start I2C transaction */
-	temp = readb(base + IMX_I2C_I2CR);
-	temp |= I2CR_MSTA;
-	writeb(temp, base + IMX_I2C_I2CR);
-
-	result = i2c_imx_bus_busy(adapter, 1);
-	if (result)
-		return result;
-
-	i2c_imx->stopped = 0;
-
-	temp |= I2CR_MTX | I2CR_TXAK;
-	writeb(temp, base + IMX_I2C_I2CR);
-
-	return result;
-}
-
-static void i2c_imx_stop(struct i2c_adapter *adapter)
-{
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	unsigned long base = adapter->dev->map_base;
-	unsigned int temp = 0;
-
-	if (!i2c_imx->stopped) {
-		/* Stop I2C transaction */
-		temp = readb(base + IMX_I2C_I2CR);
-		temp &= ~(I2CR_MSTA | I2CR_MTX);
-		writeb(temp, base + IMX_I2C_I2CR);
-		i2c_imx->stopped = 1;
-	}
-	if (cpu_is_mx1()) {
-		/*
-		 * This delay caused by an i.MXL hardware bug.
-		 * If no (or too short) delay, no "STOP" bit will be generated.
-		 */
-		udelay(i2c_imx->disable_delay);
-	}
-
-	if (!i2c_imx->stopped)
-		i2c_imx_bus_busy(adapter, 0);
-
-	/* Disable I2C controller */
-	writeb(0, base + IMX_I2C_I2CR);
-}
-
-static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
-			    unsigned int rate)
-{
-	unsigned int i2c_clk_rate;
-	unsigned int div;
-	int i;
-
-	/* Divider value calculation */
-	i2c_clk_rate = imx_get_i2cclk();
-	div = (i2c_clk_rate + rate - 1) / rate;
-	if (div < i2c_clk_div[0][0])
-		i = 0;
-	else if (div > i2c_clk_div[ARRAY_SIZE(i2c_clk_div) - 1][0])
-		i = ARRAY_SIZE(i2c_clk_div) - 1;
-	else
-		for (i = 0; i2c_clk_div[i][0] < div; i++)
-			;
-
-	/* Store divider value */
-	i2c_imx->ifdr = i2c_clk_div[i][1];
-
-	/*
-	 * There dummy delay is calculated.
-	 * It should be about one I2C clock period long.
-	 * This delay is used in I2C bus disable function
-	 * to fix chip hardware bug.
-	 */
-	i2c_imx->disable_delay =
-		(500000U * i2c_clk_div[i][0] + (i2c_clk_rate / 2) - 1) /
-		(i2c_clk_rate / 2);
-
-	dev_dbg(i2c_imx->adapter.dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
-		__func__, i2c_clk_rate, div);
-	dev_dbg(i2c_imx->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
-		__func__, i2c_clk_div[i][1], i2c_clk_div[i][0]);
-}
-
-static int i2c_imx_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)
-{
-	unsigned long base = adapter->dev->map_base;
-	int i, result;
-
-	dev_dbg(adapter->dev,
-		"<%s> write slave address: addr=0x%02x\n",
-		__func__, msgs->addr << 1);
-
-	/* write slave address */
-	writeb(msgs->addr << 1, base + IMX_I2C_I2DR);
-
-	result = i2c_imx_trx_complete(adapter);
-	if (result)
-		return result;
-	result = i2c_imx_acked(adapter);
-	if (result)
-		return result;
-
-	/* write data */
-	for (i = 0; i < msgs->len; i++) {
-		dev_dbg(adapter->dev,
-			"<%s> write byte: B%d=0x%02X\n",
-			__func__, i, msgs->buf[i]);
-		writeb(msgs->buf[i], base + IMX_I2C_I2DR);
-
-		result = i2c_imx_trx_complete(adapter);
-		if (result)
-			return result;
-		result = i2c_imx_acked(adapter);
-		if (result)
-			return result;
-	}
-	return 0;
-}
-
-static int i2c_imx_read(struct i2c_adapter *adapter, struct i2c_msg *msgs)
-{
-	struct imx_i2c_struct *i2c_imx = to_imx_i2c_struct(adapter);
-	unsigned long base = adapter->dev->map_base;
-	int i, result;
-	unsigned int temp;
-
-	dev_dbg(adapter->dev,
-		"<%s> write slave address: addr=0x%02x\n",
-		__func__, (msgs->addr << 1) | 0x01);
-
-	/* clear IIF */
-	writeb(0x0, base + IMX_I2C_I2SR);
-
-	/* write slave address */
-	writeb((msgs->addr << 1) | 0x01, base + IMX_I2C_I2DR);
-
-	result = i2c_imx_trx_complete(adapter);
-	if (result)
-		return result;
-	result = i2c_imx_acked(adapter);
-	if (result)
-		return result;
-
-	result = i2c_imx_wait_iif(adapter);
-	if (result)
-		return result;
-
-	/* setup bus to read data */
-	temp = readb(base + IMX_I2C_I2CR);
-	temp &= ~I2CR_MTX;
-	if (msgs->len - 1)
-		temp &= ~I2CR_TXAK;
-	writeb(temp, base + IMX_I2C_I2CR);
-
-	readb(base + IMX_I2C_I2DR);	/* dummy read */
-
-	/* read data */
-	for (i = 0; i < msgs->len; i++) {
-		result = i2c_imx_trx_complete(adapter);
-		if (result)
-			return result;
-
-		if (i == (msgs->len - 1)) {
-			/*
-			 * It must generate STOP before read I2DR to prevent
-			 * controller from generating another clock cycle
-			 */
-			temp = readb(base + IMX_I2C_I2CR);
-			temp &= ~(I2CR_MSTA | I2CR_MTX);
-			writeb(temp, base + IMX_I2C_I2CR);
-
-			/*
-			 * adding this delay helps on low bitrates
-			 */
-			udelay(i2c_imx->disable_delay);
-
-			i2c_imx_bus_busy(adapter, 0);
-			i2c_imx->stopped = 1;
-		} else if (i == (msgs->len - 2)) {
-			temp = readb(base + IMX_I2C_I2CR);
-			temp |= I2CR_TXAK;
-			writeb(temp, base + IMX_I2C_I2CR);
-		}
-		msgs->buf[i] = readb(base + IMX_I2C_I2DR);
-
-		dev_dbg(adapter->dev, "<%s> read byte: B%d=0x%02X\n",
-			__func__, i, msgs->buf[i]);
-	}
-	return 0;
-}
-
-static int i2c_imx_xfer(struct i2c_adapter *adapter,
-			struct i2c_msg *msgs, int num)
-{
-	unsigned long base = adapter->dev->map_base;
-	unsigned int i, temp;
-	int result;
-
-	/* Start I2C transfer */
-	result = i2c_imx_start(adapter);
-	if (result)
-		goto fail0;
-
-	/* read/write data */
-	for (i = 0; i < num; i++) {
-		if (i) {
-			temp = readb(base + IMX_I2C_I2CR);
-			temp |= I2CR_RSTA;
-			writeb(temp, base + IMX_I2C_I2CR);
-
-			result = i2c_imx_bus_busy(adapter, 1);
-			if (result)
-				goto fail0;
-		}
-		i2c_imx_dump_reg(adapter);
-
-		/* write/read data */
-		if (msgs[i].flags & I2C_M_RD)
-			result = i2c_imx_read(adapter, &msgs[i]);
-		else
-			result = i2c_imx_write(adapter, &msgs[i]);
-		if (result)
-			goto fail0;
-	}
-
-fail0:
-	/* Stop I2C transfer */
-	i2c_imx_stop(adapter);
-
-	return (result < 0) ? result : num;
-}
-
-static int __init i2c_imx_probe(struct device_d *pdev)
-{
-	struct imx_i2c_struct *i2c_imx;
-	struct i2c_platform_data *pdata;
-	unsigned long base = pdev->map_base;
-	int ret;
-
-	pdata = pdev->platform_data;
-
-	i2c_imx = kzalloc(sizeof(struct imx_i2c_struct), GFP_KERNEL);
-
-	/* Setup i2c_imx driver structure */
-	i2c_imx->adapter.master_xfer = i2c_imx_xfer;
-	i2c_imx->adapter.nr = pdev->id;
-	i2c_imx->adapter.dev = pdev;
-
-	/* Set up clock divider */
-	if (pdata && pdata->bitrate)
-		i2c_imx_set_clk(i2c_imx, pdata->bitrate);
-	else
-		i2c_imx_set_clk(i2c_imx, IMX_I2C_BIT_RATE);
-
-	/* Set up chip registers to defaults */
-	writeb(0, base + IMX_I2C_I2CR);
-	writeb(0, base + IMX_I2C_I2SR);
-
-	/* Add I2C adapter */
-	ret = i2c_add_numbered_adapter(&i2c_imx->adapter);
-	if (ret < 0) {
-		dev_err(pdev, "registration failed\n");
-		goto fail;
-	}
-
-	return 0;
-
-fail:
-	kfree(i2c_imx);
-	return ret;
-}
-
-static struct driver_d i2c_imx_driver = {
-	.probe	= i2c_imx_probe,
-	.name	= DRIVER_NAME,
-};
-
-static int __init i2c_adap_imx_init(void)
-{
-	return register_driver(&i2c_imx_driver);
-}
-device_initcall(i2c_adap_imx_init);
diff --git a/drivers/i2c/i2c-omap.c b/drivers/i2c/i2c-omap.c
deleted file mode 100644
index 8e7a8b5..0000000
--- a/drivers/i2c/i2c-omap.c
+++ /dev/null
@@ -1,803 +0,0 @@
-/*
- * TI OMAP I2C master mode driver
- *
- * Copyright (C) 2003 MontaVista Software, Inc.
- * Copyright (C) 2005 Nokia Corporation
- * Copyright (C) 2004 - 2007 Texas Instruments.
- *
- * Originally written by MontaVista Software, Inc.
- * Additional contributions by:
- *	Tony Lindgren <tony@atomide.com>
- *	Imre Deak <imre.deak@nokia.com>
- *	Juha Yrj��l�� <juha.yrjola@solidboot.com>
- *	Syed Khasim <x0khasim@ti.com>
- *	Nishant Menon <nm@ti.com>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
- */
-
-
-/* #include <linux/delay.h> */
-
-
-#include <clock.h>
-#include <common.h>
-#include <driver.h>
-#include <gpio.h>
-#include <init.h>
-#include <malloc.h>
-#include <types.h>
-#include <xfuncs.h>
-
-#include <linux/err.h>
-
-#include <asm/io.h>
-#include <i2c/i2c.h>
-#include <mach/generic.h>
-#include <mach/omap3-clock.h>
-
-#define OMAP_I2C_SIZE		0x3f
-#define OMAP1_I2C_BASE		0xfffb3800
-#define OMAP2_I2C_BASE1		0x48070000
-#define OMAP2_I2C_BASE2		0x48072000
-#define OMAP2_I2C_BASE3		0x48060000
-
-/* This will be the driver name */
-#define DRIVER_NAME "i2c-omap"
-
-#define OMAP_I2C_REV_REG		0x00
-#define OMAP_I2C_IE_REG			0x04
-#define OMAP_I2C_STAT_REG		0x08
-#define OMAP_I2C_IV_REG			0x0c
-/* For OMAP3 I2C_IV has changed to I2C_WE (wakeup enable) */
-#define OMAP_I2C_WE_REG			0x0c
-#define OMAP_I2C_SYSS_REG		0x10
-#define OMAP_I2C_BUF_REG		0x14
-#define OMAP_I2C_CNT_REG		0x18
-#define OMAP_I2C_DATA_REG		0x1c
-#define OMAP_I2C_SYSC_REG		0x20
-#define OMAP_I2C_CON_REG		0x24
-#define OMAP_I2C_OA_REG			0x28
-#define OMAP_I2C_SA_REG			0x2c
-#define OMAP_I2C_PSC_REG		0x30
-#define OMAP_I2C_SCLL_REG		0x34
-#define OMAP_I2C_SCLH_REG		0x38
-#define OMAP_I2C_SYSTEST_REG		0x3c
-#define OMAP_I2C_BUFSTAT_REG		0x40
-
-/* I2C Interrupt Enable Register (OMAP_I2C_IE): */
-#define OMAP_I2C_IE_XDR		(1 << 14)	/* TX Buffer drain int enable */
-#define OMAP_I2C_IE_RDR		(1 << 13)	/* RX Buffer drain int enable */
-#define OMAP_I2C_IE_XRDY	(1 << 4)	/* TX data ready int enable */
-#define OMAP_I2C_IE_RRDY	(1 << 3)	/* RX data ready int enable */
-#define OMAP_I2C_IE_ARDY	(1 << 2)	/* Access ready int enable */
-#define OMAP_I2C_IE_NACK	(1 << 1)	/* No ack interrupt enable */
-#define OMAP_I2C_IE_AL		(1 << 0)	/* Arbitration lost int ena */
-
-/* I2C Status Register (OMAP_I2C_STAT): */
-#define OMAP_I2C_STAT_XDR	(1 << 14)	/* TX Buffer draining */
-#define OMAP_I2C_STAT_RDR	(1 << 13)	/* RX Buffer draining */
-#define OMAP_I2C_STAT_BB	(1 << 12)	/* Bus busy */
-#define OMAP_I2C_STAT_ROVR	(1 << 11)	/* Receive overrun */
-#define OMAP_I2C_STAT_XUDF	(1 << 10)	/* Transmit underflow */
-#define OMAP_I2C_STAT_AAS	(1 << 9)	/* Address as slave */
-#define OMAP_I2C_STAT_AD0	(1 << 8)	/* Address zero */
-#define OMAP_I2C_STAT_XRDY	(1 << 4)	/* Transmit data ready */
-#define OMAP_I2C_STAT_RRDY	(1 << 3)	/* Receive data ready */
-#define OMAP_I2C_STAT_ARDY	(1 << 2)	/* Register access ready */
-#define OMAP_I2C_STAT_NACK	(1 << 1)	/* No ack interrupt enable */
-#define OMAP_I2C_STAT_AL	(1 << 0)	/* Arbitration lost int ena */
-
-/* I2C WE wakeup enable register */
-#define OMAP_I2C_WE_XDR_WE	(1 << 14)	/* TX drain wakup */
-#define OMAP_I2C_WE_RDR_WE	(1 << 13)	/* RX drain wakeup */
-#define OMAP_I2C_WE_AAS_WE	(1 << 9)	/* Address as slave wakeup*/
-#define OMAP_I2C_WE_BF_WE	(1 << 8)	/* Bus free wakeup */
-#define OMAP_I2C_WE_STC_WE	(1 << 6)	/* Start condition wakeup */
-#define OMAP_I2C_WE_GC_WE	(1 << 5)	/* General call wakeup */
-#define OMAP_I2C_WE_DRDY_WE	(1 << 3)	/* TX/RX data ready wakeup */
-#define OMAP_I2C_WE_ARDY_WE	(1 << 2)	/* Reg access ready wakeup */
-#define OMAP_I2C_WE_NACK_WE	(1 << 1)	/* No acknowledgment wakeup */
-#define OMAP_I2C_WE_AL_WE	(1 << 0)	/* Arbitration lost wakeup */
-
-#define OMAP_I2C_WE_ALL		(OMAP_I2C_WE_XDR_WE | OMAP_I2C_WE_RDR_WE | \
-				OMAP_I2C_WE_AAS_WE | OMAP_I2C_WE_BF_WE | \
-				OMAP_I2C_WE_STC_WE | OMAP_I2C_WE_GC_WE | \
-				OMAP_I2C_WE_DRDY_WE | OMAP_I2C_WE_ARDY_WE | \
-				OMAP_I2C_WE_NACK_WE | OMAP_I2C_WE_AL_WE)
-
-/* I2C Buffer Configuration Register (OMAP_I2C_BUF): */
-#define OMAP_I2C_BUF_RDMA_EN	(1 << 15)	/* RX DMA channel enable */
-#define OMAP_I2C_BUF_RXFIF_CLR	(1 << 14)	/* RX FIFO Clear */
-#define OMAP_I2C_BUF_XDMA_EN	(1 << 7)	/* TX DMA channel enable */
-#define OMAP_I2C_BUF_TXFIF_CLR	(1 << 6)	/* TX FIFO Clear */
-
-/* I2C Configuration Register (OMAP_I2C_CON): */
-#define OMAP_I2C_CON_EN		(1 << 15)	/* I2C module enable */
-#define OMAP_I2C_CON_BE		(1 << 14)	/* Big endian mode */
-#define OMAP_I2C_CON_OPMODE_HS	(1 << 12)	/* High Speed support */
-#define OMAP_I2C_CON_STB	(1 << 11)	/* Start byte mode (master) */
-#define OMAP_I2C_CON_MST	(1 << 10)	/* Master/slave mode */
-#define OMAP_I2C_CON_TRX	(1 << 9)	/* TX/RX mode (master only) */
-#define OMAP_I2C_CON_XA		(1 << 8)	/* Expand address */
-#define OMAP_I2C_CON_RM		(1 << 2)	/* Repeat mode (master only) */
-#define OMAP_I2C_CON_STP	(1 << 1)	/* Stop cond (master only) */
-#define OMAP_I2C_CON_STT	(1 << 0)	/* Start condition (master) */
-
-/* I2C SCL time value when Master */
-#define OMAP_I2C_SCLL_HSSCLL	8
-#define OMAP_I2C_SCLH_HSSCLH	8
-
-/* I2C System Test Register (OMAP_I2C_SYSTEST): */
-#ifdef DEBUG
-#define OMAP_I2C_SYSTEST_ST_EN		(1 << 15)	/* System test enable */
-#define OMAP_I2C_SYSTEST_FREE		(1 << 14)	/* Free running mode */
-#define OMAP_I2C_SYSTEST_TMODE_MASK	(3 << 12)	/* Test mode select */
-#define OMAP_I2C_SYSTEST_TMODE_SHIFT	(12)		/* Test mode select */
-#define OMAP_I2C_SYSTEST_SCL_I		(1 << 3)	/* SCL line sense in */
-#define OMAP_I2C_SYSTEST_SCL_O		(1 << 2)	/* SCL line drive out */
-#define OMAP_I2C_SYSTEST_SDA_I		(1 << 1)	/* SDA line sense in */
-#define OMAP_I2C_SYSTEST_SDA_O		(1 << 0)	/* SDA line drive out */
-#endif
-
-/* OCP_SYSSTATUS bit definitions */
-#define SYSS_RESETDONE_MASK		(1 << 0)
-
-/* OCP_SYSCONFIG bit definitions */
-#define SYSC_CLOCKACTIVITY_MASK		(0x3 << 8)
-#define SYSC_SIDLEMODE_MASK		(0x3 << 3)
-#define SYSC_ENAWAKEUP_MASK		(1 << 2)
-#define SYSC_SOFTRESET_MASK		(1 << 1)
-#define SYSC_AUTOIDLE_MASK		(1 << 0)
-
-#define SYSC_IDLEMODE_SMART		0x2
-#define SYSC_CLOCKACTIVITY_FCLK		0x2
-
-
-struct omap_i2c_struct {
-	void 			*base;
-	struct resource		*ioarea;
-	u32			speed;		/* Speed of bus in Khz */
-	u16			cmd_err;
-	u8			*buf;
-	size_t			buf_len;
-	struct i2c_adapter	adapter;
-	u8			fifo_size;	/* use as flag and value
-						 * fifo_size==0 implies no fifo
-						 * if set, should be trsh+1
-						 */
-	u8			rev;
-	unsigned		b_hw:1;		/* bad h/w fixes */
-	u16			iestate;	/* Saved interrupt register */
-	u16			pscstate;
-	u16			scllstate;
-	u16			sclhstate;
-	u16			bufstate;
-	u16			syscstate;
-	u16			westate;
-};
-#define to_omap_i2c_struct(a)	container_of(a, struct omap_i2c_struct, adapter)
-
-
-static inline void omap_i2c_write_reg(struct omap_i2c_struct *i2c_omap,
-				      int reg, u16 val)
-{
-	__raw_writew(val, i2c_omap->base + reg);
-}
-
-static inline u16 omap_i2c_read_reg(struct omap_i2c_struct *i2c_omap, int reg)
-{
-	return __raw_readw(i2c_omap->base + reg);
-}
-
-static void omap_i2c_unidle(struct omap_i2c_struct *i2c_omap)
-{
-	if (cpu_is_omap34xx()) {
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, 0);
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_PSC_REG, i2c_omap->pscstate);
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLL_REG, i2c_omap->scllstate);
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLH_REG, i2c_omap->sclhstate);
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_BUF_REG, i2c_omap->bufstate);
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG, i2c_omap->syscstate);
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_WE_REG, i2c_omap->westate);
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
-	}
-
-	/*
-	 * Don't write to this register if the IE state is 0 as it can
-	 * cause deadlock.
-	 */
-	if (i2c_omap->iestate)
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, i2c_omap->iestate);
-}
-
-static void omap_i2c_idle(struct omap_i2c_struct *i2c_omap)
-{
-	u16 iv;
-
-	i2c_omap->iestate = omap_i2c_read_reg(i2c_omap, OMAP_I2C_IE_REG);
-	/* omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, 0); */
-	if (i2c_omap->rev < OMAP_I2C_REV_2) {
-		iv = omap_i2c_read_reg(i2c_omap, OMAP_I2C_IV_REG); /* Read clears */
-	} else {
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_STAT_REG, i2c_omap->iestate);
-
-		/* Flush posted write before the i2c_omap->idle store occurs */
-		omap_i2c_read_reg(i2c_omap, OMAP_I2C_STAT_REG);
-	}
-}
-
-static int omap_i2c_init(struct omap_i2c_struct *i2c_omap)
-{
-	u16 psc = 0, scll = 0, sclh = 0, buf = 0;
-	u16 fsscll = 0, fssclh = 0, hsscll = 0, hssclh = 0;
-	uint64_t start;
-
-	unsigned long fclk_rate = 12000000;
-	unsigned long internal_clk = 0;
-
-	if (i2c_omap->rev >= OMAP_I2C_REV_2) {
-		/* Disable I2C controller before soft reset */
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG,
-			omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG) &
-				~(OMAP_I2C_CON_EN));
-
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG, SYSC_SOFTRESET_MASK);
-		/* For some reason we need to set the EN bit before the
-		 * reset done bit gets set. */
-		start = get_time_ns();
-
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
-		while (!(omap_i2c_read_reg(i2c_omap, OMAP_I2C_SYSS_REG) &
-			 SYSS_RESETDONE_MASK)) {
-			if (is_timeout(start, MSECOND)) {
-				dev_warn(i2c_omap->adapter.dev, "timeout waiting "
-						"for controller reset\n");
-				return -ETIMEDOUT;
-			}
-			mdelay(1);
-		}
-
-		/* SYSC register is cleared by the reset; rewrite it */
-		if (i2c_omap->rev == OMAP_I2C_REV_ON_2430) {
-
-			omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG,
-					   SYSC_AUTOIDLE_MASK);
-
-		} else if (i2c_omap->rev >= OMAP_I2C_REV_ON_3430) {
-			i2c_omap->syscstate = SYSC_AUTOIDLE_MASK;
-			i2c_omap->syscstate |= SYSC_ENAWAKEUP_MASK;
-			i2c_omap->syscstate |= (SYSC_IDLEMODE_SMART <<
-			      __ffs(SYSC_SIDLEMODE_MASK));
-			i2c_omap->syscstate |= (SYSC_CLOCKACTIVITY_FCLK <<
-			      __ffs(SYSC_CLOCKACTIVITY_MASK));
-
-			omap_i2c_write_reg(i2c_omap, OMAP_I2C_SYSC_REG,
-							i2c_omap->syscstate);
-			/*
-			 * Enabling all wakup sources to stop I2C freezing on
-			 * WFI instruction.
-			 * REVISIT: Some wkup sources might not be needed.
-			 */
-			i2c_omap->westate = OMAP_I2C_WE_ALL;
-			omap_i2c_write_reg(i2c_omap, OMAP_I2C_WE_REG, i2c_omap->westate);
-		}
-	}
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, 0);
-
-	/* omap1 handling is missing here */
-
-	if (cpu_is_omap2430() || cpu_is_omap34xx()) {
-
-		/*
-		 * HSI2C controller internal clk rate should be 19.2 Mhz for
-		 * HS and for all modes on 2430. On 34xx we can use lower rate
-		 * to get longer filter period for better noise suppression.
-		 * The filter is iclk (fclk for HS) period.
-		 */
-		if (i2c_omap->speed > 400 || cpu_is_omap2430())
-			internal_clk = 19200;
-		else if (i2c_omap->speed > 100)
-			internal_clk = 9600;
-		else
-			internal_clk = 4000;
-		fclk_rate = 96000000 / 1000;
-
-		/* Compute prescaler divisor */
-		psc = fclk_rate / internal_clk;
-		psc = psc - 1;
-
-		/* If configured for High Speed */
-		if (i2c_omap->speed > 400) {
-			unsigned long scl;
-
-			/* For first phase of HS mode */
-			scl = internal_clk / 400;
-			fsscll = scl - (scl / 3) - 7;
-			fssclh = (scl / 3) - 5;
-
-			/* For second phase of HS mode */
-			scl = fclk_rate / i2c_omap->speed;
-			hsscll = scl - (scl / 3) - 7;
-			hssclh = (scl / 3) - 5;
-		} else if (i2c_omap->speed > 100) {
-			unsigned long scl;
-
-			/* Fast mode */
-			scl = internal_clk / i2c_omap->speed;
-			fsscll = scl - (scl / 3) - 7;
-			fssclh = (scl / 3) - 5;
-		} else {
-			/* Standard mode */
-			fsscll = internal_clk / (i2c_omap->speed * 2) - 7;
-			fssclh = internal_clk / (i2c_omap->speed * 2) - 5;
-		}
-		scll = (hsscll << OMAP_I2C_SCLL_HSSCLL) | fsscll;
-		sclh = (hssclh << OMAP_I2C_SCLH_HSSCLH) | fssclh;
-	} else {
-		/* Program desired operating rate */
-		fclk_rate /= (psc + 1) * 1000;
-		if (psc > 2)
-			psc = 2;
-		scll = fclk_rate / (i2c_omap->speed * 2) - 7 + psc;
-		sclh = fclk_rate / (i2c_omap->speed * 2) - 7 + psc;
-	}
-
-	/* Setup clock prescaler to obtain approx 12MHz I2C module clock: */
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_PSC_REG, psc);
-
-	/* SCL low and high time values */
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLL_REG, scll);
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SCLH_REG, sclh);
-
-	if (i2c_omap->fifo_size) {
-		/* Note: setup required fifo size - 1. RTRSH and XTRSH */
-		buf = (i2c_omap->fifo_size - 1) << 8 | OMAP_I2C_BUF_RXFIF_CLR |
-			(i2c_omap->fifo_size - 1) | OMAP_I2C_BUF_TXFIF_CLR;
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_BUF_REG, buf);
-	}
-
-	/* Take the I2C module out of reset: */
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, OMAP_I2C_CON_EN);
-
-	/* Enable interrupts */
-	i2c_omap->iestate = (OMAP_I2C_IE_XRDY | OMAP_I2C_IE_RRDY |
-			OMAP_I2C_IE_ARDY | OMAP_I2C_IE_NACK |
-			OMAP_I2C_IE_AL)  | ((i2c_omap->fifo_size) ?
-				(OMAP_I2C_IE_RDR | OMAP_I2C_IE_XDR) : 0);
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_IE_REG, i2c_omap->iestate);
-	if (cpu_is_omap34xx()) {
-		i2c_omap->pscstate = psc;
-		i2c_omap->scllstate = scll;
-		i2c_omap->sclhstate = sclh;
-		i2c_omap->bufstate = buf;
-	}
-	return 0;
-}
-
-/*
- * Waiting on Bus Busy
- */
-static int omap_i2c_wait_for_bb(struct i2c_adapter *adapter)
-{
-	uint64_t start;
-	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
-
-	start = get_time_ns();
-	while (omap_i2c_read_reg(i2c_omap, OMAP_I2C_STAT_REG) & OMAP_I2C_STAT_BB) {
-		if (is_timeout(start, MSECOND)) {
-			dev_warn(adapter->dev, "timeout waiting for bus ready\n");
-			return -ETIMEDOUT;
-		}
-	}
-
-	return 0;
-}
-
-static inline void
-omap_i2c_ack_stat(struct omap_i2c_struct *i2c_omap, u16 stat)
-{
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_STAT_REG, stat);
-}
-
-static int
-omap_i2c_isr(struct omap_i2c_struct *dev)
-{
-	u16 bits;
-	u16 stat, w;
-	int err, count = 0;
-
-	bits = omap_i2c_read_reg(dev, OMAP_I2C_IE_REG);
-	while ((stat = (omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG))) & bits) {
-		dev_dbg(dev->adapter.dev, "IRQ (ISR = 0x%04x)\n", stat);
-		if (count++ == 100) {
-			dev_warn(dev->adapter.dev, "Too much work in one IRQ\n");
-			break;
-		}
-
-		err = 0;
-complete:
-		/*
-		 * Ack the stat in one go, but [R/X]DR and [R/X]RDY should be
-		 * acked after the data operation is complete.
-		 * Ref: TRM SWPU114Q Figure 18-31
-		 */
-		omap_i2c_write_reg(dev, OMAP_I2C_STAT_REG, stat &
-				~(OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR |
-				OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
-
-		if (stat & OMAP_I2C_STAT_NACK) {
-			err |= OMAP_I2C_STAT_NACK;
-			omap_i2c_write_reg(dev, OMAP_I2C_CON_REG,
-					   OMAP_I2C_CON_STP);
-		}
-		if (stat & OMAP_I2C_STAT_AL) {
-			dev_err(dev->adapter.dev, "Arbitration lost\n");
-			err |= OMAP_I2C_STAT_AL;
-		}
-		if (stat & (OMAP_I2C_STAT_ARDY | OMAP_I2C_STAT_NACK |
-					OMAP_I2C_STAT_AL)) {
-			omap_i2c_ack_stat(dev, stat &
-				(OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR |
-				OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
-			return 0;
-		}
-		if (stat & (OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR)) {
-			u8 num_bytes = 1;
-			if (dev->fifo_size) {
-				if (stat & OMAP_I2C_STAT_RRDY)
-					num_bytes = dev->fifo_size;
-				else    /* read RXSTAT on RDR interrupt */
-					num_bytes = (omap_i2c_read_reg(dev,
-							OMAP_I2C_BUFSTAT_REG)
-							>> 8) & 0x3F;
-			}
-			while (num_bytes) {
-				num_bytes--;
-				w = omap_i2c_read_reg(dev, OMAP_I2C_DATA_REG);
-				if (dev->buf_len) {
-					*dev->buf++ = w;
-					dev->buf_len--;
-					/* Data reg from 2430 is 8 bit wide */
-					if (!cpu_is_omap2430() &&
-							!cpu_is_omap34xx()) {
-						if (dev->buf_len) {
-							*dev->buf++ = w >> 8;
-							dev->buf_len--;
-						}
-					}
-				} else {
-					if (stat & OMAP_I2C_STAT_RRDY)
-						dev_err(dev->adapter.dev,
-							"RRDY IRQ while no data"
-								" requested\n");
-					if (stat & OMAP_I2C_STAT_RDR)
-						dev_err(dev->adapter.dev,
-							"RDR IRQ while no data"
-								" requested\n");
-					break;
-				}
-			}
-			omap_i2c_ack_stat(dev,
-				stat & (OMAP_I2C_STAT_RRDY | OMAP_I2C_STAT_RDR));
-			continue;
-		}
-		if (stat & (OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR)) {
-			u8 num_bytes = 1;
-			if (dev->fifo_size) {
-				if (stat & OMAP_I2C_STAT_XRDY)
-					num_bytes = dev->fifo_size;
-				else    /* read TXSTAT on XDR interrupt */
-					num_bytes = omap_i2c_read_reg(dev,
-							OMAP_I2C_BUFSTAT_REG)
-							& 0x3F;
-			}
-			while (num_bytes) {
-				num_bytes--;
-				w = 0;
-				if (dev->buf_len) {
-					w = *dev->buf++;
-					dev->buf_len--;
-					/* Data reg from  2430 is 8 bit wide */
-					if (!cpu_is_omap2430() &&
-							!cpu_is_omap34xx()) {
-						if (dev->buf_len) {
-							w |= *dev->buf++ << 8;
-							dev->buf_len--;
-						}
-					}
-				} else {
-					if (stat & OMAP_I2C_STAT_XRDY)
-						dev_err(dev->adapter.dev,
-							"XRDY IRQ while no "
-							"data to send\n");
-					if (stat & OMAP_I2C_STAT_XDR)
-						dev_err(dev->adapter.dev,
-							"XDR IRQ while no "
-							"data to send\n");
-					break;
-				}
-
-				/*
-				 * OMAP3430 Errata 1.153: When an XRDY/XDR
-				 * is hit, wait for XUDF before writing data
-				 * to DATA_REG. Otherwise some data bytes can
-				 * be lost while transferring them from the
-				 * memory to the I2C interface.
-				 */
-
-				if (dev->rev <= OMAP_I2C_REV_ON_3430) {
-						while (!(stat & OMAP_I2C_STAT_XUDF)) {
-							if (stat & (OMAP_I2C_STAT_NACK | OMAP_I2C_STAT_AL)) {
-								omap_i2c_ack_stat(dev, stat & (OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
-								err |= OMAP_I2C_STAT_XUDF;
-								goto complete;
-							}
-							stat = omap_i2c_read_reg(dev, OMAP_I2C_STAT_REG);
-						}
-				}
-
-				omap_i2c_write_reg(dev, OMAP_I2C_DATA_REG, w);
-			}
-			omap_i2c_ack_stat(dev,
-				stat & (OMAP_I2C_STAT_XRDY | OMAP_I2C_STAT_XDR));
-			continue;
-		}
-		if (stat & OMAP_I2C_STAT_ROVR) {
-			dev_err(dev->adapter.dev, "Receive overrun\n");
-			dev->cmd_err |= OMAP_I2C_STAT_ROVR;
-		}
-		if (stat & OMAP_I2C_STAT_XUDF) {
-			dev_err(dev->adapter.dev, "Transmit underflow\n");
-			dev->cmd_err |= OMAP_I2C_STAT_XUDF;
-		}
-	}
-
-	return -EBUSY;
-}
-
-
-/*
- * Low level master read/write transaction.
- */
-static int omap_i2c_xfer_msg(struct i2c_adapter *adapter,
-			     struct i2c_msg *msg, int stop)
-{
-	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
-	uint64_t start;
-	u16 con;
-	u16 w;
-	int ret = 0;
-
-
-	dev_dbg(adapter->dev, "addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\n",
-		msg->addr, msg->len, msg->flags, stop);
-
-	if (msg->len == 0)
-		return -EINVAL;
-
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_SA_REG, msg->addr);
-
-	/* REVISIT: Could the STB bit of I2C_CON be used with probing? */
-	i2c_omap->buf = msg->buf;
-	i2c_omap->buf_len = msg->len;
-
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CNT_REG, i2c_omap->buf_len);
-
-	/* Clear the FIFO Buffers */
-	w = omap_i2c_read_reg(i2c_omap, OMAP_I2C_BUF_REG);
-	w |= OMAP_I2C_BUF_RXFIF_CLR | OMAP_I2C_BUF_TXFIF_CLR;
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_BUF_REG, w);
-
-	i2c_omap->cmd_err = 0;
-
-	w = OMAP_I2C_CON_EN | OMAP_I2C_CON_MST | OMAP_I2C_CON_STT;
-
-	/* High speed configuration */
-	if (i2c_omap->speed > 400)
-		w |= OMAP_I2C_CON_OPMODE_HS;
-
-	if (msg->flags & I2C_M_TEN)
-		w |= OMAP_I2C_CON_XA;
-	if (!(msg->flags & I2C_M_RD))
-		w |= OMAP_I2C_CON_TRX;
-
-	if (!i2c_omap->b_hw && stop)
-		w |= OMAP_I2C_CON_STP;
-
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, w);
-
-	/*
-	 * Don't write stt and stp together on some hardware.
-	 */
-	if (i2c_omap->b_hw && stop) {
-		start = get_time_ns();
-		con = omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG);
-		while (con & OMAP_I2C_CON_STT) {
-			con = omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG);
-
-			/* Let the user know if i2c is in a bad state */
-			if (is_timeout(start, MSECOND)) {
-				dev_err(adapter->dev, "controller timed out "
-				"waiting for start condition to finish\n");
-				return -ETIMEDOUT;
-			}
-		}
-
-		w |= OMAP_I2C_CON_STP;
-		w &= ~OMAP_I2C_CON_STT;
-		omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, w);
-	}
-
-	/*
-	 * REVISIT: We should abort the transfer on signals, but the bus goes
-	 * into arbitration and we're currently unable to recover from it.
-	 */
-	start = get_time_ns();
-	ret = omap_i2c_isr(i2c_omap);
-	while (ret){
-		ret = omap_i2c_isr(i2c_omap);
-		if (is_timeout(start, MSECOND)) {
-				dev_err(adapter->dev, "timed out on polling for"
-				"open i2c message handling\n");
-				return -ETIMEDOUT;
-			}
-	}
-
-	i2c_omap->buf_len = 0;
-	if (likely(!i2c_omap->cmd_err))
-		return 0;
-
-	/* We have an error */
-	if (i2c_omap->cmd_err & (OMAP_I2C_STAT_AL | OMAP_I2C_STAT_ROVR |
-			    OMAP_I2C_STAT_XUDF)) {
-		omap_i2c_init(i2c_omap);
-		return -EIO;
-	}
-
-	if (i2c_omap->cmd_err & OMAP_I2C_STAT_NACK) {
-		if (msg->flags & I2C_M_IGNORE_NAK)
-			return 0;
-		if (stop) {
-			w = omap_i2c_read_reg(i2c_omap, OMAP_I2C_CON_REG);
-			w |= OMAP_I2C_CON_STP;
-			omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, w);
-		}
-		return -EREMOTEIO;
-	}
-	return -EIO;
-}
-
-
-/*
- * Prepare controller for a transaction and call omap_i2c_xfer_msg
- * to do the work during IRQ processing.
- */
-static int
-omap_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg msgs[], int num)
-{
-	struct omap_i2c_struct *i2c_omap = to_omap_i2c_struct(adapter);
-	int i;
-	int r;
-
-	omap_i2c_unidle(i2c_omap);
-
-	r = omap_i2c_wait_for_bb(adapter);
-	if (r < 0)
-		goto out;
-
-	for (i = 0; i < num; i++) {
-		r = omap_i2c_xfer_msg(adapter, &msgs[i], (i == (num - 1)));
-		if (r != 0)
-			break;
-	}
-
-	if (r == 0)
-		r = num;
-out:
-	omap_i2c_idle(i2c_omap);
-	return r;
-}
-
-static int __init
-i2c_omap_probe(struct device_d *pdev)
-{
-	struct omap_i2c_struct	*i2c_omap;
-	/* struct i2c_platform_data *pdata; */
-	/* unsigned long base = pdev->map_base; */
-	int r;
-	u32 speed = 0;
-
-	i2c_omap = kzalloc(sizeof(struct omap_i2c_struct), GFP_KERNEL);
-	if (!i2c_omap) {
-		r = -ENOMEM;
-		goto err_free_mem;
-	}
-
-	if (pdev->platform_data != NULL)
-		speed = *(u32 *)pdev->platform_data;
-	else
-		speed = 100;	/* Defualt speed */
-
-	i2c_omap->speed = speed;
-	i2c_omap->base = (void*)pdev->map_base;
-	printf ("I2C probe\n");
-	omap_i2c_unidle(i2c_omap);
-
-	i2c_omap->rev = omap_i2c_read_reg(i2c_omap, OMAP_I2C_REV_REG) & 0xff;
-	/* i2c_omap->base = OMAP2_I2C_BASE3; */
-
-	if (cpu_is_omap2430() || cpu_is_omap34xx()) {
-		u16 s;
-
-		/* Set up the fifo size - Get total size */
-		s = (omap_i2c_read_reg(i2c_omap, OMAP_I2C_BUFSTAT_REG) >> 14) & 0x3;
-		i2c_omap->fifo_size = 0x8 << s;
-
-		/*
-		 * Set up notification threshold as half the total available
-		 * size. This is to ensure that we can handle the status on int
-		 * call back latencies.
-		 */
-		i2c_omap->fifo_size = (i2c_omap->fifo_size / 2);
-		i2c_omap->b_hw = 1; /* Enable hardware fixes */
-	}
-
-	/* reset ASAP, clearing any IRQs */
-	omap_i2c_init(i2c_omap);
-
-	dev_info(pdev, "bus %d rev%d.%d at %d kHz\n",
-		 pdev->id, i2c_omap->rev >> 4, i2c_omap->rev & 0xf, i2c_omap->speed);
-
-	omap_i2c_idle(i2c_omap);
-
-	i2c_omap->adapter.master_xfer	= omap_i2c_xfer,
-	i2c_omap->adapter.nr = pdev->id;
-	i2c_omap->adapter.dev = pdev;
-
-	/* i2c device drivers may be active on return from add_adapter() */
-	r = i2c_add_numbered_adapter(&i2c_omap->adapter);
-	if (r) {
-		dev_err(pdev, "failure adding adapter\n");
-		goto err_unuse_clocks;
-	}
-
-	return 0;
-
-err_unuse_clocks:
-	omap_i2c_write_reg(i2c_omap, OMAP_I2C_CON_REG, 0);
-	omap_i2c_idle(i2c_omap);
-
-err_free_mem:
-	kfree(i2c_omap);
-
-	return r;
-}
-
-static struct driver_d omap_i2c_driver = {
-	.probe		= i2c_omap_probe,
-	.name		= DRIVER_NAME,
-};
-
-/* I2C may be needed to bring up other drivers */
-static int __init omap_i2c_init_driver(void)
-{
-	return register_driver(&omap_i2c_driver);
-}
-device_initcall(omap_i2c_init_driver);
-
-MODULE_AUTHOR("MontaVista Software, Inc. (and others)");
-MODULE_DESCRIPTION("TI OMAP I2C bus adapter");
-MODULE_LICENSE("GPL");
-- 
1.7.1



--===============2144624427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2144624427==--
