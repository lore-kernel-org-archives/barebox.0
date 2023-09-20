Delivery-date: Wed, 20 Sep 2023 14:18:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiw9w-004cA4-Ev
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 14:18:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiw9u-0006jX-5q
	for lore@pengutronix.de; Wed, 20 Sep 2023 14:18:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=862Vl54jTBJoK9jeAUOw4BIlT+p+ctu63rZdoBoSaXQ=; b=TWY0q8FOr0x5AIUY3CUtazLRtP
	+IUG2dxtgD1YFvqxTOkkdMyshSPJF5716qr6oEFlcBW+0iDi83Lt95lVAv31B1W1gHgt3OP/XMGLH
	1pH5GRjz1BysKAumKRd1LeL+XTZGwCgs6s6lUsA0Y1BVN1+K5ab7RnKgDDQdaOgY78aPO1vFI8L/J
	0eHW9tzcDibxXahR8cA5YnAPb+yYrs3SX7bhPx477WKaEByOJOs6vSHPR3x7sFfCuysuju6EI6TQQ
	05I0RtK7B0m2m1FsrifNMFgbIp8saJBZRb3C1Vh0+1EfFGVJRP4PPipOi3h3b+NTZm8Obe97ifAPJ
	gUcg8cDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiw8o-002zyb-2T;
	Wed, 20 Sep 2023 12:17:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiw8k-002zx6-3D
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 12:17:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiw8j-0006Vv-Li; Wed, 20 Sep 2023 14:17:09 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiw8j-007gTS-6l; Wed, 20 Sep 2023 14:17:09 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiw8i-00Bp87-Tr; Wed, 20 Sep 2023 14:17:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 14:17:08 +0200
Message-Id: <20230920121708.2818143-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_051711_028449_1F452FCE 
X-CRM114-Status: GOOD (  11.52  )
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
Subject: [PATCH] regulator: replace _internal suffix by _rdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Rename functions to better align with the Linux Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index a861d14cd2..faf75c94ba 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -40,7 +40,7 @@ static int regulator_map_voltage(struct regulator_dev *rdev, int min_uV,
 	return regulator_map_voltage_iterate(rdev, min_uV, max_uV);
 }
 
-static int regulator_enable_internal(struct regulator_dev *rdev)
+static int regulator_enable_rdev(struct regulator_dev *rdev)
 {
 	int ret;
 
@@ -71,7 +71,7 @@ static int regulator_enable_internal(struct regulator_dev *rdev)
 	return 0;
 }
 
-static int regulator_disable_internal(struct regulator_dev *rdev)
+static int regulator_disable_rdev(struct regulator_dev *rdev)
 {
 	int ret;
 
@@ -99,7 +99,7 @@ static int regulator_disable_internal(struct regulator_dev *rdev)
 	return regulator_disable(rdev->supply);
 }
 
-static int regulator_set_voltage_internal(struct regulator_dev *rdev,
+static int regulator_set_voltage_rdev(struct regulator_dev *rdev,
 					  int min_uV, int max_uV)
 {
 	const struct regulator_ops *ops = rdev->desc->ops;
@@ -125,7 +125,7 @@ static int regulator_set_voltage_internal(struct regulator_dev *rdev,
 	return -ENOSYS;
 }
 
-static int regulator_get_voltage_internal(struct regulator_dev *rdev)
+static int regulator_get_voltage_rdev(struct regulator_dev *rdev)
 {
 	int sel, ret;
 
@@ -199,12 +199,12 @@ static int regulator_init_voltage(struct regulator_dev *rdev)
 	if (!rdev->min_uv || !rdev->max_uv)
 		return 0;
 
-	current_uV = regulator_get_voltage_internal(rdev);
+	current_uV = regulator_get_voltage_rdev(rdev);
 	if (current_uV < 0) {
 		/* This regulator can't be read and must be initialized */
 		rdev_info(rdev, "Setting %d-%duV\n", rdev->min_uv, rdev->max_uv);
-		regulator_set_voltage_internal(rdev, rdev->min_uv, rdev->max_uv);
-		current_uV = regulator_get_voltage_internal(rdev);
+		regulator_set_voltage_rdev(rdev, rdev->min_uv, rdev->max_uv);
+		current_uV = regulator_get_voltage_rdev(rdev);
 	}
 
 	if (current_uV < 0) {
@@ -236,7 +236,7 @@ static int regulator_init_voltage(struct regulator_dev *rdev)
 	if (target_min != current_uV || target_max != current_uV) {
 		rdev_info(rdev, "Bringing %duV into %d-%duV\n",
 			  current_uV, target_min, target_max);
-		ret = regulator_set_voltage_internal(rdev, target_min, target_max);
+		ret = regulator_set_voltage_rdev(rdev, target_min, target_max);
 		if (ret < 0) {
 			rdev_err(rdev,
 				"failed to apply %d-%duV constraint: %pe\n",
@@ -268,7 +268,7 @@ static int __regulator_register(struct regulator_dev *rdev, const char *name)
 		if (ret < 0)
 			goto err;
 
-		ret = regulator_enable_internal(rdev);
+		ret = regulator_enable_rdev(rdev);
 		if (ret && ret != -ENOSYS)
 			goto err;
 	}
@@ -545,7 +545,7 @@ int regulator_enable(struct regulator *r)
 	if (!r)
 		return 0;
 
-	return regulator_enable_internal(r->rdev);
+	return regulator_enable_rdev(r->rdev);
 }
 
 /*
@@ -562,7 +562,7 @@ int regulator_disable(struct regulator *r)
 	if (!r)
 		return 0;
 
-	return regulator_disable_internal(r->rdev);
+	return regulator_disable_rdev(r->rdev);
 }
 
 int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
@@ -570,7 +570,7 @@ int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
 	if (!r)
 		return 0;
 
-	return regulator_set_voltage_internal(r->rdev, min_uV, max_uV);
+	return regulator_set_voltage_rdev(r->rdev, min_uV, max_uV);
 }
 
 /**
@@ -717,7 +717,7 @@ int regulator_get_voltage(struct regulator *regulator)
 	if (!regulator)
 		return -EINVAL;
 
-	return regulator_get_voltage_internal(regulator->rdev);
+	return regulator_get_voltage_rdev(regulator->rdev);
 }
 EXPORT_SYMBOL_GPL(regulator_get_voltage);
 
-- 
2.39.2



