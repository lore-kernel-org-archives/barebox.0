Delivery-date: Mon, 27 Oct 2025 20:30:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDSuv-00CR8k-36
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 20:30:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDSuu-0005Q7-M3
	for lore@pengutronix.de; Mon, 27 Oct 2025 20:30:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6nDEypNIM7Xck0CDehFqKbqa1F4kZtP8/F3L2CFZeHc=; b=Dz+rMLKh/wyjkPPDPrQzipteJh
	nFk4bcGzn+xoYCLSG/XVxmgNcAngQgYAWtXS/27pmhgSC8PKYE78T1LCx7IXb1qQDnW+nNPi6pvDQ
	DsaXl3WZCIoeUrzwCNqrhAZCYmvwIs2wcpmEygDhx2HJzbPfNsp9bebq9kKr6P3CykckmJfGznVRN
	qZQUK0uzEoZiwDlUr037S6KRo75vT5LRfC+mqB9Vx/I6vslrqoyuWihTN/l6qSwCm28pMSixIMZ4t
	Oo20DKTunw2MTzK/hYGzZsZnaiMORXRai+dSM3ZIiueMkjA2HtHTYr4x7SxJsZstgx/WAbnQsmzH4
	VxAFU7Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSuW-0000000EfUF-3vAF;
	Mon, 27 Oct 2025 19:29:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSuU-0000000EfRo-19yO
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 19:29:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDSuS-0005B5-Pd; Mon, 27 Oct 2025 20:29:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 20:28:19 +0100
Message-ID: <20251027192938.2586566-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027192938.2586566-1-a.fatoum@barebox.org>
References: <20251027192938.2586566-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_122942_310651_167E26C4 
X-CRM114-Status: GOOD (  11.61  )
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
Subject: [PATCH v2 4/5] pmdomain: allow callback for when devices are attached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will be needed for the incoming Rockchip pmdomain drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - no change
---
 drivers/base/power.c | 10 +++++++++-
 include/pm_domain.h  |  3 +++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index c291f8657cbb..05fb096cf64c 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -331,14 +331,22 @@ int pm_runtime_resume_and_get_genpd(struct device *dev)
 	return genpd_power_on(genpd);
 }
 
-static void genpd_add_device(struct generic_pm_domain *genpd, struct device *dev)
+static int genpd_add_device(struct generic_pm_domain *genpd, struct device *dev)
 {
 	dev->pm_domain = genpd;
+
+	if (genpd->attach_dev)
+		return genpd->attach_dev(genpd, dev);
+
+	return 0;
 }
 
 static void genpd_remove_device(struct generic_pm_domain *genpd,
 			       struct device *dev)
 {
+	if (genpd->detach_dev)
+		genpd->detach_dev(genpd, dev);
+
 	dev->pm_domain = NULL;
 }
 
diff --git a/include/pm_domain.h b/include/pm_domain.h
index 3678deb9a76c..13dc926448c8 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -20,6 +20,9 @@ struct generic_pm_domain {
 
 	int (*power_off)(struct generic_pm_domain *domain);
 	int (*power_on)(struct generic_pm_domain *domain);
+
+	int (*attach_dev)(struct generic_pm_domain *genpd, struct device *dev);
+	void (*detach_dev)(struct generic_pm_domain *genpd, struct device *dev);
 };
 
 typedef struct generic_pm_domain *(*genpd_xlate_t)(struct of_phandle_args *args,
-- 
2.47.3



