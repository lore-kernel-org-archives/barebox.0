Delivery-date: Thu, 11 Dec 2025 21:39:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnSA-00AQMO-11
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:39:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnS9-0000Ip-MQ
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:39:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TpPdZfUiyVNyShtqjEGxAya4M45DRrZiNLGqUNiczEs=; b=4dI5iSCjHNTZJOoRXwqv9qVDfs
	+osLn+5Y5IIH0NAqbjrfjxRxc3DHPJ3M338jWn8xM2bnzIvj2C34enr/rKtRONrdT0liqX93cFWhD
	kANII3+ssO7IWGcaK2pnic92hs8LcINSuXROvjj582Dl5B9K5UUAOB0mL8TM7Bd42zkQFmhJpF//r
	8Bb27B1fExS/f02gARockLvuP0Gbb6XtCFKHCrFfTTsCQloB2qB1q6LC4/59yp7v1NOlTuh4zShna
	dXSYa9D7IMMCfT5iXn0G6l5x6mzNVJy/ZE6fdfdYZH7o/NYbjfS6RrZzG4yyS8+Wj8IlSzeC/RPAZ
	myCHh4Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnRl-0000000HFtp-3Nod;
	Thu, 11 Dec 2025 20:39:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnRk-0000000HFth-0RtH
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:39:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=TpPdZfUiyVNyShtqjEGxAya4M45DRrZiNLGqUNiczEs=; b=TL2+cYsqkIR3VxVz2GEpSv8lQU
	ayV0FUm98Uq9sl6oIFoRrnqm4QQlcvDIZAerbpRF6yYE+F5DNapRfKIFbVJBwlvcKpJ/0XS6AGC0K
	7tMnCLSYyizh+tgvs2DiPsO+h5bxG9M7YL79WUznzjd1maIyecU/HKuYpdS+w3xyJjPxklfa/SA+i
	k5zRfSI/4nRWEMzawUPLphs9zadoW7oInn52RmRMfZc439DQy4fVGdMM3LsdLqb4QrYxiwAtRZj7a
	hBxK83Vp1nRIdTC5ddYGy5ZfoYeWcZ7CxkUrBrNWqpXdRj8njd62I9MDxc20tY3jbU7AMWXLLKswu
	kZx8nzug==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmaB-0000000FZfi-1HQb
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:44:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnRf-0000Dv-TE; Thu, 11 Dec 2025 21:39:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnRf-005BX8-2J;
	Thu, 11 Dec 2025 21:39:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnRf-0000000AW7N-2brZ;
	Thu, 11 Dec 2025 21:39:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:39:26 +0100
Message-ID: <20251211203927.2506115-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194411_583835_A3119595 
X-CRM114-Status: UNSURE (   9.87  )
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
Subject: [PATCH] clk: rk3568: sync driver with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver has gained  some more PLL rates, a new clock and three
additions to the list of critical clocks. Import these changes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/rockchip/clk-rk3568.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 7ed5aa52136b..a14150454fe8 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/rockchip/clk-rk3568.c?id=132b62280a9dbe38c627183ae7f1611de3ee0d9a
 /*
  * Copyright (c) 2021 Rockchip Electronics Co. Ltd.
  * Author: Elaine Zhang <zhangqing@rock-chips.com>
@@ -66,6 +67,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(912000000, 1, 76, 2, 1, 1, 0),
 	RK3036_PLL_RATE(816000000, 1, 68, 2, 1, 1, 0),
 	RK3036_PLL_RATE(800000000, 3, 200, 2, 1, 1, 0),
+	RK3036_PLL_RATE(724000000, 3, 181, 2, 1, 1, 0),
 	RK3036_PLL_RATE(700000000, 3, 350, 4, 1, 1, 0),
 	RK3036_PLL_RATE(696000000, 1, 116, 4, 1, 1, 0),
 	RK3036_PLL_RATE(600000000, 1, 100, 4, 1, 1, 0),
@@ -80,6 +82,8 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(200000000, 1, 100, 3, 4, 1, 0),
 	RK3036_PLL_RATE(148500000, 1, 99, 4, 4, 1, 0),
 	RK3036_PLL_RATE(135000000, 2, 45, 4, 1, 1, 0),
+	RK3036_PLL_RATE(132000000, 1, 66, 6, 2, 1, 0),
+	RK3036_PLL_RATE(128000000, 1, 16, 3, 1, 1, 0),
 	RK3036_PLL_RATE(126400000, 1, 79, 5, 3, 1, 0),
 	RK3036_PLL_RATE(119000000, 3, 119, 4, 2, 1, 0),
 	RK3036_PLL_RATE(115200000, 1, 24, 5, 1, 1, 0),
@@ -89,6 +93,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(96000000, 1, 96, 6, 4, 1, 0),
 	RK3036_PLL_RATE(78750000, 4, 315, 6, 4, 1, 0),
 	RK3036_PLL_RATE(74250000, 2, 99, 4, 4, 1, 0),
+	RK3036_PLL_RATE(33300000, 4, 111, 5, 4, 1, 0),
 	{ /* sentinel */ },
 };
 
@@ -216,6 +221,7 @@ static const struct rockchip_cpuclk_reg_data rk3568_cpuclk_data = {
 
 PNAME(mux_pll_p)			= { "xin24m" };
 PNAME(mux_usb480m_p)			= { "xin24m", "usb480m_phy", "clk_rtc_32k" };
+PNAME(mux_usb480m_phy_p)		= { "clk_usbphy0_480m", "clk_usbphy1_480m"};
 PNAME(mux_armclk_p)			= { "apll", "gpll" };
 PNAME(clk_i2s0_8ch_tx_p)		= { "clk_i2s0_8ch_tx_src", "clk_i2s0_8ch_tx_frac", "i2s0_mclkin", "xin_osc0_half" };
 PNAME(clk_i2s0_8ch_rx_p)		= { "clk_i2s0_8ch_rx_src", "clk_i2s0_8ch_rx_frac", "i2s0_mclkin", "xin_osc0_half" };
@@ -486,6 +492,9 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 	MUX(USB480M, "usb480m", mux_usb480m_p, CLK_SET_RATE_PARENT,
 			RK3568_MODE_CON0, 14, 2, MFLAGS),
 
+	MUX(USB480M_PHY, "usb480m_phy", mux_usb480m_phy_p, CLK_SET_RATE_PARENT,
+			RK3568_MISC_CON2, 15, 1, MFLAGS),
+
 	/* PD_CORE */
 	COMPOSITE(0, "sclk_core_src", apll_gpll_npll_p, CLK_IGNORE_UNUSED,
 			RK3568_CLKSEL_CON(2), 8, 2, MFLAGS, 0, 4, DFLAGS | CLK_DIVIDER_READ_ONLY,
@@ -1597,6 +1606,9 @@ static const char *const rk3568_cru_critical_clocks[] __initconst = {
 	"hclk_php",
 	"pclk_php",
 	"hclk_usb",
+	"pclk_usb",
+	"hclk_vi",
+	"hclk_vo",
 };
 
 static const char *const rk3568_pmucru_critical_clocks[] __initconst = {
-- 
2.47.3



