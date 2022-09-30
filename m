Delivery-date: Fri, 30 Sep 2022 17:35:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeI2b-001XCp-B1
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 17:35:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeI2Z-0006sc-SL
	for lore@pengutronix.de; Fri, 30 Sep 2022 17:35:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6EXNJvM3Uobf5BdIus12AHWnUgdAbIDPYLHKT7H/GlY=; b=aLbmNjtbD3ubkW6hR5ThOAjD/l
	1l8avzyRoqpvvDoO6kLdnIyLYKXrUjQRSjTXZc+6P8rtPIHX/6HflJke/nXQwnVV4kqbDHv9JxnBh
	qFeYzS/+PW4onLnxG35m7SQGLJCwuY9qON5sEuEz9VRzrWKi76MovKkHvQAZxGre7Vb+YKg9vm1AQ
	e7uHw2eb8siXjxhEZF6O1GmNn//zgtL8VXy9aLS6A+zu6QFPBD/W7xpS92hR6SRg8kFEODxh0b5FZ
	Tdap/e9FRPurbVoNaAMbGW0ZczIxrPY+7lasxh2Aa/9Qbh7oijW5sV1LshOLQHgwiT7qXPz0LghfO
	Ubv2gyHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI12-00AEun-E9; Fri, 30 Sep 2022 15:33:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI0x-00AErs-IN
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 15:33:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI0u-0006gb-FN; Fri, 30 Sep 2022 17:33:20 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI0v-003pMe-Ag; Fri, 30 Sep 2022 17:33:19 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI0s-0034Nw-Pz; Fri, 30 Sep 2022 17:33:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 17:33:15 +0200
Message-Id: <20220930153317.731088-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_083323_650179_0757D19D 
X-CRM114-Status: GOOD (  13.12  )
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
Subject: [PATCH v2 1/3] mci: core: act upon broken-cd device tree property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We didn't care much for broken-cd so far, still we have some drivers
implementing the card_present callback, which we should ignore when
card-detect is marked broken.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/mci/mci-core.c | 12 ++++++++----
 include/mci.h          |  1 +
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8c08a4f61f63..5f4457bab3df 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1750,10 +1750,13 @@ static int mci_card_probe(struct mci *mci)
 	int i, rc, disknum, ret;
 	bool has_bootpart = false;
 
-	if (host->card_present && !host->card_present(host) &&
-	    !host->non_removable) {
-		dev_err(&mci->dev, "no card inserted\n");
-		return -ENODEV;
+	if (host->card_present && !host->card_present(host) && !host->non_removable) {
+		if (!host->broken_cd) {
+			dev_err(&mci->dev, "no card inserted\n");
+			return -ENODEV;
+		}
+
+		dev_info(&mci->dev, "no card inserted (ignoring)\n");
 	}
 
 	ret = regulator_enable(host->supply);
@@ -2043,6 +2046,7 @@ void mci_of_parse_node(struct mci_host *host,
 		}
 	}
 
+	host->broken_cd = of_property_read_bool(np, "broken-cd");
 	host->non_removable = of_property_read_bool(np, "non-removable");
 	host->no_sd = of_property_read_bool(np, "no-sd");
 	host->disable_wp = of_property_read_bool(np, "disable-wp");
diff --git a/include/mci.h b/include/mci.h
index 2098b4fbf084..d949310fac30 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -404,6 +404,7 @@ struct mci_host {
 	unsigned max_req_size;
 	unsigned dsr_val;	/**< optional dsr value */
 	int use_dsr;		/**< optional dsr usage flag */
+	int broken_cd;		/**< card detect is broken */
 	bool non_removable;	/**< device is non removable */
 	bool no_sd;		/**< do not send SD commands during initialization */
 	bool disable_wp;	/**< ignore write-protect detection logic */
-- 
2.30.2



