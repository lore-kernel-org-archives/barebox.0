Delivery-date: Tue, 10 Jun 2025 15:06:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOyg5-005o9p-21
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 15:06:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOyg4-0006lA-W7
	for lore@pengutronix.de; Tue, 10 Jun 2025 15:06:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=acRJUVOvY+IZL2WOTdl6k+/xchFPg2hFozSfJNPiDuQ=; b=YDr+UIl5ejfvtt0z/LFTmMowSm
	bsdz7EmwCnGLN3SiG1ZakzXGG2KR8i/Zm8AgCXMltyTPQxG1IClan0LLFhF7LcnSsrfhSqeX6kD2O
	rWLM/nEZBKKinuPXHN0ewZE2D4iS6akT2mwIiM0TFKIbpOOkxIGwW53qRNEq6AiLYDYxK1qRa/sBw
	47KpnNmjGkKHhnlyMiyL+QHUbO5kbzuss3fhuDYiN4mUx2ihoT8ecdl0jisGMVkexCC3vJMVdUBhB
	fKZ2vx5OXg/eNF5IQ7k10Qx+XiVa69cOX2EPKIweTKX8MtYANEpnEphVFPRfnuuZhnLjkRwUDxcbM
	pFBPTpNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOyfW-00000006tEw-3yKh;
	Tue, 10 Jun 2025 13:05:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOxwj-00000006kcl-2QEE
	for barebox@bombadil.infradead.org;
	Tue, 10 Jun 2025 12:19:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=acRJUVOvY+IZL2WOTdl6k+/xchFPg2hFozSfJNPiDuQ=; b=ETXxLAE5FuEJ5aYRjF7ZC5pEAZ
	4KNBaU/BoguhPmAX5fVhBugiKAar0Pca0DePPjNkbJfR9XIXiQtR1VUASwt2gBKR+Rnss1M2mAmzT
	jujLnkgYaApt8k2YKZmIHXxdIEVF30q11UKIsobJFMGxxHk90sotv7sm7dDESYs+aKRfC/92QUNk4
	zmBJ9/3qu9TxiyYrRMdsJg/XdIR7d82to2bUTB6L2Pk4547q8DuxLQ8/lLaah3PpAbxwykO2W4wZ7
	Ue+pf/nSbCfzlRiLXy8SKOdg7qrnFBUPVZoDmzIjOgIlSRWuo0ZJl1WjSLyna2jzr59VQr7NhJD3h
	LtiAloRw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOxwh-00000001ny3-2bko
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 12:19:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uOxwd-0002Uz-Vt; Tue, 10 Jun 2025 14:19:12 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uOxwd-002lyX-2V;
	Tue, 10 Jun 2025 14:19:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uOxwd-0081Fk-2C;
	Tue, 10 Jun 2025 14:19:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 10 Jun 2025 14:19:10 +0200
Message-Id: <20250610121910.1911393-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_131915_717311_2226454E 
X-CRM114-Status: GOOD (  14.80  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! of: partition: do not try to translate offset as OF address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

base: resource: fix build with OF support disabled

With OF disabled, we end up with of_add_child_device defined twice.
Move the definition into of/platform.c to fix this. This is the better
place anyway, because it allocates a platform device.

For some reason, we compile of/platform.c even for CONFIG_OFDEVICE disabled,
but CONFIG_OFTREE enabled, so we need to tweak the #ifdef accordingly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/resource.c | 25 -------------------------
 drivers/of/platform.c   | 26 ++++++++++++++++++++++++++
 include/driver.h        |  2 +-
 3 files changed, 27 insertions(+), 26 deletions(-)

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index d214df0def4c..cf163844b86e 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -75,31 +75,6 @@ struct device *add_child_device(struct device *parent,
 }
 EXPORT_SYMBOL(add_child_device);
 
-struct device *of_add_child_device(struct device *parent,
-		const char* devname, int id, struct device_node *np)
-{
-	struct device *dev;
-	int err;
-
-	if (!of_property_present(np, "compatible") || !of_device_is_available(np))
-		return NULL;
-
-	dev = device_alloc(devname, id);
-	dev->parent = parent;
-	dev->of_node = np;
-
-	np->dev = dev;
-	err = platform_device_register(dev);
-	if (err) {
-		np->dev = NULL;
-		free_device(dev);
-		return ERR_PTR(err);
-	}
-
-	return dev;
-}
-EXPORT_SYMBOL(of_add_child_device);
-
 struct device *add_generic_device_res(const char* devname, int id,
 		struct resource *res, int nb, void *pdata)
 {
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 7e086e9488e6..3600b5f9c10b 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -7,6 +7,7 @@
  * based on Linux devicetree support
  */
 #include <common.h>
+#include <driver.h>
 #include <deep-probe.h>
 #include <malloc.h>
 #include <of.h>
@@ -314,6 +315,31 @@ struct device *of_device_enable_and_register_by_alias(const char *alias)
 }
 EXPORT_SYMBOL(of_device_enable_and_register_by_alias);
 
+struct device *of_add_child_device(struct device *parent,
+		const char* devname, int id, struct device_node *np)
+{
+	struct device *dev;
+	int err;
+
+	if (!of_property_present(np, "compatible") || !of_device_is_available(np))
+		return NULL;
+
+	dev = device_alloc(devname, id);
+	dev->parent = parent;
+	dev->of_node = np;
+
+	np->dev = dev;
+	err = platform_device_register(dev);
+	if (err) {
+		np->dev = NULL;
+		free_device(dev);
+		return ERR_PTR(err);
+	}
+
+	return dev;
+}
+EXPORT_SYMBOL(of_add_child_device);
+
 #ifdef CONFIG_ARM_AMBA
 static struct device *of_amba_device_create(struct device_node *np)
 {
diff --git a/include/driver.h b/include/driver.h
index 31f63a0678d8..dd50a7aa3cce 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -227,7 +227,7 @@ struct device *add_child_device(struct device *parent,
 				resource_size_t start, resource_size_t size, unsigned int flags,
 				void *pdata);
 
-#ifdef CONFIG_OFDEVICE
+#ifdef CONFIG_OFTREE
 struct device *of_add_child_device(struct device *parent,
 		const char* devname, int id, struct device_node *np);
 #else
-- 
2.39.5



