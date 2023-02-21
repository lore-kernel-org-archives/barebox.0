Delivery-date: Tue, 21 Feb 2023 09:07:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNg2-00DebU-NM
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNg0-0006rn-J1
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZO83lLcaDNFbY7YvK3o6Hqv+HaQO2anQfRjPlL2a5B0=; b=EX4qrEVDIcdxvi8tm08we5v6Kl
	oqxoVhJAegDTMx1rjEBH/YsUunalU+6f5TKMQ8owy7YIuZFysSR4fBJxBaqUNfN4CEU91FRQaZEWo
	lSp63MhPf5WCMxblRE9DEaJ7wx2IvjAzPADWwVDG51qP10Fe0yeImEq4oYyzNN6rBECQ1Z+0wQ+ky
	OdlESxdhoiIpCyAwMueGuBowMJhhJC7O9BAg3d54sRmfezC3mO4DTjl1wr9aGeuClGIu80HXu1AoB
	wPvl6nDqyZ+A4qkMk8tcfFYJ1AGPWLovbVgd/CJWH+R9NHHQ0ysf67I5v/Y1HmXVr545Hvv6AEs5E
	H59y2dZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNfC-006ykC-7U; Tue, 21 Feb 2023 08:06:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeV-006yIw-Qr
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeS-00062i-S3; Tue, 21 Feb 2023 09:05:28 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeR-006Rjc-2N; Tue, 21 Feb 2023 09:05:28 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YHR-Qq; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Feb 2023 09:05:21 +0100
Message-Id: <20230221080524.607241-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230221080524.607241-1-a.fatoum@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000531_983035_544FBEEE 
X-CRM114-Status: GOOD (  14.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 09/12] of: populate new device_d::dma_coherent attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, whether device DMA is coherent was a one-time global decision.
This is insufficient, because some platforms:

 - are cache coherent, while the architecture isn't in general, e.g. ARM
   with CONFIG_MMU=y assumes non-coherent DMA, but LS1046A is coherent

 - have a mix of devices that snoop caches and devices that don't
   (StarFive JH7100).

To enable dev_dma_(map|unmap)_single to take the correct device-specific
action with regards to cache maintenance, provide dev_is_dma_coherent()
with semantics similar to what Linux provides.

This admittedly looks a bit ugly, but we will refrain from making
dma_coherent defined independent of ifdef CONFIG_ARCH_HAS_NONCOHERENT_DMA:
On platforms that are cache-coherent, we will want dev->dma_coherent to
be true. Yet not all code allocating devices uses dev_alloc(), so adding
a global toggle is a bit too much refactoring effort for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/devinfo.c    |  5 +++++
 drivers/of/platform.c |  3 +++
 include/driver.h      | 28 ++++++++++++++++++++++++++++
 3 files changed, 36 insertions(+)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 2487786c7101..be28d02028c3 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -50,6 +50,7 @@ static int do_devinfo(int argc, char *argv[])
 	struct param_d *param;
 	int i;
 	int first;
+	int coherent;
 	struct resource *res;
 
 	if (argc == 1) {
@@ -82,6 +83,10 @@ static int do_devinfo(int argc, char *argv[])
 		if (dev->bus)
 			printf("Bus: %s\n", dev->bus->name);
 
+		coherent = dev_is_dma_coherent(dev);
+		if (coherent >= 0)
+			printf("DMA Coherent: %s\n", coherent ? "true" : "false");
+
 		if (dev->info)
 			dev->info(dev);
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 0982873446a6..1bd5d41ba226 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -128,6 +128,9 @@ static void of_dma_configure(struct device *dev, struct device_node *np)
 	}
 
 	dev->dma_offset = offset;
+#ifdef CONFIG_OF_DMA_COHERENCY
+	dev->dma_coherent = of_dma_is_coherent(np);
+#endif
 }
 
 /**
diff --git a/include/driver.h b/include/driver.h
index 7e25c060280b..f6301d954bb5 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -8,6 +8,7 @@
 
 #include <linux/list.h>
 #include <linux/ioport.h>
+#include <linux/bitops.h>
 #include <of.h>
 #include <filetype.h>
 
@@ -43,6 +44,13 @@ struct device {
 	 * something like eth0 or nor0. */
 	int id;
 
+	/*! This particular device is dma coherent, even if the
+         * architecture supports non-coherent devices.
+	 */
+#ifdef CONFIG_OF_DMA_COHERENCY
+	bool dma_coherent:1;
+#endif
+
 	struct resource *resource;
 	int num_resources;
 
@@ -652,6 +660,26 @@ static inline struct device_node *dev_of_node(struct device *dev)
 	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->of_node : NULL;
 }
 
+#ifdef CONFIG_OF_DMA_COHERENCY
+static inline int __dev_is_dma_coherent(struct device *dev)
+{
+	return dev->dma_coherent;
+}
+#else
+static inline bool __dev_is_dma_coherent(struct device *dev)
+{
+	return IS_ENABLED(CONFIG_OF_DMA_DEFAULT_COHERENT);
+}
+#endif
+
+static inline int dev_is_dma_coherent(struct device *dev)
+{
+	if (!dev_of_node(dev))
+		return -EINVAL;
+
+	return __dev_is_dma_coherent(dev);
+}
+
 static inline void *dev_get_priv(const struct device *dev)
 {
 	return dev->priv;
-- 
2.30.2



