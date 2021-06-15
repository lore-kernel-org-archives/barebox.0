Delivery-date: Tue, 15 Jun 2021 18:46:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCCg-0002NM-78
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 18:46:18 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltCCe-0004GM-Lh
	for lore@pengutronix.de; Tue, 15 Jun 2021 18:46:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXOLzFIOhj21icNxv7Cg1kmSPVS1CpVNOOnhlVihyXs=; b=aNA3sun1YNGHMZ
	DALXM8ASOGqarl/UotekztToxMrWNeUGVwrXjag9xqB91j2NsQ1r0pfdwvZGXQzbToS+qNtBcC1PV
	yrqVPeeT14xXn/LjV4BZNHvoILFNxKTznCXwlcJdv2r9kQdapkaiF46KHOtx3YNd1WO0upjGEvlYu
	1LTzl95HdgnboxEDFZkR3FCqpvskoUUYzGki57c2ZJTWpmCfZ5/R/fp3ccQzwhSGiuC794RktLe0r
	oIZxGv6Vce/tVKfbYjDM7g2pZAPeAcZE989ITTFI66yhVR2iBUHV/tl8KGLvvOINMI9VRX3K8ChHo
	QZVqQhabebCUD2n4nHfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltC6c-001Qad-44; Tue, 15 Jun 2021 16:40:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9rz-000WJh-NR
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 14:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=GF3+1hjLP8Lsy2mddefEkxSMfG6AE1mc5PQtS7Li1vo=; b=JPQal0fniULbksS46cvnlq2UIG
 +rA0cI2PAu9U52AKeFcp1swt80hMAvZlJiGqWQ/nx9Gqt/GtHuBLRuie77XCjLF4tJIxbcLYXfRDN
 FTpPZct9zna7eP7wBF5EY5wn1FH7s3U1vMYnJ/Ht7jH9RbODOKWTbzARRq15ZtQqucIm+AgrGkiTT
 ggrCbWDcEvNi7sVdVSjcz0WKnipKYUg3r1aWYOQkyCw94M8yUG7QTaPchxdSW/sAoMkHVeq+MUXyD
 mfb0Nyx9Tf62jR/sJ0lNkm0JRWveBHhvDsPa6CtjWdhzQvvTC7wiiptxTwia+HtqDK+nSY2/0VQsk
 XBGIIscQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9ro-007zs1-TD
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 14:16:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9rv-0000uC-36; Tue, 15 Jun 2021 16:16:43 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt9ru-0001Cs-HM; Tue, 15 Jun 2021 16:16:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 15 Jun 2021 16:16:32 +0200
Message-Id: <20210615141641.31577-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210615141641.31577-1-s.hauer@pengutronix.de>
References: <20210615141641.31577-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_151644_044328_01FE4284 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (deferred)
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/11] clk: rockchip rk3568: Initialize clocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This initializes the rk3568 clocks in the way U-Boot initializes them as
well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3568.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index e3442b9d6c..8b44e2465b 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1623,6 +1623,12 @@ static void __init rk3568_pmu_clk_init(struct device_node *np)
 				      ARRAY_SIZE(rk3568_pmucru_critical_clocks));
 
 	rockchip_clk_of_add_provider(np, ctx);
+
+	clk_name_set_parent("ppll", "pll_ppll");
+	clk_name_set_parent("clk_rtc_32k", "clk_rtc32k_frac");
+	clk_name_set_rate("clk_rtc_32k", 32768);
+	clk_name_set_rate("pclk_pmu", 100000000);
+	clk_name_set_rate("pll_ppll", 200000000);
 }
 
 static void __init rk3568_clk_init(struct device_node *np)
@@ -1660,6 +1666,28 @@ static void __init rk3568_clk_init(struct device_node *np)
 				      ARRAY_SIZE(rk3568_cru_critical_clocks));
 
 	rockchip_clk_of_add_provider(np, ctx);
+
+	clk_name_set_parent("npll", "pll_npll");
+	clk_name_set_parent("vpll", "pll_vpll");
+	clk_name_set_parent("pclk_bus", "gpll_100m");
+	clk_name_set_parent("clk_sdmmc0", "cpll_50m");
+	clk_name_set_parent("cclk_emmc", "gpll_200m");
+
+	clk_name_set_rate("pll_cpll", 1000000000);
+	clk_name_set_rate("pll_gpll", 1188000000);
+	clk_name_set_rate("armclk", 600000000);
+	clk_name_set_rate("aclk_bus", 150000000);
+	clk_name_set_rate("pclk_bus", 100000000);
+	clk_name_set_rate("aclk_top_high", 300000000);
+	clk_name_set_rate("aclk_top_low", 200000000);
+	clk_name_set_rate("hclk_top", 150000000);
+	clk_name_set_rate("pclk_top", 100000000);
+	clk_name_set_rate("aclk_perimid", 300000000);
+	clk_name_set_rate("hclk_perimid", 150000000);
+	clk_name_set_rate("pll_npll", 1200000000);
+	clk_name_set_rate("pll_apll", 816000000);
+
+	clk_name_set_parent("pclk_top", "gpll_100m");
 }
 
 struct clk_rk3568_inits {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

