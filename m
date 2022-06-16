Delivery-date: Thu, 16 Jun 2022 16:09:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1qBm-003zek-47
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 16:09:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1qBm-0003K4-25
	for lore@pengutronix.de; Thu, 16 Jun 2022 16:09:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CYGQZCwZseh4YFwNThIhbix7+8kqWtrMPTGvpgaAHbA=; b=d54kudzHZ2ugDQO8/3Zr0jJvEp
	uOxkD/nlZ9QorW5zwG69RCCq3EyH9EV/DVKcPUni+KtLs/CCD0V0BkBjB+tvwZRU7/KYOJG9i3O12
	69MVpUFYE7xYcVgBslAzHYidzBvfhm4TeJHopm34iffpIIuIvYBCbqaGlVO7eLzkFGvT0I1tee+0V
	alVimaoDcg2APLH9gzQ3LexmS6/hEMSTFpP1e/dZWeX7VNuAUg5TQ1Gn5uVHeQwKL1zujCVGskCD6
	qJ3fHtFNvvyXDKoJZmeNknaGY7oe8eUC+C6jDuXrrOtTyuSZwAauAg+gslY62PISwwSGGWPQoBBQM
	wBXK1MQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1qAR-002jKJ-IU; Thu, 16 Jun 2022 14:08:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1q9s-002jA3-TG
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 14:07:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q9r-00034C-NG
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:07:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q9p-000t4f-Ke
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:07:39 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1o1q9q-009cr4-6E
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 16:07:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 16:07:36 +0200
Message-Id: <20220616140737.2294226-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_070740_989139_1FB226BE 
X-CRM114-Status: GOOD (  11.17  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] regulator: fixed: use local device_node reference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Just a cosmetic commit, no functional changes. Use a local variable for
the device_node instead of dereference the pointer multiple times.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/regulator/fixed.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index f068fded62..9c660d5781 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -50,6 +50,7 @@ const static struct regulator_ops fixed_ops = {
 
 static int regulator_fixed_probe(struct device_d *dev)
 {
+	struct device_node *np = dev->device_node;
 	struct regulator_fixed *fix;
 	int ret;
 
@@ -59,7 +60,7 @@ static int regulator_fixed_probe(struct device_d *dev)
 	fix = xzalloc(sizeof(*fix));
 	fix->gpio = -EINVAL;
 
-	if (of_get_property(dev->device_node, "gpio", NULL)) {
+	if (of_get_property(np, "gpio", NULL)) {
 		fix->gpio = gpiod_get(dev, NULL, GPIOD_ASIS);
 		if (fix->gpio < 0) {
 			ret = fix->gpio;
@@ -71,13 +72,13 @@ static int regulator_fixed_probe(struct device_d *dev)
 	fix->rdev.desc = &fix->rdesc;
 	fix->rdev.dev = dev;
 
-	if (of_find_property(dev->device_node, "regulator-always-on", NULL) ||
-	    of_find_property(dev->device_node, "regulator-boot-on", NULL)) {
+	if (of_find_property(np, "regulator-always-on", NULL) ||
+	    of_find_property(np, "regulator-boot-on", NULL)) {
 		fix->always_on = 1;
 		regulator_fixed_enable(&fix->rdev);
 	}
 
-	ret = of_regulator_register(&fix->rdev, dev->device_node);
+	ret = of_regulator_register(&fix->rdev, np);
 	if (ret)
 		return ret;
 
-- 
2.30.2



