Delivery-date: Tue, 18 Apr 2023 11:31:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgq-007X1c-PB
	for lore@lore.pengutronix.de; Tue, 18 Apr 2023 11:31:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgq-0006yc-ER
	for lore@pengutronix.de; Tue, 18 Apr 2023 11:31:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X3FcQ3oTigFxf6svM9v8fl+05v93G+JNCd2FUGFJMDY=; b=bFsdq05aJN0l8jSGgouGfGl/fd
	DlGzot8aFPsWfPyLnEBjIL0LWL5GvQTid34xPW2z3IFV33phVJkB4B2avSnUmiiCg5KGtPYpUc+W9
	Lek6N+jOp3o06mlAu/sTq0PLehcyX7gV4B2NJ28EuCp+zkyGepaw1gWcNj+MnclhwEXelxUq8ujNG
	UvfzwNvaOia1FxqkO5UOgbbuVDWqzMxgflhlfB22Oq0mbt7TmczU9tN17ybU6lqtERzcRriBPwg/k
	y84J3CXy80tt18I2x1l33FP9nFYkdZGEivdd1/oqBu9v0vn9aLlZyRWTcTGMQ+4LAgQkKrcM81y61
	SB9nO1HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfm-001Thi-1S;
	Tue, 18 Apr 2023 09:30:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfg-001TeV-0J
	for barebox@lists.infradead.org;
	Tue, 18 Apr 2023 09:30:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfe-0006bo-N8; Tue, 18 Apr 2023 11:30:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfe-00C4g5-2A; Tue, 18 Apr 2023 11:30:42 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfd-007pUu-3r; Tue, 18 Apr 2023 11:30:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Apr 2023 11:30:38 +0200
Message-Id: <20230418093040.1865982-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
References: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_023044_135650_8AC58FAE 
X-CRM114-Status: GOOD (  16.33  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] mci: core: factor out MMC bus width selection for reuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Higher speed modes like DDR52 and HS200 can operate at both 8-bit and
4-bit bus widths. To make it easier to support these, split up
mci_startup_mmc, so the refactored parts can be called with different
timings later on.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/mci/mci-core.c | 95 ++++++++++++++++++++++++++++--------------
 1 file changed, 64 insertions(+), 31 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2abed0011722..bd5299e7a4f8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1167,34 +1167,51 @@ static int mci_startup_sd(struct mci *mci)
 	return 0;
 }
 
-static int mci_startup_mmc(struct mci *mci)
+static u32 mci_bus_width_ext_csd_bits(enum mci_bus_width bus_width)
+{
+	switch (bus_width) {
+	case MMC_BUS_WIDTH_8:
+		return EXT_CSD_BUS_WIDTH_8;
+	case MMC_BUS_WIDTH_4:
+		return EXT_CSD_BUS_WIDTH_4;
+	case MMC_BUS_WIDTH_1:
+	default:
+		return EXT_CSD_BUS_WIDTH_1;
+	}
+}
+
+static int mci_mmc_try_bus_width(struct mci *mci, enum mci_bus_width bus_width)
 {
-	struct mci_host *host = mci->host;
+	u32 ext_csd_bits;
 	int err;
+
+	ext_csd_bits = mci_bus_width_ext_csd_bits(bus_width);
+
+	err = mci_switch(mci, EXT_CSD_BUS_WIDTH, ext_csd_bits);
+	if (err < 0)
+		return err;
+
+	mci_set_bus_width(mci, bus_width);
+
+	err = mmc_compare_ext_csds(mci, bus_width);
+	if (err < 0)
+		return err;
+
+	return bus_width;
+}
+
+static int mci_mmc_select_bus_width(struct mci *mci)
+{
+	struct mci_host *host = mci->host;
+	int ret;
 	int idx = 0;
-	static unsigned ext_csd_bits[] = {
-		EXT_CSD_BUS_WIDTH_4,
-		EXT_CSD_BUS_WIDTH_8,
-	};
 	static enum mci_bus_width bus_widths[] = {
 		MMC_BUS_WIDTH_4,
 		MMC_BUS_WIDTH_8,
 	};
 
-	/* if possible, speed up the transfer */
-	if (mci_caps(mci) & MMC_CAP_MMC_HIGHSPEED) {
-		if (mci->card_caps & MMC_CAP_MMC_HIGHSPEED_52MHZ)
-			mci->tran_speed = 52000000;
-		else
-			mci->tran_speed = 26000000;
-
-		host->timing = MMC_TIMING_MMC_HS;
-	}
-
-	mci_set_clock(mci, mci->tran_speed);
-
 	if (!(host->host_caps & (MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA)))
-		return 0;
+		return MMC_BUS_WIDTH_1;
 
 	/*
 	 * Unlike SD, MMC cards dont have a configuration register to notify
@@ -1206,7 +1223,6 @@ static int mci_startup_mmc(struct mci *mci)
 		idx = 1;
 
 	for (; idx >= 0; idx--) {
-
 		/*
 		 * Host is capable of 8bit transfer, then switch
 		 * the device to work in 8bit transfer mode. If the
@@ -1214,21 +1230,38 @@ static int mci_startup_mmc(struct mci *mci)
 		 * 4bit transfer mode. On success set the corresponding
 		 * bus width on the host.
 		 */
-		err = mci_switch(mci, EXT_CSD_BUS_WIDTH, ext_csd_bits[idx]);
-		if (err) {
-			if (idx == 0)
-				dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", err);
-			continue;
-		}
+		ret = mci_mmc_try_bus_width(mci, bus_widths[idx]);
+		if (ret > 0)
+			break;
+	}
 
-		mci_set_bus_width(mci, bus_widths[idx]);
+	return ret;
+}
 
-		err = mmc_compare_ext_csds(mci, bus_widths[idx]);
-		if (!err)
-			break;
+static int mci_startup_mmc(struct mci *mci)
+{
+	struct mci_host *host = mci->host;
+	int ret;
+
+	/* if possible, speed up the transfer */
+	if (mci_caps(mci) & MMC_CAP_MMC_HIGHSPEED) {
+		if (mci->card_caps & MMC_CAP_MMC_HIGHSPEED_52MHZ)
+			mci->tran_speed = 52000000;
+		else
+			mci->tran_speed = 26000000;
+
+		host->timing = MMC_TIMING_MMC_HS;
 	}
 
-	return err;
+	mci_set_clock(mci, mci->tran_speed);
+
+	ret = mci_mmc_select_bus_width(mci);
+	if (ret < 0) {
+		dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
 }
 
 /**
-- 
2.39.2



