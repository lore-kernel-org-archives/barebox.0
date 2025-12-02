Delivery-date: Tue, 02 Dec 2025 17:33:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQTJl-007Dz8-1e
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 17:33:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQTJk-0000rx-Vc
	for lore@pengutronix.de; Tue, 02 Dec 2025 17:33:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KjmiUTPZmP5sXCZvZn6HMZDfgvAA2qze3DQ5ulTjZic=; b=EFyUpPss1oJ7swcUU/sxyfHU+N
	Wjpx9RyOJmGSQsqH3836wikUGrtn3/He4Y9IU5En8zfXXY/VK+D7BI3aMchiI0CKT1NvkUaCmTwQQ
	pnw6QM9jlzWNuaQmgYD92bjahJn8Pz+bo6pPRZTNXNZfjUiOgUdydo0YS6wOftTjqcPf7dWcy/+NA
	Q0A8iY0ABu+BJmmKmqkJDr+/9me+UFcm45+DU9fVyciUFKsQcLe9A+2BbdzVqrMGEedXVzbKuSsQO
	RkuYXPiR+V9th4FBCGFlBmDsJBuZDibPpRw+2me9wGVT7fH11x3QrRjAWE9RTgTcjmPmraZwBCYeU
	34Q9t7Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQTJE-00000005clA-1kfW;
	Tue, 02 Dec 2025 16:33:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQTJC-00000005ckc-01x1
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 16:32:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQTJ8-0000mg-Dt; Tue, 02 Dec 2025 17:32:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQTJ8-003dmP-0n;
	Tue, 02 Dec 2025 17:32:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQTJ8-00000006WU7-0dSf;
	Tue, 02 Dec 2025 17:32:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Dec 2025 17:32:52 +0100
Message-ID: <20251202163253.1554775-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_083258_044329_73793D04 
X-CRM114-Status: GOOD (  10.18  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! pmdomain: add Rockchip power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pmdomain: rockchip: skip skipping message when nothing skipped

if ngpd == 0, there are no subdomains and there was nothing skipped, so
suppress the message in that case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pmdomain/rockchip/pm-domains.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index debe36a175c4..a30ff8fb22af 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -864,8 +864,9 @@ static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
 	 * TODO: implement pm_genpd_add_subdomain() support for barebox.
 	 * Until we need to, just let the user know about it
 	 */
-	dev_info(pmu->dev, "%s: skipping %u nested power domains\n",
-		 parent->name, ngpd);
+	if (ngpd)
+		dev_info(pmu->dev, "%s: skipping %u nested power domains\n",
+			 parent->name, ngpd);
 
 	return 0;
 }
-- 
2.47.3



