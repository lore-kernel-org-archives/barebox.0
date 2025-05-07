Delivery-date: Wed, 07 May 2025 11:19:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw8-0035OI-0z
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:19:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw7-00045f-Dt
	for lore@pengutronix.de; Wed, 07 May 2025 11:19:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D5Ndt4PH4uoGz/7aztJKqGzZMZXNsDQPXvZkMOmCvTs=; b=XTuIheTRR4wRZ6dsZ6D27uPcre
	GZYtFJf2utYlyhWpZZsgUCulNxtrN9CV5h6bVlfo5373m6Gu9sW5k8v4XIj3QkYjjceACJiF7BZPa
	xxsE9vmpvnGj5yN81aTMEVBpYj7ler+xyyrHxUwPRLZ1b/a7XZcMp0SNBmN8YRmTa96aNcSpv4JcM
	lHWJqqdNOGXmiWiVTaaW2RWz7dAA5zNHh/woe9DAWhg7lRGJN8KiVFA7QEaTunEk20Pcecy90aWpu
	S9uEcNH2/T1g3Hhr4gjRhTJGWZth7NA3b//HW65uT8HKJ9QzXPvz4SVZvcw7Or44GsR7CQFjvpZzu
	qQxJNQhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCavZ-0000000EuEW-0Xjp;
	Wed, 07 May 2025 09:18:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCa2f-0000000EibX-0nO4
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:22:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-0001ea-WB; Wed, 07 May 2025 10:22:12 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-001WoK-2B;
	Wed, 07 May 2025 10:22:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2e-00AQeI-0A;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:48 +0200
Message-Id: <20250507082209.3289972-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_012213_250473_2C0F843B 
X-CRM114-Status: GOOD (  12.26  )
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
Subject: [PATCH v2 09/30] mci: print HS200 capabilities in devinfo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

HS200 capabilities didn't fit into host_caps (named just caps in Linux)
and instead were added to caps2. We copied the same scheme in barebox,
but only evaluate host_caps. Let's do the same for caps2, so devinfo
output can show whether HS200 is supported at a glance.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 34 +++++++++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index ed036719beb7..9031308ec3d2 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1650,6 +1650,28 @@ static void mmc_select_max_dtr(struct mci *mci)
 	mci->host->hs_max_dtr = hs_max_dtr;
 	mci->host->mmc_avail_type = avail_type;
 }
+
+static u32 mmc_card_caps2_from_ext_csd(struct mci *mci)
+{
+	u8 card_type;
+	u32 caps2;
+
+	if (!mci->ext_csd)
+		return 0;
+
+	card_type = mci->ext_csd[EXT_CSD_DEVICE_TYPE];
+	caps2 = 0;
+
+	if (card_type & EXT_CSD_CARD_TYPE_HS200_1_8V)
+		caps2 |= MMC_CAP2_HS200_1_8V_SDR;
+
+	if ((caps2 & MMC_CAP2_HS200_1_2V_SDR) &&
+	    (card_type & EXT_CSD_CARD_TYPE_HS200_1_2V))
+		caps2 |= MMC_CAP2_HS200_1_2V_SDR;
+
+	return caps2;
+}
+
 /*
  * For device supporting HS200 mode, the following sequence
  * should be done before executing the tuning process.
@@ -2330,9 +2352,9 @@ static int mci_sd_read(struct block_device *blk, void *buffer, sector_t block,
 
 /* ------------------ attach to the device API --------------------------- */
 
-static void mci_print_caps(unsigned caps)
+static void mci_print_caps(unsigned caps, unsigned caps2)
 {
-	printf("  capabilities: %s%s%s%s%s%s%s%s\n",
+	printf("  capabilities: %s%s%s%s%s%s%s%s%s%s\n",
 		caps & MMC_CAP_4_BIT_DATA ? "4bit " : "",
 		caps & MMC_CAP_8_BIT_DATA ? "8bit " : "",
 		caps & MMC_CAP_SD_HIGHSPEED ? "sd-hs " : "",
@@ -2340,7 +2362,9 @@ static void mci_print_caps(unsigned caps)
 		caps & MMC_CAP_MMC_HIGHSPEED_52MHZ ? "mmc-52MHz " : "",
 		caps & MMC_CAP_3_3V_DDR ? "ddr-3.3v " : "",
 		caps & MMC_CAP_1_8V_DDR ? "ddr-1.8v " : "",
-		caps & MMC_CAP_1_2V_DDR ? "ddr-1.2v " : "");
+		caps & MMC_CAP_1_2V_DDR ? "ddr-1.2v " : "",
+		caps2 & MMC_CAP2_HS200_1_8V_SDR ? "hs200-1.8v " : "",
+		caps2 & MMC_CAP2_HS200_1_2V_SDR ? "hs200-1.2v " : "");
 }
 
 /*
@@ -2458,7 +2482,7 @@ static void mci_info(struct device *dev)
 
 	printf("  current buswidth: %d\n", bw);
 	printf("  current timing: %s\n", mci_timing_tostr(host->ios.timing));
-	mci_print_caps(host->host_caps);
+	mci_print_caps(host->host_caps, host->caps2);
 
 	printf("Card information:\n");
 	printf("  Card type: %s\n", mci->sdio ? "SDIO" : IS_SD(mci) ? "SD" : "MMC");
@@ -2488,7 +2512,7 @@ static void mci_info(struct device *dev)
 	printf("   CSD: %08X-%08X-%08X-%08X\n", mci->csd[0], mci->csd[1],
 		mci->csd[2], mci->csd[3]);
 	printf("  Max. transfer speed: %u Hz\n", mci->tran_speed);
-	mci_print_caps(mci->card_caps);
+	mci_print_caps(mci->card_caps, mmc_card_caps2_from_ext_csd(mci));
 	printf("  Manufacturer ID: 0x%02x\n", mci->cid.manfid);
 	printf("  OEM/Application ID: 0x%04x\n", mci->cid.oemid);
 	printf("  Product name: '%s'\n", mci->cid.prod_name);
-- 
2.39.5



