Delivery-date: Mon, 04 Aug 2025 17:32:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAX-006z6J-2c
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAV-0006Fi-GL
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s9aX9e1lwT2dM2ZhRjrPxTrjGjmMrasGejzUNw/bZl8=; b=OGi5NLrtx27Zz0iIzvN3d6+vVZ
	on0bWMEZRWpHDuiUooI/hsvzXagBTc9JeAc9Mr9cGSBcZxk6NSAOx1gNVxWxCdduTHyJFnFamjM44
	yOAT3LLFFJrn/GReVfwJFMIzDACdEYp/MVX+Rv8KbgOqQLJXLK72Konm9KTO3rnOqUeJOQ60G6Y41
	LSpw+hvc1AQplNsM6VUFmLQ9VWyIOtVwKgKCHUmD4GhWQEFWCDJQVm9y0ymwEOfVx3GxC2A3KIhCx
	mUT03qd4YxR43QQkTQRGjtMQ+s35vq8VUt8ji6MZ1IdEY6GbwmzWTHYI7kiuoBUKWly6UYEWF2hIo
	FiKcaAXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9n-0000000Anv4-2P96;
	Mon, 04 Aug 2025 15:31:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ2-0000000AgmC-1nbZ
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:56 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-8V; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:36:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-3-7603eaa4d2b0@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_073652_602951_389D39B5 
X-CRM114-Status: GOOD (  17.57  )
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
Subject: [PATCH 03/15] of: device: Export of_device_make_bus_id()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port Linux commit:

| commit 7f38b70042fcaa49219045bd1a9a2836e27a58ac
| Author: Miquel Raynal <miquel.raynal@bootlin.com>
| Date:   Fri Dec 15 11:15:27 2023 +0000
|
|     of: device: Export of_device_make_bus_id()
|
|     This helper is really handy to create unique device names based on their
|     device tree path, we may need it outside of the OF core (in the NVMEM
|     subsystem) so let's export it. As this helper has nothing patform
|     specific, let's move it to of/device.c instead of of/platform.c so we
|     can add its prototype to of_device.h.
|
|     Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
|     Acked-by: Rob Herring <robh@kernel.org>
|     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
|     Link: https://lore.kernel.org/r/20231215111536.316972-2-srinivas.kandagatla@linaro.org
|     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

This is required for the upcoming nvmem layout support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/device.c   | 37 +++++++++++++++++++++++++++++++++++++
 drivers/of/platform.c | 36 +-----------------------------------
 include/of_device.h   |  3 +++
 3 files changed, 41 insertions(+), 35 deletions(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index 77c027b57e3fd0edaed2270d7694b7367ac174d9..e28b8229c46f19c8403b688fba9255aae3bf31f0 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -2,6 +2,7 @@
 #include <common.h>
 #include <of.h>
 #include <of_device.h>
+#include <of_address.h>
 
 /**
  * of_match_device - Tell if a struct device matches an of_device_id list
@@ -44,3 +45,39 @@ const char *of_device_get_match_compatible(const struct device *dev)
 	return match->compatible;
 }
 EXPORT_SYMBOL(of_device_get_match_compatible);
+
+/**
+ * of_device_make_bus_id - Use the device node data to assign a unique name
+ * @dev: pointer to device structure that is linked to a device tree node
+ *
+ * This routine will first try using the translated bus address to
+ * derive a unique name. If it cannot, then it will prepend names from
+ * parent nodes until a unique name can be derived.
+ */
+void of_device_make_bus_id(struct device *dev)
+{
+	struct device_node *node = dev->of_node;
+	const __be32 *reg;
+	u64 addr;
+
+	/* Construct the name, using parent nodes if necessary to ensure uniqueness */
+	while (node->parent) {
+		/*
+		 * If the address can be translated, then that is as much
+		 * uniqueness as we need. Make it the first component and return
+		 */
+		reg = of_get_property(node, "reg", NULL);
+		if (reg && (addr = of_translate_address(node, reg)) != OF_BAD_ADDR) {
+			dev_set_name(dev, dev->name ? "%llx.%s:%s" : "%llx.%s.of",
+				     (unsigned long long)addr, node->name,
+				     dev->name);
+			return;
+		}
+
+		/* format arguments only used if dev_name() resolves to NULL */
+		dev_set_name(dev, dev->name ? "%s:%s" : "%s.of",
+			     kbasename(node->full_name), dev->name);
+		node = node->parent;
+	}
+}
+EXPORT_SYMBOL_GPL(of_device_make_bus_id);
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 3600b5f9c10b1968007f84c60e266299c7be8e9e..760ad9527374e559a39ed655419b991bc3a8e6a0 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -12,6 +12,7 @@
 #include <malloc.h>
 #include <of.h>
 #include <of_address.h>
+#include <of_device.h>
 #include <linux/amba/bus.h>
 #include <mmu.h>
 
@@ -38,41 +39,6 @@ struct device *of_find_device_by_node(struct device_node *np)
 }
 EXPORT_SYMBOL(of_find_device_by_node);
 
-/**
- * of_device_make_bus_id - Use the device node data to assign a unique name
- * @dev: pointer to device structure that is linked to a device tree node
- *
- * This routine will first try using the translated bus address to
- * derive a unique name. If it cannot, then it will prepend names from
- * parent nodes until a unique name can be derived.
- */
-static void of_device_make_bus_id(struct device *dev)
-{
-	struct device_node *node = dev->of_node;
-	const __be32 *reg;
-	u64 addr;
-
-	/* Construct the name, using parent nodes if necessary to ensure uniqueness */
-	while (node->parent) {
-		/*
-		 * If the address can be translated, then that is as much
-		 * uniqueness as we need. Make it the first component and return
-		 */
-		reg = of_get_property(node, "reg", NULL);
-		if (reg && (addr = of_translate_address(node, reg)) != OF_BAD_ADDR) {
-			dev_set_name(dev, dev->name ? "%llx.%s:%s" : "%llx.%s.of",
-				     (unsigned long long)addr, node->name,
-				     dev->name);
-			return;
-		}
-
-		/* format arguments only used if dev_name() resolves to NULL */
-		dev_set_name(dev, dev->name ? "%s:%s" : "%s.of",
-			     kbasename(node->full_name), dev->name);
-		node = node->parent;
-	}
-}
-
 static struct device_node *of_get_next_dma_parent(const struct device_node *np)
 {
 	struct of_phandle_args args;
diff --git a/include/of_device.h b/include/of_device.h
index 5afcc5ff94b1095031659dd4a418f6c42442147f..14f9062c6c2c61a3b05b6e6ee94f59960812d26e 100644
--- a/include/of_device.h
+++ b/include/of_device.h
@@ -23,6 +23,7 @@ static inline int of_driver_match_device(struct device *dev,
 
 extern const void *of_device_get_match_data(const struct device *dev);
 extern const char *of_device_get_match_compatible(const struct device *dev);
+void of_device_make_bus_id(struct device *dev);
 
 #else /* CONFIG_OFTREE */
 
@@ -50,6 +51,8 @@ static inline const struct of_device_id *__of_match_device(
 #define of_match_device(matches, dev)	\
 	__of_match_device(matches, (dev))
 
+static inline void of_device_make_bus_id(struct device *dev) {}
+
 #endif /* CONFIG_OFTREE */
 
 #endif /* _LINUX_OF_DEVICE_H */

-- 
2.39.5



