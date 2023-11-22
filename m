Delivery-date: Wed, 22 Nov 2023 11:55:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5kso-004EoK-1S
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 11:55:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5kso-0001CH-G2
	for lore@pengutronix.de; Wed, 22 Nov 2023 11:55:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SgiSk96d3gz9eAHUQtjAhtb6I7IXhZjHoqnq4lww0iE=; b=L+4sz3we/9Rnjdo85OxGjR+iEB
	nIL70p5KzEZ7skDX7hwyMzY2/Bxy2ws59dVGyQ1lSDEB/veCkwUBKmxPIzBm0ARi1ju7xekCYnfE+
	E/EbIv4x4YUXR5c6tVw71fHQOCnqrLX8aknOpluXkPrHfTKLAiAxpe0xDe2EIHV3VrrZqh8zVsRkd
	lfVDE4XfN6i+RDRpkyjJGDxco/XIoP8bITmTR+vWfmcj1bkIwBu1USh4eImZacrEKQl3BWejhHyzC
	Uoyp6xkhLa8hZoNFcxhPRSMbzimyxmzg/fXrNJPPkgpTU6aht0tY9A2wEB/HAwhvN+/wAfbeItGJg
	l3DObZAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5krL-001U3b-0k;
	Wed, 22 Nov 2023 10:53:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5krG-001Tzw-0z
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 10:53:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5krC-0000nZ-Sx; Wed, 22 Nov 2023 11:53:22 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5krC-00An7r-Gl; Wed, 22 Nov 2023 11:53:22 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r5krC-00Fnz5-1V;
	Wed, 22 Nov 2023 11:53:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Nov 2023 11:53:20 +0100
Message-Id: <20231122105321.3767044-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122105321.3767044-1-s.hauer@pengutronix.de>
References: <20231122105321.3767044-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_025326_350578_652A3427 
X-CRM114-Status: GOOD (  14.35  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] mci: imx-esdhc: Layerscape: fix clock setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Set the PCS bit in the ESDHCCTL register. With this Peripheral/2 clock
is used which is the clock we are actually calculating the dividers for.
As the input clock is only half of the expected clock we have to account
for this in set_sysctl().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 8 ++++++--
 drivers/mci/imx-esdhc.h | 2 +-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 90a6c12439..92aea9ed9d 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -51,6 +51,9 @@ static void set_sysctl(struct mci_host *mci, u32 clock, bool ddr)
 	u32 clk;
 	unsigned long  cur_clock;
 
+	if (esdhc_is_layerscape(host))
+		sdhc_clk >>= 1;
+
 	/*
 	 * With eMMC and imx53 (sdhc_clk=200MHz) a pre_div of 1 results in
 	 *	pre_div=1,div=4 (=50MHz)
@@ -231,9 +234,10 @@ static int esdhc_init(struct mci_host *mci, struct device *dev)
 	/* RSTA doesn't reset MMC_BOOT register, so manually reset it */
 	sdhci_write32(&host->sdhci, SDHCI_MMC_BOOT, 0);
 
-	/* Enable cache snooping */
 	if (esdhc_is_layerscape(host))
-		esdhc_setbits32(host, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
+		esdhc_setbits32(host, ESDHC_DMA_SYSCTL,
+				ESDHC_SYSCTL_DMA_SNOOP | /* Enable cache snooping */
+				ESDHC_SYSCTL_PERIPHERAL_CLK_SEL);
 
 	/* Set the initial clock speed */
 	set_sysctl(mci, 400000, false);
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 6810039a96..047c32615d 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -60,7 +60,7 @@
 
 #define ESDHC_DMA_SYSCTL	0x40c /* Layerscape specific */
 #define ESDHC_SYSCTL_DMA_SNOOP 	BIT(6)
-
+#define ESDHC_SYSCTL_PERIPHERAL_CLK_SEL	BIT(19)
 
 /*
  * The CMDTYPE of the CMD register (offset 0xE) should be set to
-- 
2.39.2



