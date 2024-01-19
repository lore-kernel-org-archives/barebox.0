Delivery-date: Fri, 19 Jan 2024 17:27:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriS-007Glu-2l
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriT-00040d-EW
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sQJrPmtYOn4UNeeK0EfyHIxyTf/T+M/Uyo3s1NsdwMI=; b=gzUroXJ67oz56HyhXB30euskQt
	3ZC/iPIwog+wz/xAEIu+gOgtlaS9uWdett+Ed/LNs2OIWneFBKvjtQM/9XhCFZrKpWc5wpJUcEneM
	NnHhgHmRFMhHDNTxEhADEVrxGyPX23r6bXWchJDglQtlSJwhxEzApruvme9scJrDurByxAGrxtNVT
	hCkc1fD6tk279tFdOYiPJRngAL3kZCQxxDrQvwMo6i4nVRY4VCNfbLMKvr6hri0U8PiqM0pKidZ+w
	a6KSmzPbFWv3WGwOp5KInvkqX9sQEHTiWsnvf3DI3ZoRkewcbyeA+5udriac2TSPN5U+1Kd00ndeO
	+wt+P//Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhN-0066ka-0f;
	Fri, 19 Jan 2024 16:26:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066c8-1y
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0003RY-MZ; Fri, 19 Jan 2024 17:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTU-9Q; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-0c;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:25:53 +0100
Message-Id: <20240119162610.1014870-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_754363_2120B1BF 
X-CRM114-Status: GOOD (  13.57  )
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
Subject: [PATCH 02/19] pmdomain: use single implementation for dev_pm_domain_attach
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

genpd_dev_pm_attach already has a stub definition when
!CONFIG_PM_GENERIC_DOMAINS, so we can just call it unconditionally
from dev_pm_domain_attach.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/pm_domain.h | 53 ++++++++++++++++++++-------------------------
 1 file changed, 24 insertions(+), 29 deletions(-)

diff --git a/include/pm_domain.h b/include/pm_domain.h
index ac0ec477b6b1..bf122460d0fe 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -30,30 +30,6 @@ void genpd_activate(void);
 
 int genpd_dev_pm_attach(struct device *dev);
 
-/**
- * dev_pm_domain_attach - Attach a device to its PM domain.
- * @dev: Device to attach.
- * @power_on: Used to indicate whether we should power on the device.
- *
- * The @dev may only be attached to a single PM domain. By iterating through
- * the available alternatives we try to find a valid PM domain for the device.
- * As attachment succeeds, the ->detach() callback in the struct dev_pm_domain
- * should be assigned by the corresponding attach function.
- *
- * This function should typically be invoked from subsystem level code during
- * the probe phase. Especially for those that holds devices which requires
- * power management through PM domains.
- *
- * Callers must ensure proper synchronization of this function with power
- * management callbacks.
- *
- * Returns 0 on successfully attached PM domain or negative error code.
- */
-static inline int dev_pm_domain_attach(struct device *dev, bool power_on)
-{
-	return genpd_dev_pm_attach(dev);
-}
-
 int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off);
 
 int of_genpd_add_provider_simple(struct device_node *np,
@@ -87,11 +63,6 @@ static inline int genpd_dev_pm_attach(struct device *dev)
 	return 0;
 }
 
-static inline int dev_pm_domain_attach(struct device *dev, bool power_on)
-{
-	return 0;
-}
-
 static inline int
 of_genpd_add_provider_simple(struct device_node *np,
 			     struct generic_pm_domain *genpd)
@@ -101,4 +72,28 @@ of_genpd_add_provider_simple(struct device_node *np,
 
 #endif
 
+/**
+ * dev_pm_domain_attach - Attach a device to its PM domain.
+ * @dev: Device to attach.
+ * @power_on: Used to indicate whether we should power on the device.
+ *
+ * The @dev may only be attached to a single PM domain. By iterating through
+ * the available alternatives we try to find a valid PM domain for the device.
+ * As attachment succeeds, the ->detach() callback in the struct dev_pm_domain
+ * should be assigned by the corresponding attach function.
+ *
+ * This function should typically be invoked from subsystem level code during
+ * the probe phase. Especially for those that holds devices which requires
+ * power management through PM domains.
+ *
+ * Callers must ensure proper synchronization of this function with power
+ * management callbacks.
+ *
+ * Returns 0 on successfully attached PM domain or negative error code.
+ */
+static inline int dev_pm_domain_attach(struct device *dev, bool power_on)
+{
+	return genpd_dev_pm_attach(dev);
+}
+
 #endif
-- 
2.39.2



