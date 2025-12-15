Delivery-date: Mon, 15 Dec 2025 15:22:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Sb-00BlvN-2Y
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:22:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Sb-0002al-7F
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:22:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PKsNVLt4RA5Cy5SIQFHWLzvs4A4MLuoM0hPHy56+tFM=; b=RLFuem2VflcZsIgY0k7essrohI
	CJrEkHcDGMZthp8eSAB0GkAvQP0kmb0FTi+C4ewCZN1exgnqXAujMVvr369rbn+IBfzcb2zanYgxa
	0inu9zbxAmNEEQwgiv5ChZM7LdPKHvXFdV0RetZ3intRq6+yCNGgjXHmADhSUql6VdfnvYtOCyW7s
	NSkdkMpCAwNHo5M+5iYNodkB0q5wpCsEBnLjGyfFRPI4sSZMnXmqMNg7fYrLU0I2FmJz/wqjA7eOx
	Ba5InYascTajTHpg67sJ2IdTAAM3//I013Rm/+FphXxlPMW7nsmrIfyrTwXGQfGy9vKwdlTWfKIIU
	g6tEfYyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9S7-00000003mjg-1QkN;
	Mon, 15 Dec 2025 14:21:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9S3-00000003mhZ-454H
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:21:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vV9S2-0002Gv-EX; Mon, 15 Dec 2025 15:21:26 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 15 Dec 2025 15:21:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-1-11eea1b2ef41@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
In-Reply-To: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_062128_036391_DBFBFE73 
X-CRM114-Status: GOOD (  10.70  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] mci: cadence: fix typo and actually build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All other Kconfig symbols use MCI_* instead of MMC_*. Fix that.
Also, add the cadence-sdhci to the Makefile, so that the driver is build.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/mci/Kconfig  | 2 +-
 drivers/mci/Makefile | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 6736e7421c..e7b8afb3b4 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -259,7 +259,7 @@ config MCI_STM32_SDMMC2
 	  If you have a board based on such a SoC and with a SD/MMC slot,
 	  say Y or M here.
 
-config MMC_CADENCE_SDHCI
+config MCI_CADENCE_SDHCI
 	tristate "SDHCI support for the Cadence SD/SDIO/eMMC controller"
 	select MCI_SDHCI
 	help
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index f76059e7b5..6a3af532a0 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o atmel_mci_common.o
 obj-$(CONFIG_MCI_ATMEL_SDHCI)	+= atmel-sdhci.o atmel-sdhci-common.o
 obj-$(CONFIG_MCI_BCM283X)	+= mci-bcm2835.o
 obj-$(CONFIG_MCI_BCM283X_SDHOST)	+= bcm2835-sdhost.o
+obj-$(CONFIG_MCI_CADENCE_SDHCI) += cadence-sdhci.o
 obj-$(CONFIG_MCI_DOVE)		+= dove-sdhci.o
 pbl-$(CONFIG_MCI_ATMEL_PBL)	+= atmel_mci_pbl.o atmel_mci_common.o
 pbl-$(CONFIG_MCI_ATMEL_SDHCI_PBL)	+= atmel-sdhci-pbl.o atmel-sdhci-common.o

-- 
2.51.0



