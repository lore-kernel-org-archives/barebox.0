Delivery-date: Fri, 12 Jun 2026 08:00:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwI-004xrr-24
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 08:00:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwH-0005H1-IQ
	for lore@pengutronix.de; Fri, 12 Jun 2026 08:00:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KvTPSPVnV9GboeQkbhOVfMh3yDwrTwQQOGU7t8tRc50=; b=iWKNhen0e6V/1PZkVak19qaim7
	9bwRrwptp9ttAptHhKG6O5RApbEfe51+prR02L2JiZZMx/1FxyyNZaAnLviiK2UJZmwB2ewCq/Jci
	sZg4hNN8haPLGf+p5U8WV2NP6/ATWGLpu6o2OvUSOaiKFPP0UgxGB96WKai3vsBLgFLV76HM2ClRR
	YUN8U5dB5cBjvr7IVHdRapE45JmBnCZ6DOhooVRaDKlz7aGuDsMvnusNT+nTDHkXswEZpJGEq7OkS
	Bb1PMGCF6uqNC+8CH0+Dpcoea6gZ2xH38xet5EiLa9fMfEuLW5F3Qfof0z4nqafs9KtY8aVRxFwtj
	5A89/8hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvg-0000000AOUn-27ew;
	Fri, 12 Jun 2026 05:59:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvZ-0000000AOPe-1uYQ
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 05:59:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-0004nJ-9O; Fri, 12 Jun 2026 07:59:34 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-002Kf2-0e;
	Fri, 12 Jun 2026 07:59:34 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-00000002fQM-0GoT;
	Fri, 12 Jun 2026 07:59:34 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 12 Jun 2026 07:59:25 +0200
Message-ID: <20260612055930.635833-9-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260612055930.635833-1-o.rempel@pengutronix.de>
References: <20260612055930.635833-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_225937_524709_74F57FC9 
X-CRM114-Status: GOOD (  19.31  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 09/10] spi: atmel-quadspi: add Microchip LAN966X / LAN969X support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Match the LAN966X QSPI variant and run a slightly different init
sequence (LAN966x max speed 100 MHz, dedicated DLYBS/DLYCS values,
write-protection unlock key). Allow building on ARCH_MICROCHIP and
COMPILE_TEST in addition to ARCH_AT91.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/spi/Kconfig         |   2 +-
 drivers/spi/atmel-quadspi.c | 105 ++++++++++++++++++++++++++++++++++++
 2 files changed, 106 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 1af2b107ecec..57ac02c82091 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -24,7 +24,7 @@ config DRIVER_SPI_ATMEL
 
 config SPI_ATMEL_QUADSPI
 	tristate "Atmel Quad SPI Controller"
-	depends on ARCH_AT91
+	depends on ARCH_AT91 || ARCH_MICROCHIP || COMPILE_TEST
 	depends on SPI_MEM
 	help
 	  This enables support for the Quad SPI controller in master mode.
diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index b6b5f9ad9e55..d1018aadf20e 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -52,6 +52,7 @@
 #define QSPI_VERSION 0x00FC  /* Version Register */
 
 #define SAMA7G5_QSPI0_MAX_SPEED_HZ	200000000
+#define LAN966x_QSPI0_MAX_SPEED_HZ	100000000
 #define SAMA7G5_QSPI1_SDR_MAX_SPEED_HZ	133000000
 
 /* Bitfields in QSPI_CR (Control Register) */
@@ -210,6 +211,11 @@
 #define QSPI_WPMR_WPKEY_MASK            GENMASK(31, 8)
 #define QSPI_WPMR_WPKEY(wpkey)          (((wpkey) << 8) & QSPI_WPMR_WPKEY_MASK)
 
+/* Used by the LAN966X-style init sequence */
+#define QSPI_DLYBS			0x2
+#define QSPI_DLYCS			0x7
+#define QSPI_WPKEY			0x515350
+
 /* Bitfields in QSPI_WPSR (Write Protection Status Register) */
 #define QSPI_WPSR_WPVS                  BIT(0)
 #define QSPI_WPSR_WPVSRC_MASK           GENMASK(15, 8)
@@ -250,6 +256,7 @@ struct atmel_qspi_caps {
 	bool has_gclk;
 	bool has_ricr;
 	bool octal;
+	bool has_lan966x;
 };
 
 struct atmel_qspi_ops;
@@ -883,6 +890,91 @@ static int atmel_qspi_sama7g5_init(struct atmel_qspi *aq)
 	return ret;
 }
 
+static int lan966x_qspi_init(struct atmel_qspi *aq)
+{
+	u32 val;
+	int ret;
+
+	atmel_qspi_write(QSPI_CR_DLLOFF, aq, QSPI_CR);
+
+	ret = readl_poll_timeout(aq->regs + QSPI_SR2, val,
+				 !(val & QSPI_SR2_DLOCK),
+				 ATMEL_QSPI_TIMEOUT);
+	if (ret) {
+		dev_err(aq->ctlr.dev, "QSPI_SR2_DLOCK not cleared\n");
+		return ret;
+	}
+
+	ret = clk_set_rate(aq->gclk, aq->target_max_speed_hz);
+	if (ret) {
+		dev_err(aq->ctlr.dev, "Failed to set generic clock rate.\n");
+		return ret;
+	}
+
+	ret = clk_prepare_enable(aq->gclk);
+	if (ret) {
+		dev_err(aq->ctlr.dev, "Failed to enable generic clock.\n");
+		return ret;
+	}
+
+	/* DLL on + stop calibration; wait for DLOCK */
+	atmel_qspi_write(QSPI_CR_DLLON | QSPI_CR_STPCAL, aq, QSPI_CR);
+	ret = readl_poll_timeout(aq->regs + QSPI_SR2, val,
+				 (val & QSPI_SR2_DLOCK),
+				 ATMEL_QSPI_TIMEOUT);
+	if (ret) {
+		dev_err(aq->ctlr.dev, "QSPI_SR2_DLOCK not set\n");
+		return ret;
+	}
+
+	/* Disable then soft-reset, synchronizing each step */
+	atmel_qspi_write(QSPI_CR_QSPIDIS, aq, QSPI_CR);
+	ret = atmel_qspi_reg_sync(aq);
+	if (ret)
+		return ret;
+
+	atmel_qspi_write(QSPI_CR_SWRST, aq, QSPI_CR);
+	ret = atmel_qspi_reg_sync(aq);
+	if (ret)
+		return ret;
+
+	/* Disable write protection */
+	atmel_qspi_write(QSPI_WPMR_WPKEY(QSPI_WPKEY), aq, QSPI_WPMR);
+
+	/* LAN966X variant lacks pad-calibration; just DLL-on + STPCAL again. */
+	atmel_qspi_write(QSPI_CR_DLLON | QSPI_CR_STPCAL, aq, QSPI_CR);
+	ret = readl_poll_timeout(aq->regs + QSPI_SR2, val,
+				 (val & QSPI_SR2_DLOCK),
+				 ATMEL_QSPI_TIMEOUT);
+	if (ret) {
+		dev_err(aq->ctlr.dev, "QSPI_SR2_DLOCK not set (post-WPMR)\n");
+		return ret;
+	}
+
+	/* Serial Memory Mode, with chip-select delay */
+	atmel_qspi_write(QSPI_MR_SMM | QSPI_MR_DLYCS(QSPI_DLYCS), aq, QSPI_MR);
+	aq->mr = QSPI_MR_SMM;
+
+	/* Apply DLYBS in SCR */
+	atmel_qspi_write(QSPI_SCR_DLYBS(QSPI_DLYBS), aq, QSPI_SCR);
+
+	ret = atmel_qspi_update_config(aq);
+	if (ret)
+		return ret;
+
+	/* Enable the controller and wait for it to come up */
+	atmel_qspi_write(QSPI_CR_QSPIEN, aq, QSPI_CR);
+	ret = readl_poll_timeout(aq->regs + QSPI_SR2, val,
+				 val & QSPI_SR2_QSPIENS,
+				 ATMEL_QSPI_TIMEOUT);
+	if (ret) {
+		dev_err(aq->ctlr.dev, "QSPI_SR2_QSPIENS not set\n");
+		return ret;
+	}
+
+	return 0;
+}
+
 static int atmel_qspi_sama7g5_setup(struct spi_device *spi)
 {
 	struct atmel_qspi *aq = spi_controller_get_devdata(spi->controller);
@@ -890,6 +982,9 @@ static int atmel_qspi_sama7g5_setup(struct spi_device *spi)
 	/* The controller can communicate with a single peripheral device (target). */
 	aq->target_max_speed_hz = spi->max_speed_hz;
 
+	if (aq->caps->has_lan966x)
+		return lan966x_qspi_init(aq);
+
 	return atmel_qspi_sama7g5_init(aq);
 }
 
@@ -1112,6 +1207,12 @@ static __maybe_unused const struct atmel_qspi_caps atmel_sama7g5_qspi_caps = {
 	.has_gclk = true,
 };
 
+static __maybe_unused const struct atmel_qspi_caps atmel_lan966x_qspi_caps = {
+	.max_speed_hz = LAN966x_QSPI0_MAX_SPEED_HZ,
+	.has_gclk = true,
+	.has_lan966x = true,
+};
+
 static __maybe_unused const struct of_device_id atmel_qspi_dt_ids[] = {
 	{
 		.compatible = "atmel,sama5d2-qspi",
@@ -1129,6 +1230,10 @@ static __maybe_unused const struct of_device_id atmel_qspi_dt_ids[] = {
 		.compatible = "microchip,sama7g5-qspi",
 		.data = &atmel_sama7g5_qspi_caps,
 	},
+	{
+		.compatible = "microchip,lan966x-qspi",
+		.data = &atmel_lan966x_qspi_caps,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, atmel_qspi_dt_ids);
-- 
2.47.3



