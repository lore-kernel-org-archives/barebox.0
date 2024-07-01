Delivery-date: Mon, 01 Jul 2024 09:07:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOB8n-000Q4h-0J
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:07:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOB8m-0004cL-Hi
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:07:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mNVEEAvO6HnJ9IfK66S6u5CHysLrs+pnAvDRw52JLmo=; b=k3cgfH1F4CFxYFo25rGHlm6qe0
	nsT3mJBFaRJdhoD5d+e258rhFKdHvf2hXHpSifoqAR2Y83tlks+rC5ESuxoCB7Rnb4AQpQS7+3aSu
	9Kxy4PQPOYcvUhtYEVb5D73Fjb+szIkc2VDWyGIpPpsX74Zi3m7kgzvccb50hDFAFk0dqfZo4Ew6z
	swqWTWJawlAnKqOXGH6X5nFboGxbRikUBE8CKI1KUh593QWbvA+hqZnVZfdADzYhnSAe58smYTAvJ
	XPiRfL5y+IcuMEY+tvFC/3vIrTJzkLXlz+p4Zp93GlH5k09Bu0bnlJHt2MrcEQk98bI1XVaeoRsxT
	4s1XrJdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOB8N-00000001y7a-0vja;
	Mon, 01 Jul 2024 07:07:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOB8J-00000001y62-0dFQ
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:07:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOB8H-0004XC-DY; Mon, 01 Jul 2024 09:07:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOB8H-006JbW-10; Mon, 01 Jul 2024 09:07:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOB8G-000Yvf-32;
	Mon, 01 Jul 2024 09:07:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:07:24 +0200
Message-Id: <20240701070724.134251-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_000727_856886_159A182E 
X-CRM114-Status: GOOD (  10.73  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mci: core: drop unused parameter members from struct mci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We actually never check the device parameter points again in the MCI
core, so we don' need to keep them in struct mci.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 14 ++++++--------
 include/mci.h          |  2 --
 2 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b91d51b43a0b..f6f8a6adabb9 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2417,15 +2417,13 @@ static int mci_card_probe(struct mci *mci)
 	}
 
 	if (has_bootpart) {
-		mci->param_boot =
-			dev_add_param_enum(&mci->dev, "boot", mci_set_boot,
-					   NULL, &mci->bootpart, mci_boot_names,
-					   ARRAY_SIZE(mci_boot_names), mci);
+		dev_add_param_enum(&mci->dev, "boot", mci_set_boot,
+				   NULL, &mci->bootpart, mci_boot_names,
+				   ARRAY_SIZE(mci_boot_names), mci);
 
-		mci->param_boot_ack =
-			dev_add_param_bool(&mci->dev, "boot_ack",
-					   mci_set_boot_ack, NULL,
-					   &mci->boot_ack_enable, mci);
+		dev_add_param_bool(&mci->dev, "boot_ack",
+				   mci_set_boot_ack, NULL,
+				   &mci->boot_ack_enable, mci);
 
 		ret = mci_get_partition_setting_completed(mci);
 		if (ret < 0)
diff --git a/include/mci.h b/include/mci.h
index 70529d065087..773aed896c96 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -580,8 +580,6 @@ struct mci {
 	int dsr_imp;		/**< DSR implementation state from CSD */
 	u8 *ext_csd;
 	int probe;
-	struct param_d *param_boot;
-	struct param_d *param_boot_ack;
 	int bootpart;
 	int boot_ack_enable;
 
-- 
2.39.2



