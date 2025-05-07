Delivery-date: Wed, 07 May 2025 11:19:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw5-0035Mb-0R
	for lore@lore.pengutronix.de;
	Wed, 07 May 2025 11:19:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCaw3-00041V-Rq
	for lore@pengutronix.de; Wed, 07 May 2025 11:19:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WMwq7o6/6V8uZC8KiD1Of4rxoPU4g1NBa7uHCLqIcFA=; b=Df7DdT+IuecZc9A5n44jB0PvHC
	vyzk/WPUuCpbKcKmSy71uwq12tJE4RnXoMdKgM+gRQvMhYFdwDR1GMM4tZcX/AZ3mHWOwpivnvVfK
	5MpXJEFcT3lo61xyM+yX9ZeLRb8qW2HRl/TUWwlpueZOQC4oSqOKf5PW3zQjwIr7/vxw3aKAbwwSu
	wHGJUVgVvePuG5Ywvyl/B2nSMEjDR6l16Xi2xCJBrP8E5sKQtJI/7EScAGVQBa1vV7DwosKLVwMOy
	qqGM6zVVitALAWGBvZmKVWf+uJrPgQYPrRwMWGHkJ/2jDoEsCQN8u+BBdvxS6ueOyzACiyv1XOxYQ
	ihOSJHsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCavU-0000000EuA5-3hZb;
	Wed, 07 May 2025 09:18:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCa2f-0000000EibS-05JR
	for barebox@lists.infradead.org;
	Wed, 07 May 2025 08:22:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-0001e1-Lz; Wed, 07 May 2025 10:22:11 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-001Wo3-1S;
	Wed, 07 May 2025 10:22:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCa2d-00AQeI-2e;
	Wed, 07 May 2025 10:22:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 May 2025 10:21:43 +0200
Message-Id: <20250507082209.3289972-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
References: <20250507082209.3289972-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250507_012213_074147_1E7B213B 
X-CRM114-Status: GOOD (  13.27  )
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
Subject: [PATCH v2 04/30] mci: tuning: fix fallback to DDR52
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When CONFIG_MCI_TUNING is enabled, but a card mmc_card_hs200 return
false, the fallback currently puts the card into high speed mode instead
of DDR52, which would've been the next best thing.

Rework the code to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 7b33b4c8df88..5a3bb9d1ad13 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1781,34 +1781,35 @@ static int mci_startup_mmc(struct mci *mci)
 	}
 
 	if (IS_ENABLED(CONFIG_MCI_TUNING)) {
-		/*
-		 * Select timing interface
-		 */
+		dev_dbg(&mci->dev, "select timing %s\n", mci_timing_tostr(host->ios.timing));
+
 		ret = mmc_select_timing(mci);
 		if (ret)
 			return ret;
 
-		if (mmc_card_hs200(mci))
+		if (mmc_card_hs200(mci)) {
 			ret = mmc_hs200_tuning(mci);
+			if (!ret) {
+				dev_dbg(&mci->dev, "HS200 tuning succeeded\n");
+				return 0;
+			}
+
+			dev_dbg(&mci->dev, "HS200 tuning failed, falling back to HS\n");
 
-		if (ret) {
 			host->ios.timing = MMC_TIMING_MMC_HS;
 			mci_switch(mci, EXT_CSD_HS_TIMING, EXT_CSD_TIMING_HS);
 		}
 	}
 
-	if (ret || !IS_ENABLED(CONFIG_MCI_TUNING)) {
-		mci_set_clock(mci, mci->tran_speed);
+	mci_set_clock(mci, mci->tran_speed);
 
-		/* find out maximum bus width and then try DDR if supported */
-		ret = mci_mmc_select_bus_width(mci);
-		if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
-			ret = mci_mmc_select_hs_ddr(mci);
+	/* find out maximum bus width and then try DDR if supported */
+	ret = mci_mmc_select_bus_width(mci);
+	if (ret > MMC_BUS_WIDTH_1 && mci->tran_speed == 52000000)
+		ret = mci_mmc_select_hs_ddr(mci);
 
-		if (ret < 0) {
-			dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
-		}
-	}
+	if (ret < 0)
+		dev_warn(&mci->dev, "Changing MMC bus width failed: %d\n", ret);
 
 	return ret >= MMC_BUS_WIDTH_1 ? 0 : ret;
 }
-- 
2.39.5



