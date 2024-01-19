Delivery-date: Fri, 19 Jan 2024 17:27:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriP-007Gjv-1Z
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriQ-0003yO-3E
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S5z8XIX6RZhzBiLzmYggoLDco3NtS5HpC2CSGEyXuRo=; b=BCYFsXiA6JHtgfGUwI+Q4iKSoL
	EK6bTUd5ZUwETJtroo0vnhXBnnX7O9nhawjZH0f1NEWINVFqaUW/3w18pjP4f2Fi40G4cyoV6qN49
	mBvUwF0jC3uInfR3QXAAow21/j7niwyYDlAGWv6LUYglrWqX0hvaB46VUHdWbT+1lzZOeByMcmaou
	0GloIuttCTWe0HIQ1FfqrjCnokDrZegw3tPCPW0e0KzJ9t3xR0yFjDkE97YCQolhNpV+5geEEcX+8
	BZbu+1Po+JN9/t7DLlhg0IK5RNQY+ABP24QpgIh+Egjgwy2iISJNaoL3qrq3R6F/FBfjAZpBKoXG2
	1DqXaCXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhM-0066jZ-03;
	Fri, 19 Jan 2024 16:26:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066cO-1x
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh9-0003Rv-0a; Fri, 19 Jan 2024 17:26:15 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTm-Hl; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-1V;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:25:59 +0100
Message-Id: <20240119162610.1014870-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_731283_0C9BFFBE 
X-CRM114-Status: GOOD (  15.07  )
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
Subject: [PATCH 08/19] pmdomain: add support for enabling power domains later on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When a single power domain is specified platform driver probe takes care
to enable the power domain. When there are multiple power domains
however, each Linux driver must itself enable power domains in the
correct sequence.

In Linux, this is handled by runtime PM. We don't have that in barebox,
so we add the enable function with a _genpd suffix to alert users to
this fact.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/power.c | 11 +++++++++++
 include/pm_domain.h  |  8 +++++++-
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index 98164431aaeb..c4318fa1dfd1 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -289,6 +289,17 @@ static int genpd_power_on(struct generic_pm_domain *genpd)
 	return 0;
 }
 
+int pm_runtime_resume_and_get_genpd(struct device *dev)
+{
+	struct generic_pm_domain *genpd;
+
+	genpd = dev_to_genpd(dev);
+	if (IS_ERR(genpd))
+		return PTR_ERR(genpd);
+
+	return genpd_power_on(genpd);
+}
+
 static void genpd_add_device(struct generic_pm_domain *genpd, struct device *dev)
 {
 	dev->pm_domain = genpd;
diff --git a/include/pm_domain.h b/include/pm_domain.h
index b02af0d46de0..f242a05b4934 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -30,12 +30,13 @@ typedef struct generic_pm_domain *(*genpd_xlate_t)(struct of_phandle_args *args,
 void genpd_activate(void);
 
 int genpd_dev_pm_attach(struct device *dev);
-
 struct device *genpd_dev_pm_attach_by_id(struct device *dev,
 					 unsigned int index);
 struct device *genpd_dev_pm_attach_by_name(struct device *dev,
 					   const char *name);
 
+int pm_runtime_resume_and_get_genpd(struct device *dev);
+
 int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off);
 
 int of_genpd_add_provider_simple(struct device_node *np,
@@ -81,6 +82,11 @@ static inline struct device *genpd_dev_pm_attach_by_name(struct device *dev,
 	return NULL;
 }
 
+static inline int pm_runtime_resume_and_get_genpd(struct device *dev)
+{
+	return 0;
+}
+
 static inline int
 of_genpd_add_provider_simple(struct device_node *np,
 			     struct generic_pm_domain *genpd)
-- 
2.39.2



