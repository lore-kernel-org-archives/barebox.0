Delivery-date: Thu, 26 Feb 2026 09:51:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvX5V-005pG6-2S
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 09:51:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvX5W-0004cB-3g
	for lore@pengutronix.de; Thu, 26 Feb 2026 09:51:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DGz5h35yLznx2fJuB9mAV7SGZIbe5y4nCGrDvJeMYN4=; b=yL5QkR8J98cuhT
	LzgkKV1XdjR0K36jjiXekV2PzPGWPmgJQctfq5F34lrzzFTWtEjdT9sOM4yJE0VYQxRogr48aQi3N
	bFTZ2HskGS3jJGjaZb0tBQBaAem5qslvkWtyC4dmBcosrtnK84z/sOJgF+MqFvgqhqg5toJeiRccG
	4e4Awng3pCnX/HQLIhcj9YSBTv/d2wm5JLc60Ta8tUk4bs6R0oNWRTTmnzOo9gkM7tjMvszbJJqTd
	UU9aNSEz/GighyhghxHH/l/ehoy6z6wFD46h/wFNt5cFK5jovwL+hfAcufEt9iHFjYLBnZ81d17qT
	Os4+rginYBVEiU7Pr60A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvX52-00000005hlM-3zT0;
	Thu, 26 Feb 2026 08:50:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvX4u-00000005hl2-3S06
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 08:50:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX4t-0004Ry-9q; Thu, 26 Feb 2026 09:50:35 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX4r-002hWD-2V;
	Thu, 26 Feb 2026 09:50:35 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX4t-000000052n1-06rK;
	Thu, 26 Feb 2026 09:50:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 26 Feb 2026 09:50:34 +0100
Message-ID: <20260226085034.1201683-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_005036_860975_E681E2DC 
X-CRM114-Status: UNSURE (   9.34  )
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
Cc: Michael Tretter <m.tretter@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: fix SD card startup for Radxa ROCK 5T
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Michael Tretter <m.tretter@pengutronix.de>

The upstream pinctrl change broke the SD card startup on Radxa ROCK 5T.

Revert back to the previous pinmux setting as a workaround.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3588-rock-5t.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/rk3588-rock-5t.dts b/arch/arm/dts/rk3588-rock-5t.dts
index 35bdeb949d..09a0592bd5 100644
--- a/arch/arm/dts/rk3588-rock-5t.dts
+++ b/arch/arm/dts/rk3588-rock-5t.dts
@@ -79,3 +79,7 @@ &usb_host1_ehci {
 	/* Does not work in barebox (missing phy driver) */
 	status = "disabled";
 };
+
+&sdmmc_det_pin {
+	rockchip,pins = <0 RK_PA4 1 &pcfg_pull_up>;
+};
-- 
2.47.3



