Delivery-date: Tue, 16 Apr 2024 08:09:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwc0I-002y4I-3A
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 08:09:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwc0I-000050-E8
	for lore@pengutronix.de; Tue, 16 Apr 2024 08:09:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ENdDBroFmakPdFHTgFUFtPEdA4JaRcCRrn4T20IewRE=; b=3q/SlOPzm6X3MfFU81lCwaWJft
	UACzISoTVigi9y9k8luwjKSkWKIlcghTT9/1QLHdNpwOJQAOaGbQGkiLjwUMtWBvI877Rf7lsau1k
	KpDCXgg4YCfHhNG2SJtJAEytycAeQYjPpc9IayyAV2P57G6sBHu22IbDqis9dMH1G0RP8NWtIMnr+
	TGDfDVlmVHDnicTwbOI0OIIlDuhCiutosMeZzpchNvsDXr8kzyfoiOTepnB65UFjPekk2Jj8gwnam
	yq9rgI8/byc090flSnWofbYD1FjDy5moGCPtHYcwovCFynFmhX6952fmi6yigzDhYqzpXAyvci2/+
	kSrl/xLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwbzL-0000000B18P-0yWr;
	Tue, 16 Apr 2024 06:08:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwbzH-0000000B15W-1OdT
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 06:08:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwbzD-0007YS-Ly; Tue, 16 Apr 2024 08:08:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwbzD-00CYiB-9f; Tue, 16 Apr 2024 08:08:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwbzD-005ag9-0c;
	Tue, 16 Apr 2024 08:08:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 08:08:06 +0200
Message-Id: <20240416060806.1332622-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_230811_395542_F6B47B57 
X-CRM114-Status: GOOD (  12.36  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: nand: stm32: fix wrong regmap_bulk_read() usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Compilation of the STM32 NAND driver fails with:

error: call to '__regmap_bulk_api_changed' declared with attribute error: Last argument is now number of registers, not bytes. Fix it and include <linux/regmap.h instead

Do exactly this to make the driver compile again

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/stm32_fmc2_nand.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/stm32_fmc2_nand.c b/drivers/mtd/nand/stm32_fmc2_nand.c
index 958a619be5..47b012cc9e 100644
--- a/drivers/mtd/nand/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/stm32_fmc2_nand.c
@@ -7,7 +7,7 @@
 #include <common.h>
 #include <init.h>
 #include <of_address.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/gpio/consumer.h>
@@ -551,7 +551,7 @@ static int stm32_fmc2_nfc_bch_correct(struct nand_chip *chip, u8 *dat,
 		return -ETIMEDOUT;
 	}
 
-	regmap_bulk_read(nfc->regmap, FMC2_BCHDSR0, ecc_sta, 5);
+	regmap_bulk_read(nfc->regmap, FMC2_BCHDSR0, ecc_sta, ARRAY_SIZE(ecc_sta));
 
 	stm32_fmc2_nfc_set_ecc(nfc, false);
 
-- 
2.39.2



