Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYQ-0003G5-WD
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:17 +0200
Message-Id: <1286796505-16049-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/17] mfd mc13892: Add spi support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |    2 +-
 drivers/mfd/Kconfig                             |    2 +-
 drivers/mfd/mc13892.c                           |  119 +++++++++++++++++++++--
 3 files changed, 112 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 9b8d718..d6699cd 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -111,7 +111,7 @@ static struct device_d smc911x_dev = {
 
 static struct i2c_board_info i2c_devices[] = {
 	{
-		I2C_BOARD_INFO("mc13892", 0x08),
+		I2C_BOARD_INFO("mc13892-i2c", 0x08),
 	}, {
 		I2C_BOARD_INFO("mc9sdz60", 0x69),
 	},
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 7c27418..96440d8 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1,7 +1,7 @@
 menu MFD
 
 config I2C_MC13892
-	depends on I2C
+	depends on I2C || SPI
 	bool "MC13892 a.k.a. PMIC driver"
 
 config I2C_MC34704
diff --git a/drivers/mfd/mc13892.c b/drivers/mfd/mc13892.c
index 240a7a9..2f415fc 100644
--- a/drivers/mfd/mc13892.c
+++ b/drivers/mfd/mc13892.c
@@ -24,6 +24,7 @@
 #include <driver.h>
 #include <xfuncs.h>
 #include <errno.h>
+#include <spi/spi.h>
 
 #include <i2c/i2c.h>
 #include <mfd/mc13892.h>
@@ -43,7 +44,56 @@ struct mc13892 *mc13892_get(void)
 }
 EXPORT_SYMBOL(mc13892_get);
 
-int mc13892_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *val)
+#ifdef CONFIG_SPI
+static int spi_rw(struct spi_device *spi, void * buf, size_t len)
+{
+	int ret;
+
+	struct spi_transfer t = {
+		.tx_buf = (const void *)buf,
+		.rx_buf = buf,
+		.len = len,
+		.cs_change = 0,
+		.delay_usecs = 0,
+	};
+	struct spi_message m;
+
+	spi_message_init(&m);
+	spi_message_add_tail(&t, &m);
+
+	if ((ret = spi_sync(spi, &m)))
+		return ret;
+	return 0;
+}
+
+#define MXC_PMIC_REG_NUM(reg)	(((reg) & 0x3f) << 25)
+#define MXC_PMIC_WRITE		(1 << 31)
+
+static int mc13892_spi_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *val)
+{
+	uint32_t buf;
+
+	buf = MXC_PMIC_REG_NUM(reg);
+
+	spi_rw(mc13892->spi, &buf, 4);
+
+	*val = buf;
+
+	return 0;
+}
+
+static int mc13892_spi_reg_write(struct mc13892 *mc13892, enum mc13892_reg reg, u32 val)
+{
+	uint32_t buf = MXC_PMIC_REG_NUM(reg) | MXC_PMIC_WRITE | (val & 0xffffff);
+
+	spi_rw(mc13892->spi, &buf, 4);
+
+	return 0;
+}
+#endif
+
+#ifdef CONFIG_I2C
+static int mc13892_i2c_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *val)
 {
 	u8 buf[3];
 	int ret;
@@ -53,9 +103,8 @@ int mc13892_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *val)
 
 	return ret == 3 ? 0 : ret;
 }
-EXPORT_SYMBOL(mc13892_reg_read)
 
-int mc13892_reg_write(struct mc13892 *mc13892, enum mc13892_reg reg, u32 val)
+static int mc13892_i2c_reg_write(struct mc13892 *mc13892, enum mc13892_reg reg, u32 val)
 {
 	u8 buf[] = {
 		val >> 16,
@@ -68,8 +117,36 @@ int mc13892_reg_write(struct mc13892 *mc13892, enum mc13892_reg reg, u32 val)
 
 	return ret == 3 ? 0 : ret;
 }
+#endif
+
+int mc13892_reg_write(struct mc13892 *mc13892, enum mc13892_reg reg, u32 val)
+{
+#ifdef CONFIG_I2C
+	if (mc13892->mode == MC13892_MODE_I2C)
+		return mc13892_i2c_reg_write(mc13892, reg, val);
+#endif
+#ifdef CONFIG_SPI
+	if (mc13892->mode == MC13892_MODE_SPI)
+		return mc13892_spi_reg_write(mc13892, reg, val);
+#endif
+	return -EINVAL;
+}
 EXPORT_SYMBOL(mc13892_reg_write)
 
+int mc13892_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *val)
+{
+#ifdef CONFIG_I2C
+	if (mc13892->mode == MC13892_MODE_I2C)
+		return mc13892_i2c_reg_read(mc13892, reg, val);
+#endif
+#ifdef CONFIG_SPI
+	if (mc13892->mode == MC13892_MODE_SPI)
+		return mc13892_spi_reg_read(mc13892, reg, val);
+#endif
+	return -EINVAL;
+}
+EXPORT_SYMBOL(mc13892_reg_read)
+
 int mc13892_set_bits(struct mc13892 *mc13892, enum mc13892_reg reg, u32 mask, u32 val)
 {
 	u32 tmp;
@@ -133,14 +210,22 @@ static struct file_operations mc_fops = {
 	.write	= mc_write,
 };
 
-static int mc_probe(struct device_d *dev)
+static int mc_probe(struct device_d *dev, enum mc13892_mode mode)
 {
 	if (mc_dev)
 		return -EBUSY;
 
 	mc_dev = xzalloc(sizeof(struct mc13892));
+	mc_dev->mode = mode;
 	mc_dev->cdev.name = DRIVERNAME;
-	mc_dev->client = to_i2c_client(dev);
+	if (mode == MC13892_MODE_I2C) {
+		mc_dev->client = to_i2c_client(dev);
+	}
+	if (mode == MC13892_MODE_SPI) {
+		mc_dev->spi = dev->type_data;
+		mc_dev->spi->mode = SPI_MODE_0 | SPI_CS_HIGH;
+		mc_dev->spi->bits_per_word = 32;
+	}
 	mc_dev->cdev.size = 256;
 	mc_dev->cdev.dev = dev;
 	mc_dev->cdev.ops = &mc_fops;
@@ -150,14 +235,30 @@ static int mc_probe(struct device_d *dev)
 	return 0;
 }
 
-static struct driver_d mc_driver = {
-	.name  = DRIVERNAME,
-	.probe = mc_probe,
+static int mc_i2c_probe(struct device_d *dev)
+{
+	return mc_probe(dev, MC13892_MODE_I2C);
+}
+
+static int mc_spi_probe(struct device_d *dev)
+{
+	return mc_probe(dev, MC13892_MODE_SPI);
+}
+
+static struct driver_d mc_i2c_driver = {
+	.name  = "mc13892-i2c",
+	.probe = mc_i2c_probe,
+};
+
+static struct driver_d mc_spi_driver = {
+	.name  = "mc13892-spi",
+	.probe = mc_spi_probe,
 };
 
 static int mc_init(void)
 {
-        register_driver(&mc_driver);
+        register_driver(&mc_i2c_driver);
+        register_driver(&mc_spi_driver);
         return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
