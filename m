Delivery-date: Wed, 20 Sep 2023 12:34:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXi-004Wnj-QC
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 12:34:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXg-00058v-8s
	for lore@pengutronix.de; Wed, 20 Sep 2023 12:34:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OqMssf+BvVcGpAGPKhjNK98Lk26YPJypfxHl4Uen7/w=; b=RGss/cKQMXXamWN4969gh71z65
	gDfUUyacJxwn9KObGRUWY9P+po+kq39ETAHUlthU/Uz81WTky+LVtjRrBlddmcaNTAEbbXxsA5cvd
	5+ZCfa+8AZLgXGZmxo6BhrSH3B9f4umO9WCDSVyrAxk2N47LtZLR1K5/+NY9RG+LEtKv04puJBZWf
	R3j3zfG+0/m6soOpsHQa9T0EUFqBQ6wFQ+CVa0LcrRVhxfbKUc5SxlJEaZxpOsbx/U0K0rzks6lKu
	PkMoZsv4KcDANnWL7UWtptrPHYnSJ3U4LrN2mCvyRn38YhuMJYGDvunseN9aYBAcalBS59R3cb+/+
	PXDbtkww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWN-002cwe-2G;
	Wed, 20 Sep 2023 10:33:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWG-002cst-2Z
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 10:33:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWE-0004Uu-8U; Wed, 20 Sep 2023 12:33:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-007fJu-Pm; Wed, 20 Sep 2023 12:33:17 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-00BZyV-Go; Wed, 20 Sep 2023 12:33:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 12:33:15 +0200
Message-Id: <20230920103316.2758383-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230920103316.2758383-1-s.hauer@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_033320_837001_72148D95 
X-CRM114-Status: GOOD (  14.20  )
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
Subject: [PATCH 10/11] regulator: drop struct regulator_dev::supply_name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The supply name can be set in struct regulator_desc, no need to have
it in struct regulator_dev also, so drop it there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/bcm2835.c | 2 +-
 drivers/regulator/core.c    | 8 +++-----
 include/regulator.h         | 4 +---
 3 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/regulator/bcm2835.c b/drivers/regulator/bcm2835.c
index 34e0429dfd..fa9fc47207 100644
--- a/drivers/regulator/bcm2835.c
+++ b/drivers/regulator/bcm2835.c
@@ -122,7 +122,7 @@ static int regulator_bcm2835_probe(struct device *dev)
 		rb->rdev.desc = &rb->rdesc;
 		rb->rdev.dev = dev;
 
-		ret = dev_regulator_register(&rb->rdev, rb->devname, NULL);
+		ret = dev_regulator_register(&rb->rdev, rb->devname);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 00a2aefce7..7fe264a133 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -409,7 +409,7 @@ static struct regulator_dev *of_regulator_get(struct device *dev,
 }
 #endif
 
-int dev_regulator_register(struct regulator_dev *rdev, const char * name, const char* supply)
+int dev_regulator_register(struct regulator_dev *rdev, const char *name)
 {
 	int ret;
 
@@ -417,8 +417,6 @@ int dev_regulator_register(struct regulator_dev *rdev, const char * name, const
 	if (ret)
 		return ret;
 
-	rdev->supply_name = supply;
-
 	return 0;
 }
 
@@ -437,8 +435,8 @@ static struct regulator_dev *dev_regulator_get(struct device *dev,
 				continue;
 			match += 2;
 		}
-		if (rdev->supply_name) {
-			if (!supply || strcmp(rdev->supply_name, supply))
+		if (rdev->desc->supply_name) {
+			if (!supply || strcmp(rdev->desc->supply_name, supply))
 				continue;
 			match += 1;
 		}
diff --git a/include/regulator.h b/include/regulator.h
index d02ea8ffd0..c5b405dfcd 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -92,7 +92,6 @@ struct regulator_dev {
 	int enable_time_us;
 	int min_uv;
 	int max_uv;
-	const char *supply_name;
 	struct list_head consumer_list;
 	const struct regulator_desc *desc;
 	struct regmap *regmap;
@@ -154,8 +153,7 @@ static inline int of_regulator_register(struct regulator_dev *rd,
 	return -ENOSYS;
 }
 #endif
-int dev_regulator_register(struct regulator_dev *rd, const char * name,
-			   const char* supply);
+int dev_regulator_register(struct regulator_dev *rd, const char *name);
 
 void regulators_print(void);
 
-- 
2.39.2



