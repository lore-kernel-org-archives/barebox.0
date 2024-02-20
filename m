Delivery-date: Tue, 20 Feb 2024 18:26:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcTsl-00GGhw-18
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 18:26:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcTsk-00060q-Pd
	for lore@pengutronix.de; Tue, 20 Feb 2024 18:26:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FDkpJ5rT/oreoknVNLpV/gkjvkt3pAvPZcH/xwHQv0o=; b=X5cOx8kSqpuYGXF3nzYBLp+JCc
	salIaivJAyIDNEkuD8m7AbMOiBLVC+2XnoEeyBgZB2EX346tXCINvsAXwPRnSPBpNILqJdIEO4CTd
	gZ76hrFHLC+MUlydr5noaJG+Q+AnssJtbMQHFp6iwfxzSfglQKdfluRBUY8VFBvLQWRhc+Lr5XeZ8
	m2LioAxcVXtKfo+E5W98v08yhkWRNZOp34CSjahv5gVGcg3HWX13a/Ju3GkWR4KfMFxb7pL8v9fzO
	cKndXuYzyNTk6hNo5yrS3pllpaZjBKX4N/ggOX053nqi67qJJpVX0oxyzsyTudoUPR0fUQbL8Bvlo
	sdR/StqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcTs7-0000000FdUC-23CT;
	Tue, 20 Feb 2024 17:25:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcTs4-0000000FdRu-08mh
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 17:25:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcTs1-0005pr-93; Tue, 20 Feb 2024 18:25:29 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcTs0-001t9c-T0; Tue, 20 Feb 2024 18:25:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcTs0-002WBX-2V;
	Tue, 20 Feb 2024 18:25:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Feb 2024 18:25:27 +0100
Message-Id: <20240220172527.599962-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_092532_097771_2E5FB875 
X-CRM114-Status: UNSURE (   7.93  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	TVD_SUBJ_WIPE_DEBT,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: i.MX8MP: dts: remove power domains referenced by media_blk_ctrl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The media_blk_ctrl is hardcoded in the DT to reference a number of power
domains that we delete. The media_blk_ctrl itself is still usable
without them (e.g. LVDS doesn't require ISP), but the probe in Linux
would fail, because the power domain can't be attached.

This has already been fixed once in commit 5600290f4bf1
("/arch/arm/dts: imx8mp: Do not mask out mediamix power domain"), but
got reintroduced recently.

As the upstream DT has no ISP node and we already disable the MIPI DSI
node, let's just leave the power domains untouched and see how that
fares.

Fixes: aaea50bbcde2 ("soc: imx: featctrl: finalize support for i.MX8MP")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 9d87ddaea836..6c84cfb21101 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -40,10 +40,6 @@ feat: &ocotp {
 	barebox,feature-controller;
 };
 
-&pgc_mipi_phy1 {
-	barebox,feature-gates = <&feat IMX8M_FEAT_MIPI_DSI>;
-};
-
 &pgc_gpu2d {
 	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
 };
@@ -56,10 +52,6 @@ &pgc_gpumix {
 	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
 };
 
-&pgc_mipi_phy2 {
-	barebox,feature-gates = <&feat IMX8M_FEAT_MIPI_DSI>;
-};
-
 &mipi_dsi {
 	barebox,feature-gates = <&feat IMX8M_FEAT_MIPI_DSI>;
 };
@@ -68,10 +60,6 @@ &lcdif1 {
 	barebox,feature-gates = <&feat IMX8M_FEAT_MIPI_DSI>;
 };
 
-&pgc_ispdwp {
-	barebox,feature-gates = <&feat IMX8M_FEAT_ISP>;
-};
-
 &gpu3d {
 	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
 };
-- 
2.39.2



