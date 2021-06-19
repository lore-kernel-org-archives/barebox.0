Delivery-date: Sat, 19 Jun 2021 06:57:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT3G-0004h6-9O
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:57:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luT3F-0002VZ-66
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:57:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwXGFXtRKRYwjCn3vfcL87AoFcjfwFj2699zNnYjzlo=; b=hIfP+XhzPWkdbe
	M9jHTYksFToaJcySYPnGyLoodoSn9iUczZOgPpop+mHlMoXxPwRABd84osEG4RwBnQQBcC9sGG6eN
	NayAinuTt1KJl5ujRahMycFlFRUr0cnVSIlxOa5Yabz6bbTlOW0EiVcQMKebrpp+NCvSVtLgrVtFJ
	zzLFmiG62+8mDScriZjG/8j9swwNQX4NuwvOGD9a9ig1YGuBPiKFV/vllU42aK9mfqEIWim/i7V/2
	vrvmA3b7DHSg9gsazLpjF1ll5yIlWtEmY6JQqYfLLt0pj1DBQhKoTExeZUftnz8WlTSX9MV5lFULz
	Tb3mGZoYlJJ6d+J6L3XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luT1w-00GKyP-Bl; Sat, 19 Jun 2021 04:56:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSxA-00GHwn-8K
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwc-0008MB-Sb; Sat, 19 Jun 2021 06:50:58 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001L7-RU; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:40 +0200
Message-Id: <20210619045055.779-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215132_335983_4212D0CE 
X-CRM114-Status: GOOD (  11.59  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 14/29] soc: sifive: l2_cache: enable maximum available
 cache ways
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Previous boot stages may not enable all cache ways, e.g. because they
are running from L2 cache. By the time barebox proper is running,
execution should be from main SDRAM, so it's ok now to enable the
maximum available count of cache ways.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/sifive/sifive_l2_cache.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index 9e54474f7ae8..a1e9a1062204 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -15,6 +15,7 @@
 #include <init.h>
 #include <soc/sifive/l2_cache.h>
 #include <asm/barrier.h>
+#include <linux/bitops.h>
 
 #define SIFIVE_L2_DIRECCFIX_LOW 0x100
 #define SIFIVE_L2_DIRECCFIX_HIGH 0x104
@@ -40,6 +41,9 @@
 
 #define SIFIVE_L2_MAX_ECCINTR 4
 
+#define MASK_NUM_WAYS   GENMASK(15, 8)
+#define NUM_WAYS_SHIFT  8
+
 #define SIFIVE_L2_FLUSH64_LINE_LEN 64
 
 static void __iomem *l2_base = NULL;
@@ -84,6 +88,19 @@ void sifive_l2_flush64_range(dma_addr_t start, dma_addr_t end)
 	}
 }
 
+static void sifive_l2_enable_ways(void)
+{
+	u32 config;
+	u32 ways;
+
+	config = readl(l2_base + SIFIVE_L2_CONFIG);
+	ways = (config & MASK_NUM_WAYS) >> NUM_WAYS_SHIFT;
+
+	mb();
+	writel(ways - 1, l2_base + SIFIVE_L2_WAYENABLE);
+	mb();
+}
+
 static int sifive_l2_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -97,6 +114,8 @@ static int sifive_l2_probe(struct device_d *dev)
 
 	l2_base = IOMEM(iores->start);
 
+	sifive_l2_enable_ways();
+
 	dev->info = sifive_l2_config_read;
 
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

