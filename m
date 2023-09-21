Delivery-date: Thu, 21 Sep 2023 13:06:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjHVp-005ngy-ID
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 13:06:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjHVn-0003t1-Hw
	for lore@pengutronix.de; Thu, 21 Sep 2023 13:06:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sFxyT2s5Aj5uluIZK9PTsa1yo2sQnOf87h7YKD+wUE0=; b=S6mIUAgyMDZifaWrksNEvL7Arq
	PZ+RvQ6lEBjHg/PshHhfcDOu7o453c/5q3G4ortA/y/XcyTYYoH+TiVd44mHYD9V9/TVCD0AidQZn
	ia3jc2S0c/V7OU6pci7DRUTingrQHqb4dC2qJAkEtpRmRibnB5ishU+gibnn4Y3nk8GNWeqmiKOxR
	8URdoXlmEFYEofVJl9Oz3YncaNt7pNPD3ZfVd7C6g9BPYgPvXvOUDcuUfHrH1+cuAmhIuHn/TQTrO
	jhwqPGcJmxqg1QxfdnSE80UmLJt2R90vgmgZWrqXQYAQs+MWQRGrczKqlNZvvgb+FGgAQ3ZNH4R+o
	0NbETH2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjHUd-005sZA-1T;
	Thu, 21 Sep 2023 11:05:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjHUb-005sYK-01
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 11:05:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjHUR-0003UM-QO; Thu, 21 Sep 2023 13:04:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjHUR-007uDa-Dk; Thu, 21 Sep 2023 13:04:59 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjHUR-00G95T-58; Thu, 21 Sep 2023 13:04:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 21 Sep 2023 13:04:56 +0200
Message-Id: <20230921110457.3848170-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_040509_041720_4F460F4F 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] bootm: always put a copy into data->of_root_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Never put of_get_root_node() directly into data->of_root_node, but
always a copy. With this we can unconditionally free data->of_root_node
in the cleanup path.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 9ec4b127f8..27ada61f4e 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -404,10 +404,13 @@ void *bootm_get_devicetree(struct image_data *data)
 		}
 
 	} else {
-		data->of_root_node = of_get_root_node();
-		if (!data->of_root_node)
+		struct device_node *root = of_get_root_node();
+
+		if (!root)
 			return NULL;
 
+		data->of_root_node = of_dup(root);
+
 		if (bootm_verbose(data) > 1 && data->of_root_node)
 			printf("using internal devicetree\n");
 	}
@@ -838,7 +841,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		elf_close(data->elf);
 	if (IS_ENABLED(CONFIG_FITIMAGE) && data->os_fit)
 		fit_close(data->os_fit);
-	if (data->of_root_node && data->of_root_node != of_get_root_node())
+	if (data->of_root_node)
 		of_delete_node(data->of_root_node);
 
 	globalvar_remove("linux.bootargs.bootm.earlycon");
-- 
2.39.2



