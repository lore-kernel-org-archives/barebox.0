Delivery-date: Fri, 19 Jan 2024 17:27:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriQ-007Gkg-1D
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriQ-0003z7-W9
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tu5VUW9cgGzLTLPoU6lsDAeN32VhrJCAhHI9ArOvzEg=; b=MZTwx9D8TQX5drLTJP4Rz32B/+
	uwjmxHtYmsXKW2hVgZqacJvBU2ykc7ulGR4HDPBs+ilVNhcVgo74alIX9HF2x8Y9geqcd4U36tbBc
	XDFqJkRjbPDByXFnzvwlZIEq/CD3cGzdkd8wUu2sfriQEjkY2VpngGp7v2NoNaGq0kMznPf7f/ZAq
	DiwN6m3yUjwkmshC1r8lWp7OVjrkl55hVYfhElwzS4CHfwF1CR5n6MYHHfObworgCT0J8m3lEW1LB
	lGQwgtqfi+WKOmBZsXebXRRqaVBgIjUGavECeeQAydu1zzfVjX+Rzpxxr2oPV0HolLdoEA7FcI6n6
	ns9S0i+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhK-0066iy-22;
	Fri, 19 Jan 2024 16:26:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066cK-1t
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0003Rf-Si; Fri, 19 Jan 2024 17:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTd-DK; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-14;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:25:56 +0100
Message-Id: <20240119162610.1014870-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_707380_4ADEEA4E 
X-CRM114-Status: GOOD (  11.80  )
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
Subject: [PATCH 05/19] pmdomain: push have_genpd_providers check into __genpd_dev_pm_attach
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

genpd_activate() makes power domains opt-in per platform by considering
power domain attachment a success until gepd_activate() is called the
first time. We currently do that in genpd_dev_pm_attach(), but a follow
up commit will introduce more callers for __genpd_dev_pm_attach, which
likewise should have the same behavior regarding genpd_activate().

Thus push the check into __genpd_dev_pm_attach().

No function change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/power.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index 4ff7b055c825..cfee5e793037 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -299,6 +299,13 @@ static void genpd_remove_device(struct generic_pm_domain *genpd,
 	dev->pm_domain = NULL;
 }
 
+static bool have_genpd_providers;
+
+void genpd_activate(void)
+{
+	have_genpd_providers = true;
+}
+
 static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
 				 unsigned int index, bool power_on)
 {
@@ -306,6 +313,9 @@ static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
 	struct generic_pm_domain *pd;
 	int ret;
 
+	if (!have_genpd_providers)
+		return 0;
+
 	ret = of_parse_phandle_with_args(np, "power-domains",
 				"#power-domain-cells", index, &pd_args);
 	if (ret < 0)
@@ -336,13 +346,6 @@ static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
 	return ret ?: 1;
 }
 
-static bool have_genpd_providers;
-
-void genpd_activate(void)
-{
-	have_genpd_providers = true;
-}
-
 /**
  * genpd_dev_pm_attach - Attach a device to its PM domain using DT.
  * @dev: Device to attach.
@@ -361,9 +364,6 @@ int genpd_dev_pm_attach(struct device *dev)
 	if (!dev->of_node)
 		return 0;
 
-	if (!have_genpd_providers)
-		return 0;
-
 	/*
 	 * Devices with multiple PM domains must be attached separately, as we
 	 * can only attach one PM domain per device.
-- 
2.39.2



