Delivery-date: Thu, 13 Aug 2026 10:16:04 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuQbb-002cP7-1j
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 10:16:04 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C720E201EBF
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 10:16:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jQY9wfXT;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bXEvMQnYVdYi/KlGJ3Y6GDQu+fS08NYYnSMdiJ75QAc=; b=jQY9wfXT/V2hGX5SqBER0NiEPu
	9MPoXfyssMYX/9fUynQoi4t7AZjlETgtg3LSamtxStiML2sDaBD3MXAnzxCAsOSfTE5CyxK4qUEVI
	dyTZZwgb8IJnCpYxbeqZIAnnjwDhOKw+L+gczNyxlNjDga1R5f/Grzh9z5VQVHS1KzrzuloFFxOd5
	gmB1w0b7D4loJP0YKpuvME0ndAswzDcm4ykx1g17zVJrbCZGiW7vH4Qg41jeUivyF/jehNEQsw3hb
	Oe5QSAOvPz83h2ceWyJkWIvajRQqdOp8Fo72DOqyVbnzE9EZmPAA0bLvgDYljsnKtY2TJtITe0xxI
	GLOh30Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaU-000000006Eb-2EBg;
	Thu, 13 Aug 2026 08:14:54 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQaP-000000006Bf-0wHT
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 08:14:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D639C201EDC;
	Thu, 13 Aug 2026 10:14:45 +0200 (CEST)
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-001Fmr-1v;
	Thu, 13 Aug 2026 10:14:45 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wuQaL-00000007spa-1xNc;
	Thu, 13 Aug 2026 10:14:45 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: robert.marko@sartura.hr,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH v2 8/9] spi: atmel-quadspi: add Microchip LAN966X / LAN969X support
Date: Thu, 13 Aug 2026 10:14:38 +0200
Message-ID: <20260813081444.1879009-9-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260813081444.1879009-1-o.rempel@pengutronix.de>
References: <20260813081444.1879009-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_011449_422020_7B47A7F9 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Match the LAN966X QSPI variant and run a slightly different
    init sequence (LAN966x max speed 100 MHz, dedicated DLYBS/DLYCS values, write-protection
    unlock key). Allow building on ARCH_MICROCHIP and C [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ik7subj9pkhuutk1tcba9n789y7oiwqz
X-Spamd-Result: default: False [-6.01 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: C720E201EBF

Match the LAN966X QSPI variant and run a slightly different init
sequence (LAN966x max speed 100 MHz, dedicated DLYBS/DLYCS values,
write-protection unlock key). Allow building on ARCH_MICROCHIP and
COMPILE_TEST in addition to ARCH_AT91.

Assisted-by: Claude-Code:claude-opus-5
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-9-o.rempel@pengutronix.de/

Changes v2:
- no changes
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



