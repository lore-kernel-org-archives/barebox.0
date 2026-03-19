Delivery-date: Thu, 19 Mar 2026 08:02:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Ow-002XqI-0d
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 08:02:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37Ov-0005xS-Kc
	for lore@pengutronix.de; Thu, 19 Mar 2026 08:02:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k1JMYxlfSFdW8UxueFgeHOdFV5mZcc9nlwl3FfvCGQ4=; b=QWG5IwJ3zEe1gMJ34MZ34rHoEm
	tIKqxK3cB5EvLUgL8aI4SRWmmvU+yefpPPfmZ5ROzga83HRqr1d5pu2GIsGDp4AgxEknMKakJE3XX
	YQTgxIIBI9vn773mKHLY7nASahOsJFX+v256Nvd9huvG5aN8ZNK8hg7IjD2eDdKwXwdiRKJr2rkKr
	UptXQABA99li6SiXNzXn28gL/EogOnFWqMa80DNyV0PMjgl7TB9CkTgkf2CGFDOe4BDtS9JOU3NqT
	TIve/ZQZbzT+XGDHKDckFztWXQ6gFrSJ0DMdyGAFXALhJNQ4mGtF5tu6PU4dP0gp96WJfZXjy6avb
	1X2bMwWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37OS-0000000A5pF-0qRY;
	Thu, 19 Mar 2026 07:02:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37OQ-0000000A5oO-36ay
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 07:02:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37OP-0005f8-91; Thu, 19 Mar 2026 08:02:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37OP-0011yZ-0I;
	Thu, 19 Mar 2026 08:02:05 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37OP-0000000879w-000y;
	Thu, 19 Mar 2026 08:02:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Mar 2026 08:02:00 +0100
Message-ID: <20260319070201.1930012-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_000206_781089_4ED05A03 
X-CRM114-Status: GOOD (  11.07  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mci: move optee_rpmb_detected() to where the card is detected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mci_register() only registers a host controller, but depending on
configuration the card is not detected in this function. Move
the call to optee_rpmb_detected() to mci_card_probe() where the
card is actually detected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b5a7e6f6bf..cdb20a5625 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2984,6 +2984,9 @@ static int mci_card_probe(struct mci *mci)
 
 	mci_parse_cid(mci);
 
+	if (mci->rpmb_part)
+		optee_rpmb_detected();
+
 	dev_dbg(&mci->dev, "Card successfully added\n");
 
 on_error:
@@ -3123,9 +3126,6 @@ int mci_register(struct mci_host *host)
 
 	class_add_device(&mmc_class, &mci->dev);
 
-	if (mci->rpmb_part)
-		optee_rpmb_detected();
-
 	return 0;
 
 err_free:
-- 
2.47.3



