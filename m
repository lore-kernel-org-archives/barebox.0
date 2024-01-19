Delivery-date: Fri, 19 Jan 2024 17:27:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriP-007GkK-2z
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriP-0003xy-Gf
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ibg5iun8MvHSScPBx6G0rx4mn+T4fKGluDaROf6zF8g=; b=HfYS2YM/wGDnHTyLgDr+1LNAYB
	ZT3j3WX5rkcW/+zdLUs7wSOef0AaT/C91mysgx87y66Ic+YBs1xUxC9ZOdUQMvHoljFlKTLDapYyj
	cbdEfvYau8DzU7wS2rX8lhQ/cZpSxxAgMkjACcJP4WiA0s/zg59mNs5S1z7Tx1NWfq7lAPRV8aao8
	pkXRdMcnLUs8WizL3ba++VyQxPOjK/BkJgr+1r33/ZxQ6uS4uqJ/Grf8/CRmla/uRCrkaPDAbRehC
	gUPdQjG+ae+5NBBTjbEHu5HyDkqFlyG2gEa0R5PP39L61jFmog3mFQCCDNsrupCBVuVHJORLRU79i
	tuvdIr0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhK-0066ih-02;
	Fri, 19 Jan 2024 16:26:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066cF-1l
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0003Ra-Nz; Fri, 19 Jan 2024 17:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTW-AX; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-0m;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:25:54 +0100
Message-Id: <20240119162610.1014870-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_606219_8E6DB78E 
X-CRM114-Status: GOOD (  11.86  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/19] pmdomain: power: drop unused parameters for internal functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't do latency measurements for power domain operations in barebox,
so the timed parameter to indicate whether time measurements should be
done or not is unused. We also don't need locking for the powerdomains,
so maintaining the depth for lockdep is also unnecessary.

Drop both unused function parameters as we are not likely to ever use
them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/power.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index 699af3e5a942..e927d0f83ff0 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -249,7 +249,7 @@ static struct generic_pm_domain *genpd_get_from_provider(
 	return genpd;
 }
 
-static int _genpd_power_on(struct generic_pm_domain *genpd, bool timed)
+static int _genpd_power_on(struct generic_pm_domain *genpd)
 {
 	if (!genpd->power_on)
 		return 0;
@@ -260,19 +260,18 @@ static int _genpd_power_on(struct generic_pm_domain *genpd, bool timed)
 /**
  * genpd_power_on - Restore power to a given PM domain and its masters.
  * @genpd: PM domain to power up.
- * @depth: nesting count for lockdep.
  *
  * Restore power to @genpd and all of its masters so that it is possible to
  * resume a device belonging to it.
  */
-static int genpd_power_on(struct generic_pm_domain *genpd, unsigned int depth)
+static int genpd_power_on(struct generic_pm_domain *genpd)
 {
 	int ret;
 
 	if (!genpd || genpd_status_on(genpd))
 		return 0;
 
-	ret = _genpd_power_on(genpd, true);
+	ret = _genpd_power_on(genpd);
 	if (ret)
 		return ret;
 
@@ -308,7 +307,7 @@ static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
 	dev_dbg(dev, "adding to PM domain %s\n", pd ? pd->name : "dummy");
 
 	if (power_on)
-		ret = genpd_power_on(pd, 0);
+		ret = genpd_power_on(pd);
 
 	return ret ?: 1;
 }
-- 
2.39.2



