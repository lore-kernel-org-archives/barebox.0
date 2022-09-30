Delivery-date: Fri, 30 Sep 2022 17:35:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeI2d-001XDI-Bf
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 17:35:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeI2b-0006t4-OA
	for lore@pengutronix.de; Fri, 30 Sep 2022 17:35:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=96AaNL/oJdpk8t7eSWfD+HydNEn/bytMUbNNrE/2LPE=; b=2kneaqcRVUJ142pKC8edaJEoR2
	NCDAdOP52pkcl7cHYTiGGfTk0zzwej0eaGWoiNE5DAYY3GQucmGm/lXL9B8AkItEp9wa1IusxXCgU
	tBo63yrW1usAgwDWsd+LN2eP0PkQlGnxGzEhCV3kNVmp47IX/S4o+e7vOPGixh2Hr2ssw+LK8gV2Q
	z+EEhdF3L56X6DMkn+V/wf1wpUR20dzwN96QalZP4Jz422FCAc4p5k7UWDf48QQe+xiEEB+HQKkX5
	/3GFL3usmuBEHWtzpLP1unjoe8DTdrh701ZFoqMOdr2+fpZohcaiy2I0cKHGbHw0txqyNr5WtZpoE
	son/RklA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI17-00AEwq-LD; Fri, 30 Sep 2022 15:33:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI0x-00AEro-IP
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 15:33:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI0u-0006gY-43; Fri, 30 Sep 2022 17:33:20 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI0u-003pMY-TU; Fri, 30 Sep 2022 17:33:19 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI0s-0034Ny-QN; Fri, 30 Sep 2022 17:33:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 17:33:16 +0200
Message-Id: <20220930153317.731088-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930153317.731088-1-a.fatoum@pengutronix.de>
References: <20220930153317.731088-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_083323_689754_84F58B17 
X-CRM114-Status: GOOD (  12.66  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] mci: core: add broken_cd device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sometimes a broken card-detect is not a general issue affecting all
boards, but only a given board. Allow setting broken_cd for such boards
via a device parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - replace Kconfig option with device parameter (Marco, Sascha)
---
 drivers/mci/mci-core.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 5f4457bab3df..26b524007609 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1919,7 +1919,7 @@ int mci_register(struct mci_host *host)
 {
 	struct mci *mci;
 	struct device_d *hw_dev;
-	struct param_d *param_probe;
+	struct param_d *param_probe, *param_broken_cd;
 	int ret;
 
 	mci = xzalloc(sizeof(*mci));
@@ -1973,6 +1973,15 @@ int mci_register(struct mci_host *host)
 		goto err_unregister;
 	}
 
+	param_broken_cd = dev_add_param_bool(&mci->dev, "broken_cd",
+					     NULL, NULL, &host->broken_cd, mci);
+
+	if (IS_ERR(param_broken_cd) && PTR_ERR(param_broken_cd) != -ENOSYS) {
+		ret = PTR_ERR(param_broken_cd);
+		dev_dbg(&mci->dev, "Failed to add 'broken_cd' parameter to the MCI device\n");
+		goto err_unregister;
+	}
+
 	if (IS_ENABLED(CONFIG_MCI_INFO))
 		mci->dev.info = mci_info;
 
-- 
2.30.2



