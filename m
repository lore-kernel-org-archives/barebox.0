Delivery-date: Mon, 21 Jun 2021 11:30:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGGg-0000jr-K2
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 11:30:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvGGf-0008Ot-69
	for lore@pengutronix.de; Mon, 21 Jun 2021 11:30:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GzY+mWsSiav/4UuKxYVg69ZS8TLtmUrJPRzfM2bureQ=; b=ct57vgPfLevHf4
	CYf7HBsWUFRMicFE3QWusYdLFz8OcswLF7asuFJ9hqMGWwAshpD3qUOMOyfvdgC4oMx1TyQn/vz8y
	qxrwPcOMXrP7w17dC2ysLCpId7hrq9J3gPQgS+VQs6vzSLK8iWgWb09Y/pWZr9jYJfcyalJEyMXaw
	bZLi/b4sYaUQMRJgQZVhJrJ5FNHBhAxLtQtbAtvPVbffUMLO5VMlSGwbRKPY1lpBJGA/UB0B5XWYO
	hL+q1pLMYRM6SfkKK8T5Brl+og92MALP7TlZeIBr5vEq06E0rP6rgRbZke9/m+uq8c/9GIeUrroi2
	MuyeJzgdGr8I9ItiqMrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGFF-002u0K-Lw; Mon, 21 Jun 2021 09:29:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGE1-002tLl-OH
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 09:28:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDs-0007Zq-Di; Mon, 21 Jun 2021 11:28:04 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvGDr-0003dy-OG; Mon, 21 Jun 2021 11:28:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 21 Jun 2021 11:28:02 +0200
Message-Id: <20210621092802.27275-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210621092802.27275-1-s.hauer@pengutronix.de>
References: <20210621092802.27275-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_022813_853119_F392954B 
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/12] fixup! clk: Rockchip: Add rk3568 clk support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

---
 drivers/clk/rockchip/clk-rk3568.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 620d932a09..40ab7ee3d7 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1619,6 +1619,9 @@ static void __init rk3568_pmu_clk_init(struct device_node *np)
 	rockchip_clk_register_branches(ctx, rk3568_clk_pmu_branches,
 				       ARRAY_SIZE(rk3568_clk_pmu_branches));
 
+	rockchip_register_softrst(np, 1, reg_base + RK3568_PMU_SOFTRST_CON(0),
+				  ROCKCHIP_SOFTRST_HIWORD_MASK);
+
 	rockchip_clk_protect_critical(rk3568_pmucru_critical_clocks,
 				      ARRAY_SIZE(rk3568_pmucru_critical_clocks));
 
@@ -1660,6 +1663,9 @@ static void __init rk3568_clk_init(struct device_node *np)
 	rockchip_clk_register_branches(ctx, rk3568_clk_branches,
 				       ARRAY_SIZE(rk3568_clk_branches));
 
+	rockchip_register_softrst(np, 30, reg_base + RK3568_SOFTRST_CON(0),
+				  ROCKCHIP_SOFTRST_HIWORD_MASK);
+
 	rockchip_register_restart_notifier(ctx, RK3568_GLB_SRST_FST);
 
 	rockchip_clk_protect_critical(rk3568_cru_critical_clocks,
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

