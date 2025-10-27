Delivery-date: Mon, 27 Oct 2025 15:16:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDO1g-00CMS6-25
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 15:16:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDO1g-0006QO-2v
	for lore@pengutronix.de; Mon, 27 Oct 2025 15:16:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g8zsIjKiyWJ3bWBylqblvEgYOogM8o43fpolzo+SwLM=; b=THoZX9SSaW3fsj
	zcc/f13T4enXN37wZ4EhUkLmUZjgMAFB5VtwVgCsPFbiWUoEffmv+d02vhwaTI17uK+6VS+6hQPWL
	8EszM3IU/TE/gPkg4lFmGCslYeaC46G+mNhWNlvUj4hhzmsYULMK8cqeVsxiMWiJWZQvxLnoJASTm
	SHHrEhJXyUFw5yRcVnvYYFelXCW2RMpGbs0ROzr0MZ+nJELkdo5BmWwSAywYc9KcJvApy3CY62Fu9
	AVAbtLrvJWUrH23FuH7IYptvXoRmvKyUqt+mfmtixC3FB90t/vgD1ZBrldgyLfgzo88UjUEgfcp3f
	e9F0M9dJxqfIFM2V137w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDO14-0000000E7kh-10wu;
	Mon, 27 Oct 2025 14:16:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDO0x-0000000E7k2-3jVY
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 14:16:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDO0w-000612-6j; Mon, 27 Oct 2025 15:16:02 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDO0w-005iox-04;
	Mon, 27 Oct 2025 15:16:02 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDO0w-00000003YmT-1Tv1;
	Mon, 27 Oct 2025 15:16:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 Oct 2025 15:15:55 +0100
Message-ID: <20251027141555.846950-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_071603_949759_657ABE02 
X-CRM114-Status: GOOD (  16.52  )
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
Cc: Michael Tretter <mtr@pengutronix.de>, Alexander Shiyan <eagle.alexander923@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] clk: rockchip rk3588: configure CPLL in driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The rk3588 CPLL should be configured to 1.5GHz and 09c87c85e0 ("ARM:
dts: rockchip: Set CPLL frequency for RK3588") does this. It does it
however after the assigned-clocks/assigned-clock-rates properties of the
"rockchip,rk3588-cru" node have been evaluated which contain a setting
of CLK_150M_SRC which is a child clock of the CPLL.  Configuring the
CPLL after CLK_150M_SRC alters the setting of the just configured 150M
clock again.

We must make sure to configure the CPLL before its child clocks. For
this we could overwrite the assigned-* properties in the
"rockchip,rk3588-cru" node, but with that we would miss future updates
to this property, so configure the CPLL in the driver code instead right
before we call into of_clk_add_provider().

Fixes: 09c87c85e0 ("ARM: dts: rockchip: Set CPLL frequency for RK3588")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3588.dtsi          | 3 ---
 drivers/clk/rockchip/clk-rk3588.c | 7 +++++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
index 42d692a9bd..416700cf0e 100644
--- a/arch/arm/dts/rk3588.dtsi
+++ b/arch/arm/dts/rk3588.dtsi
@@ -1,9 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 / {
-	assigned-clocks = <&cru PLL_CPLL>;
-	assigned-clock-rates = <1500000000>;
-
 	dmc: memory-controller {
 		compatible = "rockchip,rk3588-dmc";
 		rockchip,pmu = <&pmu1grf>;
diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 5aecfb3b1b..fcf95131df 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -2500,6 +2500,13 @@ static void __init rk3588_clk_init(struct device_node *np)
 
 	rockchip_register_restart_notifier(ctx, RK3588_GLB_SRST_FST);
 
+	/*
+	 * CPLL must run at 1.5GHz. Do this here instead via assigned-clocks
+	 * in the device tree so that we do not have to overwrite the properties
+	 * in the upstream device tree.
+	 */
+	clk_set_rate(ctx->clk_data.clks[PLL_PPLL], 1500000000);
+
 	rockchip_clk_of_add_provider(np, ctx);
 }
 
-- 
2.47.3



