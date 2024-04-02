Delivery-date: Tue, 02 Apr 2024 11:20:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rraJI-003BPC-2G
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 11:20:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rraJI-0006zQ-24
	for lore@pengutronix.de; Tue, 02 Apr 2024 11:20:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6qJHZX/fTZx55sOorqcQc7dfQBqkx6uWJSdHYemGrno=; b=sB2cj6OAgG/vfSjbQNJ7YOn9n6
	p5r22LkixSJggKMZKHQF4xpAm6h88ruPV97wZowslB3Z2+R9VUWIkmlSqF2zfi833iaq/b6Mng3j2
	tq05xenCzPmQckWALvcXj1uRNSj+qijQzUG6/UMuAwkNThGLbKj8fZdEQ56iES1jFtH3dwWmK4yUc
	Qu0afTGUSEw8F8ERqBDSwRFVfn/PkjHDph2PDKCPsD49nC1F+P3BDtPi2ALtdw7en2RsF30J+la6y
	dbbW7rYpv+yNyks4Lk9XCn+5zu8Z+1Qg35QIDBbnIv2K21znkVoicaxOtnarpjeV6sOHstLY9QbaL
	woWxtT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rraIl-0000000APVQ-3nbf;
	Tue, 02 Apr 2024 09:19:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rraIj-0000000APUB-2KP2
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 09:19:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rraIi-0006Sa-4V; Tue, 02 Apr 2024 11:19:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rraIh-009xBv-OR; Tue, 02 Apr 2024 11:19:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rraIh-00HBte-1z;
	Tue, 02 Apr 2024 11:19:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 Apr 2024 11:19:26 +0200
Message-Id: <20240402091926.4096972-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_021929_744468_80C1851D 
X-CRM114-Status: GOOD (  15.05  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: rockchip: rk3588: fix CLK_NR_CLKS usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox adoption of Linux commit 2dc66a5ab2c6:

|    clk: rockchip: rk3588: fix CLK_NR_CLKS usage
|
|    CLK_NR_CLKS is not part of the DT bindings and needs to be removed
|    from it, just like it recently happened for other platforms. This
|    takes care of it by introducing a new function identifying the
|    maximum used clock ID at runtime.
|
|    Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
|    Link: https://lore.kernel.org/r/20240126182919.48402-2-sebastian.reichel@collabora.com
|    Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3588.c |  5 ++++-
 drivers/clk/rockchip/clk.c        | 17 +++++++++++++++++
 drivers/clk/rockchip/clk.h        |  2 ++
 3 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 8b5c68debe..68565a188c 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -2451,15 +2451,18 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 static void __init rk3588_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;
 
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3588_clk_branches,
+					ARRAY_SIZE(rk3588_clk_branches)) + 1;
 	reg_base = of_iomap(np, 0);
 	if (!reg_base) {
 		pr_err("%s: could not map cru region\n", __func__);
 		return;
 	}
 
-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	ctx = rockchip_clk_init(np, reg_base, clk_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		return;
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index aca107a45d..aedb02a8d3 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -395,6 +395,23 @@ void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_plls);
 
+unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
+					   unsigned int nr_clk)
+{
+	unsigned long max = 0;
+	unsigned int idx;
+
+	for (idx = 0; idx < nr_clk; idx++, list++) {
+		if (list->id > max)
+			max = list->id;
+		if (list->child && list->child->id > max)
+			max = list->id;
+	}
+
+	return max;
+}
+EXPORT_SYMBOL_GPL(rockchip_clk_find_max_clk_id);
+
 void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk)
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index df819c61f1..a451229326 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -888,6 +888,8 @@ void rockchip_clk_of_add_provider(struct device_node *np,
 				struct rockchip_clk_provider *ctx);
 void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
 			     struct clk *clk, unsigned int id);
+unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
+					   unsigned int nr_clk);
 void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk);
-- 
2.39.2



