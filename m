Delivery-date: Wed, 16 Jun 2021 09:41:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB8-00011Z-Ey
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 09:41:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltQB7-0000AT-Hy
	for lore@pengutronix.de; Wed, 16 Jun 2021 09:41:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enuAEVTyAbqFxhpktXHoSmWfu+4lAqCF3SKB5e6a0R4=; b=GdeUW37vFyOFGo
	HjrYPpBM+Ivl6PiFHhxhOFgwfHdu/5vUeAx96kRbASuywHFOEhvru5k6n4xcko93VWCkv7TQ4Dnky
	pPezRVVvFYWjrXtrl/D6OTG1KLvo2/psy2J0OtERk0QZls4FPCoU5aVBbHjQ4op5lY/zCo4cYMiMV
	xUs4MMdFSWKYlNE6WHQf1SbQ+YWgEr/KWNu/ibNautlmDdfI2/8qeMfFI1NT2A/6xabdWsWk6eMjn
	PyaS8ZgtpGfE/oldzpBDMm1rcqfdPPI0oq/DLsuwVV+vwnaQ/2EpCQu554WpgtHlfBpnMjltNNOGD
	CE1xUKp0npzeSk0pY/Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltQ9q-005ESH-Kg; Wed, 16 Jun 2021 07:40:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltQ9a-005EMn-33
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 07:40:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9W-0007zA-OR; Wed, 16 Jun 2021 09:39:58 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-0001q9-Rg; Wed, 16 Jun 2021 09:39:57 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1ltQ9V-007rFu-R0; Wed, 16 Jun 2021 09:39:57 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Graichen <michael.graichen@hotmail.com>
Date: Wed, 16 Jun 2021 09:39:53 +0200
Message-Id: <20210616073957.1872965-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616073957.1872965-1-m.tretter@pengutronix.de>
References: <20210616073957.1872965-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210616_004002_228203_36328F69 
X-CRM114-Status: GOOD (  13.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] mci: mci-core: respect disable-wp property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Systems without write-protect pin should ignore the write protect logic
and assume that an SD card is always read-write. This is expressed by
the disable-wp dt property.

Respect the disable-wp property and don't call the write protection
check in these cases.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 +++-
 include/mci.h          | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a160b9889459..a094f3cbf522 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1358,7 +1358,8 @@ static int __maybe_unused mci_sd_write(struct block_device *blk,
 
 	mci_blk_part_switch(part);
 
-	if (host->card_write_protected && host->card_write_protected(host)) {
+	if (!host->disable_wp &&
+	    host->card_write_protected && host->card_write_protected(host)) {
 		dev_err(&mci->dev, "card write protected\n");
 		return -EPERM;
 	}
@@ -2016,6 +2017,7 @@ void mci_of_parse_node(struct mci_host *host,
 
 	host->non_removable = of_property_read_bool(np, "non-removable");
 	host->no_sd = of_property_read_bool(np, "no-sd");
+	host->disable_wp = of_property_read_bool(np, "disable-wp");
 }
 
 void mci_of_parse(struct mci_host *host)
diff --git a/include/mci.h b/include/mci.h
index df2437f6181b..922aeaecf3de 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -406,6 +406,7 @@ struct mci_host {
 	int use_dsr;		/**< optional dsr usage flag */
 	bool non_removable;	/**< device is non removable */
 	bool no_sd;		/**< do not send SD commands during initialization */
+	bool disable_wp;	/**< ignore write-protect detection logic */
 	struct regulator *supply;
 
 	/** init the host interface */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

