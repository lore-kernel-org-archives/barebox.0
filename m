Delivery-date: Fri, 19 Jan 2024 17:27:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriR-007GlE-01
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriR-0003zc-LF
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JWM+lU7QXevhxNrkRwk8M25YdbG77PJgEgN4DkPM4f8=; b=3Cn5fjseEPOC2wbwrpO+cdNmQA
	PEKpUugfRG3HzwRTBYh4b84wLpUjQxERmna4SqKAENd24X1dJaCuWWPsruEZ8urRUXOZqVMaqIcXb
	JwxKh6M3wo4ZMwIdfmaAtil0dC716HXQ8DOStVGyorjgwLOSsYtXVliLYk1tMn05MBz5d863u94Au
	YfVSB3q3A/49cB0z9naXjUkwJtzmzUYOsESmXndk6WKWIoyAuazxld18SVGxeA1DkagdBAktAslQP
	aDYO2JxNAsMj2qzLBBtCKm3ajoOO+WqA0OaCjA0AJAUSTN9V0q6gXU8XMBi9WyJrmhL+ZUsjxSNJu
	VHXRycTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhJ-0066iN-1D;
	Fri, 19 Jan 2024 16:26:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066cM-1x
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0003Ri-U3; Fri, 19 Jan 2024 17:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTg-Ev; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-1D;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:25:57 +0100
Message-Id: <20240119162610.1014870-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_718990_D2D242A6 
X-CRM114-Status: GOOD (  12.53  )
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
Subject: [PATCH 06/19] pmdomain: drop superfluous parameter to __genpd_dev_pm_attach
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Linux prototype of __genpd_dev_pm_attach has the base device as
second argument and retrieves the of_node pointer via the device in the
first argument. As the function isn't exported, we don't have to follow
the Linux API, but we also don't need to keep arguments we don't use,
thus drop the device pointer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/power.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index cfee5e793037..daec443a7000 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -306,7 +306,7 @@ void genpd_activate(void)
 	have_genpd_providers = true;
 }
 
-static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
+static int __genpd_dev_pm_attach(struct device *dev,
 				 unsigned int index, bool power_on)
 {
 	struct of_phandle_args pd_args;
@@ -316,7 +316,7 @@ static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
 	if (!have_genpd_providers)
 		return 0;
 
-	ret = of_parse_phandle_with_args(np, "power-domains",
+	ret = of_parse_phandle_with_args(dev->of_node, "power-domains",
 				"#power-domain-cells", index, &pd_args);
 	if (ret < 0)
 		return ret;
@@ -372,7 +372,7 @@ int genpd_dev_pm_attach(struct device *dev)
 				       "#power-domain-cells") != 1)
 		return 0;
 
-	return __genpd_dev_pm_attach(dev, dev->of_node, 0, true);
+	return __genpd_dev_pm_attach(dev, 0, true);
 }
 EXPORT_SYMBOL_GPL(genpd_dev_pm_attach);
 
-- 
2.39.2



