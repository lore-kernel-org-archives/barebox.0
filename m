Delivery-date: Mon, 05 May 2025 14:39:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6Q-002SaC-18
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6K-0006zK-8D
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iGd4XDQAgwDm8MXr7fdkXL4xVSuwzG2W5IcPmjnhQI8=; b=WnWs2YC96e9zHhsey1+GPV0dXT
	hhNRMtagJgQr5u67VE/iSQw/P8audFXwNiESceUQPPVqdoCW4h3h7V+snIPDt1cusNd3iFEdhTSkp
	pR5HmHAgqOH6crbIHjJSYY0SPW/gV6DnU5PEFU01/xPlaZlu9HUPhB/DUbx2TwWaFjnBEHlXy4Yvn
	Ri0BLfegAgQXKRcmf6Wec58lPRLX8cHJUGuJEWfxRuL0B/770lA79muJusNFVJi2dYK1QbGYN3whh
	NoGbE540f5y5qTkwfS5R5K0ba1IRnVaEy9oWnbna+Y78a0QpURvSqLs8FQzJ1eknuWIxE+UyM9ocV
	pNzIi9Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5W-00000007Llo-3UZD;
	Mon, 05 May 2025 12:38:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv2H-00000007Kgu-0QFq
	for barebox@bombadil.infradead.org;
	Mon, 05 May 2025 12:35:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iGd4XDQAgwDm8MXr7fdkXL4xVSuwzG2W5IcPmjnhQI8=; b=a9+MNF4IP4XoHeG4hiXLGo3XvS
	8pwhzD5hqijzT7Roy60/vUW6+1eXrbSu+w5rL9Xir183itJtDdND5PYDV8Y0TyNlEAgB5zFnexddN
	d79h8td1gU4btSVT3h4dRShLWph60V96HO9m92fGH9wJpGxXbZTwHJ7ta4XJCp25x6Egxv+q/eMhO
	e1WA620aRfsOpC1AeXRHtzeZXTrdOqiIkLS1RQaozMTZPCKRm1whjpaGlp8Odb6W4oizpSPoPmYnG
	ENyESOUQGY1lYFwiVMwI8bDTB0zHsxDXwSPhHIps0g06qXyKK7SNa8npwqlmdXYt+vwSmAVb0Uhi9
	4Qv8LWOg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uBv2C-0000000FUTP-2Q2L
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv29-0004sH-6e; Mon, 05 May 2025 14:34:57 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv29-001EQv-03;
	Mon, 05 May 2025 14:34:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-0q;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:20 +0200
Message-Id: <20250505120633.3717186-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_133501_209392_48CD19A0 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/30] mci: imx-esdhc: flesh out register description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding HS200 tuning support to the driver, import
missing register definitions from Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc-common.c | 14 ++++++++++++++
 drivers/mci/imx-esdhc.c        | 27 +++++++++++++++++++++++++++
 drivers/mci/imx-esdhc.h        | 20 ++++++++++++++++++++
 3 files changed, 61 insertions(+)

diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index 8b823b233202..c3795aec5344 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -10,6 +10,20 @@
 
 #define PRSSTAT_DAT0  0x01000000
 
+#define	ESDHC_CTRL_D3CD			0x08
+
+#define  SDHCI_CTRL_VDD_180         0x0008
+
+#define ESDHC_MIX_CTRL			0x48
+#define  ESDHC_MIX_CTRL_DDREN		(1 << 3)
+#define  ESDHC_MIX_CTRL_AC23EN		(1 << 7)
+#define  ESDHC_MIX_CTRL_EXE_TUNE	(1 << 22)
+#define  ESDHC_MIX_CTRL_SMPCLK_SEL	(1 << 23)
+#define  ESDHC_MIX_CTRL_AUTO_TUNE_EN	(1 << 24)
+#define  ESDHC_MIX_CTRL_FBCLK_SEL	(1 << 25)
+#define  ESDHC_MIX_CTRL_HS400_EN	(1 << 26)
+#define  ESDHC_MIX_CTRL_HS400_ES_EN	(1 << 27)
+
 static u32 esdhc_op_read32_be(struct sdhci *sdhci, int reg)
 {
 	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 0582b6fb8dd6..86dc6daba845 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -28,6 +28,33 @@
 
 
 #define PRSSTAT_SDSTB 0x00000008
+#define ESDHC_BURST_LEN_EN_INCR		(1 << 27)
+
+/* Bits 3 and 6 are not SDHCI standard definitions */
+#define  ESDHC_MIX_CTRL_SDHCI_MASK	0xb7
+/* Tuning bits */
+#define  ESDHC_MIX_CTRL_TUNING_MASK	0x03c00000
+
+/* dll control register */
+#define ESDHC_DLL_CTRL			0x60
+#define ESDHC_DLL_OVERRIDE_VAL_SHIFT	9
+#define ESDHC_DLL_OVERRIDE_EN_SHIFT	8
+
+/* tune control register */
+#define ESDHC_TUNE_CTRL_STATUS		0x68
+#define  ESDHC_TUNE_CTRL_STEP		1
+#define  ESDHC_TUNE_CTRL_MIN		0
+#define  ESDHC_TUNE_CTRL_MAX		((1 << 7) - 1)
+
+#define ESDHC_TUNING_CTRL		0xcc
+#define ESDHC_STD_TUNING_EN		(1 << 24)
+/* NOTE: the minimum valid tuning start tap for mx6sl is 1 */
+#define ESDHC_TUNING_START_TAP_DEFAULT	0x1
+#define ESDHC_TUNING_START_TAP_MASK	0x7f
+#define ESDHC_TUNING_CMD_CRC_CHECK_DISABLE	(1 << 7)
+#define ESDHC_TUNING_STEP_DEFAULT	0x1
+#define ESDHC_TUNING_STEP_MASK		0x00070000
+#define ESDHC_TUNING_STEP_SHIFT		16
 
 
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 2930676d5328..ea57ca534f80 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -64,6 +64,26 @@
 #define IMX_SDHCI_DLL_CTRL	0x60
 #define IMX_SDHCI_MIX_CTRL_FBCLK_SEL	BIT(25)
 
+/* tune control register */
+#define ESDHC_TUNE_CTRL_STATUS		0x68
+#define  ESDHC_TUNE_CTRL_STEP		1
+#define  ESDHC_TUNE_CTRL_MIN		0
+#define  ESDHC_TUNE_CTRL_MAX		((1 << 7) - 1)
+
+/* VENDOR SPEC register */
+#define ESDHC_VENDOR_SPEC		0xc0
+#define  ESDHC_VENDOR_SPEC_SDIO_QUIRK	(1 << 1)
+#define  ESDHC_VENDOR_SPEC_VSELECT	(1 << 1)
+#define  ESDHC_VENDOR_SPEC_FRC_SDCLK_ON	(1 << 8)
+
+#define ESDHC_VEND_SPEC2		0xc8
+#define ESDHC_VEND_SPEC2_EN_BUSY_IRQ	(1 << 8)
+#define ESDHC_VEND_SPEC2_AUTO_TUNE_8BIT_EN	(1 << 4)
+#define ESDHC_VEND_SPEC2_AUTO_TUNE_4BIT_EN	(0 << 4)
+#define ESDHC_VEND_SPEC2_AUTO_TUNE_1BIT_EN	(2 << 4)
+#define ESDHC_VEND_SPEC2_AUTO_TUNE_CMD_EN	(1 << 6)
+#define ESDHC_VEND_SPEC2_AUTO_TUNE_MODE_MASK	(7 << 4)
+
 #define ESDHC_DMA_SYSCTL	0x40c /* Layerscape specific */
 #define ESDHC_SYSCTL_DMA_SNOOP 	BIT(6)
 #define ESDHC_SYSCTL_PERIPHERAL_CLK_SEL	BIT(19)
-- 
2.39.5



