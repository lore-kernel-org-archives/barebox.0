Delivery-date: Wed, 07 May 2025 11:27:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3o-0035Vq-0Y
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:27:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCb3m-0006KD-Hx
	for lore@pengutronix.de; Wed, 07 May 2025 11:27:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZmqVM/hm65Nki04f1lc06GXRE7+HCDgtnEt+erwrbFk=; b=HEitOSUOG15j+MEl3r5ffm958q
	PmXx6k/bpxV/z0wCd4Zwtwqfc5S9nOQgqBPQ8OudlwdMStTf0vCCZQX8++WBDpmoQTUbkpxES3cMQ
	HCpBd4JZbrlM6bFAJZT6MUZ6d7AJLvOPPKEM1H+7o+HVa1m7/PWyNgYN50TYdwSsoBj3234j2VD7c
	mwgl5v9VpSLXshn5IVv5nX9OTo1wd9Z5DfP937WhUfRv9M1XPBmwiU1NpbQAzLhcQMSSSvXI8kLGg
	xDrMaysv/MtB/bEnHM7Cjf3p7INESrGqYFi7nMKZQX7obh91qnHVVbhrdOZoejBjajlsXUGa8woJf
	jIBTy2OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCb3H-0000000Ewtj-0KiN;
	Wed, 07 May 2025 09:26:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCaFO-0000000Elqh-0pbt
	for barebox@bombadil.infradead.org;
	Wed, 07 May 2025 08:35:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZmqVM/hm65Nki04f1lc06GXRE7+HCDgtnEt+erwrbFk=; b=H/BeUf0I6ZEgGJnzDZqc7sFqQT
	RKEZ3hgeWvuCS1LA7u2mJJGgfiq4ssCOok48CDK+qwxX/jOfQ3a0cBscX1xJNMWLXs5rMDqulka/W
	MENetwXo13CfGnjSUAIQIbwUZkR0LA11W+LtJ6fBzNqEMHtchEAl8ytOT63O2ICA28kEvRxGNccuw
	y8I0Dxyeqfy/dRskGg35SMKgNRV9ZS5NP9v/KBhdD3YWFtp5IjdCHSwhuDe1BSNmcfbUBre5qXc1C
	VY7NSDvRl/goFOqVQ7cs9tTkinNslDJapyi4fWneI+B+OvzNp37XlI9ms8sv8uZeoDzgVi91YLIzB
	eZgqOYZA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uCaFG-0000000FoIj-24GA
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:35:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-0003xJ-FO; Wed, 07 May 2025 10:35:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCaF9-001WuQ-0h;
	Wed, 07 May 2025 10:35:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-1J;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:56 +0200
Message-Id: <20250507082209.3289972-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_093514_832387_24BE5ED5 
X-CRM114-Status: UNSURE (   9.49  )
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
Subject: [PATCH v2 17/30] mci: imx-esdhc: flesh out register description
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
index 9526bcfea8c1..5fc9b7b30c76 100644
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



