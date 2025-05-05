Delivery-date: Mon, 05 May 2025 14:08:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucZ-002S5t-1j
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:08:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBucX-0007FT-Ri
	for lore@pengutronix.de; Mon, 05 May 2025 14:08:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qxTlAzqjue213aIH+npsX6zhf+y6hp63jgu4ZOS4luw=; b=eTvAZ7BrRuZjUdTT5BgWE4XBDi
	2unOjJp/xeen5P15PCjafJ+7tdevUrfHlO9EDRO6wHN1SFMU6gMzBrwnvdFbPWW/hKtRM+goHz89c
	yYN7ws0vB6UQrJyTOrqZKkre38Z3Yro+QBOHJ2v6AP4VZF3NAKXFSNEmeQHZSujnex392YxCoUkvV
	nmnvbs6JO+17yMPobq1Rf+sh8/vy4BgsER5tWf+6rKwj6CI/VU8Y4TnfbVYJhqmOVQGysxklcb/li
	A58mbbyetcuCMshGwKTtmEfe97lvJeoYrOwR/W8sg0aQmj6OE9UPKHGQUZK9EAx3eFgZLEO4PlkFU
	CVkuR15g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuby-00000007Foe-0D9q;
	Mon, 05 May 2025 12:07:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuaj-00000007FaJ-0YCi
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:06:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-0006Ro-Lc; Mon, 05 May 2025 14:06:34 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-001DxU-1L;
	Mon, 05 May 2025 14:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuag-00Fb9X-2Z;
	Mon, 05 May 2025 14:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:10 +0200
Message-Id: <20250505120633.3717186-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_050637_215240_9E7D1EB1 
X-CRM114-Status: GOOD (  13.43  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/30] mci: rename MMC_CAP_MMC_x_yV_DDR to MMC_CAP_x_yV_DDR as in Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux names these parameters without listing MMC twice in the macro.
Follow suit in barebox to make porting a tiny bit easier.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/imx-esdhc.c    |  2 +-
 drivers/mci/mci-core.c     | 10 +++++-----
 drivers/mci/stm32_sdmmc2.c |  4 ++--
 include/mci.h              | 10 +++++-----
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index ebc7ed539da9..923dae9cf3b0 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -324,7 +324,7 @@ static int fsl_esdhc_probe(struct device *dev)
 		goto err_clk_disable;
 
 	if (esdhc_is_usdhc(host) || esdhc_is_layerscape(host))
-		mci->host_caps |= MMC_CAP_MMC_3_3V_DDR | MMC_CAP_MMC_1_8V_DDR;
+		mci->host_caps |= MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR;
 
 	rate = clk_get_rate(host->clk);
 	host->mci.f_min = rate >> 12;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index bb345dc5454e..3162a7a36bba 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -791,7 +791,7 @@ static int mmc_change_freq(struct mci *mci)
 		mci->card_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
 
 		if (cardtype & EXT_CSD_CARD_TYPE_DDR_1_8V)
-			mci->card_caps |= MMC_CAP_MMC_3_3V_DDR | MMC_CAP_MMC_1_8V_DDR;
+			mci->card_caps |= MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR;
 	}
 
 	if (IS_ENABLED(CONFIG_MCI_MMC_BOOT_PARTITIONS) &&
@@ -1563,7 +1563,7 @@ static int mci_mmc_select_hs_ddr(struct mci *mci)
 	 * higher speed modes that require voltage switching like HS200/HS400,
 	 * let's just check for either bit.
 	 */
-	if (!(mci_caps(mci) & (MMC_CAP_MMC_1_8V_DDR | MMC_CAP_MMC_3_3V_DDR)))
+	if (!(mci_caps(mci) & (MMC_CAP_1_8V_DDR | MMC_CAP_3_3V_DDR)))
 		return 0;
 
 	ret = mci_mmc_try_bus_width(mci, host->ios.bus_width, MMC_TIMING_MMC_DDR52);
@@ -2340,9 +2340,9 @@ static void mci_print_caps(unsigned caps)
 		caps & MMC_CAP_SD_HIGHSPEED ? "sd-hs " : "",
 		caps & MMC_CAP_MMC_HIGHSPEED ? "mmc-hs " : "",
 		caps & MMC_CAP_MMC_HIGHSPEED_52MHZ ? "mmc-52MHz " : "",
-		caps & MMC_CAP_MMC_3_3V_DDR ? "ddr-3.3v " : "",
-		caps & MMC_CAP_MMC_1_8V_DDR ? "ddr-1.8v " : "",
-		caps & MMC_CAP_MMC_1_2V_DDR ? "ddr-1.2v " : "");
+		caps & MMC_CAP_3_3V_DDR ? "ddr-3.3v " : "",
+		caps & MMC_CAP_1_8V_DDR ? "ddr-1.8v " : "",
+		caps & MMC_CAP_1_2V_DDR ? "ddr-1.2v " : "");
 }
 
 /*
diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
index b517ab7964e2..8aeda6e988b1 100644
--- a/drivers/mci/stm32_sdmmc2.c
+++ b/drivers/mci/stm32_sdmmc2.c
@@ -637,9 +637,9 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
 		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
 
 	if (of_property_read_bool(np, "mmc-ddr-3_3v"))
-		mci->host_caps |= MMC_CAP_MMC_3_3V_DDR;
+		mci->host_caps |= MMC_CAP_3_3V_DDR;
 	if (of_property_read_bool(np, "mmc-ddr-1_8v"))
-		mci->host_caps |= MMC_CAP_MMC_1_8V_DDR;
+		mci->host_caps |= MMC_CAP_1_8V_DDR;
 
 	return mci_register(&priv->mci);
 
diff --git a/include/mci.h b/include/mci.h
index bb168ca2225f..126d3fe52d37 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -53,11 +53,11 @@
 #define MMC_CAP_SD_HIGHSPEED		(1 << 3)
 #define MMC_CAP_MMC_HIGHSPEED		(1 << 4)
 #define MMC_CAP_MMC_HIGHSPEED_52MHZ	(1 << 5)
-#define MMC_CAP_MMC_3_3V_DDR		(1 << 7)	/* Host supports eMMC DDR 3.3V */
-#define MMC_CAP_MMC_1_8V_DDR		(1 << 8)	/* Host supports eMMC DDR 1.8V */
-#define MMC_CAP_MMC_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
-#define MMC_CAP_DDR			(MMC_CAP_MMC_3_3V_DDR | MMC_CAP_MMC_1_8V_DDR | \
-					 MMC_CAP_MMC_1_2V_DDR)
+#define MMC_CAP_3_3V_DDR		(1 << 7)	/* Host supports eMMC DDR 3.3V */
+#define MMC_CAP_1_8V_DDR		(1 << 8)	/* Host supports eMMC DDR 1.8V */
+#define MMC_CAP_1_2V_DDR		(1 << 9)	/* Host supports eMMC DDR 1.2V */
+#define MMC_CAP_DDR			(MMC_CAP_3_3V_DDR | MMC_CAP_1_8V_DDR | \
+					 MMC_CAP_1_2V_DDR)
 #define MMC_CAP_UHS_SDR12	(1 << 16)	/* Host supports UHS SDR12 mode */
 #define MMC_CAP_UHS_SDR25	(1 << 17)	/* Host supports UHS SDR25 mode */
 #define MMC_CAP_UHS_SDR50	(1 << 18)	/* Host supports UHS SDR50 mode */
-- 
2.39.5



