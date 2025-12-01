Delivery-date: Mon, 01 Dec 2025 14:39:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ47S-006pZw-39
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 14:39:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ47S-0004Eg-An
	for lore@pengutronix.de; Mon, 01 Dec 2025 14:39:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kYgazKBRhoDvtPo+fQq/le1SZCC+zA48vCOgPpq3Tig=; b=SfyiV8h2A7trOr90cmQM8LeXO8
	F1Fz5uSxPLhh8yuym0h8TllTHbYc799VTM0ZLYmwcqeRj6/G3DG1vR9gLYOCmKAk7aSfKKeKrRST1
	vOpJ3viDOT7oQ0bbhIM3Mn26JE6N1e/zg6fNy/XtJaLczbtLAUghK6Qi86uXVlowdbAFIrN6SRds4
	yH6uWHjiNfhwhh6BflbXbv+RGlOt3tg7QhZZc6TiMeLAlRP+e35rvFB3HYWuDu40cIX4t9NZrhaGQ
	DWU2fZVS6B2pIR7QftfxdQf5syHB05zwbqvwCsQ/PL6jDZoW7J33gE3QsIsTin5oqIaZfVDtiVErj
	bkQr2qtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ46x-000000042Kh-1bbV;
	Mon, 01 Dec 2025 13:38:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ46u-000000042KF-1hPa
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 13:38:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQ46s-0004AC-58; Mon, 01 Dec 2025 14:38:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQ46r-003S6r-37;
	Mon, 01 Dec 2025 14:38:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQ46r-0000000Dryw-3ds7;
	Mon, 01 Dec 2025 14:38:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Dec 2025 14:37:47 +0100
Message-ID: <20251201133832.3303902-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_053836_464046_E9254F8A 
X-CRM114-Status: GOOD (  13.35  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] pmdomain: fix NULL pointer derference with dummy power domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the addition of commit 4aca68990d04 ("drivers: power: ignore power
domains with barebox,allow-dummy"), it's possible for genpd to be NULL
when there is no driver and the device tree node has barebox,allow-dummy
in it.

Allow for this possibility in genpd_add_device and genpd_remove_device
as well.

Fixes: 44c6bedbd439 ("pmdomain: allow callback for when devices are attached")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Issue is in master, but has not yet hit a release.
Needed also on next to fix CI breakage as the issue became visible only
after in-tree boards started using barebox,allow-dummy.
---
 drivers/base/power.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index 668b835df3e6..c71389422a53 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -335,7 +335,7 @@ static int genpd_add_device(struct generic_pm_domain *genpd, struct device *dev)
 {
 	dev->pm_domain = genpd;
 
-	if (genpd->attach_dev)
+	if (genpd && genpd->attach_dev)
 		return genpd->attach_dev(genpd, dev);
 
 	return 0;
@@ -344,7 +344,7 @@ static int genpd_add_device(struct generic_pm_domain *genpd, struct device *dev)
 static void genpd_remove_device(struct generic_pm_domain *genpd,
 			       struct device *dev)
 {
-	if (genpd->detach_dev)
+	if (genpd && genpd->detach_dev)
 		genpd->detach_dev(genpd, dev);
 
 	dev->pm_domain = NULL;
-- 
2.47.3



