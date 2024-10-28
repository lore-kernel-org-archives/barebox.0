Delivery-date: Mon, 28 Oct 2024 16:04:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5RIC-001uM1-2T
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 16:04:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5RID-0008Gl-EE
	for lore@pengutronix.de; Mon, 28 Oct 2024 16:04:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fnGZD5i+2PemHAGuB4hXlUISbrV3YumZ/xgYcffjSc0=; b=yY5R5Y8R/6ADsgC1KTizkN3gYj
	IB7BF5AjK0USUYUycXPREaN0nIRT7keNd6Fjed0rR6jrbj7+Qy+VjYb8NDpqEwsA0r4Eui7PtJlrD
	m3LrVIvazot8Q1zeL7z7/8tYncxq+GKk2cg8x980Z0VgvIb+pdGfsCkj5VnVqH6zDYmJuB9mbGoCA
	LufLOVcJpVLRnj9iTnGatupYeXH8ibFIu8XzPLJ1YLsAzNM56Vm+vutcHZu85Res9UOOQ//JDzBc0
	Gttc/Q4QdBukaqczu6WN8bvvBEDCWcQEziDTNNLo191a2jqgZexgFWCh/4N6M7TQyIWu4NSTEpSsO
	7/f+O6xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5RHg-0000000BEaS-17up;
	Mon, 28 Oct 2024 15:03:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5QmL-0000000B898-38G3
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 14:31:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5QmK-0003kf-BN; Mon, 28 Oct 2024 15:31:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5QmK-000s9J-0W;
	Mon, 28 Oct 2024 15:31:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5Qaw-00EMX2-21;
	Mon, 28 Oct 2024 15:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2024 15:19:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-vop2-rk3588-v1-12-a54bf7c28adc@pengutronix.de>
References: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
In-Reply-To: <20241028-vop2-rk3588-v1-0-a54bf7c28adc@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730125186; l=1130;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=n0RJbzjy+FTZ1XdGM9KQTV9yds8f+NlymTZ9WF6vOW0=;
 b=zgipMePSSettcyj4l3cP4K7rGqNB50fQWkDBYU+y1wCglt0PhDq4LQEhZTMLFK8m+Tz8cdAke
 rvHE3+4BOy9BHeoVDpRM5sDbBdfmSTiD4PJ6gzb8Pg0TuT0kutvDooV
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_073133_838789_A2B9167B 
X-CRM114-Status: UNSURE (   9.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/12] ARM: dts: rockchip rk3588: adjustments for vop
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The VOP2 driver currently has some adjustments from
https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux for
RK3588 support. This patch adds some adjustments to the rk3588.dtsi
to make these adjustments work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/rk3588.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
index 8fed50a5df..76c1b90630 100644
--- a/arch/arm/dts/rk3588.dtsi
+++ b/arch/arm/dts/rk3588.dtsi
@@ -47,3 +47,26 @@ hdmi0_out: port@1 {
 		};
 	};
 };
+
+&vop {
+	clocks = <&cru ACLK_VOP>,
+		<&cru HCLK_VOP>,
+		<&cru DCLK_VOP0>,
+		<&cru DCLK_VOP1>,
+		<&cru DCLK_VOP2>,
+		<&cru DCLK_VOP3>,
+		<&cru PCLK_VOP_ROOT>,
+		<&hdptxphy_hdmi0>; /* added in barebox, above should be same as upstream */
+	clock-names = "aclk",
+		"hclk",
+		"dclk_vp0",
+		"dclk_vp1",
+		"dclk_vp2",
+		"dclk_vp3",
+		"pclk_vop",
+		"hdmi0_phy_pll"; /* added in barebox, above should be same as upstream */
+};
+
+&hdptxphy_hdmi0 {
+	#clock-cells = <0>;
+};

-- 
2.39.5



