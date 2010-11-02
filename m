Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUK-0005Jv-AO
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:15 +0100
Message-Id: <1288718250-24919-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1288718250-24919-1-git-send-email-s.hauer@pengutronix.de>
References: <1288718250-24919-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/17] ARM i.MX: Add device convenience functions
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile                     |    2 +-
 arch/arm/mach-imx/devices.c                    |   59 ++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx21.h |   33 +++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx25.h |   38 +++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx27.h |   54 ++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx31.h |   35 ++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx35.h |   57 +++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx51.h |   53 +++++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices.h       |   17 +++++++
 9 files changed, 347 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/mach-imx/devices.c
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx21.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx25.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx27.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx31.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx35.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices.h

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index ce38566..d000683 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -10,4 +10,4 @@ obj-$(CONFIG_IMX_CLKO)	+= clko.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 obj-y += speed.o
-
+obj-y += devices.o
diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
new file mode 100644
index 0000000..dfeae1e
--- /dev/null
+++ b/arch/arm/mach-imx/devices.c
@@ -0,0 +1,59 @@
+#include <common.h>
+#include <driver.h>
+#include <mach/devices.h>
+
+static struct device_d *imx_add_device(char *name, int id, void *base, int size, void *pdata)
+{
+	struct device_d *dev;
+
+	dev = xzalloc(sizeof(*dev));
+	strcpy(dev->name,name);
+	dev->id = id;
+	dev->map_base = (unsigned long)base;
+	dev->size = size;
+	dev->platform_data = pdata;
+
+	register_device(dev);
+
+	return 0;
+}
+
+struct device_d *imx_add_fec(void *base, struct fec_platform_data *pdata)
+{
+	return imx_add_device("fec_imx", -1, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_spi(void *base, int id, struct spi_imx_master *pdata)
+{
+	return imx_add_device("imx_spi", id, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata)
+{
+	return imx_add_device("i2c-imx", id, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_uart(void *base, int id)
+{
+	return imx_add_device("imx_serial", id, base, 0x1000, NULL);
+}
+
+struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata)
+{
+	return imx_add_device("imx_nandl", -1, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata)
+{
+	return imx_add_device("imxfb", -1, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata)
+{
+	return imx_add_device("imx-ipu-fb", -1, base, 0x1000, pdata);
+}
+
+struct device_d *imx_add_mmc(void *base, int id, void *pdata)
+{
+	return imx_add_device("imx-mmc", id, base, 0x1000, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx21.h b/arch/arm/mach-imx/include/mach/devices-imx21.h
new file mode 100644
index 0000000..1e1fbbd
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/devices-imx21.h
@@ -0,0 +1,33 @@
+
+#include <mach/devices.h>
+
+static inline struct device_d *imx21_add_uart0(void)
+{
+	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+}
+
+static inline struct device_d *imx21_add_uart1(void)
+{
+	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+}
+
+static inline struct device_d *imx21_add_uart2(void)
+{
+	return imx_add_uart((void *)IMX_UART3_BASE, 2);
+}
+
+static inline struct device_d *imx21_add_uart3(void)
+{
+	return imx_add_uart((void *)IMX_UART4_BASE, 3);
+}
+
+static inline struct device_d *imx21_add_nand(struct imx_nand_platform_data *pdata)
+{
+	return imx_add_nand((void *)0xDF003000, pdata);
+}
+
+static inline struct device_d *imx21_add_fb(struct imx_fb_platform_data *pdata)
+{
+	return imx_add_fb((void *)0x10021000, pdata);
+}
+
diff --git a/arch/arm/mach-imx/include/mach/devices-imx25.h b/arch/arm/mach-imx/include/mach/devices-imx25.h
new file mode 100644
index 0000000..dc7f98f
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/devices-imx25.h
@@ -0,0 +1,38 @@
+
+#include <mach/devices.h>
+
+static inline struct device_d *imx25_add_i2c0(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)IMX_I2C1_BASE, 0, pdata);
+}
+
+static inline struct device_d *imx25_add_uart0(void)
+{
+	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+}
+
+static inline struct device_d *imx25_add_uart1(void)
+{
+	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+}
+
+static inline struct device_d *imx25_add_nand(struct imx_nand_platform_data *pdata)
+{
+	return imx_add_nand((void *)IMX_NFC_BASE, pdata);
+}
+
+static inline struct device_d *imx25_add_fb(struct imx_fb_platform_data *pdata)
+{
+	return imx_add_fb((void *)0x53fbc000, pdata);
+}
+
+static inline struct device_d *imx25_add_fec(struct fec_platform_data *pdata)
+{
+	return imx_add_fec((void *)IMX_FEC_BASE, pdata);
+}
+
+static inline struct device_d *imx25_add_mmc0(void *pdata)
+{
+	return imx_add_mmc((void *)0x53fb4000, 0, pdata);
+}
+
diff --git a/arch/arm/mach-imx/include/mach/devices-imx27.h b/arch/arm/mach-imx/include/mach/devices-imx27.h
new file mode 100644
index 0000000..0511eb5
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/devices-imx27.h
@@ -0,0 +1,54 @@
+
+#include <mach/devices.h>
+
+static inline struct device_d *imx27_add_spi0(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)IMX_SPI1_BASE, 0, pdata);
+}
+
+static inline struct device_d *imx27_add_i2c0(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)IMX_I2C1_BASE, 0, pdata);
+}
+
+static inline struct device_d *imx27_add_uart0(void)
+{
+	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+}
+
+static inline struct device_d *imx27_add_uart1(void)
+{
+	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+}
+
+static inline struct device_d *imx27_add_uart2(void)
+{
+	return imx_add_uart((void *)IMX_UART3_BASE, 2);
+}
+
+static inline struct device_d *imx27_add_uart3(void)
+{
+	return imx_add_uart((void *)IMX_UART4_BASE, 3);
+}
+
+static inline struct device_d *imx27_add_nand(struct imx_nand_platform_data *pdata)
+{
+	return imx_add_nand((void *)IMX_NFC_BASE, pdata);
+}
+
+static inline struct device_d *imx27_add_fb(struct imx_fb_platform_data *pdata)
+{
+	return imx_add_fb((void *)0x10021000, pdata);
+}
+
+static inline struct device_d *imx27_add_fec(struct fec_platform_data *pdata)
+{
+	return imx_add_fec((void *)IMX_FEC_BASE, pdata);
+}
+
+static inline struct device_d *imx27_add_mmc0(void *pdata)
+{
+	return imx_add_mmc((void *)0x10014000, 0, pdata);
+}
+
+
diff --git a/arch/arm/mach-imx/include/mach/devices-imx31.h b/arch/arm/mach-imx/include/mach/devices-imx31.h
new file mode 100644
index 0000000..1f5a48a
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/devices-imx31.h
@@ -0,0 +1,35 @@
+
+#include <mach/imx-regs.h>
+#include <mach/devices.h>
+
+#if 0
+static inline struct device_d *imx31_add_spi0(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)IMX_SPI1_BASE, 0, pdata);
+}
+
+static inline struct device_d *imx31_add_spi1(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)IMX_SPI2_BASE, 1, pdata);
+}
+#endif
+
+static inline struct device_d *imx31_add_uart0(void)
+{
+	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+}
+
+static inline struct device_d *imx31_add_uart1(void)
+{
+	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+}
+
+static inline struct device_d *imx31_add_nand(struct imx_nand_platform_data *pdata)
+{
+	return imx_add_nand((void *)0xb8000000, pdata);
+}
+
+static inline struct device_d *imx31_add_fb(struct imx_fb_platform_data *pdata)
+{
+	return imx_add_ipufb((void *)IPU_BASE, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx35.h b/arch/arm/mach-imx/include/mach/devices-imx35.h
new file mode 100644
index 0000000..3b2b1ff
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/devices-imx35.h
@@ -0,0 +1,57 @@
+
+#include <mach/devices.h>
+
+static inline struct device_d *imx35_add_i2c0(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)IMX_I2C1_BASE, 0, pdata);
+}
+
+static inline struct device_d *imx35_add_i2c1(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)IMX_I2C2_BASE, 1, pdata);
+}
+
+static inline struct device_d *imx35_add_i2c2(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)IMX_I2C3_BASE, 2, pdata);
+}
+
+static inline struct device_d *imx35_add_uart0(void)
+{
+	return imx_add_uart((void *)IMX_UART1_BASE, 0);
+}
+
+static inline struct device_d *imx35_add_uart1(void)
+{
+	return imx_add_uart((void *)IMX_UART2_BASE, 1);
+}
+
+static inline struct device_d *imx35_add_nand(struct imx_nand_platform_data *pdata)
+{
+	return imx_add_nand((void *)IMX_NFC_BASE, pdata);
+}
+
+static inline struct device_d *imx35_add_fb(struct imx_ipu_fb_platform_data *pdata)
+{
+	return imx_add_ipufb((void *)IMX_IPU_BASE, pdata);
+}
+
+static inline struct device_d *imx35_add_fec(struct fec_platform_data *pdata)
+{
+	return imx_add_fec((void *)IMX_FEC_BASE, pdata);
+}
+
+static inline struct device_d *imx35_add_mmc0(void *pdata)
+{
+	return imx_add_mmc((void *)IMX_SDHC1_BASE, 0, pdata);
+}
+
+static inline struct device_d *imx35_add_mmc1(void *pdata)
+{
+	return imx_add_mmc((void *)IMX_SDHC2_BASE, 1, pdata);
+}
+
+static inline struct device_d *imx35_add_mmc2(void *pdata)
+{
+	return imx_add_mmc((void *)IMX_SDHC3_BASE, 2, pdata);
+}
diff --git a/arch/arm/mach-imx/include/mach/devices-imx51.h b/arch/arm/mach-imx/include/mach/devices-imx51.h
new file mode 100644
index 0000000..ff63fca
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/devices-imx51.h
@@ -0,0 +1,53 @@
+
+#include <mach/devices.h>
+
+static inline struct device_d *imx51_add_spi0(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)MX51_CSPI1_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx51_add_spi1(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)MX51_CSPI2_BASE_ADDR, 1, pdata);
+}
+
+static inline struct device_d *imx51_add_spi2(struct spi_imx_master *pdata)
+{
+	return imx_add_spi((void *)MX51_CSPI3_BASE_ADDR, 2, pdata);
+}
+
+static inline struct device_d *imx51_add_i2c0(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)MX51_I2C1_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx51_add_i2c1(struct i2c_platform_data *pdata)
+{
+	return imx_add_i2c((void *)MX51_I2C2_BASE_ADDR, 1, pdata);
+}
+
+static inline struct device_d *imx51_add_uart0(void)
+{
+	return imx_add_uart((void *)MX51_UART1_BASE_ADDR, 0);
+}
+
+static inline struct device_d *imx51_add_uart1(void)
+{
+	return imx_add_uart((void *)MX51_UART2_BASE_ADDR, 1);
+}
+
+static inline struct device_d *imx51_add_fec(struct fec_platform_data *pdata)
+{
+	return imx_add_fec((void *)MX51_MXC_FEC_BASE_ADDR, pdata);
+}
+
+static inline struct device_d *imx51_add_mmc0(void *pdata)
+{
+	return imx_add_mmc((void *)MX51_MMC_SDHC1_BASE_ADDR, 0, pdata);
+}
+
+static inline struct device_d *imx51_add_mmc1(void *pdata)
+{
+	return imx_add_mmc((void *)MX51_MMC_SDHC2_BASE_ADDR, 0, pdata);
+}
+
diff --git a/arch/arm/mach-imx/include/mach/devices.h b/arch/arm/mach-imx/include/mach/devices.h
new file mode 100644
index 0000000..677d5b5
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/devices.h
@@ -0,0 +1,17 @@
+
+#include <fec.h>
+#include <i2c/i2c.h>
+#include <mach/spi.h>
+#include <mach/imx-nand.h>
+#include <mach/imxfb.h>
+#include <mach/imx-ipu-fb.h>
+
+struct device_d *imx_add_fec(void *base, struct fec_platform_data *pdata);
+struct device_d *imx_add_spi(void *base, int id, struct spi_imx_master *pdata);
+struct device_d *imx_add_i2c(void *base, int id, struct i2c_platform_data *pdata);
+struct device_d *imx_add_uart(void *base, int id);
+struct device_d *imx_add_nand(void *base, struct imx_nand_platform_data *pdata);
+struct device_d *imx_add_fb(void *base, struct imx_fb_platform_data *pdata);
+struct device_d *imx_add_ipufb(void *base, struct imx_ipu_fb_platform_data *pdata);
+struct device_d *imx_add_mmc(void *base, int id, void *pdata);
+
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
