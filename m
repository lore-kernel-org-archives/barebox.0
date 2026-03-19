Delivery-date: Thu, 19 Mar 2026 08:02:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37PH-002XrE-1d
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 08:02:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37PG-0006B4-Sw
	for lore@pengutronix.de; Thu, 19 Mar 2026 08:02:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BFagRYh5ExaPcK92A8xodhzAhrXYtPwfNfaC1nsE6Zg=; b=SA8tq9p/hdT1Q63/SnBbwg0lfy
	ke5wTVnRcmIuAAtHKtk7b41aGYy4mC13fzR5K50UkWPIYpfoL+7vzefoHheSvXgtOGezlZt6TQNY1
	7Fqc7sGho8P+kDHRtPEZDVA8c+8eQ94DQzm8NCJFMQz/jbgnmTjBHTqThNTOaUb1701uO9Bhf4PRJ
	EcLVTcyvm/Lfox1U2Ml4xfvCBNU6cCagokcGNyNo6cq720RsDy6ziMHdJYBMrKau8Cf18brYzzQXy
	Hszk/BFf53i22E+TSUOd96WPNlQRu1+FFVwY+y7Sb4jDIEG3+k6lpvYOtKi6DgGKYMF882CkFULw/
	fOyinm+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37Oi-0000000A5u3-26Hj;
	Thu, 19 Mar 2026 07:02:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37Oe-0000000A5sn-2YSv
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 07:02:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37Od-0005oP-4R; Thu, 19 Mar 2026 08:02:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37Oc-0011yd-33;
	Thu, 19 Mar 2026 08:02:18 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37Oc-000000087UL-3RmI;
	Thu, 19 Mar 2026 08:02:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Mar 2026 08:02:16 +0100
Message-ID: <20260319070216.1935180-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_000220_645446_57F445AB 
X-CRM114-Status: GOOD (  12.90  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] pmdomain: rockchip: inform about missing subdomain support when in use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On RK3588 the Rockchip power domain driver comes up with several
messages informing about missing subdomain support. Make this less
verbose by printing these messages only when power domains with
subdomains are actually used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pmdomain/rockchip/pm-domains.c | 31 +++++++++++++++++---------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 4916515f27..1e735dfe34 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -644,6 +644,23 @@ static int rockchip_pd_regulator_enable(struct rockchip_pm_domain *pd)
 	return regulator_enable(pd->supply);
 }
 
+static void rockchip_pm_power_on_subdomain(struct rockchip_pm_domain *pd)
+{
+	struct device_node *np;
+	int ngpd = 0;
+
+	for_each_child_of_node(pd->node, np)
+		ngpd++;
+
+	/*
+	 * TODO: implement pm_genpd_add_subdomain() support for barebox.
+	 * Until we need to, just let the user know about it
+	 */
+	if (ngpd)
+		dev_info(pd->pmu->dev, "%s: skipping %u nested power domains\n",
+			 pd->node->name, ngpd);
+}
+
 static int rockchip_pd_power_on(struct generic_pm_domain *domain)
 {
 	struct rockchip_pm_domain *pd = to_rockchip_pd(domain);
@@ -661,6 +678,8 @@ static int rockchip_pd_power_on(struct generic_pm_domain *domain)
 	if (ret)
 		rockchip_pd_regulator_disable(pd);
 
+	rockchip_pm_power_on_subdomain(pd);
+
 	return ret;
 }
 
@@ -873,19 +892,11 @@ static void rockchip_configure_pd_cnt(struct rockchip_pmu *pmu,
 static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
 				     struct device_node *parent)
 {
-	struct device_node *np;
-	int ngpd = 0;
-
-	for_each_child_of_node(parent, np)
-		ngpd++;
-
 	/*
 	 * TODO: implement pm_genpd_add_subdomain() support for barebox.
-	 * Until we need to, just let the user know about it
+	 * Until we need to, just let the user know about it when power domains
+	 * with subdomains are used.
 	 */
-	if (ngpd)
-		dev_info(pmu->dev, "%s: skipping %u nested power domains\n",
-			 parent->name, ngpd);
 
 	return 0;
 }
-- 
2.47.3



