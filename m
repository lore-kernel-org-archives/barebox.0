Delivery-date: Mon, 17 Apr 2023 14:53:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poOMW-006JNH-G8
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 14:53:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poOMW-0000A4-AP
	for lore@pengutronix.de; Mon, 17 Apr 2023 14:53:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IDmdw1Q8ZGgVRtDVXuRqSORnFH0OWak+VjbNulJlKWA=; b=X7JABdIBJjwIBibrYSdJMHDC4V
	y+rap8ala75rJvxVOzJjy1PAqfavOk8XbsWwxuXPSx+HRZJ91zLs29ITaBtCL1Eorp1h5b7/nhHl0
	ZGLSXcX4xZTf+gjY8kJVx/0ulvBdoOT60sCy7L+fStEk+92tjLjRcQ1NhZsUtFHrre5kB8lkNatjo
	WbNzb0pNE2CGC6mChVc+SHodZgDvZTJ7ogF9yS7J6rLBmLRFm73KuesKNW6ovQdxYnRI/28wj+F99
	GKE9RpsE5oMwgJfsy4Ld7rekiVgUfiUNdI9IzGBJB50fKIzPgK0gwF0y23kMewOVTBDY1dq1kPftV
	3RZ0n+Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poOL4-00GD75-27;
	Mon, 17 Apr 2023 12:52:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poOL1-00GD61-2M
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 12:52:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1poOKw-0008MH-Km; Mon, 17 Apr 2023 14:52:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1poOKv-00Bsg0-Vp; Mon, 17 Apr 2023 14:52:02 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1poOKu-003hVA-OA; Mon, 17 Apr 2023 14:52:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Apr 2023 14:51:58 +0200
Message-Id: <20230417125158.882170-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_055207_766633_C0AF1F05 
X-CRM114-Status: GOOD (  11.75  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] lib: genalloc: drop reliance on mmio-sram driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox mmio-sram driver just makes SRAMs available as /dev/sramX
devices. The genalloc stub depended on it without selecting CONFIG_SRAM.

Instead of making this dependency explicit, just call of_address_to_resource
and have no dependency on CONFIG_SRAM at all.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/genalloc.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/lib/genalloc.c b/lib/genalloc.c
index 906e2dd5f14b..2e9815c36b78 100644
--- a/lib/genalloc.c
+++ b/lib/genalloc.c
@@ -12,6 +12,7 @@
 #include <linux/genalloc.h>
 #include <linux/export.h>
 #include <of.h>
+#include <of_address.h>
 #include <driver.h>
 #include <linux/string.h>
 
@@ -98,8 +99,9 @@ EXPORT_SYMBOL(gen_pool_dma_zalloc);
 struct gen_pool *of_gen_pool_get(struct device_node *np,
 	const char *propname, int index)
 {
-	struct device *dev;
 	struct device_node *np_pool;
+	struct gen_pool gen_pool;
+	int ret;
 
 	np_pool = of_parse_phandle(np, propname, index);
 	if (!np_pool)
@@ -108,11 +110,11 @@ struct gen_pool *of_gen_pool_get(struct device_node *np,
 	if (!of_device_is_compatible(np_pool, "mmio-sram"))
 		return NULL;
 
-	dev = of_find_device_by_node(np_pool);
-	if (!dev)
+	ret = of_address_to_resource(np_pool, 0, &gen_pool.res);
+	if (ret)
 		return NULL;
 
-	return container_of(&dev->resource[0], struct gen_pool, res);
+	return memdup(&gen_pool, sizeof(gen_pool));
 }
 EXPORT_SYMBOL_GPL(of_gen_pool_get);
 #endif /* CONFIG_OF */
-- 
2.39.2



