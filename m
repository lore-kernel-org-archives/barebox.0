Delivery-date: Tue, 17 Aug 2021 12:08:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw0r-0005ke-Np
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:08:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw0m-0002A4-Em
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlZOiQcHLM8pw2+SAMyAhugbQl5cTojLxeNd+yjl4tE=; b=iHyezDrDf9pYh3
	BwtvYRuu05YsHlGwO2FZBSS51JsB/C5ZQdIwtgM+u9ZLPl3fZ+Pdk0HUABKh14eAUrsL/Jj8eVCso
	XkVl+IJ/JBw7KTPlP2ugYTMozCdowD+pGKcoSbY1qGnXI+pPKdRK+9byGEPOwlGPPlcq6MHEpE0Pq
	u2aSpM1BCdDaCbI9h4x/m/ovl0TNo1kTk+y+QLJCHJqI8mS/uobqCs4qpYJ4J7lXTBYMBS84Bm8q5
	m2bIC285zzy3A4FxXoQHpOgLvAY3jfBuM2lWYIn45XbELtYwJnpfsgjkhQjGTItoXPUuOwZgqlVHY
	TA5EEM5gUQpaAhMAbJvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFvyu-001zXw-Nx; Tue, 17 Aug 2021 10:06:05 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFvxl-001yz4-PA
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:04:59 +0000
Received: by mail-lf1-x130.google.com with SMTP id k5so12474960lfu.4
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rq6YSAxkyAdg0r4TEEb2P4weH07Asj3ujk627sinYGo=;
 b=oNvgd0MFyo6liuLeF2UxdIzbqS2BY1crXzOJtHUVgVMLk0xL3iMXzY63vX5doLXxdI
 3v2SenHqKy79gsnzmoCZNH2i+cfTJbtSYwH4G245+5gkg5H7UydsVQjxGZwhNyXtM3pI
 QAVdeGvP/PzQ+riVx35oz7+EPHTgft/S/94GZOSj2g7eRml6Pel+OsjY44VAMEQwX3AP
 qpav1bEzhYzo7y+eGSxVwmouu6nkyev/K/Kd38bEiPqPHcRfX/CGJr8BQjBetOVT75Ex
 vJmkdVpXZq9siOps5Kdf1Dnu3zc0/MWA1+GdYbknnZBWWoonWC8Iczj8U+Us1MDGw6sg
 55JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rq6YSAxkyAdg0r4TEEb2P4weH07Asj3ujk627sinYGo=;
 b=F/HiecSArcHnT0gCGiPKgrzQsQrjVgKjzGd8vYnF0CaalDgx/PQWnO0LZiEOV5v5Zr
 WJBr+gP2/CvGUoRjz4A2UQ5DWjL0b4k4/m975bzr9hWrgzBiYqwXiK6oc3NtXg80hfKP
 GU65Knr7LbXp2TKSllOba9S+jUuQPWxQaE27IDLTx9K1EKmyOiCwJ66Mf6EmvlIPKkD+
 1VLcbbRSKGDAcgy/0W8lDZikHpoRLKpan0OQu+eR4iQ0x7Fr1jESdZQ4xWk676vIH7Af
 0OZPVPUGBdYRCyi4ZD4/aNhNkErwU4GFQSppOcv8nOGt3vRAxzL3QtVFO2dXYuDQQurn
 NLvw==
X-Gm-Message-State: AOAM5304dQxT8itfXssdJZutTe0ZXNKWRBl1eqNa9erX2Pk3136ztBhz
 xy+QVegOy7CsI7OlP00JoqueVzSdFx4=
X-Google-Smtp-Source: ABdhPJyZmtZtoG45obKhU2quZHR22sHYgqn/wVLwE3MgAxepymTmRzU0AULVJfx872FZp3wDl1m8Ag==
X-Received: by 2002:a19:6d18:: with SMTP id i24mr1783698lfc.451.1629194691611; 
 Tue, 17 Aug 2021 03:04:51 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id e20sm179795ljn.13.2021.08.17.03.04.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:04:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:04:32 +0300
Message-Id: <20210817100435.114756-6-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817100435.114756-1-antonynpavlov@gmail.com>
References: <20210817100435.114756-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_030453_903598_958C83F9 
X-CRM114-Status: GOOD (  21.78  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/8] spi: add litex spiflash driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/spi/Kconfig          |   3 +
 drivers/spi/Makefile         |   1 +
 drivers/spi/litex_spiflash.c | 241 +++++++++++++++++++++++++++++++++++
 3 files changed, 245 insertions(+)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 91083ee709..e92cf675ab 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -74,6 +74,9 @@ config DRIVER_SPI_IMX_2_3
 	depends on ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6 || ARCH_IMX7 || ARCH_IMX8M
 	default y
 
+config DRIVER_SPI_LITEX_SPIFLASH
+	bool "Litex SPIFLASH bitbang master driver"
+
 config DRIVER_SPI_MXS
 	bool "i.MX (23,28) SPI Master driver"
 	depends on ARCH_IMX28
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 908d514a01..ac95ffc1db 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_DRIVER_SPI_ATH79) += ath79_spi.o
 obj-$(CONFIG_DRIVER_SPI_GPIO) += gpio_spi.o
 obj-$(CONFIG_DRIVER_SPI_FSL_QUADSPI) += spi-fsl-qspi.o
 obj-$(CONFIG_DRIVER_SPI_IMX) += imx_spi.o
+obj-$(CONFIG_DRIVER_SPI_LITEX_SPIFLASH) += litex_spiflash.o
 obj-$(CONFIG_DRIVER_SPI_MVEBU) += mvebu_spi.o
 obj-$(CONFIG_DRIVER_SPI_MXS) += mxs_spi.o
 obj-$(CONFIG_DRIVER_SPI_ALTERA) += altera_spi.o
diff --git a/drivers/spi/litex_spiflash.c b/drivers/spi/litex_spiflash.c
new file mode 100644
index 0000000000..26ef207699
--- /dev/null
+++ b/drivers/spi/litex_spiflash.c
@@ -0,0 +1,241 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2020 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ */
+
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <spi/spi.h>
+#include <io.h>
+
+struct litex_spiflash_spi {
+	struct spi_master	master;
+	void __iomem		*regs;
+	u32			val;
+};
+
+#define SPIFLASH_BITBANG 0x0
+#define  SPIFLASH_BB_MOSI BIT(0)
+#define  SPIFLASH_BB_CLK BIT(1)
+#define  SPIFLASH_BB_CSN BIT(2)
+#define  SPIFLASH_BB_DIR BIT(3)
+
+#define SPIFLASH_MISO 0x4
+#define SPIFLASH_BITBANG_EN 0x8
+
+static inline u32 litex_spiflash_spi_rr(struct litex_spiflash_spi *sp, int reg)
+{
+	return readl(sp->regs + reg);
+}
+
+static inline void litex_spiflash_spi_wr(struct litex_spiflash_spi *sp, u32 val, int reg)
+{
+	writel(val, sp->regs + reg);
+}
+
+static inline void setbits(struct litex_spiflash_spi *sp, int bits, int on)
+{
+	/*
+	 * We are the only user of SCSPTR so no locking is required.
+	 * Reading bit 2 and 0 in SCSPTR gives pin state as input.
+	 * Writing the same bits sets the output value.
+	 * This makes regular read-modify-write difficult so we
+	 * use sp->val to keep track of the latest register value.
+	 */
+
+	if (on)
+		sp->val |= bits;
+	else
+		sp->val &= ~bits;
+
+	litex_spiflash_spi_wr(sp, sp->val, SPIFLASH_BITBANG);
+}
+
+static inline struct litex_spiflash_spi *litex_spiflash_spidev_to_sp(struct spi_device *spi)
+{
+	return container_of(spi->master, struct litex_spiflash_spi, master);
+}
+
+static inline void setsck(struct spi_device *spi, int on)
+{
+	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
+
+	setbits(sc, SPIFLASH_BB_CLK, on);
+}
+
+static inline void setmosi(struct spi_device *spi, int on)
+{
+	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
+
+	sc->val &= ~SPIFLASH_BB_DIR;
+	setbits(sc, SPIFLASH_BB_MOSI, on);
+}
+
+static inline u32 getmiso(struct spi_device *spi)
+{
+	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
+
+	setbits(sc, SPIFLASH_BB_DIR, 1);
+	return !!((litex_spiflash_spi_rr(sc, SPIFLASH_MISO) & 1));
+}
+
+#define spidelay(nsecs) udelay(nsecs/1000)
+
+#include "spi-bitbang-txrx.h"
+
+static inline void litex_spiflash_spi_chipselect(struct litex_spiflash_spi *sc, int on)
+{
+	setbits(sc, SPIFLASH_BB_CSN, on);
+}
+
+static int litex_spiflash_spi_setup(struct spi_device *spi)
+{
+	struct spi_master *master = spi->master;
+	struct device_d spi_dev = spi->dev;
+
+	if (spi->bits_per_word != 8) {
+		dev_err(master->dev, "master doesn't support %d bits per word requested by %s\n",
+			spi->bits_per_word, spi_dev.name);
+		return -EINVAL;
+	}
+
+	if ((spi->mode & (SPI_CPHA | SPI_CPOL)) != SPI_MODE_0) {
+		dev_err(master->dev, "master doesn't support SPI_MODE%d requested by %s\n",
+			spi->mode & (SPI_CPHA | SPI_CPOL), spi_dev.name);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int litex_spiflash_spi_read(struct spi_device *spi, void *buf, size_t nbyte)
+{
+	ssize_t cnt = 0;
+	u8 *rxf_buf = buf;
+
+	while (cnt < nbyte) {
+		*rxf_buf = bitbang_txrx_be_cpha1(spi, 1000, 1, 0, 8);
+		rxf_buf++;
+		cnt++;
+	}
+
+	return cnt;
+}
+
+static int litex_spiflash_spi_write(struct spi_device *spi,
+				const void *buf, size_t nbyte)
+{
+	ssize_t cnt = 0;
+	const u8 *txf_buf = buf;
+
+	while (cnt < nbyte) {
+		bitbang_txrx_be_cpha1(spi, 1000, 1, (u32)*txf_buf, 8);
+		txf_buf++;
+		cnt++;
+	}
+
+	return 0;
+}
+
+static int litex_spiflash_spi_transfer(struct spi_device *spi, struct spi_message *mesg)
+{
+	struct litex_spiflash_spi *sc = litex_spiflash_spidev_to_sp(spi);
+	struct spi_transfer *t;
+
+	mesg->actual_length = 0;
+
+	/* activate chip select signal */
+	litex_spiflash_spi_chipselect(sc, 0);
+
+	list_for_each_entry(t, &mesg->transfers, transfer_list) {
+
+		if (t->tx_buf)
+			litex_spiflash_spi_write(spi, t->tx_buf, t->len);
+
+		if (t->rx_buf)
+			litex_spiflash_spi_read(spi, t->rx_buf, t->len);
+
+		mesg->actual_length += t->len;
+	}
+
+	/* inactivate chip select signal */
+	litex_spiflash_spi_chipselect(sc, 1);
+
+	return 0;
+}
+
+static void litex_spiflash_spi_enable(struct litex_spiflash_spi *sp)
+{
+	u32 val;
+
+	/* set SPIFLASH_BB_DIR = 0 */
+	val = SPIFLASH_BB_CSN | SPIFLASH_BB_CLK | SPIFLASH_BB_MOSI;
+	litex_spiflash_spi_wr(sp, val, SPIFLASH_BITBANG);
+
+	/* enable GPIO mode */
+	litex_spiflash_spi_wr(sp, 1, SPIFLASH_BITBANG_EN);
+}
+
+static void litex_spiflash_spi_disable(struct litex_spiflash_spi *sp)
+{
+	/* disable GPIO mode */
+	litex_spiflash_spi_wr(sp, 0, SPIFLASH_BITBANG_EN);
+}
+
+static int litex_spiflash_spi_probe(struct device_d *dev)
+{
+	struct resource *iores;
+	struct spi_master *master;
+	struct litex_spiflash_spi *litex_spiflash_spi;
+
+	litex_spiflash_spi = xzalloc(sizeof(*litex_spiflash_spi));
+	dev->priv = litex_spiflash_spi;
+
+	master = &litex_spiflash_spi->master;
+	master->dev = dev;
+
+	master->bus_num = dev->id;
+	master->setup = litex_spiflash_spi_setup;
+	master->transfer = litex_spiflash_spi_transfer;
+	master->num_chipselect = 1;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores))
+		return PTR_ERR(iores);
+	litex_spiflash_spi->regs = IOMEM(iores->start);
+
+	litex_spiflash_spi_enable(litex_spiflash_spi);
+
+	/* inactivate chip select signal */
+	litex_spiflash_spi_chipselect(litex_spiflash_spi, 1);
+
+	spi_register_master(master);
+
+	return 0;
+}
+
+static void litex_spiflash_spi_remove(struct device_d *dev)
+{
+	struct litex_spiflash_spi *sp = dev->priv;
+
+	litex_spiflash_spi_disable(sp);
+}
+
+static __maybe_unused struct of_device_id litex_spiflash_spi_dt_ids[] = {
+	{
+		.compatible = "litex,spiflash",
+	},
+	{
+		/* sentinel */
+	}
+};
+
+static struct driver_d litex_spiflash_spi_driver = {
+	.name  = "litex-spiflash",
+	.probe = litex_spiflash_spi_probe,
+	.remove = litex_spiflash_spi_remove,
+	.of_compatible = DRV_OF_COMPAT(litex_spiflash_spi_dt_ids),
+};
+device_platform_driver(litex_spiflash_spi_driver);
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

