Delivery-date: Fri, 19 Jan 2024 17:27:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriO-007GjJ-0A
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriO-0003x7-KI
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nbjGi2d0Jy6r/ulGOgZjQooXD/YQlAMM53Kd4s+PXsk=; b=NLTaKt5LFEI2U0ut+0rCkdtsFl
	Gz72T8/ecRjzMfXpivlOh2vQXQNszQSVsoawq8tCTQWczoghBJw7ExFou74VTTy9wq5SRkCqSCw3w
	ZNf11Y75Ea7aNdglIw3FpenxXNDInZC0qJrv6N7bBDOlspwE+CkSrR90CiNa0SzKS7Q7iRWTb5fRY
	KP0dT+1+ZTAfFGIYwFMcQQDeq6AdwbeXh4pc6pUA02ArDjqiE8axJBKYQP783udB6H+dHNpb8H9F/
	Vowm8VzDok6O3fGj7SQrdJkCM87rw1VANxHscH8xKBWXl+UDoOhAWWX6Fz99wadPCZXuHC1bLziAj
	sQnwDlrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhM-0066kJ-1r;
	Fri, 19 Jan 2024 16:26:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066cH-1v
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0003Rb-Pw; Fri, 19 Jan 2024 17:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTa-Bz; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-0v;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:25:55 +0100
Message-Id: <20240119162610.1014870-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_723000_E6E4CA35 
X-CRM114-Status: GOOD (  17.37  )
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
Subject: [PATCH 04/19] pmdomain: associate devices with their power domain
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux, there is no public consumer API to enable or disable
a struct generic_pm_domain. Operations are instead performed on regular
struct device, each of which has a reference to a single attached
power domain.

Power domain consumer API in barebox was so far limited to automatically
attaching a single power domain and powering it on prior to function probe,
which is never detached and thus no further consumer API is needed.

To support more complex power domain setups, we adopt here the kernel API
of attaching power domains to devices to enable using struct device
as handles for additional power domain operations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/power.c | 26 +++++++++++++++++++++++++-
 include/driver.h     |  3 +++
 include/pm_domain.h  |  4 ++++
 3 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index e927d0f83ff0..4ff7b055c825 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -10,6 +10,14 @@
 
 static LIST_HEAD(gpd_list);
 
+static inline struct generic_pm_domain *dev_to_genpd(struct device *dev)
+{
+	if (IS_ERR_OR_NULL(dev->pm_domain))
+		return ERR_PTR(-EINVAL);
+
+	return dev->pm_domain;
+}
+
 /**
  * pm_genpd_init - Initialize a generic I/O PM domain object.
  * @genpd: PM domain object to initialize.
@@ -280,6 +288,17 @@ static int genpd_power_on(struct generic_pm_domain *genpd)
 	return 0;
 }
 
+static void genpd_add_device(struct generic_pm_domain *genpd, struct device *dev)
+{
+	dev->pm_domain = genpd;
+}
+
+static void genpd_remove_device(struct generic_pm_domain *genpd,
+			       struct device *dev)
+{
+	dev->pm_domain = NULL;
+}
+
 static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
 				 unsigned int index, bool power_on)
 {
@@ -306,8 +325,13 @@ static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
 
 	dev_dbg(dev, "adding to PM domain %s\n", pd ? pd->name : "dummy");
 
-	if (power_on)
+	genpd_add_device(pd, dev);
+
+	if (power_on) {
 		ret = genpd_power_on(pd);
+		if (ret < 0)
+			genpd_remove_device(pd, dev);
+	}
 
 	return ret ?: 1;
 }
diff --git a/include/driver.h b/include/driver.h
index 43d002f66dbe..7dfa565b8960 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -19,6 +19,7 @@
 
 struct filep;
 struct bus_type;
+struct generic_pm_domain;
 
 struct platform_device_id {
 	const char *name;
@@ -75,6 +76,8 @@ struct device {
 
 	struct device *parent;   /* our parent, NULL if not present */
 
+	struct generic_pm_domain *pm_domain;	/* attached power domain */
+
 	struct bus_type *bus;
 
 	/*! The parameters for this device. This is used to carry information
diff --git a/include/pm_domain.h b/include/pm_domain.h
index bf122460d0fe..59932ffee0b9 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -4,6 +4,7 @@
 #define _PM_DOMAIN_H
 
 #include <linux/list.h>
+#include <driver.h>
 #include <of.h>
 
 enum gpd_status {
@@ -93,6 +94,9 @@ of_genpd_add_provider_simple(struct device_node *np,
  */
 static inline int dev_pm_domain_attach(struct device *dev, bool power_on)
 {
+	if (dev->pm_domain)
+		return 0;
+
 	return genpd_dev_pm_attach(dev);
 }
 
-- 
2.39.2



