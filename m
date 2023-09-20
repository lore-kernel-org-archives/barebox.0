Delivery-date: Wed, 20 Sep 2023 12:34:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXh-004Wmz-HR
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 12:34:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXf-000587-2U
	for lore@pengutronix.de; Wed, 20 Sep 2023 12:34:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lwbxh5R5DZH4l3ZpmUF+0MT+gukBeZ2sfrly0JAwpbg=; b=Euqb/Cv1qJBn0NIzZhn96PgPHg
	WVIOwcqSTi/uca4Vsymv5NTEWN7rjScFqejTm1IoYHXsv52K7H0Izt7/DgtmFENq4MZ1mYrKeKXlc
	Robxvi65tgcWdbSHndW8Cx1Z4eQDBA9dnREfVDlpK1Vfvp/qizKL1jOG5n7B1GqT2F+Fx7sSnc5AP
	o1+1eUygV/14b+LE4Fp1BSaDZEKS3Ro3mEBEjluMneBchfkzCTXUnhnv+UACNExW3T8AbZl4CRLTo
	3ohY8UnkoSgj4S1TWU4gbJVAaNee6Vx3Iz/H3wK87fKx/nOFkaNo+9j2IXqXipBTHVbRAfW+yJ2az
	ecbIQxzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWP-002cxc-0Q;
	Wed, 20 Sep 2023 10:33:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWG-002csw-2c
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 10:33:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWE-0004Ug-7q; Wed, 20 Sep 2023 12:33:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-007fJp-Ov; Wed, 20 Sep 2023 12:33:17 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-00BZyR-G3; Wed, 20 Sep 2023 12:33:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 12:33:14 +0200
Message-Id: <20230920103316.2758383-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230920103316.2758383-1-s.hauer@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_033320_848930_099BEC5B 
X-CRM114-Status: GOOD (  14.65  )
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
Subject: [PATCH 09/11] regulator: Set initial voltage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When voltage constraints are given in the device tree then we should
set the regulator to a valid voltage before enabling it. Without it
we can end up with invalid voltages.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 60 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index d08df1dc68..00a2aefce7 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -187,6 +187,62 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
 	return 0;
 }
 
+static int regulator_init_voltage(struct regulator_dev *rdev)
+{
+	int target_min, target_max, current_uV, ret;
+
+	if (!rdev->min_uv || !rdev->max_uv)
+		return 0;
+
+	current_uV = regulator_get_voltage_internal(rdev);
+	if (current_uV < 0) {
+		/* This regulator can't be read and must be initialized */
+		rdev_info(rdev, "Setting %d-%duV\n", rdev->min_uv, rdev->max_uv);
+		regulator_set_voltage_internal(rdev, rdev->min_uv, rdev->max_uv);
+		current_uV = regulator_get_voltage_internal(rdev);
+	}
+
+	if (current_uV < 0) {
+		if (current_uV != -EPROBE_DEFER)
+			rdev_err(rdev,
+				 "failed to get the current voltage: %pe\n",
+				 ERR_PTR(current_uV));
+		return current_uV;
+	}
+
+	/*
+	 * If we're below the minimum voltage move up to the
+	 * minimum voltage, if we're above the maximum voltage
+	 * then move down to the maximum.
+	 */
+	target_min = current_uV;
+	target_max = current_uV;
+
+	if (current_uV < rdev->min_uv) {
+		target_min = rdev->min_uv;
+		target_max = rdev->min_uv;
+	}
+
+	if (current_uV > rdev->max_uv) {
+		target_min = rdev->max_uv;
+		target_max = rdev->max_uv;
+	}
+
+	if (target_min != current_uV || target_max != current_uV) {
+		rdev_info(rdev, "Bringing %duV into %d-%duV\n",
+			  current_uV, target_min, target_max);
+		ret = regulator_set_voltage_internal(rdev, target_min, target_max);
+		if (ret < 0) {
+			rdev_err(rdev,
+				"failed to apply %d-%duV constraint: %pe\n",
+				target_min, target_max, ERR_PTR(ret));
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 static int __regulator_register(struct regulator_dev *rdev, const char *name)
 {
 	int ret;
@@ -198,6 +254,10 @@ static int __regulator_register(struct regulator_dev *rdev, const char *name)
 	if (name)
 		rdev->name = xstrdup(name);
 
+	ret = regulator_init_voltage(rdev);
+	if (ret)
+		goto err;
+
 	if (rdev->boot_on || rdev->always_on) {
 		ret = regulator_resolve_supply(rdev);
 		if (ret < 0)
-- 
2.39.2



