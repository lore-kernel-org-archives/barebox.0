Delivery-date: Thu, 29 Jan 2026 12:36:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQJe-006axm-2T
	for lore@lore.pengutronix.de;
	Thu, 29 Jan 2026 12:36:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQJd-00061c-Ko
	for lore@pengutronix.de; Thu, 29 Jan 2026 12:36:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rq5e1z43H91PxxhfeEhGrnY4YbGteb24Xk0KtHWdx+Q=; b=kmAyyLmT61FoNpvufNJzuG4PR/
	5lyULQslw6UBu0q7LR/P7c0CVIXObf3TM3L8u0finfKa6hyVNoCgV14RvEkYyGzmY40DyazdtaIVw
	01ntM2/TvkDphqQ2+6TYxxSxTeiV3MIkBdBu+BZbVccAyhPQVRr8VExIbgNX8nreWdOzB/kwZSkXh
	nynfV74uLYUsFV35v4dtxcafFY9tpWVY4V+jArdw9La9Nmy9YGxjFAhEPPT3kGftnTFL5nZM03vvT
	jWAuvQS4cnBafQ6DJXNO5mLOuJWDBOcWkG6HRU7tbPGyQ1LvrsNx8qmz07O6zRAwweYpwcLqVkOKl
	XUsg/c4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQJ3-000000003I0-1zL9;
	Thu, 29 Jan 2026 11:35:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQJ0-000000003H1-42WP
	for barebox@lists.infradead.org;
	Thu, 29 Jan 2026 11:35:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQIr-0005s2-Hm; Thu, 29 Jan 2026 12:35:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQIs-0034nq-01;
	Thu, 29 Jan 2026 12:35:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQIr-0000000Da9F-34xd;
	Thu, 29 Jan 2026 12:35:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Jan 2026 12:35:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260129-regulator-ramp-v1-2-6269bd55d432@pengutronix.de>
References: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
In-Reply-To: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769686513; l=3321;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=8E3CjRy65adty+LH5IqqUBWFzNWDFdVQNFQT5/3pX68=;
 b=2zTC+b/yPhenj4VvRXn5dF7IFKm0pRf9Ab+8beMcB8Ai3K94yjC4xZRBEUrlceMx5qXHgHJPs
 GDbhJlTFiYSBEwoZ686PJEC9uKuBBSKvaWtC8uMG7LdwzvJXYqC8TiK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_033523_034473_A2A77568 
X-CRM114-Status: GOOD (  14.83  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] regulator: fixed: handle startup-delay-us property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The "startup-delay-us" property of the fixed regulator has never been
handled by barebox. Handle it now.

The "startup-delay-us" property is specified as:

| startup time in microseconds

Then there's a regulator generic property "regulator-enable-ramp-delay"
which barebox handles, specified as:

| The time taken, in microseconds, for the supply rail to
| reach the target voltage, plus/minus whatever tolerance the board
| design requires. This property describes the total system ramp time
| required due to the combination of internal ramping of the regulator
| itself, and board design issues such as trace capacitance and load
| on the supply.

We just use the bigger of the two times as the time a regulator needs
to become stable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c  | 9 +++++++--
 drivers/regulator/fixed.c | 3 +++
 include/regulator.h       | 2 ++
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 8ca937e8bd..1f8d77dc96 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -297,6 +297,7 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
 {
 	const char *name;
 	int ret;
+	u32 val = 0;
 
 	if (!rdev || !node)
 		return -EINVAL;
@@ -313,12 +314,16 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
 
 	if (rdev->desc->off_on_delay)
 		rdev->off_on_delay = rdev->desc->off_on_delay;
+	if (rdev->desc->enable_time_us)
+		rdev->enable_time_us = rdev->desc->enable_time_us;
 
 	if (rdev->desc->fixed_uV && rdev->desc->n_voltages == 1)
 		rdev->min_uv = rdev->max_uv = rdev->desc->fixed_uV;
 
-	of_property_read_u32(node, "regulator-enable-ramp-delay",
-			&rdev->enable_time_us);
+	of_property_read_u32(node, "regulator-enable-ramp-delay", &val);
+	if (val > rdev->enable_time_us)
+		rdev->enable_time_us = val;
+
 	of_property_read_u32(node, "regulator-min-microvolt",
 			&rdev->min_uv);
 	of_property_read_u32(node, "regulator-max-microvolt",
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 0edb5ceb10..e00519c2fe 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -61,6 +61,9 @@ static int regulator_fixed_probe(struct device *dev)
 	if (!of_property_read_u32(np, "off-on-delay-us", &delay))
 		fix->rdesc.off_on_delay = delay;
 
+	if (!of_property_read_u32(np, "startup-delay-us", &delay))
+		fix->rdesc.enable_time_us = delay;
+
 	if (of_find_property(np, "vin-supply", NULL))
 		fix->rdesc.supply_name = "vin";
 
diff --git a/include/regulator.h b/include/regulator.h
index 09b4969c74..7ae69a7f54 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -63,6 +63,7 @@ struct regulator_bulk_data {
  * @volt_table: Voltage mapping table (if table based mapping)
  * @fixed_uV: Fixed voltage of rails.
  * @off_on_delay: guard time (in uS), before re-enabling a regulator
+ * @enable_time_us: Time taken for initial enable of regulator (in uS).
  */
 
 struct regulator_desc {
@@ -93,6 +94,7 @@ struct regulator_desc {
 	const unsigned int *volt_table;
 	int fixed_uV;
 	unsigned int off_on_delay;
+	unsigned int enable_time_us;
 };
 
 /**

-- 
2.47.3



