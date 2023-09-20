Delivery-date: Wed, 20 Sep 2023 12:34:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXg-004Wme-Lx
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 12:34:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXe-00057V-Mo
	for lore@pengutronix.de; Wed, 20 Sep 2023 12:34:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dlolyxcAntDsO8t0YhZGJrhg1Gw3wJwGQaBNxPEyOYo=; b=eRGwgfapVi7lxLoaCjK07i/0TJ
	tmQaoCeRFlvLSbmLts9n30wxD/XGa+/TQr5ry42YnLmvXhfoWJtbVrtPSNKjvm6lt98gZ5mLR+JVU
	/iwT0+k/0O7P/t3tFAU1D/1Zkk2nPoTcoSDzyDOPVlFhcbaenwceC8z0d343SLe3fPD1vgzNnpVSN
	xSkzOdwsvBSssAVLpMalshFb18bYt0JiKV2I41tKV+an8QVvTWb604JxjE/dEbegTkcIhQK1ItDqZ
	fqdAlDsgHDdmD3x0bXVTMQGiClu0KwmMnXtEtoPd96elFPBS1mymVwieqJ9r7LHGZwYMspNjy8qIn
	c5bv1yDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWY-002d4e-1x;
	Wed, 20 Sep 2023 10:33:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWV-002d25-1b
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 10:33:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWE-0004UU-8U; Wed, 20 Sep 2023 12:33:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-007fJn-OY; Wed, 20 Sep 2023 12:33:17 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-00BZyN-FM; Wed, 20 Sep 2023 12:33:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 12:33:13 +0200
Message-Id: <20230920103316.2758383-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230920103316.2758383-1-s.hauer@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_033335_531007_1E128951 
X-CRM114-Status: GOOD (  10.09  )
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
Subject: [PATCH 08/11] regulator: register regulator as last step in of_regulator_register()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In of_regulator_register() call __regulator_register as last step after
all fields have been initialized. This was not possible before as
__regulator_register() returned the struct regulator_internal * which
contained the remaining fields. Now that struct regulator_internal is
gone we can restore the natural initialization order.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index b9a97a784f..d08df1dc68 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -240,10 +240,6 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
 	if (!name)
 		name = node->name;
 
-	ret = __regulator_register(rdev, name);
-	if (ret)
-		return ret;
-
 	rdev->node = node;
 	node->dev = rdev->dev;
 
@@ -260,6 +256,10 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
 	of_property_read_u32(node, "regulator-max-microvolt",
 			&rdev->max_uv);
 
+	ret = __regulator_register(rdev, name);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.39.2



