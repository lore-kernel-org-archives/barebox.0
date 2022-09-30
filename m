Delivery-date: Fri, 30 Sep 2022 17:35:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeI2k-001XE1-Of
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 17:35:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeI2j-0006vG-L1
	for lore@pengutronix.de; Fri, 30 Sep 2022 17:35:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T5oJo/i80/bdhJPpN18n7wsymJ0LN2tyM5XPMfaeB3U=; b=iXualSUaGFTBtNMXpxD02+zGub
	sDbd0uzyfwMNoBa0M+G/wBLg9TofeHmp3ux9KFP9/xwzhuA/EDQFgU0HvCH7G64OyTW/v8tVKzM9S
	Jn69plbNlQI4OMxSy+O+Umz1/uO2RmDhwsRmI8s3U7/HiylDYQEt0aRkjcXBNwKy/AwWItr4CqtYq
	ftuZLqYmm9f/ZzSrfS/5E6Pa6TvSktYMOOOQTvNanztF8NSC+206qWbzmZEWXZ478Svrq7Fi/0Oow
	yuorRmZjH6ktYxu3S4Wl1VYM39rjTNfs2UK+7SwwxCkrpQztPJh1TexpBWVy3GJXF3iFiJzllTduy
	jHB8FytQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI14-00AEvg-S9; Fri, 30 Sep 2022 15:33:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI0x-00AErr-II
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 15:33:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI0u-0006gZ-B3; Fri, 30 Sep 2022 17:33:20 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI0v-003pMb-4A; Fri, 30 Sep 2022 17:33:19 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oeI0s-0034O1-Ql; Fri, 30 Sep 2022 17:33:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 30 Sep 2022 17:33:17 +0200
Message-Id: <20220930153317.731088-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930153317.731088-1-a.fatoum@pengutronix.de>
References: <20220930153317.731088-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_083323_658871_C1D39078 
X-CRM114-Status: GOOD (  14.37  )
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
Subject: [PATCH v2 3/3] mci: core: fixup broken-cd information into kernel DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In remote labs co-located with other hardware, we've observed card
detect levers of different boards to sporadically fail to detect
the card, e.g. because the cable on the usbsdmux was yanked around
by accident. When this happens, barebox usually boots up normally as
the card detect is ignored and then Linux waits indefinitely for
the card-detect to turn active. We already maintain a broken_cd flag
for each card. Use this to fixup the kernel DT appropriately.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - apply to all controllers that have broken-cd and not only
    to probed ones (Sascha)
---
 drivers/mci/mci-core.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 26b524007609..82f39d8fc9b8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1739,6 +1739,31 @@ static int mci_register_partition(struct mci_part *part)
 	return 0;
 }
 
+static int of_broken_cd_fixup(struct device_node *root, void *ctx)
+{
+	struct mci_host *host = ctx;
+	struct device_d *hw_dev = host->hw_dev;
+	struct device_node *np;
+	char *name;
+
+	if (!host->broken_cd)
+		return 0;
+
+	name = of_get_reproducible_name(hw_dev->device_node);
+	np = of_find_node_by_reproducible_name(root, name);
+	free(name);
+	if (!np) {
+		dev_warn(hw_dev, "Cannot find nodepath %s, cannot fixup\n",
+			 hw_dev->device_node->full_name);
+		return -EINVAL;
+	}
+
+	of_property_write_bool(np, "cd-gpios", false);
+	of_property_write_bool(np, "broken-cd", true);
+
+	return 0;
+}
+
 /**
  * Probe an MCI card at the given host interface
  * @param mci MCI device instance
@@ -1989,6 +2014,9 @@ int mci_register(struct mci_host *host)
 	if (IS_ENABLED(CONFIG_MCI_STARTUP))
 		mci_card_probe(mci);
 
+	if (!host->no_sd && dev_of_node(host->hw_dev))
+		of_register_fixup(of_broken_cd_fixup, host);
+
 	list_add_tail(&mci->list, &mci_list);
 
 	return 0;
-- 
2.30.2



