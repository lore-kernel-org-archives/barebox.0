Delivery-date: Fri, 25 Jun 2021 09:44:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgVO-0007n7-Mw
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:44:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgVN-0004yb-9H
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:44:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWB7/0UtJda2PjQ1yhNJ8526JAMycmdGhfy/R31COxs=; b=Su4jqWJq47MMiw
	iHrzRovZTuEkRZQ4qPRP6NFuQLWHz1NApFiHgLt1OKarEAlWIvI8J1ss42KhmhcilGEHwfrhmLJEI
	ZqS4hlPc/+CzIRiVHZ92BmBoVou7/DfS+kJedADYwkRiS3nQs2oa9yEkfgm1Lu0DFYTvnIMUY52ZU
	bqEqSqfxWGjwRA5T0uw2Gs2oWSTQk3Ugzg9/ZHfrUqJIUruC3FOsRyxkJ+Y4mgb0ticz3SMIunKV+
	SbPpxXRGDc8ZVbCVnqup9FQVn/S8CztMZYZHWB4R/trmaGv9x0W7kIK6sq2VauC+zgfsRXprdJV/l
	OH98TBGq+dB4PZBcgYzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgU6-0004eg-BC; Fri, 25 Jun 2021 07:42:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDg-00HZ1e-4I
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002Qb-Er; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000dB-C2; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:27 +0200
Message-Id: <20210625072540.32717-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002544_279199_7CC70567 
X-CRM114-Status: GOOD (  11.36  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/19] of: Set of_chosen and of_model earlier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_chosen and of_model can be set once we have the device tree root node,
no need to wait until we probe the tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 723b1fae47..83c9d5fb6b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1682,6 +1682,9 @@ int of_modalias_node(struct device_node *node, char *modalias, int len)
 }
 EXPORT_SYMBOL_GPL(of_modalias_node);
 
+static struct device_node *of_chosen;
+static const char *of_model;
+
 struct device_node *of_get_root_node(void)
 {
 	return root_node;
@@ -1694,6 +1697,12 @@ int of_set_root_node(struct device_node *node)
 
 	root_node = node;
 
+	of_chosen = of_find_node_by_path("/chosen");
+	of_property_read_string(root_node, "model", &of_model);
+
+	if (of_model)
+		barebox_set_model(of_model);
+
 	of_alias_scan();
 
 	return 0;
@@ -2277,9 +2286,6 @@ int of_add_memory(struct device_node *node, bool dump)
 	return ret;
 }
 
-static struct device_node *of_chosen;
-static const char *of_model;
-
 const char *of_get_model(void)
 {
 	return of_model;
@@ -2344,12 +2350,6 @@ int of_probe(void)
 	if(!root_node)
 		return -ENODEV;
 
-	of_chosen = of_find_node_by_path("/chosen");
-	of_property_read_string(root_node, "model", &of_model);
-
-	if (of_model)
-		barebox_set_model(of_model);
-
 	firmware = of_find_node_by_path("/firmware");
 	if (firmware)
 		of_platform_populate(firmware, NULL, NULL);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

