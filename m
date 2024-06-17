Delivery-date: Mon, 17 Jun 2024 13:42:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAkZ-007Yy8-34
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:42:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAkZ-00083L-CJ
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:42:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eXkKUQlRwA6wuJBzrhst4bad7F5udbsjvNHNWLr1ZlI=; b=uEDbc+O9ZHtLsrqDdtqoBofJka
	Ntsen6cr6+qkp5M6VYno9YpXtNsjVFSaQM2heOdHM+CT8H76Kh38WAUZueTiix33BeF+1JQ9OVVuP
	GlBBPwUtmCcFjuoNcaGdIhFvh2X9Qjtip+l/G+tgKy9PBNO7D+eBiqMR31fKii/6N/pZLy5JpzZus
	K4aJsKgtWDDuKFc58taEoZ1g1mQvKoSIe0i/ph5rxUDa545lZeQ0Iurt8Y4qsRaZGGgkdMs9NJ8EG
	p3cOqB/gjbXZTSnpDtpgAT2muwZBpfxh+h5YtLm/PCaAZpV2wXPybnCB25nIkIbnkuOvEM1/T7SiW
	5zkUNYVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAkA-0000000AXFc-2Jv8;
	Mon, 17 Jun 2024 11:41:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAk7-0000000AXE9-0S39
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:41:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJAk5-0007tO-Si; Mon, 17 Jun 2024 13:41:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJAk5-002y18-GH; Mon, 17 Jun 2024 13:41:45 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sJAk5-006URJ-1L;
	Mon, 17 Jun 2024 13:41:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2024 13:41:42 +0200
Message-Id: <20240617114142.1546941-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240617114142.1546941-1-a.fatoum@pengutronix.de>
References: <20240617114142.1546941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_044147_161870_79E48599 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH RESEND 2/2] mci: core: don't add broken_cd parameter for eMMCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We only register the fixup for SDs, so registering the device parameter
for eMMCs serves no purpose, thus register it for SDs only as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index d40519f124b9..cb65227af208 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2556,9 +2556,6 @@ int mci_register(struct mci_host *host)
 	dev_add_param_bool(&mci->dev, "probe", mci_set_probe, NULL,
 			   &mci->probe, mci);
 
-	dev_add_param_bool(&mci->dev, "broken_cd", NULL, NULL,
-			   &host->broken_cd, mci);
-
 	if (IS_ENABLED(CONFIG_MCI_INFO))
 		mci->dev.info = mci_info;
 
@@ -2566,8 +2563,12 @@ int mci_register(struct mci_host *host)
 	if (IS_ENABLED(CONFIG_MCI_STARTUP))
 		mci_card_probe(mci);
 
-	if (!(host->caps2 & MMC_CAP2_NO_SD) && dev_of_node(host->hw_dev))
+	if (!(host->caps2 & MMC_CAP2_NO_SD) && dev_of_node(host->hw_dev)) {
+		dev_add_param_bool(&mci->dev, "broken_cd", NULL, NULL,
+				   &host->broken_cd, mci);
+
 		of_register_fixup(of_broken_cd_fixup, host);
+	}
 
 	list_add_tail(&mci->list, &mci_list);
 
-- 
2.39.2



