Delivery-date: Fri, 08 Jul 2022 07:57:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gz4-00AA69-D9
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 07:57:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gz6-0001WC-Cm
	for lore@pengutronix.de; Fri, 08 Jul 2022 07:57:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=W5xMV591xO+WmFnozTWTJsjp8Ogb/F5Hyq2lJTLG0S4=; b=OBe9npa9mm1E0kVnjUdoKo2sLu
	4rC7ijZTnp0uM5Qzw1weztwTIBiDHlRBJKk/CmJW8zEkkiyPo6SqlRCitA/5blFR5As2k0d4Y/rkn
	crdg5nughO4SoDciTnxlQwFOOg8AKrGF9MBMbaSMvs9YVvl4lHsKbapaupxAhe004zjNOtd/LvTdp
	3B7gsN69nrp2zup9gCHBneDxn8jyYg5ChM76EWejVwJI1csdzjfhL6zCKpR8aYyOHX1/QM8/1417e
	hZ/1naLKKH49yrHf2Mrh9M0ck2TjCBi3NzdA3VfboPrOprV3/sCDka38mSdWuxSeP/TgkpDMwMBo4
	0AxT76tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gxt-001sv1-6o; Fri, 08 Jul 2022 05:55:45 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gxm-001sqM-K8
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 05:55:40 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 95E1940004;
	Fri,  8 Jul 2022 05:55:30 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  8 Jul 2022 07:55:26 +0200
Message-Id: <20220708055526.1177941-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_225539_041547_A30503FA 
X-CRM114-Status: GOOD (  18.17  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] aiodev: add ST L3GD20 Gyroscope and temperature sensor support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The L3GD0 is an on-board peripheral of the STM32F429-DISCOVERY and as
such a good target to test out SPI driver support. Add a simple aiodev
driver to interface with it. It can read the chip's angular rate in
three dimensions as well as the temperature sensor embedded in it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/aiodev/Kconfig   |   6 ++
 drivers/aiodev/Makefile  |   1 +
 drivers/aiodev/st_gyro.c | 122 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 129 insertions(+)
 create mode 100644 drivers/aiodev/st_gyro.c

diff --git a/drivers/aiodev/Kconfig b/drivers/aiodev/Kconfig
index 88a3b9a3431c..6bd697702ecf 100644
--- a/drivers/aiodev/Kconfig
+++ b/drivers/aiodev/Kconfig
@@ -30,6 +30,12 @@ config LM75
 	help
 	  Support for LM75 and similar devices
 
+config ST_GYRO
+	tristate "ST L3GD20 SPI gyro driver"
+	depends on SPI
+	help
+	  Support for L3GD20 three-axis angular rate sensor.
+
 config MC13XXX_ADC
 	tristate "MC13XXX ADC driver"
 	depends on MFD_MC13XXX
diff --git a/drivers/aiodev/Makefile b/drivers/aiodev/Makefile
index 4c92a403a293..06a63b0d2d78 100644
--- a/drivers/aiodev/Makefile
+++ b/drivers/aiodev/Makefile
@@ -3,6 +3,7 @@
 obj-$(CONFIG_AIODEV) += core.o
 obj-$(CONFIG_IMX_THERMAL) += imx_thermal.o
 obj-$(CONFIG_LM75) += lm75.o
+obj-$(CONFIG_ST_GYRO) += st_gyro.o
 obj-$(CONFIG_MC13XXX_ADC) += mc13xxx_adc.o
 obj-$(CONFIG_QORIQ_THERMAL) += qoriq_thermal.o
 obj-$(CONFIG_AM335X_ADC) += am335x_adc.o
diff --git a/drivers/aiodev/st_gyro.c b/drivers/aiodev/st_gyro.c
new file mode 100644
index 000000000000..3938d8239e4b
--- /dev/null
+++ b/drivers/aiodev/st_gyro.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2022 Ahmad Fatoum
+
+#include <common.h>
+#include <driver.h>
+#include <xfuncs.h>
+#include <spi/spi.h>
+#include <aiodev.h>
+
+#define ST_GYRO_WHO_AM_I    0x0F
+#define ST_GYRO_CTRL_REG1   0x20
+
+#define ST_GYRO_DEFAULT_OUT_TEMP_ADDR           0x26
+#define ST_GYRO_DEFAULT_OUT_X_L_ADDR            0x28
+#define ST_GYRO_DEFAULT_OUT_Y_L_ADDR            0x2a
+#define ST_GYRO_DEFAULT_OUT_Z_L_ADDR            0x2c
+
+#define ST_GYRO_OUT_L_ADDR(idx)		\
+	(ST_GYRO_DEFAULT_OUT_X_L_ADDR + 2 * (idx))
+
+#define ST_GYRO_OUT_H_ADDR(idx)		\
+	(ST_GYRO_OUT_L_ADDR(idx) + 1)
+
+#define ST_GYRO_READ		0x80
+#define ST_GYRO_WRITE		0x00
+#define ST_GYRO_MULTI		0x40
+
+struct st_gyro {
+	struct aiodevice aiodev;
+	struct aiochannel aiochan[4];
+	struct spi_device *spi;
+};
+#define to_st_gyro(chan) container_of(chan->aiodev, struct st_gyro, aiodev)
+
+static int st_gyro_read(struct aiochannel *chan, int *val)
+{
+	struct st_gyro *gyro = to_st_gyro(chan);
+	int ret;
+	u8 tx;
+	u8 rx_h, rx_l;
+
+	if (chan->index == 3) {
+		tx = ST_GYRO_DEFAULT_OUT_TEMP_ADDR | ST_GYRO_READ;
+		ret = spi_write_then_read(gyro->spi, &tx, 1, &rx_l, 1);
+		if (ret)
+			return ret;
+
+		*val = (s8)rx_l;
+		return 0;
+	}
+
+	tx = ST_GYRO_OUT_H_ADDR(chan->index) | ST_GYRO_READ;
+	ret = spi_write_then_read(gyro->spi, &tx, 1, &rx_h, 1);
+	if (ret)
+		return ret;
+
+	tx = ST_GYRO_OUT_L_ADDR(chan->index) | ST_GYRO_READ;
+	ret = spi_write_then_read(gyro->spi, &tx, 1, &rx_l, 1);
+	if (ret)
+		return ret;
+
+	*val = (s16)((rx_h << 8) | rx_l);
+	*val *= 250;
+	*val >>= 16;
+
+	return 0;
+}
+
+static int st_gyro_probe(struct device_d *dev)
+{
+	u8 tx[2], rx[2];
+	struct st_gyro *gyro;
+	int ret, i;
+
+	gyro = xzalloc(sizeof(*gyro));
+	gyro->spi = to_spi_device(dev);
+
+	tx[0] = ST_GYRO_WHO_AM_I | ST_GYRO_READ;
+	ret = spi_write_then_read(gyro->spi, tx, 1, rx, 1);
+	if (ret)
+		return -EIO;
+	if (rx[0] != 0xD4)
+		return dev_err_probe(dev, -ENODEV, "unexpected device WAI: %02x\n", rx[0]);
+
+	/* initialize device */
+	tx[0] = ST_GYRO_CTRL_REG1 | ST_GYRO_WRITE;
+	tx[1] = 0xF; /* normal mode, 3 channels */
+	ret = spi_write(gyro->spi, tx, 2);
+	if (ret)
+		return -EIO;
+
+	gyro->aiodev.num_channels = 4;
+	gyro->aiodev.hwdev = dev;
+	gyro->aiodev.read = st_gyro_read;
+	gyro->aiodev.name = "gyroscope";
+	gyro->aiodev.channels =
+		xmalloc(gyro->aiodev.num_channels *
+			sizeof(gyro->aiodev.channels[0]));
+	for (i = 0; i < 3; i++) {
+		gyro->aiodev.channels[i] = &gyro->aiochan[i];
+		gyro->aiochan[i].unit = "dps";
+		gyro->aiochan[i].index = i;
+	}
+
+	gyro->aiodev.channels[3] = &gyro->aiochan[3];
+	gyro->aiochan[3].unit = "C";
+	gyro->aiochan[3].index = 3;
+
+	return aiodevice_register(&gyro->aiodev);
+}
+
+static const struct of_device_id st_gyro_match[] = {
+	{ .compatible = "st,l3gd20-gyro"  },
+	{ /* sentinel */ }
+};
+
+static struct driver_d st_gyro_driver = {
+	.name  = "st_gyro",
+	.probe = st_gyro_probe,
+	.of_compatible = st_gyro_match,
+};
+device_spi_driver(st_gyro_driver);
-- 
2.34.1



