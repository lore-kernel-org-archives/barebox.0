Delivery-date: Fri, 07 May 2021 00:10:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCb-000377-9h
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:10:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCZ-00055c-8k
	for lore@pengutronix.de; Fri, 07 May 2021 00:10:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DpfO/uLMkQ9wZC7AItw/dqXBHoOZudDSror/j7Tt/HM=; b=hg9LOR5emwff2/9RZyN5S7qZH
	eBcfCGdHFVYrGu5fMhDrehX2g1d7tiuT06M3nfxNd9pcaPkLKwvBXolgpESOIuvdG9SlO4PXFp3te
	HnnXkoU7MiImfpEJDiOsqIb8usNpqFnbjcRka/dlRzE2zdicqmyKfpkig57Ukjv5ZNgpETXo5rZKC
	Y6j9hxF1TFT6w4ab1Ifq/vonLJt6K2O8nOO2bejuSiDA0jmyuL+OcetDJTEopkNCIPIhvI7EIaFzP
	lwhR8ASoSKTQ/vW5eEyM+Ifn33YEvdg5S3OvduuzfdtjkRK3TnErnE9V6peYjmHDMMcwhaP+uXmeD
	LMMc/vTFg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemBh-005RXi-Gh; Thu, 06 May 2021 22:09:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB7-005ROp-Al
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:09:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=MNrCaBANZOi5fJ+Hr4kYrAYpbeWPpSJR0Bn3nnkVd8o=; b=pSZJVTKtbe7gN2oFrrRkyk2yYX
 IU8oa0Fu3PilGqgK9BB8MzzEbti9XMZoY7b8ZNrHH7bJfM2nqgtJZvW7lQpwc1g1IHf6rrKCQyZGd
 5byIl2dBGNh03HI0EpKQMK28951916Dj1yqA9gQBf6cuzf5U66myfGQgvMk2eP0a6+8sZPb3bkVoi
 onQhgL2WEabRZRAjZLIzsFjFGkB+xsqbGLvdkc8tcyRNZXw5j9muPzMhiZvGidkg7lrZeL6JOLS0q
 9pNtahbgsGPbeWcd3Q9K/zjw7GiC++vzkFe1j0fdeFC6pfCykMBv5sN2tdhxbDy7Lj8AEOQ2H9AUB
 oYYKOyXg==;
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB4-006QPC-BS
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:09:04 +0000
Received: by mail-lf1-x12d.google.com with SMTP id c3so9967122lfs.7
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MNrCaBANZOi5fJ+Hr4kYrAYpbeWPpSJR0Bn3nnkVd8o=;
 b=GAmtHCn23bXRkZ1hXIXfBGai7pCJY9IR/O2C3yPYePo4467JfmEAw8FqOuFxQOx58f
 mrSIIOu6IyjZt3b2LCtg25SsqoyVw4y/PKbs6Y8+PaTnPxB2L0qfzIx7QS58/Puhg49W
 N6Mti1wBpcgEXrALmpPWqtsi4N2ubW/kOqV0upaIMqIuh75WHCKzejRKspCDR62Yxiol
 zg/3TWyvquSPKXJANDum/psVVdNXP8Bmr2RT8yFGfbPVXdcoN6DB9QsbVmkXdnkaFuhi
 vA1b6FMVDK21lEVzQ/GYbJgXFvLqrEgikyZ1vpficYtla5WSh6EuaO1vpBWmDkpKZ4XN
 qAsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MNrCaBANZOi5fJ+Hr4kYrAYpbeWPpSJR0Bn3nnkVd8o=;
 b=PpNUZ/i07fx2olOyE+3C+M11MmqSkbq4kTJBaJfHNaWeHR0/ERf3L0Ge2lj+xsWyFy
 t1Fbaa7lsq4ZoxgaogsgHo7/cbu0elxsvhRjXd3setJq3aM928tcvc5DafZLYusEQ9EN
 iwN85yVvv8otZxuFj4hFwJe/JC69etLGn3VBG0vvmLufxNWFO4bZPnr7uzVJvyM8Wwug
 ECrt8U6zOqGD9MCp4GXVpAWwDmJaIhvzrv4bzKRh+THD17oP35naNL/WLrIkUp6Ob84f
 nQsD5VviSxvU1VP/PfS/ucHexwqKCRsR6gtmy+QTb6y1aHHgF0oYpXBrjqgDnzxRAowN
 hoAg==
X-Gm-Message-State: AOAM533cG9NFx1KBPiVp78S/ITVwv24IjnGcOSWm87DEw/Btll7VeXop
 aXHtWHX4sPmHBTLP4s9ZFCbgC42vyzp25A==
X-Google-Smtp-Source: ABdhPJyhDuo/rff3OvnZBUwHjRd0XF0AmxsBanYLI5ri/blGCmKtHqwVTzh+hq7iYnbVMkjAXapZHA==
X-Received: by 2002:ac2:42cd:: with SMTP id n13mr4470446lfl.427.1620338940183; 
 Thu, 06 May 2021 15:09:00 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.08.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:08:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:30 +0300
Message-Id: <20210506220834.223350-8-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150902_417457_91E96CA7 
X-CRM114-Status: GOOD (  21.40  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/11] spi: add litex spiflash driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/spi/Kconfig          |   3 +
 drivers/spi/Makefile         |   1 +
 drivers/spi/litex_spiflash.c | 241 +++++++++++++++++++++++++++++++++++
 3 files changed, 245 insertions(+)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 323d93efeb..714d30e909 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -74,6 +74,9 @@ config DRIVER_SPI_IMX_2_3
 	depends on ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6 || ARCH_IMX7 || ARCH_IMX8MQ
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
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

