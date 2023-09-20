Delivery-date: Wed, 20 Sep 2023 12:34:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXk-004WoA-5p
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 12:34:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXh-00059j-7y
	for lore@pengutronix.de; Wed, 20 Sep 2023 12:34:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nZ5xGZfLSG39nsUu9TZUj5YRHZ7IVF/WFpHvev9CIGE=; b=rNjQRlg2ooZu1tEpYu2hn+S/5e
	IWTi1B8P1sE2IJznCszaCOyiMx2u3s/qtUvBvAIEq+M5KALbbnkq1l2mrL0T11g108FByBQLNXrqH
	DgZRQoXgRPpnQaZR7XSgpixPQ3hnkyR9ZnrMZFlK5LauddgTkKAoMwP6GnoXZIbt0A8T3J2myYLT4
	v5zywgrt5FYZkblaarAFi4xAfh41e/RAlCV8LKTtW/pi25CGqoW/8NM51jAk5QHHDigHzfpe0OjWp
	1oCMw//QownQNUj43f0PRilL8Y7PK+Q9HL681b6vMu7CDd1tCaZvGTkEUZsukTyjFHGYsdBR2qI4l
	hL2X7EMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWR-002cyt-0y;
	Wed, 20 Sep 2023 10:33:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWN-002cwT-1N
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 10:33:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWE-0004UE-52; Wed, 20 Sep 2023 12:33:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-007fJe-LI; Wed, 20 Sep 2023 12:33:17 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-00BZy7-CQ; Wed, 20 Sep 2023 12:33:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 12:33:09 +0200
Message-Id: <20230920103316.2758383-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230920103316.2758383-1-s.hauer@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_033327_474772_7E127259 
X-CRM114-Status: GOOD (  14.17  )
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
Subject: [PATCH 04/11] regulator: add regulator_get_voltage_internal()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

regulator_get_voltage() works on struct regulator * which may not always
be available internally, so add a regulator_get_voltage_internal() and
use it from regulator_get_voltage().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 52 +++++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 25 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 8ef5a2372c..5693fa9634 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -121,6 +121,32 @@ static int regulator_set_voltage_internal(struct regulator_dev *rdev,
 	return -ENOSYS;
 }
 
+static int regulator_get_voltage_internal(struct regulator_dev *rdev)
+{
+	int sel, ret;
+
+	if (rdev->desc->ops->get_voltage_sel) {
+		sel = rdev->desc->ops->get_voltage_sel(rdev);
+		if (sel < 0)
+			return sel;
+		ret = rdev->desc->ops->list_voltage(rdev, sel);
+	} else if (rdev->desc->ops->get_voltage) {
+		ret = rdev->desc->ops->get_voltage(rdev);
+	} else if (rdev->desc->ops->list_voltage) {
+		ret = rdev->desc->ops->list_voltage(rdev, 0);
+	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
+		ret = rdev->desc->fixed_uV;
+	} else if (rdev->min_uv && rdev->min_uv == rdev->max_uv) {
+		ret = rdev->min_uv;
+	} else if (rdev->supply) {
+		ret = regulator_get_voltage(rdev->supply);
+	} else {
+		return -EINVAL;
+	}
+
+	return ret;
+}
+
 static int regulator_resolve_supply(struct regulator_dev *rdev)
 {
 	struct regulator *supply;
@@ -622,34 +648,10 @@ EXPORT_SYMBOL_GPL(regulator_bulk_free);
 
 int regulator_get_voltage(struct regulator *regulator)
 {
-	struct regulator_dev *rdev;
-	int sel, ret;
-
 	if (!regulator)
 		return -EINVAL;
 
-	rdev = regulator->rdev;
-
-	if (rdev->desc->ops->get_voltage_sel) {
-		sel = rdev->desc->ops->get_voltage_sel(rdev);
-		if (sel < 0)
-			return sel;
-		ret = rdev->desc->ops->list_voltage(rdev, sel);
-	} else if (rdev->desc->ops->get_voltage) {
-		ret = rdev->desc->ops->get_voltage(rdev);
-	} else if (rdev->desc->ops->list_voltage) {
-		ret = rdev->desc->ops->list_voltage(rdev, 0);
-	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
-		ret = rdev->desc->fixed_uV;
-	} else if (rdev->min_uv && rdev->min_uv == rdev->max_uv) {
-		ret = rdev->min_uv;
-	} else if (rdev->supply) {
-		ret = regulator_get_voltage(rdev->supply);
-	} else {
-		return -EINVAL;
-	}
-
-	return ret;
+	return regulator_get_voltage_internal(regulator->rdev);
 }
 EXPORT_SYMBOL_GPL(regulator_get_voltage);
 
-- 
2.39.2



