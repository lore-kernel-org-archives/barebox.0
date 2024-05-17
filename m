Delivery-date: Fri, 17 May 2024 09:49:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sL4-0014Fk-2O
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 09:49:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7sL3-000861-Up
	for lore@pengutronix.de; Fri, 17 May 2024 09:49:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1O3/yGV+bAd7nVnwECuotMr00Q99A6MQNUgaNBh+CrQ=; b=GqnpcHmwfONkHqeuH+vPldlHBl
	cGUerp33bbcePHdzn0ww72t9E48iBdg3kEXd3b7J08/V1i5rAwo+i9zB7Vy7zxk1kSUXHw4zGuFhS
	R2HPCMlEApfuDr0ytQ6HtJmWwu5SGghQ/9yYqsFwdSqsH3hy+slTzaiNXChIrtpSyBNileDKbFAza
	53HTMthhZWukpNL+6vaROwvLUd4L7ilogRDMz9XP88cAvuUVhmijlFbmDVROAjtAzI8vOSQjVnCwE
	ogGr8VrQmzdQGRoZvXX7EBmmjOgmCc2tDpDJtNyZ8DCfWmJaQfVwae9/Bs0drdXXEk9ST7AOIJ3Lm
	3ugvaq2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKc-000000076x2-0Bx3;
	Fri, 17 May 2024 07:48:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKJ-000000076hX-1KNH
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:48:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-0007P3-K2; Fri, 17 May 2024 09:48:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-001q0d-51; Fri, 17 May 2024 09:48:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKH-003DkZ-0E;
	Fri, 17 May 2024 09:48:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:48:22 +0200
Message-Id: <20240517074824.767767-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240517074824.767767-1-a.fatoum@pengutronix.de>
References: <20240517074824.767767-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_004827_522934_91A70A04 
X-CRM114-Status: UNSURE (   9.32  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] regulator: of_regulator: remove unused allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We leak this allocation, but we don't actually need it, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/of_regulator.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 10f75a4f1c60..c037f85c439d 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -41,16 +41,10 @@ int of_regulator_match(struct device *dev, struct device_node *node,
 	unsigned int i;
 	const char *name;
 	struct device_node *child;
-	struct devm_of_regulator_matches *devm_matches;
 
 	if (!dev || !node)
 		return -EINVAL;
 
-	devm_matches = xzalloc(sizeof(struct devm_of_regulator_matches));
-
-	devm_matches->matches = matches;
-	devm_matches->num_matches = num_matches;
-
 	for (i = 0; i < num_matches; i++) {
 		struct of_regulator_match *match = &matches[i];
 		match->of_node = NULL;
-- 
2.39.2



