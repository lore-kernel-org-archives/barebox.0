Delivery-date: Wed, 30 Nov 2022 18:16:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0Qhe-006PJF-FQ
	for lore@lore.pengutronix.de; Wed, 30 Nov 2022 18:16:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0Qhd-0008Dc-5Q
	for lore@pengutronix.de; Wed, 30 Nov 2022 18:16:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bpEC0vQR5igaWAMvo1q0DMl0gEuZSbH9qS99aREOf5c=; b=B/C80U715HT9b/rLTkajGn+WNB
	+6Eo4VMowROPjO9oPHa8i2gzZex0e9DdITt7P4w+y8dTl8HSwul2mKMacqP0phnrYwUONHsCos5qJ
	JOmB9pSvPWzs4N6Wm6nC/ih3BbgBGVwGooN9x7fgkLxz2Vpdgb4re9MvjfYN6M5eqr9ZNY6ZB5nml
	+lhCN7bszu12c7R1cG2tzy05/QN5axaPOduSobtBCgoKgt4KRd7tNTVAMEnP7rdrLGehSzr/eTCOg
	mg9soavLmGInLBJwlmZRwWFjYOa5FR8XDXh62iOI7tNZrUl2b7CTvAMUTKGAJbtq1ZkDzc4rQPSl/
	VTlvRr9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0Qfl-000t4I-HA; Wed, 30 Nov 2022 17:15:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0QfW-000sv9-RQ
	for barebox@lists.infradead.org; Wed, 30 Nov 2022 17:14:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p0QfV-0007iD-6E; Wed, 30 Nov 2022 18:14:45 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0QfT-001NPX-Nw; Wed, 30 Nov 2022 18:14:44 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0QfT-00CHoK-Ep; Wed, 30 Nov 2022 18:14:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Nov 2022 18:14:39 +0100
Message-Id: <20221130171439.2928344-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_091446_950800_D8FF55E2 
X-CRM114-Status: GOOD (  10.21  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2] regulator: rk808: fix misplaced DCDC_REG5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Driver was written to mimic existing stpmic1 regulator driver, which had
the implicit assumption of a 1:1 relationship between of_match_data and
regulator configuration with same indices.

Yet DCDC_REG5 was not at the same place it was in the rk_regulator_cfg
due to likely a copy-paste mistake, leading to possibly the wrong
regulators being controlled. Fix this.

Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
Suggested-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
move entry in rk809_reg, not rk809_reg_matches to keep same numbering as
enum rk809_reg_id.
---
 drivers/regulator/rk808-regulator.c | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 39eadbd3ebe5..f8bc31f354e2 100644
--- a/ drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -526,19 +526,6 @@ static struct rk_regulator_cfg rk809_reg[] = {
 		.enable_mask = ENABLE_MASK(RK817_ID_DCDC4),
 		.enable_val = ENABLE_MASK(RK817_ID_DCDC4),
 		.disable_val = DISABLE_VAL(RK817_ID_DCDC4),
-	}}, {{
-		/* .name = "DCDC_REG5", */
-		.supply_name = "vcc9",
-		.ops = &rk809_buck5_ops_range,
-		.n_voltages = RK809_BUCK5_SEL_CNT,
-		.linear_ranges = rk809_buck5_voltage_ranges,
-		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
-		.vsel_reg = RK809_BUCK5_CONFIG(0),
-		.vsel_mask = RK809_BUCK5_VSEL_MASK,
-		.enable_reg = RK817_POWER_EN_REG(3),
-		.enable_mask = ENABLE_MASK(1),
-		.enable_val = ENABLE_MASK(1),
-		.disable_val = DISABLE_VAL(1),
 	}},
 	RK817_DESC(/* "LDO_REG1", */ "vcc5", 600, 3400, 25,
 		   RK817_LDO_ON_VSEL_REG(0), RK817_LDO_VSEL_MASK,
@@ -576,6 +563,20 @@ static struct rk_regulator_cfg rk809_reg[] = {
 		   RK817_LDO_ON_VSEL_REG(8), RK817_LDO_VSEL_MASK,
 		   RK817_POWER_EN_REG(3), ENABLE_MASK(0),
 		   DISABLE_VAL(0), 400),
+	{{
+		/* .name = "DCDC_REG5", */
+		.supply_name = "vcc9",
+		.ops = &rk809_buck5_ops_range,
+		.n_voltages = RK809_BUCK5_SEL_CNT,
+		.linear_ranges = rk809_buck5_voltage_ranges,
+		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
+		.vsel_reg = RK809_BUCK5_CONFIG(0),
+		.vsel_mask = RK809_BUCK5_VSEL_MASK,
+		.enable_reg = RK817_POWER_EN_REG(3),
+		.enable_mask = ENABLE_MASK(1),
+		.enable_val = ENABLE_MASK(1),
+		.disable_val = DISABLE_VAL(1),
+	}},
 	RK817_DESC_SWITCH(/* "SWITCH_REG1", */ "vcc9",
 			  RK817_POWER_EN_REG(3), ENABLE_MASK(2), DISABLE_VAL(2)),
 	RK817_DESC_SWITCH(/* "SWITCH_REG2", */ "vcc8",
-- 
2.30.2



