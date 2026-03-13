Delivery-date: Fri, 13 Mar 2026 14:34:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ey-000DQr-0Y
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:36 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eg-0000VV-Ox
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1e1EB4RzT28TMkqrVQMizwtN7qc9sqvSTvY0MSDqzw=; b=X1mL7keXHzlT8f
	nJcPP4RthQDbi6M7Ons4sEguruQolq5kS/t21v8rVmcBHgAojziC+gkfK/r49e9sl84uXKygrVmja
	YSzMjFd7VaX+3zTBNvPPHErLiuK0Ix5UKLknc6SW/IyquCG6rJWeVbw9Xa6U/VYXePBwb9ELWkH1F
	jxSg8Rk2dixyb8P87pYk441iR+gz9Ip/lzf6EZQfmb9pr43VeQl5KD7JcSXrOabmkXuxFFLz/3b2C
	1CcWH5PzTCrost1eiCd8uZU3eIWXigCO8e7TJGErSytWKkJfAu96V3J8QDQGbTrNL3jJxs+Zag6aW
	oOIW++yLrZGgRudbuDog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dS-00000000G3m-1tIM;
	Fri, 13 Mar 2026 13:33:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dA-00000000FZL-0CFP
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=F1e1EB4RzT28TMkqrVQMizwtN7qc9sqvSTvY0MSDqzw=; b=TZj6Mz9cn2Y51PgKyAy7UJei6O
	4+oBNroe+i4lPGjafzqO401offl8DU7zqHtMD1PwWBfuip1aRo1irKaJlBtmWwDFeYuu5qbBuDr/J
	MD4tYo2Z+9giYE/TI/bFXWatv65Grz9fyQByokDaiceaYxL6n8s1v8u+AcEI3mwDtgqoH/4AztT12
	vnuPQaapPvuXw2yq6hv06bPkWn2oevMnXzJ7GHTfopMzqmOpw32vpERvTHgY8o2K8CJgUyZ+z1flW
	m+u8cGWqm48ysJDm/ltvAKrxZ/pXhmSlZ1Latp7rHZ6gN4vZk0ocyZviEkE0KleQxgDjibxsJq5Xp
	v2aZfI4w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-0000000D9wL-39qS
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006tW-6S; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005UK-00;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-1tAL;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Mar 2026 14:25:33 +0100
Message-ID: <20260313132631.2257573-50-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_850547_501CCBDB 
X-CRM114-Status: GOOD (  13.16  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 49/58] regulator: fixed: handle startup-delay-us property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

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

(cherry picked from commit 531cdd2463c3038c59c18087d4ddee9e1f4feaf9)

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.barebox.org/20260129-regulator-ramp-v1-2-6269bd55d432@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c  | 10 ++++++++--
 drivers/regulator/fixed.c |  3 +++
 include/regulator.h       |  2 ++
 3 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 6e18bc8a2d32..ec2ca4b19e62 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -297,6 +297,7 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
 {
 	const char *name;
 	int ret;
+	u32 val = 0;
 
 	if (!rdev || !node)
 		return -EINVAL;
@@ -313,12 +314,17 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
 
 	if (rdev->desc->off_on_delay)
 		rdev->off_on_delay = rdev->desc->off_on_delay;
+	if (rdev->desc->enable_time_us)
+		rdev->enable_time_us = rdev->desc->enable_time_us;
 
 	if (rdev->desc->fixed_uV && rdev->desc->n_voltages == 1)
 		rdev->min_uv = rdev->max_uv = rdev->desc->fixed_uV;
 
-	of_property_read_u32(node, "regulator-enable-ramp-delay",
-			&rdev->enable_time_us);
+	/* might be set by the regulator implementation already. Use the bigger value */
+	of_property_read_u32(node, "regulator-enable-ramp-delay", &val);
+	if (val > rdev->enable_time_us)
+		rdev->enable_time_us = val;
+
 	of_property_read_u32(node, "regulator-min-microvolt",
 			&rdev->min_uv);
 	of_property_read_u32(node, "regulator-max-microvolt",
diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 0edb5ceb104b..e00519c2fed5 100644
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
index 0b46714fcfa2..61920763d58f 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -64,6 +64,7 @@ struct regulator_bulk_data {
  * @volt_table: Voltage mapping table (if table based mapping)
  * @fixed_uV: Fixed voltage of rails.
  * @off_on_delay: guard time (in uS), before re-enabling a regulator
+ * @enable_time_us: Time taken for initial enable of regulator (in uS).
  */
 
 struct regulator_desc {
@@ -94,6 +95,7 @@ struct regulator_desc {
 	const unsigned int *volt_table;
 	int fixed_uV;
 	unsigned int off_on_delay;
+	unsigned int enable_time_us;
 };
 
 /**
-- 
2.47.3



