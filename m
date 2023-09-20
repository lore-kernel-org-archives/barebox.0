Delivery-date: Wed, 20 Sep 2023 12:34:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXi-004Wnc-Rh
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 12:34:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiuXf-00058X-MK
	for lore@pengutronix.de; Wed, 20 Sep 2023 12:34:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MpF8dGnhQio1LdrsS3CZOu/OHBPZcjfbT/P3+Cx9GG8=; b=rAi8D/rKTHClDEqEtCUKKLpF62
	H8SvspiZwnNgVc5lBsYfWI+fD2y25oNt3htELQgm7Mw/7u1V9UZ2YYX+tRYBzezl9i3vFhAe5a9RO
	qkX0ntzuwzF332MEmtkpd8w4vjiDtNVwuYv2dyImrs2PZBGD/PKGrx9u09lKIuMek8rVC7+TIGcic
	WZYV46OrH02oa0mOSrI1DIXDFWhMKgRP8AY+STCabYXtMQcB4BR/a6c2LpKK0vN/NbxR/v9VHnOk3
	PUHCXz+GwbmVbZLc49y4PBzljRd/Ko0d2EvG3XXzYWMaCtOZxfIO3NMzZ2oipJY/a2MdREK8UHyDy
	arD4Gb6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWQ-002cyS-1X;
	Wed, 20 Sep 2023 10:33:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiuWN-002cwS-1C
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 10:33:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWE-0004UK-6J; Wed, 20 Sep 2023 12:33:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-007fJl-NN; Wed, 20 Sep 2023 12:33:17 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qiuWD-00BZyJ-Ef; Wed, 20 Sep 2023 12:33:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 20 Sep 2023 12:33:12 +0200
Message-Id: <20230920103316.2758383-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230920103316.2758383-1-s.hauer@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_033327_413389_16ECEDD0 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 07/11] regulator: stpmic1: add .supply_name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add .supply_name to the regulator descriptors, otherwise the supplies
are never enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/stpmic1_regulator.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index ef8cc7f145..1e8c1b23ac 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -185,6 +185,7 @@ static const struct regulator_ops stpmic1_switch_regul_ops = {
 	.enable_mask = LDO_ENABLE_MASK, \
 	.enable_val = 1, \
 	.disable_val = 0, \
+	.supply_name = #base, \
 }
 
 #define REG_LDO3(ids, base) { \
@@ -198,6 +199,7 @@ static const struct regulator_ops stpmic1_switch_regul_ops = {
 	.enable_mask = LDO_ENABLE_MASK, \
 	.enable_val = 1, \
 	.disable_val = 0, \
+	.supply_name = #base, \
 }
 
 #define REG_LDO4(ids, base) { \
@@ -208,6 +210,7 @@ static const struct regulator_ops stpmic1_switch_regul_ops = {
 	.enable_mask = LDO_ENABLE_MASK, \
 	.enable_val = 1, \
 	.disable_val = 0, \
+	.supply_name = #base, \
 }
 
 #define REG_BUCK(ids, base) { \
@@ -221,6 +224,7 @@ static const struct regulator_ops stpmic1_switch_regul_ops = {
 	.enable_mask = BUCK_ENABLE_MASK, \
 	.enable_val = 1, \
 	.disable_val = 0, \
+	.supply_name = #base, \
 }
 
 #define REG_VREF_DDR(ids, base) { \
@@ -231,6 +235,7 @@ static const struct regulator_ops stpmic1_switch_regul_ops = {
 	.enable_mask = BUCK_ENABLE_MASK, \
 	.enable_val = 1, \
 	.disable_val = 0, \
+	.supply_name = #base, \
 }
 
 #define REG_BOOST(ids, base) { \
@@ -241,6 +246,7 @@ static const struct regulator_ops stpmic1_switch_regul_ops = {
 	.enable_mask = BOOST_ENABLED, \
 	.enable_val = BOOST_ENABLED, \
 	.disable_val = 0, \
+	.supply_name = #base, \
 }
 
 #define REG_VBUS_OTG(ids, base) { \
@@ -251,6 +257,7 @@ static const struct regulator_ops stpmic1_switch_regul_ops = {
 	.enable_mask = USBSW_OTG_SWITCH_ENABLED, \
 	.enable_val = USBSW_OTG_SWITCH_ENABLED, \
 	.disable_val = 0, \
+	.supply_name = #base, \
 }
 
 #define REG_SW_OUT(ids, base) { \
@@ -261,6 +268,7 @@ static const struct regulator_ops stpmic1_switch_regul_ops = {
 	.enable_mask = SWIN_SWOUT_ENABLED, \
 	.enable_val = SWIN_SWOUT_ENABLED, \
 	.disable_val = 0, \
+	.supply_name = #base, \
 }
 
 static struct stpmic1_regulator_cfg stpmic1_regulator_cfgs[] = {
-- 
2.39.2



