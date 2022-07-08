Delivery-date: Fri, 08 Jul 2022 08:18:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9hJO-00ABN1-DQ
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 08:18:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9hJQ-0004LP-26
	for lore@pengutronix.de; Fri, 08 Jul 2022 08:18:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eQEXOf5+whRunwg163jtwIDX7F7pEcbI6KjR3TTy+Ks=; b=OVQUVLpfv7j/ybdswOxzM/r8Or
	2gEUNyeEdP3G6H4Y/2lfS19ETHME5ccAg9Ag7974OEvcknQXkmMdOZEbEnWXtSVBAjpCjVN7k3X0M
	49M54xF0UV2E8RsfBpDTsDRAhIDt4ibzgz461JKK12fHjcin1+2E7ZCA91gkDHKI4lGh5Xjntn1ng
	Y8pH6S303TVy/wkBN2uU8u1Q287Fp/hcHuJcl6Ue9UUHGEGd4IH2eyRWlO9Yw9kiOlXAj+bOCxjFF
	0gBXqD1ICJZ8cymrnc4l/Pkf2Lr6hDyYhpspShMP3166hAE9KvBJPISUX36p5fx5SpCEGH4ep1ZIi
	p2JT+LrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9hI6-001xev-V4; Fri, 08 Jul 2022 06:16:39 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9hI2-001xc2-0d
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 06:16:35 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 17FEE60006;
	Fri,  8 Jul 2022 06:16:29 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  8 Jul 2022 08:15:40 +0200
Message-Id: <20220708061539.1193059-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_231634_244872_138C3AA3 
X-CRM114-Status: GOOD (  12.03  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] regulator: fixed: remove duplicate always-on handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Regulator core already handles always-on property by enabling always-on
regulators at registration time, so we can remove duplicate handling in
the fixed-regulator driver. To avoid regressions due to previously
unnoticed unbalanced regulator usage, maintain a positive use count
always like Linux does and additionally warn on violation attempt.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - prevent use count dipping below 1 due to unbalanced use.
    This should avoid regressions and still warn us if they occur
---
 drivers/regulator/core.c  |  9 +++++++--
 drivers/regulator/fixed.c | 10 ----------
 2 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index af8a0cb4fc3e..1fb344656f38 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -66,6 +66,7 @@ static int regulator_enable_internal(struct regulator_internal *ri)
 
 static int regulator_disable_internal(struct regulator_internal *ri)
 {
+	struct regulator_dev *rdev = ri->rdev;
 	int ret;
 
 	if (!ri->enable_count)
@@ -76,10 +77,14 @@ static int regulator_disable_internal(struct regulator_internal *ri)
 		return 0;
 	}
 
-	if (!ri->rdev->desc->ops->disable)
+	/* Crisis averted, be loud about the unbalanced regulator use */
+	if (WARN_ON(rdev->always_on))
+		return -EPERM;
+
+	if (!rdev->desc->ops->disable)
 		return -ENOSYS;
 
-	ret = ri->rdev->desc->ops->disable(ri->rdev);
+	ret = rdev->desc->ops->disable(rdev);
 	if (ret)
 		return ret;
 
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



