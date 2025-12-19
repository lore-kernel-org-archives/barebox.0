Delivery-date: Fri, 19 Dec 2025 11:38:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsP-00DAel-1D
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXs8-0006An-UW
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rH0s64DJ/RO9WD2lhA4kQCFdx9jsW1xIKX+YaGlXGxw=; b=QgvCFUMp4uumvf
	Kh27SujxZRf18Nl96y3XMuk3WeIrqgOhPF0JPWXYQ+5/bPApK7c4xDcJXlR3+NeIrE3Cg/Py4R99C
	dJB87Din2leMQEdKVGQSfkv+YkBVBnOiLWWRTBvvgW+agWZZpTRiguqFyvKumMNwr60T4JK+US9hz
	gZzkGeTZ7AyInVyw6wghva0jLoQtZL9IMxS790Ls15k4k+wxlIbOrE+nvAkLU5DOi7RdED/0srcx4
	VjEy2DH6E4BvjLsXvVO9Gt/xm4zIgR7UB5vvPm2L3ZEtjpc2MP+/bsvh9cNjj/2KU2gmF0undPp0M
	xiqHVrfa62dsWFzWmN2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrC-0000000A6LL-1Vcx;
	Fri, 19 Dec 2025 10:37:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqy-0000000A63J-1KqF
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rH0s64DJ/RO9WD2lhA4kQCFdx9jsW1xIKX+YaGlXGxw=; b=QyJHC6SZa7pMtSR/98PT2aGXUR
	y3h7+/XmRe8REUweCLvQCdle6miq1OsA7t5EfLHohhSEpCyezsqqepl4KYFQOrvBzoxOg7GLDCQbr
	t295BFI5JpDcQEHQHw2xNTlz/+E+gcV9LfMInKLWDDDGhsRetZ/06f6gja1A5yIKNycPLttFaIIbs
	UEBQuuaxEYAdlJgrfH6jsEPLgIGXwHinmfSCDEGfv5vVaVNmo48e3hopgtz5TeanScbpjNamWYLDH
	uhhUljeh2fuG7DrS5ou5FTzj2MSSWXrSWmgHzwFb9UQ0JegH8nGdNW1NjKJFlM9phuMn5+LU6s278
	TZ+Q8PDw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzQ-0000000AbBx-0R3l
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-0004db-Gu; Fri, 19 Dec 2025 11:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RVF-12;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-1Yke;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:20:55 +0100
Message-ID: <20251219101453.2806980-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_293902_60AB405F 
X-CRM114-Status: GOOD (  16.30  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Michael Tretter <m.tretter@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 19/49] clk: rockchip rk3588: configure CPLL in driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

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
Tested-by: Michael Tretter <m.tretter@pengutronix.de>
Link: https://lore.barebox.org/20251028072625.2781087-1-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit 45b4b47cc650b0552d4920d0a353a860f6d2468c)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/rk3588.dtsi          | 3 ---
 drivers/clk/rockchip/clk-rk3588.c | 7 +++++++
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
index 42d692a9bdd1..416700cf0ecd 100644
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
index 5aecfb3b1b71..eb6b4fde1451 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -2500,6 +2500,13 @@ static void __init rk3588_clk_init(struct device_node *np)
 
 	rockchip_register_restart_notifier(ctx, RK3588_GLB_SRST_FST);
 
+	/*
+	 * CPLL must run at 1.5GHz. Do this here instead via assigned-clocks
+	 * in the device tree so that we do not have to overwrite the properties
+	 * in the upstream device tree.
+	 */
+	clk_set_rate(ctx->clk_data.clks[PLL_CPLL], 1500000000);
+
 	rockchip_clk_of_add_provider(np, ctx);
 }
 
-- 
2.47.3



