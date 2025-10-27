Delivery-date: Mon, 27 Oct 2025 20:30:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDSux-00CR9o-2G
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 20:30:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDSux-0005SU-5I
	for lore@pengutronix.de; Mon, 27 Oct 2025 20:30:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OyfMA6IioEhTu6YgDIG1Zz7ylEeRwdUIgWCUwgqlHoM=; b=4q+h0RzLrtql86ibI4oTlzNGRE
	ZiGmcGbBUvkO0D7UAE0PmEZacdP8yOTQyxaHxBFlLa+a2/zXy2e80S0ZteXoiEPsLeggwL7inV5mM
	vZVkcFqN1+3Gw12mC09ZzfKB1BEchBVV4hAgtPwuq7i3rNyxPPJqFfZ6aJCQAK6ngzdL17ssKWMOG
	GQGRR9kE38xBimiTScbwNYOwJyYgwMXfoK2JA/9PrVPrUlfWPRBU2iGyoXvOcoI+O5BMQPy7nvT9e
	HCL5p6ZvsTQ7xBtmRCCQ7qsoWdNGw3tvYjhRfOw3RM/n+mkzQ3uACLrUNIbZbhVXz8hEgc7OeNmvz
	sAhjilVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSuW-0000000EfTf-139w;
	Mon, 27 Oct 2025 19:29:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSuT-0000000EfRm-2Q41
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 19:29:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDSuS-0005B5-2B; Mon, 27 Oct 2025 20:29:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 20:28:17 +0100
Message-ID: <20251027192938.2586566-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027192938.2586566-1-a.fatoum@barebox.org>
References: <20251027192938.2586566-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_122941_612434_1E4B6D87 
X-CRM114-Status: GOOD (  12.67  )
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
Subject: [PATCH v2 2/5] pmdomain: look up pmdomain even if not have_genpd_providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

have_genpd_providers is a pre-deep-probe artifact, where SoC support
would promise that a power domain driver will be registered.

In a deep probe system, we can just force the probe in
__genpd_dev_pm_attach.

Therefore, move the check for have_genpd_providers, until after the
lookup of power domain drivers.

This will be further refined in follow-up commits.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - add missing commit messages
---
 drivers/base/power.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index d60a00f5735e..0cdece210d94 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -371,9 +371,6 @@ static int __genpd_dev_pm_attach(struct device *dev,
 	struct generic_pm_domain *pd;
 	int ret;
 
-	if (!have_genpd_providers)
-		return 0;
-
 	ret = of_parse_phandle_with_args(dev->of_node, "power-domains",
 				"#power-domain-cells", index, &pd_args);
 	if (ret < 0)
@@ -384,11 +381,18 @@ static int __genpd_dev_pm_attach(struct device *dev,
 		ret = PTR_ERR(pd);
 		dev_dbg(dev, "%s() failed to find PM domain: %d\n",
 			__func__, ret);
+
+		if (ret == -ENOENT)
+			ret = -EPROBE_DEFER;
+
+		if (!have_genpd_providers && ret == -EPROBE_DEFER)
+			return 0;
+
 		/*
 		 * Assume that missing genpds are unresolved
 		 * dependency are report them as deferred
 		 */
-		return (ret == -ENOENT) ? -EPROBE_DEFER : ret;
+		return ret;
 	}
 
 	dev_dbg(dev, "adding to PM domain %s\n", pd ? pd->name : "dummy");
-- 
2.47.3



