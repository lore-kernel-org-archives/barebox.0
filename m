Delivery-date: Mon, 31 May 2021 09:42:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncZS-0003GN-6N
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:42:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncZR-0001cU-8T
	for lore@pengutronix.de; Mon, 31 May 2021 09:42:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfOd8IoejnyPW0+W0NdkBMoyKdd34hJnmg8+xChtaLo=; b=ZhdiDm9lJLEFNQ
	LgPipqIDK3wLCGRoHXhe6qeiGagDIOE3TBou/TKNZboMzOlBYoQyqdqUg0xMsfggH1Ko8/vuNtjRg
	4pfpovvLJvxVhJk09yIXdBfISLjAG9EKcCNvTDKx7OpXJUNyW+h9v3iM5GvT62LOUQJ/rOIKTTGrG
	inudtfDGZuA8JpkYsP285xl9yWxI6aFTEobEpr7wAFktS4ysqlqLr3Y/qDYlJRWbTH1VX+VkQapID
	eGnx6dfYH4HPbgyU64cYeYm5Pl63QviyxSUsDt3kXtCWDIgXEYUc5J6L1MbRU9cCMpTq12jx4W0HK
	7em90s6epcZyfYPTrq/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncY9-00BEYA-IW; Mon, 31 May 2021 07:41:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVd-00BCqF-RO
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080K-EV; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVD-00045z-23; Mon, 31 May 2021 09:38:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:10 +0200
Message-Id: <20210531073821.15257-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003849_921582_D90CB2D9 
X-CRM114-Status: GOOD (  13.56  )
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
Subject: [PATCH 09/20] soc: sifive: l2_cache: enable maximum available cache
 ways
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Previous boot stages may not enable all cache ways, e.g. because they
are running from L2 cache. By the time barebox proper is running,
execution should be from main SDRAM, so it's ok now to enable the
maximum available count of cache ways.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/sifive/sifive_l2_cache.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index 1ac39c743681..f2cef133de63 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -16,6 +16,7 @@
 #include <of.h>
 #include <asm/cache.h>
 #include <asm/barrier.h>
+#include <linux/bitops.h>
 
 #define SIFIVE_L2_DIRECCFIX_LOW 0x100
 #define SIFIVE_L2_DIRECCFIX_HIGH 0x104
@@ -41,6 +42,9 @@
 
 #define SIFIVE_L2_MAX_ECCINTR 4
 
+#define MASK_NUM_WAYS   GENMASK(15, 8)
+#define NUM_WAYS_SHIFT  8
+
 #define SIFIVE_L2_FLUSH64_LINE_LEN 64
 
 static void __iomem *l2_base = NULL;
@@ -87,6 +91,21 @@ struct cache_ops sifive_l2_ops = {
 	.dma_inv_range = sifive_l2_flush64_range,
 };
 
+static int sifive_l2_enable_ways(void)
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
+
+	return 0;
+}
+
 /* Normally, L2 should be kept coherent between SiFive CPUs and other
  * DMA masters on the SoC. If that's not the case, add it to the table
  * here, so barebox dma_map_single and co. flush and invalidate as
@@ -112,6 +131,8 @@ static int sifive_l2_probe(struct device_d *dev)
 
 	l2_base = IOMEM(iores->start);
 
+	sifive_l2_enable_ways();
+
 	dev->info = sifive_l2_config_read;
 
 	if (of_match_node(incoherent_soc_dt_ids, of_get_root_node())) {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

