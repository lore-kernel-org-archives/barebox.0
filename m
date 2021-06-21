Delivery-date: Mon, 21 Jun 2021 11:29:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGFU-0000hV-Tq
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 11:29:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGFS-0007rf-To
	for lore@pengutronix.de; Mon, 21 Jun 2021 11:29:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODhhuGrDXCrtLdZhMLoiyJAhSbM4BVI9l64aaroEJ2o=; b=KTZ1PzFNW4xfqb
	uEOUKUX6fQlSxGx9SE2ce7C3b/Rbq801wS4xWROMaWvXoK1nqABip7uJlg7ejzGfaS4qDtiEeEGVd
	BZXS/MTSi8oI8ybaSNuGwx+FimePnWoWgPZojpfAhuZW18aSs4RGG7PtTYZETW6ijtERmpSNYgwc2
	LGYMS9YSO+cICIYsdMm3TW+u01znJFVEOO69X7jaX6x4B2tD80Z9B/FlxIMCuJgNAxu8rUDuCy4Lp
	QEwrV047kRky46pMLr3SCQZtAtr8XVU0IJw9vCAd9o4Cs1JViWyjxJQYr0HDDB2vSJI4WuO0yST6Z
	kKo0ySESAtVX4Arxxy6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGE7-002tKr-On; Mon, 21 Jun 2021 09:28:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGDt-002tGX-IZ
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 09:28:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDs-0007Zg-5Q; Mon, 21 Jun 2021 11:28:04 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDr-0003dU-Ja; Mon, 21 Jun 2021 11:28:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 21 Jun 2021 11:27:52 +0200
Message-Id: <20210621092802.27275-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210621092802.27275-1-s.hauer@pengutronix.de>
References: <20210621092802.27275-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_022805_679430_9D2384BA 
X-CRM114-Status: UNSURE (   8.94  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/12] clk: rockchip rk3568: Initialize clocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This initializes the rk3568 clocks in the way U-Boot initializes them as
well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Link: https://lore.barebox.org/20210615141641.31577-3-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3568.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 4605158500..620d932a09 100644
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

