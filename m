Delivery-date: Fri, 08 Jul 2022 07:55:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gxb-00AA2F-UM
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 07:55:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9gxd-000170-Pf
	for lore@pengutronix.de; Fri, 08 Jul 2022 07:55:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=70XuqzyOGrXbI/9BJeJghkQkHVWnad2NN7AUzayWxAQ=; b=Xd00UAN2pVIRcJjp+qujU35xoU
	D7aeEWLGlepHdDDJ0Vpuj/g8aohf7UlDIJwzPdtwkqSuZiWo/daTdf2UdPVu6wmkLJ6+mybNOiKJX
	h7RajqR9gSZQTAzxq+4jxhgrLc6g6DU3Ka8LyQdAzEW1IXrnrqzEwPNv2Yoprfp0cIkXU0T/O8N13
	Zr0mhgTTWeo22O6EXrOUBDiPCBCePwc7PguuLbz1TmxJCWwGg7GkJjHbwCyDLh/9iXTvUxt5Afm/R
	a04eVtpJqzgJtx/xtsX8esacDXIfuP/vPElJAuFZ0SAKcAScWFT1Pcpnc0M9drtpmJan9bkJjCVKY
	9NCG6qJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gwS-001sGS-Un; Fri, 08 Jul 2022 05:54:17 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gwM-001sDk-4t
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 05:54:11 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 212FF60005;
	Fri,  8 Jul 2022 05:54:03 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  8 Jul 2022 07:53:59 +0200
Message-Id: <20220708055359.1176212-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_225410_383988_109EF5B9 
X-CRM114-Status: UNSURE (   8.61  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] regulator: fixed: remove duplicate always-on handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Regulator core already handles always-on property, so remove handling in
fixed-regulator driver. For this to have no functional change, all
regulator uses must be balanced as regulator code implements always-on
by initializing use count to baseline of 1, while fixed-regulator
prevents disabling altogether. As mismatched regulator enable/disable
is a bug in need of fixing anyway, this is tolerated.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/regulator/fixed.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index c5f97d78df40..ec64f39b86c7 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -15,7 +15,6 @@
 
 struct regulator_fixed {
 	int gpio;
-	int always_on;
 	struct regulator_dev rdev;
 	struct regulator_desc rdesc;
 };
@@ -34,9 +33,6 @@ static int regulator_fixed_disable(struct regulator_dev *rdev)
 {
 	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
 
-	if (fix->always_on)
-		return 0;
-
 	if (!gpio_is_valid(fix->gpio))
 		return 0;
 
@@ -76,12 +72,6 @@ static int regulator_fixed_probe(struct device_d *dev)
 	if (!of_property_read_u32(np, "off-on-delay-us", &delay))
 		fix->rdesc.off_on_delay = delay;
 
-	if (of_find_property(np, "regulator-always-on", NULL) ||
-	    of_find_property(np, "regulator-boot-on", NULL)) {
-		fix->always_on = 1;
-		regulator_fixed_enable(&fix->rdev);
-	}
-
 	ret = of_regulator_register(&fix->rdev, np);
 	if (ret)
 		goto err;
-- 
2.34.1



